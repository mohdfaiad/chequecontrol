library CQPU001;

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
  JvPanel,
  MainProgramFrm in 'MainProgramFrm.pas' {frmMainProgram},
  ConfirmationFrm in 'ConfirmationFrm.pas' {frmConfirmation},
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas',
  CQPU001_UTILS in 'CQPU001_UTILS.pas',
  HPINS_LIB in '..\LIB\HPINS_LIB.pas',
  ConSearchFrm in 'ConSearchFrm.pas' {frmConSearch},
  InfoFrm in 'InfoFrm.pas' {frmInfo};

var
  DllApplication : TApplication = Nil;

{$R *.res}

function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin

  Result := TfrmMainProgram.Create(_MainApp);
  begin
    Result.FormStyle := fsNormal;
    Result.WindowState := wsMaximized;

    TfrmMainProgram(Result).SocketConn.Connected:=false;
    TfrmMainProgram(Result).SocketConn.Address:=_Parameter;
    TfrmMainProgram(Result).SocketConn.Connected:=True;
    Result.ShowModal();
   // FreeAndNil(Result);
  end;// else
end;


procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(frmMainProgram) then
  begin
   frmMainProgram.Width := w;
   frmMainProgram.Height := h;
  end;
end;

Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;
    if not frmMainProgram.IsActive then
      Exit;

    if Assigned(frmMainProgram.ActiveControl) then
      begin
        Result := True;
        SendMessage(frmMainProgram.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(frmMainProgram) then
      begin
        Result := True;
        SendMessage(frmMainProgram.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end

end;

function ShowProgram(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TADOConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    frmMainProgram := TfrmMainProgram.CreateParented(AParent.Handle);


    frmMainProgram.ADODataSet.Connection := _DBConn;
   // frmMainProgram.DCOM.Assign(_DBConn);


    frmMainProgram.FormStyle := fsNormal;
    frmMainProgram.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= frmMainProgram.OnKeyPress;
    frmMainProgram.Width:=AParent.Width;
    frmMainProgram.Height:=AParent.Height;
    //Result.Align:=alClient;

    frmMainProgram.Show();

    Result:=frmMainProgram;



end;

function ShowProgramA(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TDCOMConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    frmMainProgram := TfrmMainProgram.CreateParented(AParent.Handle);

   // frmMainProgram.ADODataSet.Connection := _DBConn;
    frmMainProgram.DCOM.ComputerName:=_DBConn.ComputerName;
    frmMainProgram.DCOM.ServerGUID:=_DBConn.ServerGUID;
    frmMainProgram.DCOM.ServerName:=_DBConn.ServerName;



    frmMainProgram.FormStyle := fsNormal;
    frmMainProgram.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= frmMainProgram.OnKeyPress;
    frmMainProgram.Width:=AParent.Width;
    frmMainProgram.Height:=AParent.Height;
    //Result.Align:=alClient;

    frmMainProgram.Show();

    Result:=frmMainProgram;



end;

function ShowProgramS(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSocketConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

  if not Assigned(frmMainProgram) then
  begin
      frmMainProgram := TfrmMainProgram.CreateParented(AParent.Handle);

      frmMainProgram.SocketConn.Connected:=false;
      {
      frmMainProgram.SocketConn.Address:=_DBConn.Address;
      frmMainProgram.SocketConn.Port:=_DBConn.Port;
      frmMainProgram.SocketConn.ServerName:=_DBConn.ServerName;

      frmMainProgram.SocketConn.Connected:=true;
      }
      initSockConn(frmMainProgram.SocketConn);


      frmMainProgram.FormStyle := fsNormal;
      frmMainProgram.BorderStyle:=bsNone;
      frmMainProgram.KeyPreview:=true;
      frmMainProgram._Params:=_Parameter.Param1;


      Application.MainForm.OnKeyPress:= frmMainProgram.OnKeyPress;

      frmMainProgram.Width:=AParent.Width;
      frmMainProgram.Height:=AParent.Height;

      if UpperCase(trim(_Parameter.Param1))='KEYIN' then    
        Application.MainForm.Caption:=Application.Title+' - [ KEYIN ]'
      else
        Application.MainForm.Caption:=Application.Title+' - [ '+frmMainProgram.Caption+' ]';

      frmMainProgram.ToolbarVisible:=_Parameter.BtnVisible;
      frmMainProgram.ToolbarEnable:=_Parameter.BtnEnable;
      frmMainProgram.UserID:=_Parameter.UserID;
      frmMainProgram.Branch:=_Parameter.Branch;
      frmMainProgram.PDM:=_Parameter.PDM;
      frmMainProgram.PDT:=_Parameter.PDT;
      frmMainProgram.WorkStation:=_Parameter.WorkStation;


      frmMainProgram.Show();


      Result:=frmMainProgram;
  end;

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
