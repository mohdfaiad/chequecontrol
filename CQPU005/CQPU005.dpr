library CQPU005;

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
  SockCon,
  UIT_GLOBAL_LIB in '..\LIB\UIT_GLOBAL_LIB.PAS',
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas',
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  JvPanel,
  U005MainFrm in 'U005MainFrm.pas' {U005FrmMain},
  U005MainDM in 'U005MainDM.pas' {U005DmMain: TDataModule};

var
  DllApplication : TApplication = Nil;

{$R *.res}


procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(U005FrmMain) then
  begin
   U005FrmMain.Width := w;
   U005FrmMain.Height := h;
  end;
end;

function ShowProgram(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TADOConnection): TForm;export; stdcall;
begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    U005FrmMain := U005FrmMain.CreateParented(AParent.Handle);
    U005FrmMain.ADODataSet.Connection := _DBConn;
    U005FrmMain.FormStyle := fsNormal;
    U005FrmMain.BorderStyle:=bsNone;
    Application.MainForm.OnKeyPress:= U005FrmMain.OnKeyPress;
    U005FrmMain.Width:=AParent.Width;
    U005FrmMain.Height:=AParent.Height;

    Application.MainForm.Caption:=Application.Title+' - '+U005FrmMain.Caption;
    U005FrmMain.Show();

    Result:=U005FrmMain;

end;

function ShowProgramA(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TDCOMConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    U005FrmMain := TU005FrmMain.CreateParented(AParent.Handle);
    U005FrmMain.DCOM.ComputerName:=_DBConn.ComputerName;
    U005FrmMain.DCOM.ServerGUID:=_DBConn.ServerGUID;
    U005FrmMain.DCOM.ServerName:=_DBConn.ServerName;
    U005FrmMain.FormStyle := fsNormal;
    U005FrmMain.BorderStyle:=bsNone;
    Application.MainForm.OnKeyPress:= U005FrmMain.OnKeyPress;
    U005FrmMain.Width:=AParent.Width;
    U005FrmMain.Height:=AParent.Height;

    U005FrmMain.Show();
    Result:=U005FrmMain;

end;

function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin


   U005DmMain:=TU005DmMain.Create(_MainApp);

   U005DmMain.SC_prefer.Connected:=false;
   U005DmMain.SC_prefer.Address:=_Parameter;
   U005DmMain.SC_prefer.Connected:=true;

  Result := TU005FrmMain.Create(_MainApp);
  begin
    Result.FormStyle := fsNormal;
    Result.WindowState := wsMaximized;
    Result.ShowModal();
   // FreeAndNil(Result);
  end;// else
end;


function ShowProgramS(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSockCon): TForm;export; stdcall;
begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;
    Application.CreateForm(TU005DmMain, U005DmMain);

    U005DmMain.SC_prefer.Connected:=false;
    initSockConn(U005DmMain.SC_prefer);
    {
    U005DmMain.SC_prefer.Address:=_DBConn.Address;
    U005DmMain.SC_prefer.Port:=_DBConn.Port;
    U005DmMain.SC_prefer.Connected:=true;
    }

    U005FrmMain := TU005FrmMain.CreateParented(AParent.Handle);

    U005FrmMain.FormStyle := fsNormal;
    U005FrmMain.BorderStyle:=bsNone;
    U005FrmMain.KeyPreview:=true;

    Application.MainForm.OnKeyPress:= U005FrmMain.OnKeyPress;
    U005FrmMain.Width:=AParent.Width;
    U005FrmMain.Height:=AParent.Height;
    Application.MainForm.Caption:=Application.Title+' - [ '+U005FrmMain.Caption+' ]';

    U005FrmMain.ToolbarVisible:=_Parameter.BtnVisible;
    U005FrmMain.ToolbarEnable:=_Parameter.BtnEnable;
    U005FrmMain.Show();

    Result:=U005FrmMain;
end;
{
begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;
    Application.CreateForm(TU005DmMain, U005DmMain);
  U005FrmMain := TU005FrmMain.CreateParented(AParent.Handle);
    U005DmMain.SC_prefer.Connected:=True;
    U005FrmMain.FormStyle := fsNormal;
    U005FrmMain.BorderStyle:=bsNone;
    U005FrmMain.KeyPreview:=True;
    Application.MainForm.OnKeyPress:= U005FrmMain.OnKeyPress;
    U005FrmMain.Width:=AParent.Width;
    U005FrmMain.Height:=AParent.Height;
    U005FrmMain.Show();
    Result:=U005FrmMain;
end;

}
Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;

    if Assigned(U005FrmMain.ActiveControl) then
      begin
        Result := True;
        SendMessage(U005FrmMain.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(U005FrmMain) then
      begin
        Result := True;
        SendMessage(U005FrmMain.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end

end;



procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;
end;

exports
   HandleMessageFunc,ShowProgram,ResizeProgram,ShowProgramA,ShowProgramS,Execute;
begin
  DLLProc := @DLLUnloadProc;
end.
