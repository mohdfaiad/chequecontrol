library CQPU006;

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
  DBClient,
  SqlExpr,
  ADODB,
  MConnect,
  SConnect,
  UIT_GLOBAL_LIB in '..\LIB\UIT_GLOBAL_LIB.PAS',
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas' {/,},
  uCiaXml in '..\LIB\uCiaXml.pas',
  CQPU001_UTILS in '..\CQPU001\CQPU001_UTILS.pas',
  ChequeSeparateFrm in 'ChequeSeparateFrm.pas' {frmChequeSeparate},
  SeperateChqItemFrm in 'SeperateChqItemFrm.pas' {frmSeperateChqItem},
  ConfirmOtherAmountFrm in 'ConfirmOtherAmountFrm.pas' {frmConfirmOtherAmount},
  ConfirmSaveFrm in 'ConfirmSaveFrm.pas' {frmConfirmSave},
  SearchContractFrm in 'SearchContractFrm.pas' {frmSearchContract};

type
TPluginClass = class of TfrmChequeSeparate;

var
  DllApplication : TApplication = Nil;
  pParams:TPluginParams;

{$R *.res}


//function MyFormClass: TFormClass; stdcall; export;
procedure initParams(params:TPluginParams);stdcall;export;
begin
  pParams:=params;
end;


function PluginClass: TFormClass; stdcall;export;
begin
  Result := TfrmChequeSeparate;
end;

function copyCds(cdsSource:TClientDataSet;cdsTarget:TClientDataSet):boolean;
var i:integer;
begin
try
  Result := False;

    cdsTarget.Close;
    cdsTarget.ProviderName:='';
    cdsTarget.RemoteServer:=nil;
    cdsTarget.FieldDefs.Clear;

    for i := 0 to (cdsSource.FieldDefs.Count - 1)  do
            cdsTarget.FieldDefs.Add(cdsSource.FieldDefList.FieldDefs[i].Name,cdsSource.FieldDefList.FieldDefs[i].DataType,cdsSource.FieldDefList.FieldDefs[i].Size);

    cdsTarget.CreateDataSet;
    cdsTarget.Data:=cdsSource.Data;
  finally
    cdsTarget.First;
    result := True;
  end;
end;

function ExeCute(cds:TClientDataSet;_MainApp:TApplication;Params:TPluginParams):integer;stdcall;export;
begin

 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;


  if trim(Params.param1)='' then
  begin
    Application.MessageBox(pchar('Contract connot empty!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
    Screen.Cursor:=crDefault;
    exit;
  end;

  frmChequeSeparate:=TfrmChequeSeparate.Create(Application);
  frmConfirmOtherAmount:=TfrmConfirmOtherAmount.Create(Application);

  frmChequeSeparate._Contract:=Params.param1;
  frmChequeSeparate._ChqNo:=Params.param2;
  frmChequeSeparate._ChqAMT:=Params.param11;
  frmChequeSeparate._ChqCount:=Params.param6;

  frmChequeSeparate.Branch:=Params.Branch;
  frmChequeSeparate.PDM:=Params.PDM;
  frmChequeSeparate.PDT:=Params.PDT;
  frmChequeSeparate.WorkStation:=Params.WorkStation;
  frmChequeSeparate.UserID:=Params.UserID;




  initSockConn(frmChequeSeparate.SockCon);
  frmSeperateChqItem:=TfrmSeperateChqItem.Create(Application);
  //frmChequeSeparate.cdsSeperateTmp
  Screen.Cursor:=crDefault;
  frmChequeSeparate.ShowModal;

  if frmChequeSeparate._Ans=mrOk then
  begin
    if frmChequeSeparate.cdsSeperateTmp.RecordCount>0 then
    begin
      //ShowMessage(inttostr(frmChequeSeparate.cdsSeperateTmp.RecordCount));
      copyCds(frmChequeSeparate.cdsSeperateTmp,cds);
    end
  end else
  if frmChequeSeparate._Ans=mrYes then
    if frmChequeSeparate.cdsSeperateTmp.RecordCount>0 then
    begin
      copyCds(frmChequeSeparate.cdsSeperateTmp,cds);
    end;


  result:=frmChequeSeparate._Ans;
end;




procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;
end;

exports
    PluginClass,initParams,ExeCute;

begin

  DLLProc := @DLLUnloadProc;
end.
