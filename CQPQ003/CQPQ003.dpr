library CQPQ003;

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
  UIT_GLOBAL_LIB in '..\LIB\UIT_GLOBAL_LIB.PAS',
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  PleaseWait in '..\BaseFrom\PleaseWait.pas' {PleaseWaitForm},
  SockCon,
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas' {/,},
  uCiaXml in '..\LIB\uCiaXml.pas',
  CQPQ003EditChequeFrm in 'CQPQ003EditChequeFrm.pas' {FrmCQPQ003EditCheque},
  CQPQ003EditChequeDM in 'CQPQ003EditChequeDM.pas' {DMCQPQ003EditCheque: TDataModule},
  CQPQ003RemarkFrm in 'CQPQ003RemarkFrm.pas' {FrmCQPQ003Remark};

var
  DllApplication : TApplication = Nil;

{$R *.res}

function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin
   DMCQPQ003EditCheque:=TDMCQPQ003EditCheque.Create(_MainApp);

   DMCQPQ003EditCheque.EC.Connected:=false;
   DMCQPQ003EditCheque.EC.Address:=_Parameter;
   DMCQPQ003EditCheque.EC.Connected:=true;


  Result := TFrmCQPQ003EditCheque.Create(_MainApp);
  begin
    Result.FormStyle := fsNormal;
    Result.WindowState := wsMaximized;
    Result.ShowModal();


   // FreeAndNil(Result);
  end;// else  
end;



procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(FrmCQPQ003EditCheque) then
  begin
   FrmCQPQ003EditCheque.Width := w;
   FrmCQPQ003EditCheque.Height := h;
  end;
end;

Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;
    if not FrmCQPQ003EditCheque.IsActive then
      Exit;

    if Assigned(FrmCQPQ003EditCheque.ActiveControl) then
      begin
        Result := True;
        SendMessage(FrmCQPQ003EditCheque.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(FrmCQPQ003EditCheque) then
      begin
        Result := True;
        SendMessage(FrmCQPQ003EditCheque.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end

end;

function ShowProgram(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TADOConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    FrmCQPQ003EditCheque := TFrmCQPQ003EditCheque.CreateParented(AParent.Handle);


    FrmCQPQ003EditCheque.ADODataSet.Connection := _DBConn;
   // frmMainProgram.DCOM.Assign(_DBConn);


    FrmCQPQ003EditCheque.FormStyle := fsNormal;
    FrmCQPQ003EditCheque.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= FrmCQPQ003EditCheque.OnKeyPress;
    FrmCQPQ003EditCheque.Width:=AParent.Width;
    FrmCQPQ003EditCheque.Height:=AParent.Height;
    //Result.Align:=alClient;

    FrmCQPQ003EditCheque.Show();

    Result:=FrmCQPQ003EditCheque;



end;

function ShowProgramA(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TDCOMConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

    FrmCQPQ003EditCheque := TFrmCQPQ003EditCheque.CreateParented(AParent.Handle);

   // frmMainProgram.ADODataSet.Connection := _DBConn;
    FrmCQPQ003EditCheque.DCOM.ComputerName:=_DBConn.ComputerName;
    FrmCQPQ003EditCheque.DCOM.ServerGUID:=_DBConn.ServerGUID;
    FrmCQPQ003EditCheque.DCOM.ServerName:=_DBConn.ServerName;



    FrmCQPQ003EditCheque.FormStyle := fsNormal;
    FrmCQPQ003EditCheque.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= FrmCQPQ003EditCheque.OnKeyPress;
    FrmCQPQ003EditCheque.Width:=AParent.Width;
    FrmCQPQ003EditCheque.Height:=AParent.Height;
    //Result.Align:=alClient;

    FrmCQPQ003EditCheque.Show();

    Result:=FrmCQPQ003EditCheque;



end;

function ShowProgramS(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSockCon): TForm;export; stdcall;

begin

   if DllApplication=nil then
   begin
    DllApplication:=Application;
    Application:=_MainApp;
   end;





   if Assigned(FrmCQPQ003EditCheque) then
   begin
    if FrmCQPQ003EditCheque.FormClosed then
    begin

       FrmCQPQ003EditCheque := nil;

       FrmCQPQ003EditCheque :=TFrmCQPQ003EditCheque.CreateParented(AParent.Handle);
       with FrmCQPQ003EditCheque do
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
     Application.CreateForm(TDMCQPQ003EditCheque, DMCQPQ003EditCheque);
  Application.CreateForm(TFrmCQPQ003Remark, FrmCQPQ003Remark);
  DMCQPQ003EditCheque.EC.Connected:=false;
     initSockConn(DMCQPQ003EditCheque.EC);
     {DMU002Main.SC.Address := _DBConn.Address;
     DMU002Main.SC.Port := _DBConn.Port;
     DMU002Main.SC.Connected:=true;
     }

     //DMU002Main.ConBro.Connection := _DBConn;
     FrmCQPQ003EditCheque :=TFrmCQPQ003EditCheque.CreateParented(AParent.Handle);
     with FrmCQPQ003EditCheque do
     begin
       BorderStyle := bsNone;
       Application.MainForm.OnKeyPress:= OnKeyPress;
       Top := 0;
       Left := 0;
       Width := AParent.Width;
       Height := AParent.Height;
     end;

   end;

   Application.MainForm.Caption:=Application.Title+' - [ '+FrmCQPQ003EditCheque.Caption+' ]';
   FrmCQPQ003EditCheque.ToolbarVisible:=_Parameter.BtnVisible;
   FrmCQPQ003EditCheque.ToolbarEnable:=_Parameter.BtnEnable;
   DMCQPQ003EditCheque.Dll := _Parameter;
   FrmCQPQ003EditCheque.Show;
   Result:=FrmCQPQ003EditCheque;


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
