library CQPE010;

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
  E010MainFrm in 'E010MainFrm.pas' {E010FrmMain},
  E010SystemFrm in 'E010SystemFrm.pas' {E010FrmSystem},
  E010UserFrm in 'E010UserFrm.pas' {E010FrmUser},
  UserPermissionFrm in 'UserPermissionFrm.pas' {frmUserPermission},
  CQPU001_UTILS in '..\CQPU001\CQPU001_UTILS.pas';

var
  DllApplication : TApplication = Nil;

{$R *.res}

procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(E010FrmMain) then
  begin
   E010FrmMain.Width := w;
   E010FrmMain.Height := h;
  end;
end;

function ShowProgram(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSockCon): TForm;export; stdcall;

begin

   if DllApplication=nil then
   begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;


   if Assigned(E010FrmMain) then
   begin
    if E010FrmMain.FormClosed then
      begin

         E010FrmMain := nil;

         E010FrmMain :=TE010FrmMain.CreateParented(AParent.Handle);

         E010FrmMain.BorderStyle := bsNone;
         Application.MainForm.OnKeyPress:= E010FrmMain.OnKeyPress;
         E010FrmMain.Top := 0;
         E010FrmMain.Left := 0;
         E010FrmMain.Width := AParent.Width;
         E010FrmMain.Height := AParent.Height;

         E010FrmMain.ToolbarEnable := _Parameter.BtnEnable;

      end;

   end
   else
   begin

//     Application.CreateForm(TDMMain, DMMain);
//     Application.CreateForm(TE010DmPerMiss, E010DmPerMiss);
//     DMMain.ConBro.Connection := _DBConn;
     E010FrmMain :=E010FrmMain.CreateParented(AParent.Handle);
     E010FrmMain.BorderStyle := bsNone ;
     Application.MainForm.OnKeyPress:= E010FrmMain.OnKeyPress;
     E010FrmMain.Top := 0;
     E010FrmMain.Left := 0;
     E010FrmMain.Width := AParent.Width;
     E010FrmMain.Height := AParent.Height;

     E010FrmMain.ToolbarEnable := _Parameter.BtnEnable;

   end;

   E010FrmMain.Show;
   Result:=E010FrmMain;

end;


function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin
  Result := TE010FrmMain.Create(_MainApp);
  begin

    TE010FrmMain(Result).SockCon.Connected:=false;
    TE010FrmMain(Result).SockCon.Address:=_Parameter;
    TE010FrmMain(Result).SockCon.Connected:=true;

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

    frmUserPermission := TfrmUserPermission.CreateParented(AParent.Handle);
    frmUserPermission.SockCon.Connected:=false;
    initSockConn(frmUserPermission.SockCon);
    
    {
    E010FrmMain.SockCon.Address:=_DBConn.Address;
    E010FrmMain.SockCon.Port:=_DBConn.Port;
    E010FrmMain.SockCon.Connected:=true;
    }

    frmUserPermission.FormStyle := fsNormal;
    frmUserPermission.BorderStyle:=bsNone;
    frmUserPermission.KeyPreview:=true;

    Application.MainForm.OnKeyPress:= frmUserPermission.OnKeyPress;
    frmUserPermission.Width:=AParent.Width;
    frmUserPermission.Height:=AParent.Height;
    Application.MainForm.Caption:=Application.Title+' - [ '+frmUserPermission.Caption+' ]';


    frmUserPermission.ToolbarVisible:=_Parameter.BtnVisible;
    frmUserPermission.ToolbarEnable:=_Parameter.BtnEnable;
    frmUserPermission.UserID:=_Parameter.UserID;
    frmUserPermission.Branch:=_Parameter.Branch;
    frmUserPermission.PDM:=_Parameter.PDM;
    frmUserPermission.PDT:=_Parameter.PDT;
    frmUserPermission.WorkStation:=_Parameter.WorkStation;

    //ShowMessage(_Parameter.Branch+' '+_Parameter.PDM+' '+_Parameter.PDT);

    frmUserPermission.Show();

    Result:=frmUserPermission;
end;




(*
begin
 if DllApplication=nil then
 begin
   DllApplication:=Application ;
   Application:=_MainApp;
 end;

    //Application.CreateForm(TFrmUsersystem, FrmUsersystem);
   E010FrmMain := TE010FrmMain.CreateParented(AParent.Handle);
   
   //FrmUser := TFrmUser.CreateParented(AParent.Handle);

    E010FrmMain.SockCon.Connected:=false;
    E010FrmMain.SockCon.Address      :=_DBConn.Address;
    E010FrmMain.SockCon.AutoConnect  :=_DBConn.AutoConnect;
    E010FrmMain.SockCon.AutoProv     :=_DBConn.AutoProv;
    E010FrmMain.SockCon.Deploy       :=_DBConn.Deploy;
    E010FrmMain.SockCon.Encoded      :=_DBConn.Encoded;
    E010FrmMain.SockCon.LoginID      :=_DBConn.LoginID;
    E010FrmMain.SockCon.Port         :=_DBConn.Port;
    E010FrmMain.SockCon.ServerGUID   :=_DBConn.ServerGUID;
    E010FrmMain.SockCon.ServerName   :=_DBConn.ServerName;
    E010FrmMain.SockCon.Connected:=true;


    E010FrmMain.FormStyle := fsNormal;
    E010FrmMain.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= E010FrmMain.OnKeyPress;

    E010FrmMain.Width:=AParent.Width;
    E010FrmMain.Height:=AParent.Height;
    //Result.Align:=alClient;

//    E010FrmMain.edtUser.Text := _Parameter.UserID ;
//    E010FrmMain.cxTextEdit1.Text := _Parameter.Password ;
//    E010FrmMain.ToolbarEnable := _Parameter.BtnEnable ;

    E010FrmMain.Show();

    Result:=E010FrmMain;



end;

*)





procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;
end;

exports
    ResizeProgram,ShowProgramS,Execute ;

begin

  DLLProc := @DLLUnloadProc;
end.
