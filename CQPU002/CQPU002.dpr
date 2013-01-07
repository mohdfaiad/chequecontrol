library CQPU002;

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
  PleaseWait in '..\BaseFrom\PleaseWait.pas' {PleaseWaitForm},
  SockCon,
  U002EditingFrm in 'U002EditingFrm.pas' {FrmU002Editing},
  U002ViewHisFrm in 'U002ViewHisFrm.pas' {FrmU002ViewHis},
  U002SimilarReceiveFrm in 'U002SimilarReceiveFrm.pas' {FrmU002SimilarReceive},
  U002MainDM in 'U002MainDM.pas' {DMU002Main: TDataModule},
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas' {/,},
  uCiaXml in '..\LIB\uCiaXml.pas',
  LoadBank in '..\LIB\LoadBank.pas',
  U002ConFullFrm in 'U002ConFullFrm.pas' {FrmU002ConFull},
  U002DelMemoFrm in 'U002DelMemoFrm.pas' {FrmU002DelMemo},
  U002AmountInvFrm in 'U002AmountInvFrm.pas' {FrmU002AmountInv},
  U002MainFrm in 'U002MainFrm.pas' {FrmU002Main};

var
  DllApplication : TApplication = Nil;

{$R *.res}

function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin
   DMU002Main:=TDMU002Main.Create(_MainApp);

   DMU002Main.SC.Connected:=false;
   DMU002Main.SC.Address:=_Parameter;
   DMU002Main.SC.Connected:=true;


  Result := TFrmU002Main.Create(_MainApp);
  begin
    Result.FormStyle := fsNormal;
    Result.WindowState := wsMaximized;
    Result.ShowModal();


   // FreeAndNil(Result);
  end;// else  
end;



procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(FrmU002Main) then
  begin
   FrmU002Main.Width := w;
   FrmU002Main.Height := h;
  end;
end;

Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;
    if not FrmU002Main.IsActive then
      Exit;

    if Assigned(FrmU002Main.ActiveControl) then
      begin
        Result := True;
        SendMessage(FrmU002Main.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(FrmU002Main) then
      begin
        Result := True;
        SendMessage(FrmU002Main.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end

end;

function ShowProgram(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TADOConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    FrmU002Main := TFrmU002Main.CreateParented(AParent.Handle);


    FrmU002Main.ADODataSet.Connection := _DBConn;
   // frmMainProgram.DCOM.Assign(_DBConn);


    FrmU002Main.FormStyle := fsNormal;
    FrmU002Main.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= FrmU002Main.OnKeyPress;
    FrmU002Main.Width:=AParent.Width;
    FrmU002Main.Height:=AParent.Height;
    //Result.Align:=alClient;

    FrmU002Main.Show();

    Result:=FrmU002Main;



end;

function ShowProgramA(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TDCOMConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    FrmU002Main := TFrmU002Main.CreateParented(AParent.Handle);

   // frmMainProgram.ADODataSet.Connection := _DBConn;
    FrmU002Main.DCOM.ComputerName:=_DBConn.ComputerName;
    FrmU002Main.DCOM.ServerGUID:=_DBConn.ServerGUID;
    FrmU002Main.DCOM.ServerName:=_DBConn.ServerName;



    FrmU002Main.FormStyle := fsNormal;
    FrmU002Main.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= FrmU002Main.OnKeyPress;
    FrmU002Main.Width:=AParent.Width;
    FrmU002Main.Height:=AParent.Height;
    //Result.Align:=alClient;

    FrmU002Main.Show();

    Result:=FrmU002Main;



end;

function ShowProgramS(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSockCon): TForm;export; stdcall;

begin

   if DllApplication=nil then
   begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;





   if Assigned(FrmU002Main) then
   begin
    if FrmU002Main.FormClosed then
    begin

       FrmU002Main := nil;

       FrmU002Main :=TFrmU002Main.CreateParented(AParent.Handle);
       with FrmU002Main do
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
     Application.CreateForm(TDMU002Main, DMU002Main);
     DMU002Main.SC.Connected:=false;
     initSockConn(DMU002Main.SC);
     {DMU002Main.SC.Address := _DBConn.Address;
     DMU002Main.SC.Port := _DBConn.Port;
     DMU002Main.SC.Connected:=true;
     }

     //DMU002Main.ConBro.Connection := _DBConn;
     FrmU002Main :=TFrmU002Main.CreateParented(AParent.Handle);
     with FrmU002Main do
     begin
       BorderStyle := bsNone;
       Application.MainForm.OnKeyPress:= OnKeyPress;
       Top := 0;
       Left := 0;
       Width := AParent.Width;
       Height := AParent.Height;
     end;

   end;

   Application.MainForm.Caption:=Application.Title+' - [ '+FrmU002Main.Caption+' ]';
   FrmU002Main.ToolbarVisible:=_Parameter.BtnVisible;
   FrmU002Main.ToolbarEnable:=_Parameter.BtnEnable;
   DMU002Main.Dll := _Parameter;
   FrmU002Main.Show;
   Result:=FrmU002Main;


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
