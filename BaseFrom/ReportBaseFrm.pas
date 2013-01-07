unit ReportBaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, MConnect, SConnect, SockCon, frxClass, frxDBSet,
  frxADOComponents, frxIBXComponents, frxBDEComponents, frxBarcode,
  frxDBXComponents, frxChart, frxExportHTML, frxDCtrl, frxExportPDF,
  frxExportXLS, frxExportCSV, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, ExtCtrls,UIT_GLOBAL_LIB,ZLibEx;

type

 TRParams = record
      Name : string;
      Value : string;
    end;


 TReportParam = Class
      public
        RParams : array of TRParams;

      constructor Create;
      procedure AddParam(Name: string; Value: string);

    End;


  TfrmReportBase = class(TForm)
    frxCSVExport1: TfrxCSVExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxDialogControls1: TfrxDialogControls;
    frxHTMLExport1: TfrxHTMLExport;
    frxChartObject1: TfrxChartObject;
    cdsReport4: TClientDataSet;
    cdsReport2: TClientDataSet;
    cdsReport3: TClientDataSet;
    cdsReport5: TClientDataSet;
    frxDBXComponents1: TfrxDBXComponents;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxBDEComponents1: TfrxBDEComponents;
    frxIBXComponents1: TfrxIBXComponents;
    frxADOComponents1: TfrxADOComponents;
    frxReport: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    cdsRepTemp: TClientDataSet;
    cdsReport: TClientDataSet;
    cdsReport1: TClientDataSet;
    frxDBDataset4: TfrxDBDataset;
    SockCon: TSockCon;
    Panel1: TPanel;
    btnCancel: TcxButton;
    btnOK: TcxButton;



  private
    { Private declarations }
    FToolbarEnable: TToolbarBtns;
    FToolbarVisible: TToolbarBtns;
    FShowLogin:boolean;
    FFormClosed: boolean;
    FIsActive: boolean;
    FBranch,FUserID,FPDM,FPDT,FWorkStation:string;
    procedure SetShowLogin(const Value: boolean);
    procedure SetToolbarEnable(const Value: TToolbarBtns);
    procedure SetToolbarVisible(const Value: TToolbarBtns);
  public
    { Public declarations }
     _Params:string;

    function genReportA(scon:TSockCon;cds:TClientDataSet;sql_fieldname,reportid:string;_params:TReportParam):boolean;
    procedure ShowReport(scon:TsockCon;reportid:string; _params:array of TReportParam);


    property ToolbarEnable : TToolbarBtns read FToolbarEnable write SetToolbarEnable;
    property ToolbarVisible : TToolbarBtns read FToolbarVisible write SetToolbarVisible;
    property FormClosed : boolean read FFormClosed write FFormClosed;
    property IsActive : boolean read FIsActive write FIsActive;
    property UserID : string read FUserID write FUserID;
    property Branch : string read FBranch write FBranch;
    property PDM : string read FPDM write FPDM;
    property PDT : string read FPDT write FPDT;
    property WorkStation : string read FWorkStation write FWorkStation;
    property ShowLogin : boolean read FShowLogin write SetShowLogin;

  end;

var
  frmReportBase: TfrmReportBase;

implementation

{$R *.dfm}


{ Decompress a stream }
procedure DecompressStream(inpStream, outStream: TStream);
var
  InpBuf, OutBuf: Pointer;
  OutBytes, sz: Integer;
begin
  InpBuf := nil;
  OutBuf := nil;
  sz     := inpStream.Size - inpStream.Position;
  if sz > 0 then
    try
      GetMem(InpBuf, sz);
      inpStream.Read(InpBuf^, sz);
      ZDecompress(InpBuf, sz, OutBuf, OutBytes);
      outStream.Write(OutBuf^, OutBytes);
    finally
      if InpBuf <> nil then FreeMem(InpBuf);
      if OutBuf <> nil then FreeMem(OutBuf);
    end;
  outStream.Position := 0;
end;

function TfrmReportBase.genReportA(scon: TSockCon; cds: TClientDataSet;
  sql_fieldname, reportid: string; _params: TReportParam): boolean;
var p,pcount:integer;
    paramName,paramValue,sqlstr:string;

    isok:boolean;

    _cdsTemp:TClientDataSet;
begin

          isok:=true;
          _cdsTemp:=TClientDataSet.Create(self);

          _cdsTemp.Close;
          _cdsTemp.RemoteServer:=scon;
          TSockCon(_cdsTemp.RemoteServer).AddProv('report_prov005', 'ALL');
          _cdsTemp.ProviderName:='report_prov005';
        TSockCon(_cdsTemp.RemoteServer).AddProv('report_prov005', 'ALL');


        _cdsTemp.ProviderName:='report_prov005';

         // _cdsTemp.ProviderName:='cdsRepTemp';
         // _cdsTemp.RemoteServer:=scon;
          _cdsTemp.CommandText:='select * from  CQDM010  where REPORT_ID='''+reportid+'''';
          _cdsTemp.Open;


          sqlstr:=_cdsTemp.fieldbyname(sql_fieldname).AsString;

          if (Trim(sqlstr)<>'') then
          begin
            cds.Close;
            cds.RemoteServer:=scon;
            TSockCon(cds.RemoteServer).AddProv('report_prov006', 'ALL');
            cds.ProviderName:='report_prov006';

        cds.ProviderName:='report_prov006';
            cds.CommandText:=sqlstr;
            if _params<>nil then      // have parameter
            begin
             // if High(_params.RParams)>0 then
              begin
              if ((cds.Params.Count>0) and (length(_params.RParams)>=cds.Params.Count)) then
                for p:=0 to cds.Params.Count-1 do
                begin
                  //if Trim(paramName)<>'' then
                    for pcount:=0 to length(_params.RParams)-1 do
                    begin


                      paramName:= _params.RParams[pcount].Name;//Before('=',params.Strings[pcount]);
                      paramValue:=_params.RParams[pcount].Value;//After('=',params.Strings[pcount]);

                      if pcount<=cds.Params.Count then
                        if cds.Params.Items[p].Name=paramName then
                        begin
                           cds.Params.Items[p].Value:=paramValue;
                        end;
                    end;

                  if Trim(cds.Params.Items[p].Value)='' then
                  begin
                    Application.MessageBox(pchar('Parameter '''+cds.Params.Items[p].Name+''' not found!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
                    isok:=false;
                  end;
                end;
              end;{ else
              begin
                // no parameter found
                Application.MessageBox(pchar('No Parameter  found!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
                isok:=false;
              end;  }
              if isok then
                cds.open;
            end else
              begin
                // no parameter found
                Application.MessageBox(pchar('No Parameter  found!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
                isok:=false;
              end;
          end;

          Result:=isok;
end;

procedure TfrmReportBase.SetShowLogin(const Value: boolean);
begin
  FShowLogin := Value;
end;

procedure TfrmReportBase.SetToolbarEnable(const Value: TToolbarBtns);
begin
  FToolbarEnable := Value;
end;

procedure TfrmReportBase.SetToolbarVisible(const Value: TToolbarBtns);
begin
  FToolbarVisible := Value;
end;

procedure TfrmReportBase.ShowReport(scon: TsockCon; reportid: string;
  _params: array of TReportParam);
var
  I,reportTag: Integer;
 // dsName:TStringList;
  rStream,rptStream:Tstream;
  showreport:boolean;

  rpVariable:TReportParam;

begin
  showreport:=true;


  rptStream:=TMemoryStream.Create;
  rStream:=TMemoryStream.Create;
  cdsRepTemp.Close;

  cdsRepTemp.RemoteServer:=scon;

  TSockCon(cdsRepTemp.RemoteServer).AddProv('report_prov004', 'ALL');


  cdsRepTemp.ProviderName:='report_prov004';
  cdsRepTemp.CommandText:='select * from  CQDM010  where REPORT_ID='''+reportid+'''';



  cdsRepTemp.Open;

  if cdsRepTemp.Active then
    if cdsRepTemp.RecordCount>0 then
    begin

       rStream:=cdsRepTemp.CreateBlobStream(cdsRepTemp.FieldByName('REPORT_CONTEXT'), bmRead);
       reportTag:=cdsRepTemp.fieldByName('ID').AsInteger;

       if (rStream.Size>0) then
       begin
         DecompressStream(rStream,rptStream);
         frxReport.LoadFromStream(rptStream);

         cdsReport.close;
         cdsReport1.close;
         cdsReport2.close;
         cdsReport3.close;
         cdsReport4.close;
         cdsReport5.close;

         cdsReport.RemoteServer:=SockCon;
         cdsReport1.RemoteServer:=SockCon;
         cdsReport2.RemoteServer:=SockCon;
         cdsReport3.RemoteServer:=SockCon;
         cdsReport4.RemoteServer:=SockCon;
         cdsReport5.RemoteServer:=SockCon;
                  if trim(cdsRepTemp.fieldbyname('STRSQL').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport,'STRSQL',reportid,_params[0]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL1').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport1,'STRSQL1',reportid,_params[1]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL2').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport2,'STRSQL2',reportid,_params[1]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL3').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport3,'STRSQL3',reportid,_params[1]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL4').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport4,'STRSQL4',reportid,_params[1]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL5').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport5,'STRSQL5',reportid,_params[1]);


                  DecompressStream(rStream,rptStream);
                  frxReport.LoadFromStream(rptStream);
                  frxReport.Tag:= reportTag;

                  {
                  obj[0]:=TReportParam.Create;
                  obj[0].AddParam('DNO','cccc');
                  obj[0].AddParam('ACT','A');
                  frxReport.Objects.Add(obj);
                  }

                  if showreport then
                      frxReport.ShowReport();

       end;


    end;
end;


{ TReportParam }



procedure TReportParam.AddParam(Name, Value: string);
var NewCount:integer;
begin
   NewCount := Length(RParams)+1;
  SetLength(RParams, NewCount);
  RParams[High(RParams)].Name:=Name;
  RParams[High(RParams)].Value:=Value;
end;

constructor TReportParam.Create;
begin
    inherited Create;
    RParams:=nil;
end;



end.
