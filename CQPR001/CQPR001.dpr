library CQPR001;

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
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas',
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  MainProgramFrm in 'MainProgramFrm.pas' {frmMainProgram},
  ReportBaseFrm in '..\BaseFrom\ReportBaseFrm.pas' {frmReportBase},
  RptRcv000Frm in 'RptRcv000Frm.pas' {frmRptRcv000},
  RptDpt000Frm in 'RptDpt000Frm.pas' {frmRptDpt000},
  RptDpt001Frm in 'RptDpt001Frm.pas' {frmRptDpt001},
  RptDpt002Frm in 'RptDpt002Frm.pas' {frmRptDpt002},
  RptDpt003Frm in 'RptDpt003Frm.pas' {frmRptDpt003},
  RptMan001Frm in 'RptMan001Frm.pas' {frmRptMan001},
  GenReportFrm in 'GenReportFrm.pas' {frmGenReport};

var
  DllApplication : TApplication = Nil;

{$R *.res}

function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin

  Result := TfrmMainProgram.Create(_MainApp);
  begin
    Result.FormStyle := fsNormal;
    Result.WindowState := wsMaximized;

    TfrmMainProgram(Result).SockCon.Connected:=false;
    TfrmMainProgram(Result).SockCon.Address:=_Parameter;
    TfrmMainProgram(Result).SockCon.Connected:=True;
    Result.ShowModal();
   // FreeAndNil(Result);
  end;// else
end;


procedure ResizeProgram(w,h : Integer);stdcall;
begin
  if Assigned(frmMainProgram) then
  begin
   frmMainProgram.Width := w;
   frmMainProgram.Height := h;
  end;
end;

Function HandleMessageFunc(Msg : TMsg) : Boolean; stdcall;
begin
  Result := False;
    if not frmMainProgram.IsActive then
      Exit;

    if Assigned(frmMainProgram.ActiveControl) then
      begin
        Result := True;
        SendMessage(frmMainProgram.ActiveControl.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end
    else if Assigned(frmMainProgram) then
      begin
        Result := True;
        SendMessage(frmMainProgram.Handle, Msg.message, Msg.wParam, Msg.lparam);
      end

end;




function ShowReport(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSocketConnection): TForm;export; stdcall;

begin

 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;



  // Load Deposit Reconcile
  if _Parameter.Param1='DEP001' then
    if not Assigned(frmRptDpt000) then
    begin
        frmRptDpt000 := TfrmRptDpt000.Create(Application);

        frmRptDpt000.SockCon.Connected:=false;
        initSockConn(frmRptDpt000.SockCon);

        frmRptDpt000.FormStyle := fsNormal;
        frmRptDpt000.KeyPreview:=true;
        frmRptDpt000._Params:= 'DDR001';//_Parameter.Param1;   // report code

        frmRptDpt000.ToolbarVisible:=_Parameter.BtnVisible;
        frmRptDpt000.ToolbarEnable:=_Parameter.BtnEnable;
        frmRptDpt000.UserID:=_Parameter.UserID;
        frmRptDpt000.Branch:=_Parameter.Branch;
        frmRptDpt000.PDM:=_Parameter.PDM;
        frmRptDpt000.PDT:=_Parameter.PDT;
        frmRptDpt000.WorkStation:=_Parameter.WorkStation;
        frmRptDpt000.ShowModal;
        Result:=frmRptDpt000;
        FreeAndNil(frmRptDpt000);
    end;

  // Load Deposit PayIn
  if _Parameter.Param1='DEP002' then
    if not Assigned(frmRptDpt001) then
    begin
        frmRptDpt001 := TfrmRptDpt001.Create(Application);

        frmRptDpt001.SockCon.Connected:=false;
        initSockConn(frmRptDpt001.SockCon);

        frmRptDpt001.FormStyle := fsNormal;
        frmRptDpt001.KeyPreview:=true;
        frmRptDpt001._Params:=_Parameter.Param1;   // report code

        frmRptDpt001.ToolbarVisible:=_Parameter.BtnVisible;
        frmRptDpt001.ToolbarEnable:=_Parameter.BtnEnable;
        frmRptDpt001.UserID:=_Parameter.UserID;
        frmRptDpt001.Branch:=_Parameter.Branch;
        frmRptDpt001.PDM:=_Parameter.PDM;
        frmRptDpt001.PDT:=_Parameter.PDT;
        frmRptDpt001.WorkStation:=_Parameter.WorkStation;
        frmRptDpt001.ShowModal;
        Result:=frmRptDpt001;
        FreeAndNil(frmRptDpt001);
    end;

  // Load Deposit Pass cheque
  if _Parameter.Param1='DEP003' then
    if not Assigned(frmRptDpt002) then
    begin
        frmRptDpt002 := TfrmRptDpt002.Create(Application);

        frmRptDpt002.SockCon.Connected:=false;
        initSockConn(frmRptDpt002.SockCon);

        frmRptDpt002.FormStyle := fsNormal;
        frmRptDpt002.KeyPreview:=true;
        frmRptDpt002._Params:= 'DEP002_P'; //_Parameter.Param1;   // report code

        frmRptDpt002.ToolbarVisible:=_Parameter.BtnVisible;
        frmRptDpt002.ToolbarEnable:=_Parameter.BtnEnable;
        frmRptDpt002.UserID:=_Parameter.UserID;
        frmRptDpt002.Branch:=_Parameter.Branch;
        frmRptDpt002.PDM:=_Parameter.PDM;
        frmRptDpt002.PDT:=_Parameter.PDT;
        frmRptDpt002.WorkStation:=_Parameter.WorkStation;
        frmRptDpt002.ShowModal;
        Result:=frmRptDpt002;
        FreeAndNil(frmRptDpt002);
    end;


  // Load Deposit Return cheque
  if _Parameter.Param1='DEP004' then
    if not Assigned(frmRptDpt003) then
    begin
        frmRptDpt003 := TfrmRptDpt003.Create(Application);

        frmRptDpt003.SockCon.Connected:=false;
        initSockConn(frmRptDpt003.SockCon);

        frmRptDpt003.FormStyle := fsNormal;
        frmRptDpt003.KeyPreview:=true;
        frmRptDpt003._Params:= 'DEP002';//_Parameter.Param1;   // report code

        frmRptDpt003.ToolbarVisible:=_Parameter.BtnVisible;
        frmRptDpt003.ToolbarEnable:=_Parameter.BtnEnable;
        frmRptDpt003.UserID:=_Parameter.UserID;
        frmRptDpt003.Branch:=_Parameter.Branch;
        frmRptDpt003.PDM:=_Parameter.PDM;
        frmRptDpt003.PDT:=_Parameter.PDT;
        frmRptDpt003.WorkStation:=_Parameter.WorkStation;
        frmRptDpt003.ShowModal;
        Result:=frmRptDpt003;
        FreeAndNil(frmRptDpt003);
    end;


  // Load Deposit Return cheque
  if _Parameter.Param1='MAN001' then
    if not Assigned(frmRptMan001) then
    begin
        frmRptMan001 := TfrmRptMan001.Create(Application);

        frmRptMan001.SockCon.Connected:=false;
        initSockConn(frmRptMan001.SockCon);

        frmRptMan001.FormStyle := fsNormal;
        frmRptMan001.KeyPreview:=true;
        frmRptMan001._Params:=_Parameter.Param1;   // report code

        frmRptMan001.ToolbarVisible:=_Parameter.BtnVisible;
        frmRptMan001.ToolbarEnable:=_Parameter.BtnEnable;
        frmRptMan001.UserID:=_Parameter.UserID;
        frmRptMan001.Branch:=_Parameter.Branch;
        frmRptMan001.PDM:=_Parameter.PDM;
        frmRptMan001.PDT:=_Parameter.PDT;
        frmRptMan001.WorkStation:=_Parameter.WorkStation;
        frmRptMan001.ShowModal;
        Result:=frmRptMan001;
        FreeAndNil(frmRptMan001);
    end;



  // Temp Receive
  if _Parameter.Param1='RCV002' then
    if not Assigned(frmRptRcv000) then
    begin
        frmRptRcv000 := TfrmRptRcv000.Create(Application);

        frmRptRcv000.SockCon.Connected:=false;
        initSockConn(frmRptRcv000.SockCon);

        frmRptRcv000.FormStyle := fsNormal;
        frmRptRcv000.KeyPreview:=true;
        frmRptRcv000._Params:=_Parameter.Param1;   // report code

        frmRptRcv000.ToolbarVisible:=_Parameter.BtnVisible;
        frmRptRcv000.ToolbarEnable:=_Parameter.BtnEnable;
        frmRptRcv000.UserID:=_Parameter.UserID;
        frmRptRcv000.Branch:=_Parameter.Branch;
        frmRptRcv000.PDM:=_Parameter.PDM;
        frmRptRcv000.PDT:=_Parameter.PDT;
        frmRptRcv000.WorkStation:=_Parameter.WorkStation;
        frmRptRcv000.ShowModal;
        Result:=frmRptRcv000;
        FreeAndNil(frmRptRcv000);
    end;


end;

function GenReport(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSocketConnection): TForm;export; stdcall;

begin

 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;




  // Load Deposit Reconcile
 // if _Parameter.Param1='DEP001' then
    if not Assigned(frmGenReport) then
    begin
        frmGenReport := TfrmGenReport.Create(Application);

        frmGenReport.SockCon.Connected:=false;
        initSockConn(frmGenReport.SockCon);

        frmGenReport.FormStyle := fsNormal;
        frmGenReport.KeyPreview:=true;
        //frmGenReport._Params:= 'M02';//_Parameter.Param1;   // report code
        frmGenReport.reportCode:=_Parameter.Param1;// 'M02';//_Parameter.Param1;   // report code
//        frmGenReport.reportTitle:=_Parameter.

        frmGenReport.ToolbarVisible:=_Parameter.BtnVisible;
        frmGenReport.ToolbarEnable:=_Parameter.BtnEnable;
        frmGenReport.UserID:=_Parameter.UserID;
        frmGenReport.Branch:=_Parameter.Branch;
        frmGenReport.PDM:=_Parameter.PDM;
        frmGenReport.PDT:=_Parameter.PDT;
        frmGenReport.WorkStation:=_Parameter.WorkStation;
        frmGenReport.ShowModal;
        Result:=frmGenReport;
        FreeAndNil(frmGenReport);
    end;


end;



procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;

end;

exports
 ShowReport,GenReport;
//    ShowProgram,ResizeProgram,ShowProgramA,ShowProgramS,Execute,HandleMessageFunc;

begin

  DLLProc := @DLLUnloadProc;
end.
