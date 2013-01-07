unit Q002ManChqFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, Provider, DB, ADODB, ImgList,
  UIT_UTILS_LIB, Menus, cxLookAndFeelPainters, frxBarcode, frxDBXComponents,
  frxADOComponents, frxIBXComponents, frxClass, frxBDEComponents, frxChart,
  frxDCtrl, frxExportHTML, frxExportCSV, frxExportPDF, frxExportXLS, DBClient,
  frxDBSet, SConnect, SockCon, MConnect, cxTextEdit, cxControls, cxContainer,
  cxEdit, cxLabel, StdCtrls, cxButtons, ComCtrls, ToolWin, JvExExtCtrls,
  JvExtComponent, JvPanel, ExtCtrls, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxCheckBox;

type
  TQ002FrmManChQ = class(TfrmBase)
    DTSManReq: TDataSource;
    cxLabel10: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    cxComboBox1: TcxComboBox;
    ManReqDate1: TcxDateEdit;
    cxLabel3: TcxLabel;
    ManReqDate2: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxButton10: TcxButton;
    cxLabel11: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    pnl2: TPanel;
    cxButton12: TcxButton;
    cxButton14: TcxButton;
    cxGrid2: TcxGrid;
    gdbtvLogList: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    DataSource1: TDataSource;
    gdbtvLogListCQMACT: TcxGridDBColumn;
    gdbtvLogListCQMSTS: TcxGridDBColumn;
    gdbtvLogListCQMBRN: TcxGridDBColumn;
    gdbtvLogListCQMPDM: TcxGridDBColumn;
    gdbtvLogListCQMPDT: TcxGridDBColumn;
    gdbtvLogListCQMCNO: TcxGridDBColumn;
    gdbtvLogListCQMBNK: TcxGridDBColumn;
    gdbtvLogListCQMBBR: TcxGridDBColumn;
    gdbtvLogListCQMNO1: TcxGridDBColumn;
    gdbtvLogListCQMNO2: TcxGridDBColumn;
    gdbtvLogListCQMTYP: TcxGridDBColumn;
    gdbtvLogListCQMCTY: TcxGridDBColumn;
    gdbtvLogListCQMDAT: TcxGridDBColumn;
    gdbtvLogListCQMAMT: TcxGridDBColumn;
    gdbtvLogListCQMDUE: TcxGridDBColumn;
    gdbtvLogListCQMSTD: TcxGridDBColumn;
    gdbtvLogListCQMPAT: TcxGridDBColumn;
    gdbtvLogListCQMTRD: TcxGridDBColumn;
    gdbtvLogListCQMCCQ: TcxGridDBColumn;
    gdbtvLogListCQMCUS: TcxGridDBColumn;
    gdbtvLogListCQMVTP: TcxGridDBColumn;
    gdbtvLogListCQMGEN: TcxGridDBColumn;
    gdbtvLogListCQMVBR: TcxGridDBColumn;
    gdbtvLogListCQMVYY: TcxGridDBColumn;
    gdbtvLogListCQMRUN: TcxGridDBColumn;
    gdbtvLogListCQMITM: TcxGridDBColumn;
    gdbtvLogListCQMPOS: TcxGridDBColumn;
    gdbtvLogListCQMRED: TcxGridDBColumn;
    gdbtvLogListCQMRTD: TcxGridDBColumn;
    gdbtvLogListCQMEXC: TcxGridDBColumn;
    gdbtvLogListCQMDIV: TcxGridDBColumn;
    gdbtvLogListCQMACC: TcxGridDBColumn;
    gdbtvLogListCQMPID: TcxGridDBColumn;
    gdbtvLogListCQMPIN: TcxGridDBColumn;
    gdbtvLogListCQMPBY: TcxGridDBColumn;
    gdbtvLogListCQMRFN: TcxGridDBColumn;
    gdbtvLogListCQMRS1: TcxGridDBColumn;
    gdbtvLogListCQMRS2: TcxGridDBColumn;
    gdbtvLogListCQMRS3: TcxGridDBColumn;
    gdbtvLogListCQMRS4: TcxGridDBColumn;
    gdbtvLogListCQMRS5: TcxGridDBColumn;
    gdbtvLogListCQMRN1: TcxGridDBColumn;
    gdbtvLogListCQMRN2: TcxGridDBColumn;
    gdbtvLogListCQMRN3: TcxGridDBColumn;
    gdbtvLogListCQMRN4: TcxGridDBColumn;
    gdbtvLogListCQMRN5: TcxGridDBColumn;
    gdbtvLogListCQMETD: TcxGridDBColumn;
    gdbtvLogListCQMETU: TcxGridDBColumn;
    gdbtvLogListCQMETW: TcxGridDBColumn;
    gdbtvLogListCQMMTD: TcxGridDBColumn;
    gdbtvLogListCQMMTU: TcxGridDBColumn;
    gdbtvLogListCQMMTW: TcxGridDBColumn;
    gdbtvLogListCQMCRD: TcxGridDBColumn;
    gdbtvLogListCQMCRU: TcxGridDBColumn;
    gdbtvLogListCQMCRW: TcxGridDBColumn;
    cxGrid2DBTableView1CQSACT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSSTS: TcxGridDBColumn;
    cxGrid2DBTableView1CQSBRN: TcxGridDBColumn;
    cxGrid2DBTableView1CQSPDM: TcxGridDBColumn;
    cxGrid2DBTableView1CQSPDT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSDNO: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRNO: TcxGridDBColumn;
    cxGrid2DBTableView1CQSSEQ: TcxGridDBColumn;
    cxGrid2DBTableView1CQSCBR: TcxGridDBColumn;
    cxGrid2DBTableView1CQSCPD: TcxGridDBColumn;
    cxGrid2DBTableView1CQSCTP: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRCT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSAMT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSCSN: TcxGridDBColumn;
    cxGrid2DBTableView1CQSVAT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSWHT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSNET: TcxGridDBColumn;
    cxGrid2DBTableView1CQSADF: TcxGridDBColumn;
    cxGrid2DBTableView1CQSCFA: TcxGridDBColumn;
    cxGrid2DBTableView1CQSPFA: TcxGridDBColumn;
    cxGrid2DBTableView1CQSWFA: TcxGridDBColumn;
    cxGrid2DBTableView1CQSIWT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRS1: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRS2: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRS3: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRS4: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRS5: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRN1: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRN2: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRN3: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRN4: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRN5: TcxGridDBColumn;
    cxGrid2DBTableView1CQSETD: TcxGridDBColumn;
    cxGrid2DBTableView1CQSETW: TcxGridDBColumn;
    cxGrid2DBTableView1CQSETU: TcxGridDBColumn;
    cxGrid2DBTableView1CQSMTD: TcxGridDBColumn;
    cxGrid2DBTableView1CQSMTU: TcxGridDBColumn;
    cxGrid2DBTableView1CQSMTW: TcxGridDBColumn;
    gdbtvLogListCHK: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView1CQTSTS: TcxGridDBColumn;
    cxGrid1DBTableView1CQTEGN: TcxGridDBColumn;
    cxGrid1DBTableView1CQTBRH: TcxGridDBColumn;
    cxGrid1DBTableView1CQTNO2: TcxGridDBColumn;
    cxGrid1DBTableView1CQTCTY: TcxGridDBColumn;
    cxGrid1DBTableView1CQTDAT: TcxGridDBColumn;
    cxGrid1DBTableView1CQTAMT: TcxGridDBColumn;
    cxGrid1DBTableView1CQTCCQ: TcxGridDBColumn;
    cxGrid1DBTableView1CQTMNS: TcxGridDBColumn;
    cxGrid1DBTableView1CQTMMO: TcxGridDBColumn;
    cxGrid1DBTableView1CQTETW: TcxGridDBColumn;
    cxGrid1DBTableView1CQTRFN: TcxGridDBColumn;
    cxGrid1DBTableView1CQTCON: TcxGridDBColumn;
    cxGrid1DBTableView1CQTDEA: TcxGridDBColumn;
    cxGrid1DBTableView1CQTMDL: TcxGridDBColumn;
    cxGrid1DBTableView1CHK: TcxGridDBColumn;
    cxGrid1DBTableView2CQSDNO: TcxGridDBColumn;
    cxGrid1DBTableView2CQSSEQ: TcxGridDBColumn;
    cxGrid1DBTableView2CQSRCT: TcxGridDBColumn;
    cxGrid1DBTableView2CQSCSN: TcxGridDBColumn;
    cxGrid1DBTableView2ConName: TcxGridDBColumn;
    cxGrid1DBTableView2CARMDL: TcxGridDBColumn;
    cxGrid1DBTableView2CQSRS1: TcxGridDBColumn;
    cxGrid1DBTableView2CQSRS2: TcxGridDBColumn;
    cxGrid1DBTableView2CQSAMT: TcxGridDBColumn;
    cxGrid1DBTableView2CQSVAT: TcxGridDBColumn;
    cxGrid1DBTableView2CQSWHT: TcxGridDBColumn;
    cxGrid1DBTableView2CQSNET: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxGrid1DBTableView1CQTDNO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure SeachClick(Sender: TObject);
    procedure closeClick(Sender: TObject);
    procedure G2Column_itemGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure gdbtvLogListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure G2Column_amtGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    FSearchFieldName: String;
    FSearchFieldIsNumber: boolean;
    FManageMode: boolean;
  public
    Flag_ACSTS :string;
    { Public declarations }
  end;

var
  Q002FrmManChQ: TQ002FrmManChQ;

implementation

uses  Q002MainDM, UIT_GLOBAL_LIB;

{$R *.dfm}


procedure TQ002FrmManChQ.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
  Self.Close;
end;

procedure TQ002FrmManChQ.closeClick(Sender: TObject);
begin
  FormClosed := true;
  Self.Close;
  inherited;
end;

procedure TQ002FrmManChQ.cxButton12Click(Sender: TObject);
var obj:array of TReportParam;
begin
  inherited;
  DataSource1.DataSet.Filtered := True;
  DataSource1.DataSet.Filter := 'CHK=1';
  SetLength(obj,2);
  obj[1]:=TReportParam.Create;
//  obj[1].AddParam('CON',Alert.FieldByName('CQTCSN').AsString);
//  obj[1].AddParam('DNAME',Alert.FieldByName('CQTONN').AsString);
//  obj[1].AddParam('ADR',Alert.FieldByName('CQTADR').AsString);
//  obj[1].AddParam('ITM',Alert.FieldByName('ITEMS').AsString);
  ShowReportDataset(Q002DMMain.SockCon,'MC01',obj,DataSource1.DataSet);
  DataSource1.DataSet.Filtered := False;
  cxButton14.Visible := True;
end;

procedure TQ002FrmManChQ.cxButton14Click(Sender: TObject);
var RQ:string;
begin
  inherited;
  cxButton14.Visible := False;
  with Q002DMMain do
  begin
    SockCon.StartTran;
    try
      T004.First;
      while not T004.Eof do
      begin
        if T004.FieldByName('CHK').AsInteger = 1 then
        begin
          RQ := Trim(T004.FieldByName('CQTMNS').AsString);
          if RQ = 'RP' then
            ChangeStatus('A','N',T004.FieldByName('CQTACD').AsDateTime)
          else if RQ = 'CC' then
            ChangeStatus('A','C',T004.FieldByName('CQTACD').AsDateTime)
          else if RQ = 'BR' then
            ChangeStatus('A','B',T004.FieldByName('CQTACD').AsDateTime)
          else if RQ = 'RB' then
            ChangeStatus('A','A',T004.FieldByName('CQTACD').AsDateTime)
          else if RQ = 'IA' then
            ChangeStatus('I','Y',T004.FieldByName('CQTACD').AsDateTime)
          else if RQ = 'RA' then
            ChangeStatus('A','Y',T004.FieldByName('CQTACD').AsDateTime);
          T004.Edit;
          T004.FieldByName('CQTSTS').Value := 'C';
          T004.Post;
        end;
        T004.Next;
      end;
      T004.ApplyUpdates(0);
      SockCon.Commit;
      ShowMessage('Completed');
      cxButton12.Click;
      cxButton10.Click;
    except
      on ee:Exception do
      begin
        SockCon.Rollback;
        ShowMessage(ee.Message);
      end;
    end;

  end;    
end;

procedure TQ002FrmManChQ.cxButton1Click(Sender: TObject);
begin
  inherited;
  Q002DMMain.T004.Edit;
  Q002DMMain.T004.FieldByName('CQTACT').Value := 'I';
  Q002DMMain.T004.Post;
  Q002DMMain.T004.ApplyUpdates(0);
  cxButton10.Click;
end;

procedure TQ002FrmManChQ.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var i : Integer;
    DS : TDataSource;     
begin
  inherited;
  if ACellViewInfo.Item.Index = 0 then
  begin
    DS := DataSource1;
    with DS.DataSet do
    begin
      DisableControls;
      try
        for i := 0 to  Sender.DataController.GetSelectedCount -1 do
        begin
          RecNo := Sender.DataController.GetSelectedRowIndex(i) + 1;
          Edit;
            if FieldByName('CHK').AsInteger = 0 then
              FieldByName('CHK').AsInteger := 1
            else
              FieldByName('CHK').AsInteger := 0;
          Post;
        end;
      finally
        EnableControls;
      end;
    end;   
  end;
end;

procedure TQ002FrmManChQ.cxGrid1DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TQ002FrmManChQ.cxGrid1DBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor2;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TQ002FrmManChQ.FormCreate(Sender: TObject);
begin
  inherited;
  ManReqDate1.Date := Date;
  ManReqDate2.Date := Date;

end;

procedure TQ002FrmManChQ.FormShow(Sender: TObject);
begin
  inherited;
  with Q002DMMain.S003 do
  begin
    Close;
    CommandText := 'select A.CQSDNO ' + #13 +
                   '      ,A.CQSSEQ ' + #13 +
                   '      ,A.CQSRCT ' + #13 +
                   '      ,A.CQSCSN ' + #13 +
                   '      ,B.DEA1NAME' + #13 +
                   '      ,B.MODEL  ' + #13 +
                   '      , ISNULL(A.CQSRS1,''013'') AS CQSRS1' +
                   '      , ISNULL(A.CQSRS2,''ค่าเช่า'') AS CQSRS2' +
                   '      ,A.CQSAMT ' + #13 +
                   '      ,A.CQSVAT ' + #13 +
                   '      ,A.CQSWHT ' + #13 +
                   '      ,A.CQSNET ' + #13 +
                   'from CQDS003 a' + #13 +
                   'LEFT JOIN LHPPDTA.DBO.TMP_INFOCOLLECTION B ON B.FSYSTEM=''LS'' AND A.CQSCSN=B.CONRUN' + #13 +
                   'WHERE EXISTS(SELECT CQTRFN FROM CQDT002 AA WHERE AA.CQTRFN=A.CQSDNO GROUP BY CQTRFN)';
    Open;
  end;
  cxButton10.Click;
  lbMainCurrentDate.Caption:= 'Date: '+ FormatDateTime('dd/MM/yyyy',getServerDateTime(Q002DMMain.SockCon));
end;

procedure TQ002FrmManChQ.G2Column_amtGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
 end;

procedure TQ002FrmManChQ.G2Column_itemGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  Row: Integer;
begin

  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
    AText := IntToStr(Row+1);
end;

procedure TQ002FrmManChQ.gdbtvLogListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ002FrmManChQ.SeachClick(Sender: TObject);
var  Variable,TypeReq,FChqNo,FdocNo,strSQL :string;

begin
  case cxComboBox1.ItemIndex of
    0: TypeReq := '';
    1: TypeReq := 'RP';
    2: TypeReq := 'CC';
    3: TypeReq := 'BR';
    4: TypeReq := 'RB';
    5: TypeReq := 'IA';
    6: TypeReq := 'RA';
  end;
  FChqNo := Trim(cxTextEdit1.Text);
  FdocNo := Trim(cxTextEdit3.Text);
  Q002DMMain.LoadT004(FChqNo
                     ,FdocNo
                     ,TypeReq
                     ,FormatDateTime('MM/dd/yyyy',ManReqDate1.Date)
                     ,FormatDateTime('MM/dd/yyyy',ManReqDate2.Date));
end;

end.

