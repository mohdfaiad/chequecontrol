library CQPQ002;

{
#Setting project
Project->Option...
  Set Output Directory = "..\BIN"
}

{
#Edit to Based Form
  1..pas
    TFormMP = class(TfrmBase)

  2..dfm
    inherited FormMP: TFormMP
}

{
#หลักการตั้งชื่อ program

			ชื่อโปรแกรม CQPE001

			 -CQ	Application ระบบ
			 -P	Type P - โปรแกรม
			 -E	Type programming E - Entry ,  I - Inquiry ,  R - Report , U - Update database , Q- Query
			 -001	running program (001-999)
}

{
#Main App Calling
JumpToS('CQPE000.dll',MAINPANE,swNormal,SockCon,'ShowProgramS');
}


uses
  SysUtils,
  Classes,
  Windows,
  Forms,
  Controls,
  UIT_GLOBAL_LIB in '..\LIB\UIT_GLOBAL_LIB.PAS',
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas' {/,},
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  SockCon,
  Q002MainDM in 'Q002MainDM.pas' {Q002DMMain: TDataModule},
  Q002ManChqFrm in 'Q002ManChqFrm.pas' {Q002FrmManChQ};

var
  DllApplication : TApplication = Nil;

{$R *.res}

function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin
   Q002DMMain:=TQ002DMMain.Create(_MainApp);

   Q002DMMain.SockCon.Connected:=false;
   Q002DMMain.SockCon.Address:=_Parameter;
   Q002DMMain.SockCon.Connected:=true;


  Result := TQ002FrmManChQ.Create(_MainApp);
  begin
    Result.FormStyle := fsNormal;
    Result.WindowState := wsMaximized;
    Result.ShowModal();

   // FreeAndNil(Result);
  end;// else
end;


procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(Q002FrmManChQ) then
  begin
   Q002FrmManChQ.Width := w;
   Q002FrmManChQ.Height := h;
  end;
end;

Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;

    if not Q002FrmManChQ.IsActive then
      Exit;

    if Assigned(Q002FrmManChQ.ActiveControl) then
      begin
        Result := True;
        SendMessage(Q002FrmManChQ.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(Q002FrmManChQ) then
      begin
        Result := True;
        SendMessage(Q002FrmManChQ.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end

end;


function ShowProgramA(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSockCon): TForm;export; stdcall;

begin

   if DllApplication=nil then
   begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;

   Q002FrmManChQ := TQ002FrmManChQ.CreateParented(AParent.Handle);

   Q002FrmManChQ.FormStyle := fsNormal;
   Q002FrmManChQ.BorderStyle:=bsNone;

   Application.MainForm.OnKeyPress:= Q002FrmManChQ.OnKeyPress;
   Q002FrmManChQ.Width:=AParent.Width;
   Q002FrmManChQ.Height:=AParent.Height;

   Q002FrmManChQ.Show;
   Result:=Q002FrmManChQ;

end;


function ShowProgramS(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSockCon): TForm;export; stdcall;

begin

   if DllApplication=nil then
   begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;


   if Assigned(Q002FrmManChQ) then
   begin
    if Q002FrmManChQ.FormClosed then
    begin

       Q002FrmManChQ := nil;

       Q002FrmManChQ :=TQ002FrmManChQ.CreateParented(AParent.Handle);
       with Q002FrmManChQ do
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
   Application.CreateForm(TQ002DMMain, Q002DMMain);
   Q002DMMain.SockCon.Connected:=false;
   initSockConn(Q002DMMain.SockCon);
   Application.CreateForm(TQ002FrmManChQ, Q002FrmManChQ);
     //DMU002Main.ConBro.Connection := _DBConn;
   Q002FrmManChQ :=TQ002FrmManChQ.CreateParented(AParent.Handle);
     with Q002FrmManChQ do
     begin
       BorderStyle := bsNone;
       Application.MainForm.OnKeyPress:= OnKeyPress;
       Top := 0;
       Left := 0;
       Width := AParent.Width;
       Height := AParent.Height;
     end;

   end;

   Application.MainForm.Caption:=Application.Title+' - [ '+Q002FrmManChQ.Caption+' ]';
   Q002FrmManChQ.ToolbarVisible:=_Parameter.BtnVisible;
   Q002FrmManChQ.ToolbarEnable:=_Parameter.BtnEnable;
   Q002DMMain.Dll := _Parameter;
   Q002FrmManChQ.Show;
   Result:=Q002FrmManChQ;


end;



procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;
end;

exports
    ResizeProgram,
    HandleMessageFunc,
    ShowProgramS;

begin

  DLLProc := @DLLUnloadProc;
end.

