library CQPE000;

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
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  SockCon,
  MPForm in 'MPForm.pas' {FormMP},
  PUForm in 'PUForm.pas' {FormPU},
  MainDM in 'MainDM.pas' {DMMain: TDataModule},
  PleaseWait in '..\BaseFrom\PleaseWait.pas' {PleaseWaitForm};

var
  DllApplication : TApplication = Nil;

{$R *.res}

procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(FormMP) then
  begin
   FormMP.Width := w;
   FormMP.Height := h;
  end;
end;

function ShowProgramS(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSockCon): TForm;export; stdcall;

begin

   if DllApplication=nil then
   begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;





   if Assigned(FormMP) then
   begin
    if FormMP.FormClosed then
    begin

       FormMP := nil;

       FormMP :=TFormMP.CreateParented(AParent.Handle);

       FormMP.BorderStyle := bsNone;
       Application.MainForm.OnKeyPress:= FormMP.OnKeyPress;
       FormMP.Top := 0;
       FormMP.Left := 0;
       FormMP.Width := AParent.Width;
       FormMP.Height := AParent.Height;

    end;

   end
   else
   begin

     Application.CreateForm(TDMMain, DMMain);
     DMMain.ConBro.Connection := _DBConn;
     FormMP :=TFormMP.CreateParented(AParent.Handle);
     FormMP.BorderStyle := bsNone;
     Application.MainForm.OnKeyPress:= FormMP.OnKeyPress;
     FormMP.Top := 0;
     FormMP.Left := 0;
     FormMP.Width := AParent.Width;
     FormMP.Height := AParent.Height;

   end;

   FormMP.ToolbarVisible:=_Parameter.BtnVisible;
   FormMP.ToolbarEnable:=_Parameter.BtnEnable;

   FormMP.Show;
   Result:=FormMP;

end;


function ShowProgram(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSockCon): TForm;export; stdcall;

begin

   if DllApplication=nil then
   begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;


   if Assigned(FormMP) then
   begin
    if FormMP.FormClosed then
    begin

       FormMP := nil;

       FormMP :=TFormMP.CreateParented(AParent.Handle);

       FormMP.BorderStyle := bsNone;
       Application.MainForm.OnKeyPress:= FormMP.OnKeyPress;
       FormMP.Top := 0;
       FormMP.Left := 0;
       FormMP.Width := AParent.Width;
       FormMP.Height := AParent.Height;

       FormMP.ToolbarEnable := _Parameter.BtnEnable;

    end;

   end
   else
   begin

     Application.CreateForm(TDMMain, DMMain);
     DMMain.ConBro.Connection := _DBConn;
     FormMP :=TFormMP.CreateParented(AParent.Handle);
     FormMP.BorderStyle := bsNone;
     Application.MainForm.OnKeyPress:= FormMP.OnKeyPress;
     FormMP.Top := 0;
     FormMP.Left := 0;
     FormMP.Width := AParent.Width;
     FormMP.Height := AParent.Height;

     FormMP.ToolbarEnable := _Parameter.BtnEnable;

   end;

   FormMP.Show;
   Result:=FormMP;

end;

Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;
    if not FormMP.IsActive then
      Exit;
    

    if Assigned(FormMP.ActiveControl) then
      begin
        Result := True;
        SendMessage(FormMP.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(FormMP) then
      begin
        Result := True;
        SendMessage(FormMP.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end

end;


procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;
end;

exports
    ResizeProgram,
    HandleMessageFunc,
    ShowProgram,
    ShowProgramS;

begin

  DLLProc := @DLLUnloadProc;
end.

