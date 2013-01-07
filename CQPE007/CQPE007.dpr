library CQPE007;

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
  E007MainFrm in 'E007MainFrm.pas' {E007frmMain},
  E007MainDM in 'E007MainDM.pas' {E007DMMain: TDataModule};

var
  DllApplication : TApplication = Nil;

{$R *.res}

function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin


  Result := TE007frmMain.Create(_MainApp);
  begin
   Result.FormStyle := fsNormal;
   Result.WindowState := wsMaximized;

   E007DMMain:=TE007DMMain.Create(_MainApp);

   E007DMMain.SockCon1.Connected:=false;
   E007DMMain.SockCon1.Address:=_Parameter;
   E007DMMain.SockCon1.Connected:=true;

    Result.ShowModal();
   // FreeAndNil(Result);
  end;// else
end;


Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;

    if Assigned(E007frmMain.ActiveControl) then
      begin
        Result := True;
        SendMessage(E007frmMain.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(E007frmMain) then
      begin
        Result := True;
        SendMessage(E007frmMain.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end

end;

procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(E007frmMain) then
  begin
   E007frmMain.Width := w;
   E007frmMain.Height := h;
  end;
end;


function ShowProgramS(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSocketConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;
    Application.CreateForm(TE007DMMain, E007DMMain);

    E007DMMain.SockCon1.Connected:=false;
    initSockConn(E007DMMain.SockCon1);
    {
    E007DMMain.SockCon1.Address:=_DBConn.Address;
    E007DMMain.SockCon1.Port:=_DBConn.Port;
    E007DMMain.SockCon1.Connected:=true;
    }

    E007frmMain := TE007frmMain.CreateParented(AParent.Handle);

    E007frmMain.FormStyle := fsNormal;
    E007frmMain.BorderStyle:=bsNone;
    E007frmMain.KeyPreview:=true;

    Application.MainForm.OnKeyPress:= E007frmMain.OnKeyPress;
    E007frmMain.Width:=AParent.Width;
    E007frmMain.Height:=AParent.Height;

    Application.MainForm.Caption:=Application.Title+' - [ '+E007frmMain.Caption+' ]';

    E007frmMain.ToolbarVisible:=_Parameter.BtnVisible;
    E007frmMain.ToolbarEnable:=_Parameter.BtnEnable;
    E007frmMain.Show();

    Result:=E007frmMain;
end;
{
begin

   if DllApplication=nil then
   begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;


   if Assigned(E007frmMain) then
   begin
    if E007frmMain.FormClosed then
    begin

       E007frmMain := nil;

       E007frmMain :=TE007frmMain.CreateParented(AParent.Handle);

       E007frmMain.BorderStyle := bsNone;
       Application.MainForm.OnKeyPress:= E007frmMain.OnKeyPress;
       E007frmMain.Top := 0;
       E007frmMain.Left := 0;
       E007frmMain.Width := AParent.Width;
       E007frmMain.Height := AParent.Height;

    end;

   end
   else
   begin

     Application.CreateForm(TE007DMMain, E007DMMain);
     E007DMMain.ConBro.Connection := _DBConn;
     E007frmMain :=TE007frmMain.CreateParented(AParent.Handle);
     E007frmMain.BorderStyle := bsNone;
     Application.MainForm.OnKeyPress:= E007frmMain.OnKeyPress;
     E007frmMain.Top := 0;
     E007frmMain.Left := 0;
     E007frmMain.Width := AParent.Width;
     E007frmMain.Height := AParent.Height;

   end;

   E007frmMain.Show;
   Result:=E007frmMain;

end;
}

procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;
end;

exports
    ResizeProgram,HandleMessageFunc,ShowProgramS,Execute;

begin

  DLLProc := @DLLUnloadProc;
end.
