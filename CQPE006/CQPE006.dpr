library CQPE006;

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
  E006MainDM in 'E006MainDM.pas' {DME006Main: TDataModule},
  E006MainFrm in 'E006MainFrm.pas' {FrmE006Main};


var
  DllApplication : TApplication = Nil;

{$R *.res}

procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(FrmE006Main) then
  begin
   FrmE006Main.Width := w;
   FrmE006Main.Height := h;
  end;
end;

Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;
    if not FrmE006Main.IsActive then
      Exit;

    if Assigned(FrmE006Main.ActiveControl) then
      begin
        Result := True;
        SendMessage(FrmE006Main.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(FrmE006Main) then
      begin
        Result := True;
        SendMessage(FrmE006Main.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end

end;

function ShowProgramS(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSockCon): TForm;export; stdcall;

begin

   if DllApplication=nil then
   begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;


   if Assigned(FrmE006Main) then
   begin
    if FrmE006Main.FormClosed then
    begin

       FrmE006Main := nil;

       FrmE006Main :=TFrmE006Main.CreateParented(AParent.Handle);
       with FrmE006Main do
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

     Application.CreateForm(TDME006Main, DME006Main);
     DME006Main.SCE.Connected:=false;
     initSockConn(DME006Main.SCE);
     FrmE006Main :=TFrmE006Main.CreateParented(AParent.Handle);
     with FrmE006Main do
     begin
       BorderStyle := bsNone;
       Application.MainForm.OnKeyPress:= OnKeyPress;
       Top := 0;
       Left := 0;
       Width := AParent.Width;
       Height := AParent.Height;
     end;

   end;

   Application.MainForm.Caption:=Application.Title+' - [ '+FrmE006Main.Caption+' ]';
   FrmE006Main.ToolbarVisible:=_Parameter.BtnVisible;
   FrmE006Main.ToolbarEnable:=_Parameter.BtnEnable;
   DME006Main.Dll := _Parameter;
   FrmE006Main.Show;
   Result:=FrmE006Main;


end;


function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin
     Application.CreateForm(TDME006Main, DME006Main);
     DME006Main.SCE.Connected:=false;
     //initSockConn(DME006Main.SCE);
     FrmE006Main :=TFrmE006Main.Create(Application);
//      TFrmE006Main.Create(Application).Show;
     FrmE006Main.ShowModal;
     result:=FrmE006Main;
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
