library CQPE002;

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
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.PAS',
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  JvPanel,
  E002MainDm in 'E002MainDm.pas' {E002DmMain: TDataModule},
  E002TakeFrm in 'E002TakeFrm.pas' {E002FrmTake},
  E002MainFrm in 'E002MainFrm.pas' {E002FrmMain};

var
  DllApplication : TApplication = Nil;

{$R *.res}
procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(E002FrmMain) then
  begin
   E002FrmMain.Width := w;
   E002FrmMain.Height := h;
  end;
end;

function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin


   E002DmMain:=TE002DmMain.Create(_MainApp);

   E002DmMain.SC_prefer.Connected:=false;
   E002DmMain.SC_prefer.Address:=_Parameter;
   E002DmMain.SC_prefer.Connected:=true;

  Result := TE002FrmMain.Create(_MainApp);
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
    Application.CreateForm(TE002DmMain, E002DmMain);



    E002DmMain.SC_prefer.Connected:=false;
    E002DmMain.SC_prefer.Address:=_DBConn.Address;
    E002DmMain.SC_prefer.Port:=_DBConn.Port;

    initSockConn(E002DmMain.SC_prefer);
    E002DmMain.SC_prefer.Connected:=true;

    E002FrmMain := TE002FrmMain.CreateParented(AParent.Handle);

    E002FrmMain.FormStyle := fsNormal;
    E002FrmMain.BorderStyle:=bsNone;
    E002FrmMain.KeyPreview:=true;

    Application.MainForm.OnKeyPress:= E002FrmMain.OnKeyPress;
    E002FrmMain.Width:=AParent.Width;
    E002FrmMain.Height:=AParent.Height;

    Application.MainForm.Caption:=Application.Title+' - [ '+E002FrmMain.Caption+' ]';

    E002FrmMain.ToolbarVisible:=_Parameter.BtnVisible;
    E002FrmMain.ToolbarEnable:=_Parameter.BtnEnable;
    E002FrmMain.Show();

    Result:=E002FrmMain;
end;


{begin

 if DllApplication=nil then
    begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;
  if Assigned(E002FrmMain) then
   begin
    if E002FrmMain.FormClosed then
    begin

       E002FrmMain := nil;

       E002FrmMain :=TE002FrmMain.CreateParented(AParent.Handle);
       E002FrmMain.BorderStyle := bsNone;
       Application.MainForm.OnKeyPress:= E002FrmMain.OnKeyPress;
       E002FrmMain.Top := 0;
       E002FrmMain.Left := 0;
       E002FrmMain.Width := AParent.Width;
       E002FrmMain.Height := AParent.Height;

    end;

   end
   else
   begin

     Application.CreateForm(TE002DmMain, E002DmMain);
     E002DmMain.ConBro.Connection := _DBConn;
     E002FrmMain :=TE002FrmMain.CreateParented(AParent.Handle);
     E002FrmMain.BorderStyle := bsNone;
     Application.MainForm.OnKeyPress:= E002FrmMain.OnKeyPress;
     E002FrmMain.Top := 0;
     E002FrmMain.Left := 0;
     E002FrmMain.Width := AParent.Width;
     E002FrmMain.Height := AParent.Height;

   end;

   E002FrmMain.Show;
   Result:=E002FrmMain;
end; }

 Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;

//  if not E002FrmMain.IsActive then
//      Exit;
  

    if Assigned(E002FrmMain.ActiveControl) then
      begin
        Result := True;
        SendMessage(E002FrmMain.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(E002FrmMain) then
      begin
        Result := True;
        SendMessage(E002FrmMain.Handle, Msg.message, Msg.wParam, Msg.lparam);
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








