library CQPE001;

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
  LoadBank in '..\LIB\LoadBank.pas',
  E001MainFrm in 'E001MainFrm.pas' {FrmE001Main},
  E001MainDM in 'E001MainDM.pas' {DME001Main: TDataModule};

var
  DllApplication : TApplication = Nil;

{$R *.res}

function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin
   DME001Main:=TDME001Main.Create(_MainApp);

   DME001Main.SC.Connected:=false;
   DME001Main.SC.Address:=_Parameter;
   DME001Main.SC.Connected:=true;


  Result := TFrmE001Main.Create(_MainApp);
  begin
    Result.FormStyle := fsNormal;
    Result.WindowState := wsMaximized;
    Result.ShowModal();


   // FreeAndNil(Result);
  end;// else  
end;



procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(FrmE001Main) then
  begin
   FrmE001Main.Width := w;
   FrmE001Main.Height := h;
  end;
end;

Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;
    if not FrmE001Main.IsActive then
      Exit;

    if Assigned(FrmE001Main.ActiveControl) then
      begin
        Result := True;
        SendMessage(FrmE001Main.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(FrmE001Main) then
      begin
        Result := True;
        SendMessage(FrmE001Main.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end

end;

function ShowProgram(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TADOConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    FrmE001Main := TFrmE001Main.CreateParented(AParent.Handle);


    FrmE001Main.ADODataSet.Connection := _DBConn;
   // frmMainProgram.DCOM.Assign(_DBConn);


    FrmE001Main.FormStyle := fsNormal;
    FrmE001Main.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= FrmE001Main.OnKeyPress;
    FrmE001Main.Width:=AParent.Width;
    FrmE001Main.Height:=AParent.Height;
    //Result.Align:=alClient;

    FrmE001Main.Show();

    Result:=FrmE001Main;



end;

function ShowProgramA(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TDCOMConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    FrmE001Main := TFrmE001Main.CreateParented(AParent.Handle);

   // frmMainProgram.ADODataSet.Connection := _DBConn;
    FrmE001Main.DCOM.ComputerName:=_DBConn.ComputerName;
    FrmE001Main.DCOM.ServerGUID:=_DBConn.ServerGUID;
    FrmE001Main.DCOM.ServerName:=_DBConn.ServerName;



    FrmE001Main.FormStyle := fsNormal;
    FrmE001Main.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= FrmE001Main.OnKeyPress;
    FrmE001Main.Width:=AParent.Width;
    FrmE001Main.Height:=AParent.Height;
    //Result.Align:=alClient;

    FrmE001Main.Show();

    Result:=FrmE001Main;



end;

function ShowProgramS(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSockCon): TForm;export; stdcall;

begin

   if DllApplication=nil then
   begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;





   if Assigned(FrmE001Main) then
   begin
    if FrmE001Main.FormClosed then
    begin

       FrmE001Main := nil;

       FrmE001Main :=TFrmE001Main.CreateParented(AParent.Handle);
       with FrmE001Main do
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
     Application.CreateForm(TDME001Main, DME001Main);
  DME001Main.SC.Connected:=false;
     initSockConn(DME001Main.SC);
     {DMU002Main.SC.Address := _DBConn.Address;
     DMU002Main.SC.Port := _DBConn.Port;
     DMU002Main.SC.Connected:=true;
     }

     //DMU002Main.ConBro.Connection := _DBConn;
     FrmE001Main :=TFrmE001Main.CreateParented(AParent.Handle);
     with FrmE001Main do
     begin
       BorderStyle := bsNone;
       Application.MainForm.OnKeyPress:= OnKeyPress;
       Top := 0;
       Left := 0;
       Width := AParent.Width;
       Height := AParent.Height;
     end;

   end;

   Application.MainForm.Caption:=Application.Title+' - [ '+FrmE001Main.Caption+' ]';
   FrmE001Main.ToolbarVisible:=_Parameter.BtnVisible;
   FrmE001Main.ToolbarEnable:=_Parameter.BtnEnable;
   DME001Main.Dll := _Parameter;
   FrmE001Main.Show;
   Result:=FrmE001Main;


end;




procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;
end;

exports
    ShowProgram,ResizeProgram,ShowProgramA,ShowProgramS,Execute,HandleMessageFunc;

begin

  DLLProc := @DLLUnloadProc;
end.
