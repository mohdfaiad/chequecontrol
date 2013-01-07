library CQPU003;

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
  SockCon,
  U003MainFrm in 'U003MainFrm.pas' {FrmU003Main},
  U003MainDM in 'U003MainDM.pas' {DMU003Main: TDataModule},
  PleaseWait in '..\BaseFrom\PleaseWait.pas' {PleaseWaitForm},
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas',
  uCiaXml in '..\LIB\uCiaXml.pas',
  LoadBank in '..\LIB\LoadBank.pas';

var
  DllApplication : TApplication = Nil;

{$R *.res}

function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin
   DMU003Main:=TDMU003Main.Create(_MainApp);

   DMU003Main.RSL.Connected:=false;
   DMU003Main.RSL.Address:=_Parameter;
   DMU003Main.RSL.Connected:=true;


  Result := TFrmU003Main.Create(_MainApp);
  begin
    Result.FormStyle := fsNormal;
    Result.WindowState := wsMaximized;
    Result.ShowModal();


   // FreeAndNil(Result);
  end;// else   
end;


procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(FrmU003Main) then
  begin
   FrmU003Main.Width := w;
   FrmU003Main.Height := h;
  end;
end;

Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;
    if not FrmU003Main.IsActive then
      Exit;

    if Assigned(FrmU003Main.ActiveControl) then
      begin
        Result := True;
        SendMessage(FrmU003Main.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(FrmU003Main) then
      begin
        Result := True;
        SendMessage(FrmU003Main.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end

end;

function ShowProgram(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TADOConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    FrmU003Main := TFrmU003Main.CreateParented(AParent.Handle);


    FrmU003Main.ADODataSet.Connection := _DBConn;
   // frmMainProgram.DCOM.Assign(_DBConn);


    FrmU003Main.FormStyle := fsNormal;
    FrmU003Main.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= FrmU003Main.OnKeyPress;
    FrmU003Main.Width:=AParent.Width;
    FrmU003Main.Height:=AParent.Height;
    //Result.Align:=alClient;

    FrmU003Main.Show();

    Result:=FrmU003Main;



end;

function ShowProgramA(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TDCOMConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    FrmU003Main := TFrmU003Main.CreateParented(AParent.Handle);

   // frmMainProgram.ADODataSet.Connection := _DBConn;
    FrmU003Main.DCOM.ComputerName:=_DBConn.ComputerName;
    FrmU003Main.DCOM.ServerGUID:=_DBConn.ServerGUID;
    FrmU003Main.DCOM.ServerName:=_DBConn.ServerName;



    FrmU003Main.FormStyle := fsNormal;
    FrmU003Main.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= FrmU003Main.OnKeyPress;
    FrmU003Main.Width:=AParent.Width;
    FrmU003Main.Height:=AParent.Height;
    //Result.Align:=alClient;

    FrmU003Main.Show();

    Result:=FrmU003Main;



end;

function ShowProgramS(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSockCon): TForm;export; stdcall;

begin

   if DllApplication=nil then
   begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;





   if Assigned(FrmU003Main) then
   begin
    if FrmU003Main.FormClosed then
    begin

       FrmU003Main := nil;

       FrmU003Main :=TFrmU003Main.CreateParented(AParent.Handle);
       with FrmU003Main do
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
     Application.CreateForm(TDMU003Main, DMU003Main);
     DMU003Main.RSL.Connected:=false;
     initSockConn(DMU003Main.RSL);
     {
     DMU003Main.RSL.Address:=_DBConn.Address;
     DMU003Main.RSL.Port:=_DBConn.Port;
     DMU003Main.RSL.Connected:=true;
     }
     //DMU003Main.ConBro.Connection := _DBConn;
     FrmU003Main :=TFrmU003Main.CreateParented(AParent.Handle);
     with FrmU003Main do
     begin
       BorderStyle := bsNone;
       Application.MainForm.OnKeyPress:= OnKeyPress;
       Top := 0;
       Left := 0;
       Width := AParent.Width;
       Height := AParent.Height;
     end;

   end;
   Application.MainForm.Caption:=Application.Title+' - [ '+FrmU003Main.Caption+' ]';
   FrmU003Main.ToolbarVisible:=_Parameter.BtnVisible;
   FrmU003Main.ToolbarEnable:=_Parameter.BtnEnable;
   DMU003Main.Dll := _Parameter;
   FrmU003Main.Show;
   Result:=FrmU003Main;

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
