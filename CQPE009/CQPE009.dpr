library CQPE009;

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
  E009MainFrm in 'E009MainFrm.pas' {E009FrmMain},
  E009UserFrm in 'E009UserFrm.pas' {E009FrmUser};

var
  DllApplication : TApplication = Nil;

{$R *.res}

procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(E009FrmMain) then
  begin
   E009FrmMain.Width := w;
   E009FrmMain.Height := h;
  end;
end;

function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin
  Result := TE009FrmMain.Create(_MainApp);
  begin

    TE009FrmMain(Result).SockCon.Connected:=false;
    TE009FrmMain(Result).SockCon.Address:=_Parameter;
    TE009FrmMain(Result).SockCon.Connected:=true;

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




    E009FrmMain := TE009FrmMain.CreateParented(AParent.Handle);
    E009FrmMain.SockCon.Connected:=false;
    initSockConn(E009FrmMain.SockCon);
    {
    E009FrmMain.SockCon.Address:=_DBConn.Address;
    E009FrmMain.SockCon.Port:=_DBConn.Port;
    E009FrmMain.SockCon.Connected:=true;
    }

    E009FrmMain.FormStyle := fsNormal;
    E009FrmMain.BorderStyle:=bsNone;
    E009FrmMain.KeyPreview:=true;

    Application.MainForm.OnKeyPress:= E009FrmMain.OnKeyPress;
    E009FrmMain.Width:=AParent.Width;
    E009FrmMain.Height:=AParent.Height;
    Application.MainForm.Caption:=Application.Title+' - [ '+E009FrmMain.Caption+' ]';

    E009FrmMain.ToolbarVisible:=_Parameter.BtnVisible;
    E009FrmMain.ToolbarEnable:=_Parameter.BtnEnable;
    E009FrmMain.Show();

    Result:=E009FrmMain;
end;

{
begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    //Application.CreateForm(TFrmUsersystem, FrmUsersystem);
   E009FrmMain := TE009FrmMain.CreateParented(AParent.Handle);
   //FrmUser := TFrmUser.CreateParented(AParent.Handle);


    E009FrmMain.FormStyle := fsNormal;
    E009FrmMain.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= E009FrmMain.OnKeyPress;

    E009FrmMain.Width:=AParent.Width;
    E009FrmMain.Height:=AParent.Height;
    //Result.Align:=alClient;

    E009FrmMain.Show();

    Result:=E009FrmMain;



end;
}




procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;
end;

exports
    ResizeProgram,ShowProgramS,Execute;

begin

  DLLProc := @DLLUnloadProc;
end.
