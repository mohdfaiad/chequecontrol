library CQPQ001;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  WideStrings,
  FMTBcd,
  StdCtrls,
  Provider,
  DB,
  SqlExpr,
  ADODB,
  MConnect,
  SConnect,
  UIT_GLOBAL_LIB in '..\LIB\UIT_GLOBAL_LIB.PAS',
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  PleaseWait in '..\BaseFrom\PleaseWait.pas' {PleaseWaitForm},
  SockCon,
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas' {/,},
  uCiaXml in '..\LIB\uCiaXml.pas',
  Q001MainDM in 'Q001MainDM.pas' {DMQ001Main: TDataModule},
  Q001MainFrm in 'Q001MainFrm.pas' {FrmQ001Main},
  Q001RemarkFrm in 'Q001RemarkFrm.pas' {FrmQ001Remark},
  Q001TrackingFrm in 'Q001TrackingFrm.pas' {FrmQ001Tracking},
  Q001DeleteDeFrm in 'Q001DeleteDeFrm.pas' {FrmQ001DeleteDe};

var
  DllApplication : TApplication = Nil;

{$R *.res}

procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(FrmQ001Main) then
  begin
   FrmQ001Main.Width := w;
   FrmQ001Main.Height := h;
  end;
end;

Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;
    if not FrmQ001Main.IsActive then
      Exit;

    if Assigned(FrmQ001Main.ActiveControl) then
      begin
        Result := True;
        SendMessage(FrmQ001Main.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(FrmQ001Main) then
      begin
        Result := True;
        SendMessage(FrmQ001Main.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
end;

function ShowProgramS(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSockCon): TForm;export; stdcall;

begin

   if DllApplication=nil then
   begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;


   if Assigned(FrmQ001Main) then
     begin
      if FrmQ001Main.FormClosed then
      begin

         FrmQ001Main := nil;

         FrmQ001Main :=TFrmQ001Main.CreateParented(AParent.Handle);
         with FrmQ001Main do
         begin
           BorderStyle := bsNone;
           Application.MainForm.OnKeyPress:= OnKeyPress;
           Top := 0;
           Left := 0;
           Width := AParent.Width;
           Height := AParent.Height;
         end;

      end;

     end
   else
     begin
       Application.CreateForm(TDMQ001Main, DMQ001Main);
       DMQ001Main.RQC.Connected:=false;
       initSockConn(DMQ001Main.RQC);
       FrmQ001Main :=TFrmQ001Main.CreateParented(AParent.Handle);
       with FrmQ001Main do
       begin
         BorderStyle := bsNone;
         Application.MainForm.OnKeyPress:= OnKeyPress;
         Top := 0;
         Left := 0;
         Width := AParent.Width;
         Height := AParent.Height;
       end;

     end;

   Application.MainForm.Caption:=Application.Title+' - [ '+FrmQ001Main.Caption+' ]';
   FrmQ001Main.ToolbarVisible:=_Parameter.BtnVisible;
   FrmQ001Main.ToolbarEnable:=_Parameter.BtnEnable;
   DMQ001Main.Dll := _Parameter;
   FrmQ001Main.Show;
   Result:=FrmQ001Main;


end;


function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin
     Application.CreateForm(TDMQ001Main, DMQ001Main);
     DMQ001Main.RQC.Connected:=false;
     //initSockConn(DME006Main.SCE);
     FrmQ001Main :=TFrmQ001Main.Create(Application);
//      TFrmE006Main.Create(Application).Show;
     FrmQ001Main.ShowModal;
     result:=FrmQ001Main;
end;




procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;
end;

exports
    ResizeProgram,ShowProgramS,HandleMessageFunc,Execute;

begin

  DLLProc := @DLLUnloadProc;
end.
