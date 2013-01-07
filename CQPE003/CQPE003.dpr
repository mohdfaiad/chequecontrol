library CQPE003;

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
  SysUtils,
  Classes,
  Windows,
  Forms,
  Controls,
  SockCon,
  UIT_GLOBAL_LIB in '..\LIB\UIT_GLOBAL_LIB.PAS',
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas',
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  JvPanel,
  E003MainFrm in 'E003MainFrm.pas' {E003FrmMain},
  E003MainDm in 'E003MainDm.pas' {E003DmMain: TDataModule},
  E003ExtakeFrm in 'E003ExtakeFrm.pas' {E003FrmExtake};

var
  DllApplication : TApplication = Nil;

{$R *.res}

procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(E003FrmMain) then
  begin
   E003FrmMain.Width := w;
   E003FrmMain.Height := h;
  end;
end;

function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin


   E003DmMain:=TE003DmMain.Create(_MainApp);

   E003DmMain.SO_EX.Connected:=false;
   E003DmMain.SO_EX.Address:=_Parameter;
   E003DmMain.SO_EX.Connected:=true;

  Result := TE003FrmMain.Create(_MainApp);
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
    Application.CreateForm(TE003DmMain, E003DmMain);

    E003DmMain.SO_EX.Connected:=false;
    initSockConn(E003DmMain.SO_EX);
    {
    E003DmMain.SO_EX.Address:=_DBConn.Address;
    E003DmMain.SO_EX.Port:=_DBConn.Port;
    E003DmMain.SO_EX.Connected:=true;
    }

    E003FrmMain := TE003FrmMain.CreateParented(AParent.Handle);

    E003FrmMain.FormStyle := fsNormal;
    E003FrmMain.BorderStyle:=bsNone;
    E003FrmMain.KeyPreview:=true;

    Application.MainForm.OnKeyPress:= E003FrmMain.OnKeyPress;
    E003FrmMain.Width:=AParent.Width;
    E003FrmMain.Height:=AParent.Height;

    Application.MainForm.Caption:=Application.Title+' - [ '+E003FrmMain.Caption+' ]';

    E003FrmMain.ToolbarVisible:=_Parameter.BtnVisible;
    E003FrmMain.ToolbarEnable:=_Parameter.BtnEnable;
    E003FrmMain.Show();

    Result:=E003FrmMain;
end;
{begin

    if DllApplication=nil then
    begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;
  if Assigned(E003FrmMain) then
   begin
    if E003FrmMain.FormClosed then
    begin

       E003FrmMain := nil;

       E003FrmMain :=TE003FrmMain.CreateParented(AParent.Handle);
       E003FrmMain.BorderStyle := bsNone;
       Application.MainForm.OnKeyPress:= E003FrmMain.OnKeyPress;
       E003FrmMain.Top := 0;
       E003FrmMain.Left := 0;
       E003FrmMain.Width := AParent.Width;
       E003FrmMain.Height := AParent.Height;

    end;

   end
   else
   begin

     Application.CreateForm(TE003DmMain, E003DmMain);
     E003DmMain.ConBro.Connection := _DBConn;
     E003FrmMain :=TE003FrmMain.CreateParented(AParent.Handle);
     E003FrmMain.BorderStyle := bsNone;
     Application.MainForm.OnKeyPress:= E003FrmMain.OnKeyPress;
     E003FrmMain.Top := 0;
     E003FrmMain.Left := 0;
     E003FrmMain.Width := AParent.Width;
     E003FrmMain.Height := AParent.Height;

   end;

   E003FrmMain.Show;
   Result:=E003FrmMain;
end;  }
 Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;
    // if not E003FrmMain.IsActive then
     // Exit;
    if Assigned(E003FrmMain.ActiveControl) then
      begin
        Result := True;
        SendMessage(E003FrmMain.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(E003FrmMain) then
      begin
        Result := True;
        SendMessage(E003FrmMain.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end

end;


procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;
end;

exports
    ResizeProgram,
    HandleMessageFunc,Execute,
    ShowProgramS;

begin

  DLLProc := @DLLUnloadProc;
end.
