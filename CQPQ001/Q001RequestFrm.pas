unit Q001RequestFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, Provider, DB, ADODB, ImgList, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, ComCtrls, ToolWin, JvExExtCtrls,
  JvExtComponent, JvPanel, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDBEdit, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, SConnect, SockCon, DBClient,
  MConnect, cxCheckBox, cxLookAndFeels, cxGroupBox, cxRadioGroup, JvSplitter,
  frxClass, frxDBSet, cxCalendar, cxPC, cxMemo, cxGridDBDataDefinitions,
  frxBarcode, frxDBXComponents, frxADOComponents, frxIBXComponents,
  frxBDEComponents, frxChart, frxDCtrl, frxExportHTML, frxExportCSV,
  frxExportPDF, frxExportXLS, UIT_UTILS_LIB, SearchBar, Q001DeleteDeFrm, Grids,
  DBGrids;

type
  TQ001FrmRequest = class(TfrmBase)
    DataSource1: TDataSource;
    Panel4: TPanel;
    DataSource2: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel2: TPanel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    Panel6: TPanel;
    cxButton9: TcxButton;
    cxButton3: TcxButton;
    Panel5: TPanel;
    cxGrid1: TcxGrid;
    gdbtvSelectedList: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    G1Column_bank_n: TcxGridDBColumn;
    G1Column_branch_n: TcxGridDBColumn;
    G1Column_item: TcxGridDBColumn;
    G1Column_Amt: TcxGridDBColumn;
    G1Column_chq_date: TcxGridDBColumn;
    G1Column_Deposit_date: TcxGridDBColumn;
    G1Column_contract: TcxGridDBColumn;
    G1Column_dealer: TcxGridDBColumn;
    G1Column_Carmodel: TcxGridDBColumn;
    G1Column_chq_type: TcxGridDBColumn;
    G1Column_Re_reason: TcxGridDBColumn;
    G1Column_Active: TcxGridDBColumn;
    G1Column_status: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Label2: TLabel;
    cbInform: TcxComboBox;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton4: TcxButton;
    cxPageControl2: TcxPageControl;
    Panel7: TPanel;
    Label1: TLabel;
    cxGrid2: TcxGrid;
    gdbtvLogList: TcxGridDBTableView;
    G2Column_item: TcxGridDBColumn;
    G2Column_Bank_n: TcxGridDBColumn;
    G2Column_Branch_n: TcxGridDBColumn;
    G2Column_No: TcxGridDBColumn;
    G2Column_amt: TcxGridDBColumn;
    G2Column_chqDate: TcxGridDBColumn;
    G2Column_deposit: TcxGridDBColumn;
    G2Column_contract: TcxGridDBColumn;
    G2Column_active: TcxGridDBColumn;
    G2Column_carmodel: TcxGridDBColumn;
    G2Column_dealers: TcxGridDBColumn;
    G2Column_rereason: TcxGridDBColumn;
    G2Column_chqtype: TcxGridDBColumn;
    G2Column_status: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxLabel34: TcxLabel;
    cxButton5: TcxButton;
    G1CQTMNS: TcxGridDBColumn;
    G1CQTMMO: TcxGridDBColumn;
    cxButton6: TcxButton;
    reqDate: TcxDateEdit;
    cxLabel2: TcxLabel;
    Label3: TLabel;
    cxComboBox1: TcxComboBox;
    ManReqDate1: TcxDateEdit;
    cxLabel3: TcxLabel;
    ManReqDate2: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel5: TcxLabel;
    G2Column_reqStaus: TcxGridDBColumn;
    G2Column_memo: TcxGridDBColumn;
    DTSManReq: TDataSource;
    cxButton10: TcxButton;
    cxLabel6: TcxLabel;
    cxLabel9: TcxLabel;
    Panel8: TPanel;
    cxButton12: TcxButton;
    cxButton14: TcxButton;
    G2Column_editor: TcxGridDBColumn;
    G2Column_devision: TcxGridDBColumn;
    G2Column_docu: TcxGridDBColumn;
    cxLabel11: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    btn1: TButton;
    frxdbdtstCHORFR: TfrxDBDataset;
    Re1: TfrxReport;
    G1Column_CheckCondition: TcxGridDBColumn;
    detail: TDataSource;
    G1Ac_status: TcxGridDBColumn;
    G1Couumn_Rfn: TcxGridDBColumn;
    G1column_Active_date: TcxGridDBColumn;
    cxButton11: TcxButton;
    SearchBar1: TSearchBar;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    deFrom: TcxDateEdit;
    cxLabel4: TcxLabel;
    deTo: TcxDateEdit;
    cbDate: TcxCheckBox;
    Button1: TButton;
    ListStatusChq: TcxComboBox;
    UnSA: TButton;
    SA: TButton;
    CxGBank: TcxGrid;
    gdbtvSearchList: TcxGridDBTableView;
    checkboxja: TcxGridDBColumn;
    gdbtvSearchListColumn16: TcxGridDBColumn;
    gdbtvSearchListColumn13: TcxGridDBColumn;
    gdbtvSearchListColumn15: TcxGridDBColumn;
    gdbtvSearchListColumn4: TcxGridDBColumn;
    gdbtvSearchListColumn3: TcxGridDBColumn;
    gdbtvSearchListColumn2: TcxGridDBColumn;
    G1chqDate: TcxGridDBColumn;
    gdbtvSearchListColumn9: TcxGridDBColumn;
    G1depDate: TcxGridDBColumn;
    gdbtvSearchListColumn5: TcxGridDBColumn;
    gdbtvSearchListColumn7: TcxGridDBColumn;
    gdbtvSearchListColumn8: TcxGridDBColumn;
    gdbtvSearchListColumn10: TcxGridDBColumn;
    gdbtvSearchListColumn11: TcxGridDBColumn;
    gdbtvSearchListColumn18: TcxGridDBColumn;
    gdbtvSearchListColumn1: TcxGridDBColumn;
    G1Status: TcxGridDBColumn;
    CxGBankDBTableView1: TcxGridDBTableView;
    Detail_contact: TcxGridDBColumn;
    detail_deler: TcxGridDBColumn;
    detail_Model: TcxGridDBColumn;
    CxGBankDBTableView1Column1: TcxGridDBColumn;
    CxGBankLevel1: TcxGridLevel;
    CxGBankLevel2: TcxGridLevel;
    gdbtvSelectedListColumn1: TcxGridDBColumn;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxedtSearchPropertiesChange(Sender: TObject);
    procedure gdbtvSearchListColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormCreate(Sender: TObject);
    procedure rgOptionPropertiesChange(Sender: TObject);
    procedure gdbtvSearchListColumn16GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxButton2Click(Sender: TObject);
    procedure gdbtvSearchListColumn3GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxedtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbDateClick(Sender: TObject);
    procedure cxGridDBColumn2GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cxButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure gdbtvSearchListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdbtvSearchListDblClick(Sender: TObject);
    procedure gdbtvSelectedListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure G1Column_AmtGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure gdbtvSearchListSelectionChanged(Sender: TcxCustomGridTableView);
    procedure gdbtvSearchListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure gdbtvSelectedListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cbInformPropertiesChange(Sender: TObject);
    procedure submitClick(Sender: TObject);
    procedure clearClick(Sender: TObject);
    procedure TrackChq(Sender: TObject);
    procedure MemoClick(Sender: TObject);
    procedure searchClick(Sender: TObject);
    procedure DeleteReqClick(Sender: TObject);
    procedure DrillDownClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Re1GetValue(const VarName: string; var Value: Variant);
    procedure cbInformClick(Sender: TObject);
    procedure gdbtvSelectedListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure conditionChkClick(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure MaschqClick(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure gdbtvSearchListColumn18GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure gdbtvSearchListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gdbtvSearchListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure G2Column_amtGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure G1chqDateGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure G1depDateGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure G1StatusGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cxButton11Click(Sender: TObject);
    procedure SAClick(Sender: TObject);
    procedure UnSAClick(Sender: TObject);

  private
    Fselect :Integer;
    FSearchFieldName: String;
    FSearchFieldIsNumber: boolean;
    FManageMode: boolean;
    procedure SetManageMode(const Value: boolean);
    property SearchFieldName:String read FSearchFieldName write FSearchFieldName;
    property SearchFieldIsNumber:boolean read FSearchFieldIsNumber write FSearchFieldIsNumber;
    property ManageMode:boolean read FManageMode write SetManageMode;
    //procedure AddChequeEntry(f1,f2,f3:String);overload;
    procedure AddChequeEntry(ds:TDataSet);
    procedure AddToSelectedList;
    procedure DeleteFromSelectedList;
    function GetSumOfSelectStr(cxdc:TcxGridDBDataController):String;
    procedure Select(SAll:Boolean);
  public
    Flag_ACSTS :string;
    { Public declarations }
  end;

var
  Q001FrmRequest: TQ001FrmRequest;

implementation

uses  Q001MainDM, Q001TrackChqFrm, Q001MemoFrm, SplitString;

{$R *.dfm}

procedure TQ001FrmRequest.btn1Click(Sender: TObject);
var obj:array of TReportParam;
begin
  inherited;
// if cbInform.ItemIndex < 0 then
  if Length(Trim(cxLabel34.Caption)) = 0 then
  begin
    if MessageDlg('Please Select Action Process',  mtWarning, [mbOK],0) = mrOk then
     begin
       cxGrid1.SetFocus;
       exit ;
     end;
  end;
  cxButton4.Visible := true;
//  Re1.LoadFromFile('C:\Report\CHEQUE1.fr3')  ;
// Re1.ShowReport(False);
 Q001DMMain.CDSMAN.ApplyUpdates(0);
 SetLength(obj,1);
 obj[0]:=TReportParam.Create;
ShowReport(Q001DMMain.SockCon,'MC01',obj);
end;

procedure TQ001FrmRequest.btnCloseClick(Sender: TObject);
begin
  FormClosed := true;
  Self.Close;
  inherited;
end;


procedure TQ001FrmRequest.AddToSelectedList;
begin
// FormatFloat('#,##0.00',1254.3652)
//ShowMessage(IntToStr(DataSource2.DataSet.RecordCount));
  with gdbtvSearchList.DataController do
  begin
    DataSet.DisableControls;
      try
       DataSet.First;
       while not DataSet.Eof do
       begin
        if DataSet.FieldByName('CHK').AsInteger = 1 then
          AddChequeEntry(DataSource1.DataSet);
        DataSet.Next;
       end;
      finally
        DataSet.EnableControls;
      end;
  end;

end;

procedure TQ001FrmRequest.clearClick(Sender: TObject);
begin
  with Q001DMMain.CDSMAN do
  begin
    Close;
    CommandText:= 'IF OBJECT_ID( ''TEMPDB..#CQDT004'' ) IS NOT NULL DROP TABLE #CQDT004 ' +
                  'select  * into #CQDT004 from CQDT004 where CQTACT = '+#39+#39+' ';
    Execute;
    Close;
    CommandText:= 'select * from #CQDT004';
    Open;
  end;
//  cxLabel34.Caption:='Action Process';
  cbInform.ItemIndex:=-1;
  btn1.Visible := False;
  cxButton4.Visible := False;

end;


procedure TQ001FrmRequest.conditionChkClick(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
//var
//  Row: Integer;
begin
//  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  if Flag_ACSTS = 'P' then
     AText :='P'
  else  AText :='N';

end;

procedure TQ001FrmRequest.submitClick(Sender: TObject);
var  Ftext : String;
     buttonSelected : Integer;
     obj:array of TReportParam;
begin
  if Length(Trim(cxLabel34.Caption)) = 0 then
  begin
    if MessageDlg('Please Select Action Process',  mtWarning, [mbOK],0) = mrOk then
     begin
       cxGrid1.SetFocus;
       exit ;
     end;
  end;

//ShowMessage(IntToStr(cbInform.ItemIndex));
  case Fselect of
    0: Ftext := getRunning(Q001DMMain.SockCon,'RE-','repayin','REPAYIN','');//  := 'RP';
    1: Ftext := getRunning(Q001DMMain.SockCon,'CC-','CANCEL','CANCEL','');//  := 'CC';
    2: Ftext := getRunning(Q001DMMain.SockCon,'BR-','BORROW','BORROW','');//  := 'BR';
    3: Ftext := getRunning(Q001DMMain.SockCon,'RB-','REBORROW','REBORROW','');//  := 'RB';
    4: Ftext := getRunning(Q001DMMain.SockCon,'IA-','INACTIVE','INACTIVE','');//  := 'IA';
    5: Ftext := getRunning(Q001DMMain.SockCon,'RA-','REINACTIVE','REINACTIVE','');//  := 'RA';
  end;
   cxLabel6.Caption := Ftext;

//   ShowMessage(IntToStr(cbInform.ItemIndex));

  with Q001DMMain.CDSMAN do
  begin
    if not Active then  Open;
    First;
    while not Eof do
    begin
      Edit;
      case Fselect of
       0: FieldByName('CQTMNS').AsString := 'RP';
       1: FieldByName('CQTMNS').AsString := 'CC';
       2: FieldByName('CQTMNS').AsString := 'BR';
       3: FieldByName('CQTMNS').AsString := 'RB';
       4: FieldByName('CQTMNS').AsString := 'IA';
       5: FieldByName('CQTMNS').AsString := 'RA';
      end;
      FieldByName('CQTDNO').AsString := Ftext;
      Post;
      Next;
    end;
   Q001DMMain.CDSMAN.ApplyUpdates(0);
   SetLength(obj,1);
   obj[0]:=TReportParam.Create;
   ShowReport(Q001DMMain.SockCon,'MC01',obj);
   Close;
   CommandText :='INSERT INTO CQDT004 select * from #CQDT004';
   Execute;
  end;
  clearClick(cxButton6);
  cxLabel6.Caption :='';
  cxButton4.Visible := False;
  btn1.Visible := False;
end;


procedure TQ001FrmRequest.AddChequeEntry(ds: TDataSet);
begin
  with Q001DMMain.CDSMAN do
  begin
    if not Active then  Open;
    Append;
//    FieldByName('CQTBNK').AsString := ds.FieldByName('CQMBNK').AsString;
    FieldByName('CQTEGN').AsString := ds.FieldByName('CQMEGN').AsString;
//    FieldByName('CQTBBR').AsString := ds.FieldByName('CQMBBR').AsString;
    FieldByName('CQTBRH').AsString := ds.FieldByName('CQMBRH').AsString;
    FieldByName('CQTCNO').AsString := ds.FieldByName('CQMCNO').AsString;
    FieldByName('CQTNo2').AsString := ds.FieldByName('CQMNo2').AsString;
    FieldByName('CQTAMT').AsString := ds.FieldByName('CQMAMT').AsString;
    FieldByName('CQTDAT').AsString := ds.FieldByName('CQMDAT').AsString;
    FieldByName('CQTTRD').AsString := ds.FieldByName('CQMTRD').AsString;
    FieldByName('CQTDNO').AsString := '';
    FieldByName('CQTCON').AsString := ds.FieldByName('CQMCSN').AsString;
    FieldByName('CQTDEA').AsString := ds.FieldByName('DLR Name').AsString;
    FieldByName('CQTMDL').AsString := ds.FieldByName('CARMDL').AsString;
    FieldByName('StatusCal').AsString := ds.FieldByName('CQMSTA').AsString;
    FieldByName('CQTCTY').AsString := ds.FieldByName('CQMCTY').AsString;
    FieldByName('CQTTRSON').AsString := ds.FieldByName('CQMNAT').AsString;
    FieldByName('CQTACT').AsString := ds.FieldByName('CQMACT').AsString;
    FieldByName('CQTSTS').AsString := ds.FieldByName('CQMSTS').AsString;
    FieldByName('CQTREQ').AsString := 'RQ';
    FieldByName('CQTRFN').AsString := ds.FieldByName('CQMRFN').AsString;
    FieldByName('CQTACD').AsString := FormatDateTime('dd/MM/yyyy',reqDate.Date);
    

//  ShowMessage(FieldByName('CQTRFN').AsString);
     FieldByName('CQTCRW').AsString := Q001DMMain.Dll.WorkStation;
     FieldByName('CQTCRU').AsString := Q001DMMain.Dll.UserID;
     FieldByName('CQTCRD').AsDateTime := getServerDateTime(Q001DMMain.SockCon);
     FieldByName('CQTETD').AsDateTime := getServerDateTime(Q001DMMain.SockCon);
     FieldByName('CQTETW').AsString := Q001DMMain.Dll.WorkStation;
     FieldByName('CQTETU').AsString := Q001DMMain.Dll.UserID;
     FieldByName('CQTBRN').AsString := Q001DMMain.Dll.Branch;
     FieldByName('CQTPDM').AsString := Q001DMMain.Dll.PDM;
     FieldByName('CQTPDT').AsString := Q001DMMain.Dll.PDT;

//    FieldByName('CQTMMO').AsString := 'User Remark';
     FieldByName('CQTMMO').AsString := '';

//    try
      Post;
//    Except
//      Cancel;
//    end;

  end;

end;


procedure TQ001FrmRequest.deleteClick(Sender: TObject);
begin
  DeleteFromSelectedList;
end;

procedure TQ001FrmRequest.cxButton11Click(Sender: TObject);
begin
  inherited;
  Q001FrmDeleteDe := TQ001FrmDeleteDe.Create(Self);
  IsActive := False;
  try
    Q001FrmDeleteDe.ShowModal;
  finally
    IsActive := True;
    Q001FrmDeleteDe.Free;
  end;
end;

procedure TQ001FrmRequest.cxButton12Click(Sender: TObject);
var obj:array of TReportParam;
    MNS,CRDF,CRDT:string;
begin

//ShowMessage('aadsfsaf');
  inherited;
  case cbInform.ItemIndex of
     0: MNS := 'RP';
     1: MNS := 'CC';
     2: MNS := 'BR';
     3: MNS := 'RB';
     4: MNS := 'IA';
     5: MNS := 'RA';
  end;
  try
    StrToDate(ManReqDate1.Text);
    StrToDate(ManReqDate2.Text);
    CRDF := FormatDateTime('MM/dd/yyyy',ManReqDate1.Date);
    CRDT := FormatDateTime('MM/dd/yyyy',ManReqDate2.Date);
  except
    CRDF := '';
    CRDT := '';
  end;
  SetLength(obj,1);
    obj[0]:=TReportParam.Create;
    obj[0].AddParam('NO2',Trim(cxTextEdit1.Text));
    obj[0].AddParam('RFN',Trim(cxTextEdit3.Text));
    obj[0].AddParam('MNS',MNS);
    obj[0].AddParam('CRDF',CRDF);
    obj[0].AddParam('CRDT',CRDT);
  ShowReport(Q001DMMain.SockCon,'MC02',obj);

end;

procedure TQ001FrmRequest.cxButton2Click(Sender: TObject);
begin
  AddToSelectedList;
end;

procedure TQ001FrmRequest.cxButton3Click(Sender: TObject);
begin
  //Q001DMMain.ClientDataSet1.EmptyDataSet;

end;

procedure TQ001FrmRequest.cxButton7Click(Sender: TObject);
var
  obj:array of TReportParam;
begin

    SetLength(obj,1);                   {***}
    obj[0]:=TReportParam.Create;        {***}

    if cbInform.ItemIndex = 2 then
      obj[0].AddParam('ReportName','C')
    else if cbInform.ItemIndex = 3 then
      obj[0].AddParam('ReportName','B')
    else
      obj[0].AddParam('ReportName','O');

 //   ShowReport(Q001DMMain.SockCon,'L09',obj);

end;

procedure TQ001FrmRequest.cxButton9Click(Sender: TObject);
begin

{  Q001FrmOpenCD := TQ001FrmOpenCD.Create(Self);
  try
    Self.IsActive := false;

    Q001FrmOpenCD.ShowModal;
    Self.IsActive := true;

    if Q001FrmOpenCD.ModalResult = mrOk then
    begin
      MessageDlg('OK',mtInformation,[mbOK], 0);
    end
    else
    begin
      MessageDlg('Cancel',mtInformation,[mbOK], 0);
    end;

  finally
   Q001FrmOpenCD.Free;
  end;
}
end;

procedure TQ001FrmRequest.cbDateClick(Sender: TObject);
begin
  inherited;
  deFrom.Enabled := cbDate.Checked;
  deTo.Enabled := cbDate.Checked;
end;

procedure TQ001FrmRequest.cbInformClick(Sender: TObject);
var  Ftext,s ,k: string;
I : Integer;
begin
  inherited;
//  ShowMessage(cbInform.Text);
end;

procedure TQ001FrmRequest.cbInformPropertiesChange(Sender: TObject);
var  FAc_Sts,FComBTxt : string;
     I : Integer;
     FShow:Boolean;
begin
  inherited;
  if cbInform.ItemIndex <0 then  Exit;
  cxLabel34.Caption:=  cbInform.Text;
  FComBTxt := cbInform.Text;
  FShow := False;
  if (FComBTxt ='Repayin Cheque') or (FComBTxt ='Inactive Cheque') then   // à§×Í¹ä¢·Õè  1 ,7
  begin
    Q001DMMain.CDSMAN.First;
    i := 1;
    while not Q001DMMain.CDSMAN.Eof do
    begin
      Q001DMMain.CDSMAN.Edit;
      FAc_Sts:= Q001DMMain.CDSMAN.FieldByName('CQTACT').AsString + Q001DMMain.CDSMAN.FieldByName('CQTSTS').AsString;
      if FAc_Sts <> 'AY'  then
      begin
        Q001DMMain.CDSMAN.FieldByName('CQTYES').AsString := 'N';
        FShow:=True;
      end
      else Q001DMMain.CDSMAN.FieldByName('CQTYES').AsString  := 'P';
      Q001DMMain.CDSMAN.Post;
      Inc(i);
      Q001DMMain.CDSMAN.Next;
    end;
  end   // ¨º à§×Í¹ä¢·Õè  1
  else if (FComBTxt ='Cancel Cheque') or (FComBTxt ='Borrow Cheque') then   // à§×Í¹ä¢·Õè  2
       begin
         Q001DMMain.CDSMAN.First;
         i := 1;
         while not Q001DMMain.CDSMAN.Eof do
         begin    // µÃÇ¨ÊÍº  2 à§×Í¹ä¢
           Q001DMMain.CDSMAN.Edit;
           FAc_Sts:= Q001DMMain.CDSMAN.FieldByName('CQTACT').AsString + Q001DMMain.CDSMAN.FieldByName('CQTSTS').AsString;

           if FAc_Sts <> 'AA'  then
           begin
             Q001DMMain.CDSMAN.FieldByName('CQTYES').AsString := 'N';
             FShow:=True;
           end
           else Q001DMMain.CDSMAN.FieldByName('CQTYES').AsString  := 'P';
       {    if (Q001DMMain.CDSMAN.FieldByName('CQTACT').AsString <>'A') and (Q001DMMain.CDSMAN.FieldByName('CQTSTS').AsString <>'Y') then
                begin
                  k := k + ' '+'ROW ' + IntToStr(i);
                end;     }
                Q001DMMain.CDSMAN.Post;
                Inc(i);
                Q001DMMain.CDSMAN.Next;
         end;
       end  // ¨º à§×Í¹ä¢·Õè  2 ,3
       else if  FComBTxt ='Reborrow Cheque' then   // à§×Í¹ä¢·Õè  4
             begin
               Q001DMMain.CDSMAN.First;
               i := 1;
               while not Q001DMMain.CDSMAN.Eof do
               begin    // µÃÇ¨ÊÍº  2 à§×Í¹ä¢
                 Q001DMMain.CDSMAN.Edit;
                 FAc_Sts:= Q001DMMain.CDSMAN.FieldByName('CQTACT').AsString + Q001DMMain.CDSMAN.FieldByName('CQTSTS').AsString;

                 if FAc_Sts <> 'AB'  then
                 begin
                   Q001DMMain.CDSMAN.FieldByName('CQTYES').AsString := 'N';
                   FShow:=True;
                 end
                 else Q001DMMain.CDSMAN.FieldByName('CQTYES').AsString  := 'P';
             {    if (Q001DMMain.CDSMAN.FieldByName('CQTACT').AsString <>'A') and (Q001DMMain.CDSMAN.FieldByName('CQTSTS').AsString <>'Y') then
                      begin
                        k := k + ' '+'ROW ' + IntToStr(i);
                      end;     }
                      Q001DMMain.CDSMAN.Post;
                      Inc(i);
                      Q001DMMain.CDSMAN.Next;
               end;
             end  // ¨º à§×Í¹ä¢·Õè 4
             else if  FComBTxt ='Reborrow Cheque' then   // à§×Í¹ä¢·Õè  5
                   begin
                     Q001DMMain.CDSMAN.First;
                     i := 1;
                     while not Q001DMMain.CDSMAN.Eof do
                     begin
                       Q001DMMain.CDSMAN.Edit;
                       FAc_Sts:= Q001DMMain.CDSMAN.FieldByName('CQTACT').AsString + Q001DMMain.CDSMAN.FieldByName('CQTSTS').AsString;

                       if FAc_Sts <> 'AB'  then
                       begin
                         Q001DMMain.CDSMAN.FieldByName('CQTYES').AsString := 'N';
                         FShow:=True;
                       end
                       else Q001DMMain.CDSMAN.FieldByName('CQTYES').AsString  := 'P';
                            Q001DMMain.CDSMAN.Post;
                            Inc(i);
                            Q001DMMain.CDSMAN.Next;
                     end;
                   end  // ¨º à§×Í¹ä¢·Õè 5
                   else if  FComBTxt ='Reinactive Cheque' then   // à§×Í¹ä¢·Õè  8
                         begin
                           Q001DMMain.CDSMAN.First;
                           i := 1;
                           while not Q001DMMain.CDSMAN.Eof do
                           begin    //
                             Q001DMMain.CDSMAN.Edit;
                             FAc_Sts:= Q001DMMain.CDSMAN.FieldByName('CQTACT').AsString + Q001DMMain.CDSMAN.FieldByName('CQTSTS').AsString;

                             if FAc_Sts <> 'IY'  then
                             begin
                               Q001DMMain.CDSMAN.FieldByName('CQTYES').AsString := 'N';
                               FShow:=True;
                             end
                             else Q001DMMain.CDSMAN.FieldByName('CQTYES').AsString  := 'P';
                                  Q001DMMain.CDSMAN.Post;
                                  Inc(i);
                                  Q001DMMain.CDSMAN.Next;
                           end;
                         end;  // ¨º à§×Í¹ä¢·Õè 5



   gdbtvSelectedList.OnCustomDrawCell := gdbtvSelectedListCustomDrawCell;
   cxGrid1.Repaint;
//   gdbtvSelectedList.OnCustomDrawCell := nil;
   Fselect := cbInform.ItemIndex;
   cbInform.ItemIndex:=-1;
  if FShow then
  begin
    MessageDlg('Can not '+ cxLabel34.Caption, mtWarning, [mbOK], 0);
    btn1.Visible:=False;
  end
  else btn1.Visible:=True;

end;

procedure TQ001FrmRequest.cxedtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  inherited;
  case key of
    VK_RETURN : if not cbDate.Checked then
                    Q001DMMain.SearchCHQ(SearchFieldName,cxedtSearch.Text,rgOption.Properties.Items[rgOption.ItemIndex].Value, SearchFieldIsNumber)
                else
                    Q001DMMain.SearchCHQ(SearchFieldName,cxedtSearch.Text,rgOption.Properties.Items[rgOption.ItemIndex].Value,deFrom.Date,deTo.Date, SearchFieldIsNumber);
    VK_DOWN  : CxGBank.SetFocus;
    end;
}
end;

procedure TQ001FrmRequest.cxedtSearchPropertiesChange(Sender: TObject);
begin
  inherited;
  //timer1.Enabled := false;
  //timer1.Enabled := true;
end;

procedure TQ001FrmRequest.TrackChq(Sender: TObject);
Begin
   Q001FrmTrackChq.ShowModal;
end;

procedure TQ001FrmRequest.UnSAClick(Sender: TObject);
begin
  inherited;
  Select(False);
end;

procedure TQ001FrmRequest.gdbtvSearchListCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
VAR I:Integer;
begin
  inherited;
  with gdbtvSearchList.DataController do
  begin
    DataSet.DisableControls;
      try
       for i := 0 to GetSelectedCount - 1 do
        begin
          DataSet.RecNo := GetSelectedRowIndex(i)+1;
          DataSet.Edit;
          if DataSet.FieldByName('CHK').AsInteger = 0 then
            DataSet.FieldByName('CHK').AsInteger := 1
          else
            DataSet.FieldByName('CHK').AsInteger := 0;
          DataSet.Post;
        end;
      finally
        DataSet.EnableControls;
      end;
  end;
end;

procedure TQ001FrmRequest.gdbtvSearchListColumn16GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  Row: Integer;
begin

  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);

  //Showmessage(IntToStr(Row));

end;

procedure TQ001FrmRequest.gdbtvSearchListColumn18GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  Row: Integer;
begin
  inherited;
//  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
//  AText := gdbtvSearchList.Columns[row+1];



end;

procedure TQ001FrmRequest.gdbtvSearchListColumn3GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ001FrmRequest.G1chqDateGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := gdbtvSearchListColumn2.DataBinding.Field.DisplayText;
end;

procedure TQ001FrmRequest.G1Column_AmtGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ001FrmRequest.G1depDateGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := gdbtvSearchListColumn9.DataBinding.Field.DisplayText;
end;

procedure TQ001FrmRequest.G1StatusGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  AText := gdbtvSearchListColumn18.DataBinding.DataController.DataSet.FieldByName('CQMSTA').AsString;
end;

procedure TQ001FrmRequest.G2Column_amtGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));end;

procedure TQ001FrmRequest.cxPageControl1Change(Sender: TObject);
begin
////  ShowMessage(IntToStr(cxPageControl1.ActivePageIndex));
//  case cxPageControl1.ActivePageIndex of
//   0:begin
//       Panel1.Visible := True;
//       Panel3.Visible := True;
//       Panel3.Height :=300;
//       Panel6.Height :=159;
////       CxGBank.SetFocus;
//     end;
//   1:begin
//       Panel1.Visible:=False;
//       Panel3.Visible:=False;
//       Panel4.Align :=alClient;
//       Panel3.Height :=0;
//       Panel6.Height :=600;
//       DTSManReq.DataSet := Q001DMMain.ManageReq;
//       cxComboBox1.SetFocus;
//     end;
//  end;
//
////  ManageMode := (cxPageControl1.ActivePageIndex = 1);
end;

procedure TQ001FrmRequest.gdbtvSearchListColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  inherited;
  if AColumn.Tag = 99 then Exit;
  if gdbtvSearchList.Columns[AColumn.Index].DataBinding.Field <> nil then
     SearchBar1.AddSearch(gdbtvSearchList.Columns[AColumn.Index].DataBinding.Field,AColumn.Caption);
{
  if AColumn.Tag = 99 then
    Exit;

  AColumn.Index := 1;
  SearchFieldName := TcxGridDBColumn(AColumn).DataBinding.FieldName;
  SearchFieldIsNumber := (AColumn.Tag = 77);
  lblKeySearch.Caption := TcxGridDBColumn(AColumn).Caption;
  cxedtSearch.Text := '';
  cxedtSearch.SetFocus;

  Sender.Controller.LeftPos := 0;
}
end;

procedure TQ001FrmRequest.gdbtvSearchListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if not AViewInfo.Selected then
  begin
  //ShowMessage(AViewInfo.GridRecord.DisplayTexts[0]);
    if SameText(AViewInfo.GridRecord.DisplayTexts[0],'1') then
      ACanvas.Brush.Color := clGradientInactiveCaption
    else
      ACanvas.Brush.Color := clWhite;
  end;
end;

procedure TQ001FrmRequest.gdbtvSearchListDblClick(Sender: TObject);
begin
  AddToSelectedList;
end;

procedure TQ001FrmRequest.gdbtvSearchListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  inherited;
  if key = VK_BACK then
    cxedtSearch.SetFocus
  else if key = VK_RETURN then
    AddToSelectedList;
}
end;

procedure TQ001FrmRequest.gdbtvSearchListSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  TcxGridDBTableSummaryItem(gdbtvSearchList.DataController.Summary.FooterSummaryItems[2]).Format := QuotedStr(IntToStr(Sender.DataController.GetSelectedCount));
  TcxGridDBTableSummaryItem(gdbtvSearchList.DataController.Summary.FooterSummaryItems[3]).Format := QuotedStr(GetSumOfSelectStr( TcxGridDBDataController(Sender.DataController) ));
end;

procedure TQ001FrmRequest.gdbtvSearchListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ001FrmRequest.cxGridDBColumn2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  Row: Integer;
begin

  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);

end;


procedure TQ001FrmRequest.DeleteFromSelectedList;
var
  i : Integer;
begin
  with gdbtvSelectedList.DataController do begin
    DataSet.DisableControls;
    try
      for i := GetSelectedCount - 1 downto 0 do
        begin
          DataSet.RecNo := GetSelectedRowIndex(i)+1;
          DataSet.Delete;
        end;
      ClearSelection;
    finally
     DataSet.EnableControls;
    end;
  end;
end;

procedure TQ001FrmRequest.DeleteReqClick(Sender: TObject);
begin
// Åº request chq
  with Q001DMMain.ManageReq do
  begin
//    if not Active then  Open;
    First;
    while not Eof do
    begin
      Delete;
    end;
    ApplyUpdates(0);
  end;
  end;

procedure TQ001FrmRequest.DrillDownClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
  inherited;
  Q001FrmTrackChq := TQ001FrmTrackChq.Create(Self);
  case Tcxgridsite(Sender).Owner.Tag of
    10: Q001FrmTrackChq.FChqno := Q001DMMain.CDSMAN.FieldByName('CQTNO2').AsString;
    20: Q001FrmTrackChq.FChqno := Q001DMMain.ManageReq.FieldByName('CQTNO2').AsString;
  end;
    try
//    Q001FrmTrackChq.FChqno := Q001DMMain.CDSMAN.FieldByName('CQTNO2').AsString;
      Q001FrmTrackChq.ShowModal;
    finally
     Q001FrmTrackChq.Free;
   end;
end;

procedure TQ001FrmRequest.gdbtvSelectedListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if Trim(AViewInfo.GridRecord.DisplayTexts[16]) = 'N' then  begin
    ACanvas.Brush.Color := $0084FF84;
  end;

end;

procedure TQ001FrmRequest.gdbtvSelectedListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{
  case key of
    VK_delete :DeleteFromSelectedList;
//    VK_INSERT :TStringGridHack(StringGrid1).InsertRow(Grow);
    VK_BACK   :cxedtSearch.SetFocus;
    VK_RETURN :DeleteFromSelectedList;
  end;
}
{
  if key = VK_BACK then
    cxedtSearch.SetFocus
  else if key = VK_RETURN then
    DeleteFromSelectedList;
}
end;

procedure TQ001FrmRequest.gdbtvSelectedListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if AText <> '' then
    AText := Formatfloat('#,##0.00',StrToFloat(AText));
end;

function TQ001FrmRequest.GetSumOfSelectStr(cxdc:TcxGridDBDataController): String;
var
  i:integer;
  sum : Double;
begin
    with cxdc do begin
    sum := 0;
    DataSet.DisableControls;
    try
      for i := 0 to GetSelectedCount - 1 do
        begin
          DataSet.RecNo := GetSelectedRowIndex(i)+1;
          sum := sum+DataSet.FieldByName('CQMAMT').AsFloat;
        end;
    finally
     DataSet.EnableControls;
    end;

    end;//with

   Result := formatfloat('#,##0.00',sum);
end;

procedure TQ001FrmRequest.MaschqClick(Sender: TObject);
var S1,S2,StrSql,TypeReq:String;
    Fl : Integer;
    Sarr,S2Arr :TStringArray ;
    InputStr,Input2: String;
    I :Integer;
    dd,ee :array of string;
begin
   Q001DMMain.RDS1.CommandText := 'SELECT A.CQMRFN, B.CQSCSN, D.[DLR Name] '+
                                  ' ,v.CARMDL, B.CQSDNO                    '+
                                  ' FROM CQDM011 A               '+
                                  ' LEFT JOIN CQDS003 B ON A.CQMRFN=B.CQSDNO  '+
                                  ' LEFT JOIN HPMCON00 C ON B.CQSCSN=C.CONRUN '+
                                  ' LEFT JOIN DEALER D ON C.CONDEA=D.Code     '+
                                  ' LEFT JOIN DBMCOA03 E ON B.CQSCSN=E.COARUN '+
                                  ' LEFT JOIN DBMCAR00 v ON E.CARNUM=v.CARNUM '+
                                  ' ORDER BY A.CQMRFN';
   Q001DMMain.RDS1.Close;
  if not Q001DMMain.RDS1.Active then  Q001DMMain.RDS1.Open;



//  StrSql := 'Select * From vChequeInfo #';
 {   StrSql := ' SELECT A.* ,B.CQMNAT , '+
              ' C.CQMEGN,C.CQMBRH      '+
              ' FROM CQDM011 A         '+
              ' LEFT JOIN CQDM003 B  ON CAST(A.CQMCCQ as int)=B.CQMCDE  '+
              ' LEFT JOIN CQDM001 C  ON A.CQMBNK =C.CQMBNK and A.CQMBBR = C.CQMBRC #';
}
    StrSql := 'SELECT 0 AS CHK, A.CQMCNO, A.CQMNO2, A.CQMAMT, a.CQMDAT, a.CQMTRD       '+
              ' ,  a.CQMCTY ,A.*  '+
              ' ,B.CQMCSN,D.[DLR Name],F.CARMDL,G.CQMEGN,G.CQMBRH '+
              ' ,a.CQMACT, a.CQMSTS                                  '+
              ' ,ltrim(rtrim(A.CQMACT))+ltrim(rtrim(a.CQMSTS)) as CQMSTA     '+
              ' ,I.CQMNAT        '+
              ' FROM CQDM011 A                                              '+
              ' LEFT JOIN CQDM003 I ON CAST(A.CQMCCQ as int)=I.CQMCDE  '+
              ' LEFT JOIN CQDM007 B ON A.CQMRFN=B.CQMDNO                    '+
              ' LEFT JOIN HPMCON00 C ON B.CQMCSN=C.CONRUN                   '+
              ' LEFT JOIN DEALER D ON C.CONDEA=D.Code                       '+
              ' LEFT JOIN DBMCOA03 E ON B.CQMCSN=E.COARUN                   '+
              ' LEFT JOIN DBMCAR00 F ON E.CARNUM=F.CARNUM                   '+
              ' LEFT JOIN CQDM001 G ON A.CQMBNK=G.CQMBNK AND A.CQMBBR=G.CQMBRC #';

{
    StrSql := 'SELECT 0 AS CHK, A.* ,B.CQMCSN,D.[DLR Name],F.CARMDL,G.CQMEGN,G.CQMBRH '+
              ' ,ltrim(rtrim(A.CQMACT))+ltrim(rtrim(a.CQMSTS)) as CQMSTA     '+
              ' ,I.CQMNAT        '+
              ' FROM CQDM011 A                                              '+
              ' LEFT JOIN CQDM003 I ON CAST(A.CQMCCQ as int)=I.CQMCDE  '+
              ' LEFT JOIN CQDM007 B ON A.CQMRFN=B.CQMDNO                    '+
              ' LEFT JOIN HPMCON00 C ON B.CQMCSN=C.CONRUN                   '+
              ' LEFT JOIN DEALER D ON C.CONDEA=D.Code                       '+
              ' LEFT JOIN DBMCOA03 E ON B.CQMCSN=E.COARUN                   '+
              ' LEFT JOIN DBMCAR00 F ON E.CARNUM=F.CARNUM                   '+
              ' LEFT JOIN CQDM001 G ON A.CQMBNK=G.CQMBNK AND A.CQMBBR=G.CQMBRC #';
 }
  SetLength(dd, 20 );
  SetLength(ee, 20 );
  S1 := SearchBar1.GetSQL;

  ShowMessage(s1);
//-------------  ËÒ complelte SQL
  inputbox('','',S1);
  sArr := SplitStr(S1, '[',']');
  
//  for i := 0 to Length(sArr)-1 do
//  begin
//ShowMessage(sArr[i]);
//    Memo1.Lines.Add(sArr[i]);
//  end;

  for I := 0 to High(Sarr) do
  begin
//  ShowMessage(sarr[i]);
    S2Arr := FStrSQL(StrSql ,sarr );
//    ShowMessage(S2Arr[i]);
//    Memo1.Lines.Add(S2arr[i]);
  end;

  for I := 0 to High(Sarr) do
  begin
    dd[i] :=S2Arr[i]+'['+sarr[i]+']';
    ee[i] :='['+sarr[i]+']';
  S1 := StringReplace(S1,ee[i],dd[i],[rfReplaceAll,rfIgnoreCase]);
//    ShowMessage(dd[i]);
//    Memo1.Lines.Add(dd[i]);
  end;
ShowMessage(s1);
  if Trim(S1) <> ''then strSQL := strSQL + S1 ;
  Fl := Length(Trim(StrSql));
 //ShowMessage(StrSql);
  if Trim(ListStatusChq.Text) <> '' then
    case ListStatusChq.ItemIndex of
     0: strSQL := strSQL + ' AND A.CQMACT = ''A'' ' + ' AND A.CQMSTS = ''A'' ' ;    // Deposit Cheque
     1: strSQL := strSQL + ' AND A.CQMACT = ''A'' ' + ' AND A.CQMSTS = ''N'' ' ;    // PayIn  Cheque
     2: strSQL := strSQL + ' AND A.CQMACT = ''A'' ' + ' AND A.CQMSTS = ''P'' ' ;    // Pass Cheque
     3: strSQL := strSQL + ' AND A.CQMACT = ''A'' ' + ' AND A.CQMSTS = ''Y'' ' ;    // ReTurn Cheque
     4: strSQL := strSQL + ' AND A.CQMACT = ''I'' ' + ' AND A.CQMSTS = ''C'' ' ;    // Cancel Cheque
     5: strSQL := strSQL + ' AND A.CQMACT = ''R'' ' + ' AND A.CQMSTS = ''A'' ' ;    // Borrow Cheque
     6: strSQL := strSQL + ' AND A.CQMACT = ''I'' ' + ' AND A.CQMSTS = ''R'' ' ;    // Inactive Cheque
  //   7: TypeReq := 'RA';    // All
    end;


//  strSQL := strSQL + 'AND CQTRFN = '''+fdocno+''' ';
//  if TypeReq <> '' then strSQL := strSQL + 'AND CQTMNS = '''+typereq+''' ';
  if (Trim(deFrom.Text) <> '') and (Trim(deTo.Text) <> '') then
    strSQL := strSQL + ' AND (A.CQMDAT between ''' + FormatDateTime('MM/dd/yyyy',deFrom.Date) + ''' AND ''' + FormatDateTime('MM/dd/yyyy',deTo.Date) + ''')'
  else if (Trim(deFrom.Text) <> '')  then
         strSQL := strSQL + ' AND (A.CQMDAT between ''' + FormatDateTime('MM/dd/yyyy',deFrom.Date) + ''' AND ''' + FormatDateTime('MM/dd/yyyy',deFrom.Date) + ''')';



  strSQL := StringReplace(strSQL,'# AND','WHERE',[rfReplaceAll,rfIgnoreCase]);
//  IntToStr(Length(Trim(StrSql)))
//  ShowMessage(IntToStr(Length(Trim(StrSql))));
  if Length(Trim(StrSql)) = fl then  strSQL := StringReplace(strSQL,'#','  ',[rfReplaceAll,rfIgnoreCase]);


//   ShowMessage(strSQL);

  with Q001DMMain.RDSCQM do
  begin
    Close;
//    ShowMessage(strSQL);
    CommandText := strSQL;
//ShowMessage(CommandText);

    if not Active then  Open;
  end;

end;

procedure TQ001FrmRequest.MemoClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
  inherited;
  with Q001DMMain.CDSMAN do
  begin
    if not Active then  Open;
    if IsEmpty then
    begin
      buttonSelected := MessageDlg('Please Select Cheque No.',mtCustom,
                              [mbOK], 0);
      if buttonSelected = mrOK  then
      begin
        cxGrid1.SetFocus;
        exit ;
      end;
    end;

    FrmMemo := TFrmMemo.Create(Self);
    try
//    Self.IsActive := false;
      FrmMemo.ShowModal;
 //   Self.IsActive := true;
    finally
     FrmMemo.Free;
   end;
  end;
end;

procedure TQ001FrmRequest.Re1GetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
   if VarName ='V1' then  Value :=  cbInform.Text;
    if VarName ='V2' then  Value :=  Q001DMMain.CDSMAN.RecordCount;
end;

procedure TQ001FrmRequest.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  inherited;
  Action := caFree;

end;

procedure TQ001FrmRequest.FormCreate(Sender: TObject);
begin
//  SearchFieldName := 'CQMBNK';
//  SearchFieldIsNumber := false;

//  deFrom.Date := Date;
//  deTo.Date := Date;
  reqDate.Date := Date+1;
  ManReqDate1.Date := Date;
  ManReqDate2.Date := Date;
  //Panel3.Height := 300;

  cxPageControl1.ActivePageIndex := 0;
  ManageMode := false;
{  Q001DMMain.RDSCQM.CommandText := ' SELECT A.* ,B.CQMNAT '+
                                   ' FROM CQDM011 A       '+
                ' LEFT JOIN CQDM003 B  ON CAST(A.CQMCCQ as int)=B.CQMCDE '+
                ' where A.CQMNO2 = '''' ';

  if not Q001DMMain.RDSCQM.Active then Q001DMMain.RDSCQM.Open;
}
end;

procedure TQ001FrmRequest.FormShow(Sender: TObject);
begin
  inherited;
//  cxedtSearch.SetFocus;
  DataSource1.DataSet := Q001DMMain.RDSCQM;
  cxButton6.Click;
  DataSource2.DataSet := Q001DMMain.CDSMAN;
// ShowMessage(Q001DMMain.CDSMAN.CommandText);

end;

procedure TQ001FrmRequest.rgOptionPropertiesChange(Sender: TObject);
begin
//--

end;



procedure TQ001FrmRequest.SAClick(Sender: TObject);
begin
  inherited;
  Select(True);
end;

procedure TQ001FrmRequest.searchClick(Sender: TObject);
var  Variable,TypeReq,FChqNo,FdocNo,strSQL :string;

begin
  case cxComboBox1.ItemIndex of
  0: TypeReq := 'RP';
  1: TypeReq := 'CC';
  2: TypeReq := 'BR';
  3: TypeReq := 'RB';
  4: TypeReq := 'IA';
  5: TypeReq := 'RA';
  end;
  FChqNo := Trim(cxTextEdit1.Text);
  FdocNo := Trim(cxTextEdit3.Text);
  strSQL := 'select * from CQDT004 #';
  if FChqNo <> ''then strSQL := strSQL + 'AND CQTNO2 = '''+fchqno+''' ';
  if FdocNo <> '' then strSQL := strSQL + 'AND CQTRFN = '''+fdocno+''' ';
  if TypeReq <> '' then strSQL := strSQL + 'AND CQTMNS = '''+typereq+''' ';
  if (Trim(ManReqDate1.Text) <> '') and (Trim(ManReqDate2.Text) <> '') then
    strSQL := strSQL + 'AND (CONVERT(DATETIME,CONVERT(VARCHAR,CQTCRD,101),101) between ''' + FormatDateTime('MM/dd/yyyy',ManReqDate1.Date) + ''' AND ''' + FormatDateTime('MM/dd/yyyy',ManReqDate2.Date) + ''')';

  strSQL := StringReplace(strSQL,'#AND','WHERE',[rfReplaceAll,rfIgnoreCase]);






  with Q001DMMain.ManageReq do
  begin
    Close;
    CommandText := strSQL;
{
    if Length(FChqNo) = 0 then
       if cxComboBox1.ItemIndex < 0  then
          if Length(FdocNo) = 0  then
             if Length(Trim(ManReqDate1.Text)) <> 0 then
                 CommandText := ' select * from CQDT003 ' +
                   ' Where  ' +
                   '  (CQTCRD between '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate1.Date)+' 00:00:00'+#39 +
                   ' and '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate2.Date)+' 23:59:59'+#39+')'
             else
                 CommandText := ' select * from CQDT003 '
          else if Length(Trim(ManReqDate1.Text)) <> 0 then
                  CommandText := ' select * from CQDT003 ' +
                   ' where CQTRFN = '''+fdocno+'''  ' +
                   ' and (CQTCRD between '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate1.Date)+' 00:00:00'+#39 +
                   ' and '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate2.Date)+' 23:59:59'+#39+')'
               else
                  CommandText := ' select * from CQDT003 ' +
                  ' where CQTRFN = '''+fdocno+'''  '
       else if  Length(FdocNo) = 0  then
               if Length(Trim(ManReqDate1.Text)) <> 0 then
                  CommandText := ' select * from CQDT003 ' +
                   ' where CQTMNS = '''+typereq+'''  ' +
               -    ' and (CQTCRD between '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate1.Date)+' 00:00:00'+#39 +
                   ' and '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate2.Date)+' 23:59:59'+#39+')'
               else


             else
              CommandText := ' select * from CQDT003 ' +
                   ' where CQTMNS = '''+typereq+'''  ' +
                   ' and CQTRFN = '''+fdocno+'''  ' +
                   ' and (CQTCRD between '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate1.Date)+' 00:00:00'+#39 +
                   ' and '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate2.Date)+' 23:59:59'+#39+')'

//                   ' and cqtcrd between ''20120101'' and ''20120601''  ' ;
    else if cxComboBox1.ItemIndex < 0  then
            if  Length(FdocNo) = 0  then
                CommandText := ' select * from CQDT003 ' +
                   ' where  CQTNO2 = '''+fchqno+''' '+
                   ' and (CQTCRD between '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate1.Date)+' 00:00:00'+#39 +
                   ' and '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate2.Date)+' 23:59:59'+#39+')'
            else
                CommandText := ' select * from CQDT003 ' +
                   ' where  CQTNO2 = '''+fchqno+''' '+
                   ' and    CQTRFN = '''+fdocno+'''  ' +
                   ' and (CQTCRD between '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate1.Date)+' 00:00:00'+#39 +
                   ' and '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate2.Date)+' 23:59:59'+#39+')'
         else if  Length(FdocNo) = 0  then
               CommandText := ' select * from CQDT003 ' +
                   ' where CQTMNS = '''+typereq+'''  ' +
                   ' and CQTNO2 = '''+fchqno+''' '+
                   ' and    CQTRFN = '''+fdocno+'''  ' +
                   ' and (CQTCRD between '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate1.Date)+' 00:00:00'+#39 +
                   ' and '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate2.Date)+' 23:59:59'+#39+')'
               else
               CommandText := ' select * from CQDT003 ' +
                   ' where CQTMNS = '''+typereq+'''  ' +
                   ' and CQTNO2 = '''+fchqno+''' '+
                   ' and    CQTRFN = '''+fdocno+'''  ' +
                   ' and    CQTRFN = '''+fdocno+'''  ' +
                   ' and (CQTCRD between '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate1.Date)+' 00:00:00'+#39 +
                   ' and '+#39+FormatDateTime('yyyy-mm-dd',ManReqDate2.Date)+' 23:59:59'+#39+')';
}
//Q001FrmRequest.Caption:= CommandText;
//ShowMessage(CommandText);

{    ' SELECT A.* ,B.CQMNAT ' +
                   ' FROM LLSPDTA.dbo.CQDT002 A '+
                   ' LEFT JOIN LLSPDTA.dbo.CQDM003 B  ON A.CQTCCQ=B.CQMCDE' +
                   ' where a.CQTNO2 = '''+Variable+'''    ' +
                   ' ORDER BY A.CQTCRD';
}


    if not Active then  Open;
  end;
end;

procedure TQ001FrmRequest.Select(SAll: Boolean);
var B:TBookmark;
begin
  with Q001DMMain do
  begin
    if RDSCQM.Active then
      if RDSCQM.RecordCount > 0 then
      begin
        B := RDSCQM.GetBookmark;
        try
          RDSCQM.First;
          while not RDSCQM.Eof do
          begin
            RDSCQM.Edit;
            if SAll then
              RDSCQM.FieldByName('CHK').Value := 1
            else
              RDSCQM.FieldByName('CHK').Value := 0;
            RDSCQM.Post;
            RDSCQM.Next;
          end;
        finally
          RDSCQM.GotoBookmark(B);
          RDSCQM.FreeBookmark(B);
        end;
      end;
  end;
end;

procedure TQ001FrmRequest.SetManageMode(const Value: boolean);
begin
// à»çÏ¡ÒÃ¡ÓË¹´ÇèÒ  ¶éÒ ã¹ mode manage ãËéàÅ×Í¡
// ËÅÒÂ line ä´é  Multiselect 
  if (Value = true) then
  begin
    gdbtvSearchList.OptionsSelection.MultiSelect := false;
    gdbtvSelectedList.DataController.ClearSelection;
  end
  else
    gdbtvSearchList.OptionsSelection.MultiSelect := true;

  FManageMode := Value;
end;

end.

