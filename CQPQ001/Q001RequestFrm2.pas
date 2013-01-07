unit Q001RequestFrm2;

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
  frxExportPDF, frxExportXLS;

type
  TQ001FrmRequest2 = class(TfrmBase)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    DataSource1: TDataSource;
    cxedtSearch: TcxTextEdit;
    rgOption: TcxRadioGroup;
    Panel3: TPanel;
    Panel4: TPanel;
    CxGBank: TcxGrid;
    gdbtvSearchList: TcxGridDBTableView;
    gdbtvSearchListColumn16: TcxGridDBColumn;
    gdbtvSearchListColumn12: TcxGridDBColumn;
    gdbtvSearchListColumn13: TcxGridDBColumn;
    gdbtvSearchListColumn14: TcxGridDBColumn;
    gdbtvSearchListColumn15: TcxGridDBColumn;
    gdbtvSearchListColumn1: TcxGridDBColumn;
    gdbtvSearchListColumn3: TcxGridDBColumn;
    gdbtvSearchListColumn4: TcxGridDBColumn;
    gdbtvSearchListColumn5: TcxGridDBColumn;
    gdbtvSearchListColumn7: TcxGridDBColumn;
    gdbtvSearchListColumn8: TcxGridDBColumn;
    gdbtvSearchListColumn9: TcxGridDBColumn;
    gdbtvSearchListColumn10: TcxGridDBColumn;
    gdbtvSearchListColumn11: TcxGridDBColumn;
    CxGBankLevel1: TcxGridLevel;
    JvSplitter1: TJvSplitter;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Timer1: TTimer;
    DataSource2: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel2: TPanel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    lblKeySearch: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    deFrom: TcxDateEdit;
    cxLabel4: TcxLabel;
    deTo: TcxDateEdit;
    Panel6: TPanel;
    cbDate: TcxCheckBox;
    gdbtvSearchListColumn2: TcxGridDBColumn;
    gdbtvSearchListColumn17: TcxGridDBColumn;
    gdbtvSearchListColumn18: TcxGridDBColumn;
    cxStyle3: TcxStyle;
    cxButton9: TcxButton;
    cxButton3: TcxButton;
    Panel5: TPanel;
    cxGrid1: TcxGrid;
    gdbtvSelectedList: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    G1Column_band_c: TcxGridDBColumn;
    G1Column_bank_n: TcxGridDBColumn;
    G1Column_Branch_c: TcxGridDBColumn;
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
    G2Column_bank_C: TcxGridDBColumn;
    G2Column_Bank_n: TcxGridDBColumn;
    G2Column_Branch_c: TcxGridDBColumn;
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
    G1CQTREQ: TcxGridDBColumn;
    DTSManReq: TDataSource;
    cxButton10: TcxButton;
    G2Column_mode: TcxGridDBColumn;
    cxButton11: TcxButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxedtSearchPropertiesChange(Sender: TObject);
    procedure gdbtvSearchListColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormCreate(Sender: TObject);
    procedure rgOptionPropertiesChange(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure gdbtvSearchListColumn16GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure Timer1Timer(Sender: TObject);
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
  private
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
  public
    { Public declarations }
  end;

var
  Q001FrmRequest2: TQ001FrmRequest2;

implementation

uses  Q001CreateDocFrm, Q001MainDM, Q001MCFrm, Q001OpenCDFrm,
      Q001TrackChqFrm,Q001MemoFrm;

{$R *.dfm}

procedure TQ001FrmRequest2.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
  Self.Close;
end;


procedure TQ001FrmRequest2.AddToSelectedList;
var
  i : Integer;
begin
{
  with gdbtvSearchList.DataController do
  begin
    if ManageMode then
    begin
      Q001FrmMC := TQ001FrmMC.Create(Self);
      try
        Self.IsActive := false;
        Q001FrmMC.WorkMode := 1;
        Q001FrmMC.ShowModal;
        Self.IsActive := true;

        if Q001FrmMC.ModalResult = mrOk then
        begin
          MessageDlg('OK',mtInformation,[mbOK], 0);
        end;

      finally
       Q001FrmMC.Free;
      end;

    end
    else
    begin

    DataSet.DisableControls;
      try
       for i := 0 to GetSelectedCount - 1 do
        begin
          DataSet.RecNo := GetSelectedRowIndex(i)+1;
          AddChequeEntry(DataSource1.DataSet);
        end;
      finally
      DataSet.EnableControls;
      end;

    end;

  end;//with
}
  with gdbtvSearchList.DataController do
  begin
    DataSet.DisableControls;
      try
       for i := 0 to GetSelectedCount - 1 do
        begin
          DataSet.RecNo := GetSelectedRowIndex(i)+1;
          AddChequeEntry(DataSource1.DataSet);
        end;
      finally
        DataSet.EnableControls;
      end;

  end;

end;

procedure TQ001FrmRequest2.clearClick(Sender: TObject);
begin
  with Q001DMMain.CDSMAN do
  begin
    if Active then Close;
    CommandText:= 'select * from CQDT003 where CQTACT = '+#39+#39+' ';
    Open;
  end;
  cxLabel34.Caption:='Action Process';
  cbInform.ItemIndex:=-1;

end;


procedure TQ001FrmRequest2.submitClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
  if cbInform.ItemIndex < 0 then
  begin
      buttonSelected := MessageDlg('Please Select Action Process',mtCustom,
                              [mbOK], 0);
      if buttonSelected = mrOK  then
      begin
        cxGrid1.SetFocus;
        exit ;
      end;
  end;
//ShowMessage(IntToStr(cbInform.ItemIndex));
  with Q001DMMain.CDSMAN do
  begin
    if not Active then  Open;
    First;
    while not Eof do
    begin
      Edit;
      case cbInform.ItemIndex of
       0: FieldByName('CQTMNS').AsString := 'RP';
       1: FieldByName('CQTMNS').AsString := 'CC';
       2: FieldByName('CQTMNS').AsString := 'BR';
       3: FieldByName('CQTMNS').AsString := 'RB';
       4: FieldByName('CQTMNS').AsString := 'IA';
       5: FieldByName('CQTMNS').AsString := 'RA';
      end;
      Post;
      Next;
    end;
   Q001DMMain.CDSMAN.ApplyUpdates(0);
  end;
end;


procedure TQ001FrmRequest2.AddChequeEntry(ds: TDataSet);
begin
  with Q001DMMain.CDSMAN do
  begin
    if not Active then  Open;
    Append;
    FieldByName('CQTBNK').AsString := ds.FieldByName('CQMBNK').AsString;
    FieldByName('CQTEGN').AsString := ds.FieldByName('CQMEGN').AsString;
    FieldByName('CQTBBR').AsString := ds.FieldByName('CQMBBR').AsString;
    FieldByName('CQTBRH').AsString := ds.FieldByName('CQMBRH').AsString;
    FieldByName('CQTNo2').AsString := ds.FieldByName('CQMNo2').AsString;
    FieldByName('CQTAMT').AsString := ds.FieldByName('CQMAMT').AsString;
    FieldByName('CQTDAT').AsString := ds.FieldByName('CQMDAT').AsString;
    FieldByName('CQTTRD').AsString := ds.FieldByName('CQMTRD').AsString;
    FieldByName('CQTCON').AsString := ds.FieldByName('CONRUN').AsString;
    FieldByName('CQTDEA').AsString := ds.FieldByName('DLR Name').AsString;
    FieldByName('CQTMDL').AsString := ds.FieldByName('CARMDL').AsString;
    FieldByName('CQTCTY').AsString := ds.FieldByName('CQMCTY').AsString;
    FieldByName('CQTRUN').AsString := ds.FieldByName('CQMRUN').AsString;
    FieldByName('CQTACT').AsString := ds.FieldByName('CQMACT').AsString;
    FieldByName('CQTSTS').AsString := ds.FieldByName('CQMSTS').AsString;
    FieldByName('CQTREQ').AsString := 'RQ';

     FieldByName('CQTCRW').AsString := 'ssss';
     FieldByName('CQTCRU').AsString := 'ssss';
     FieldByName('CQTCRD').AsDateTime := now;
     FieldByName('CQTETD').AsDateTime := now;
     FieldByName('CQTETW').AsString := 'ssss';
     FieldByName('CQTETU').AsString := 'sss';
     FieldByName('CQTBRN').AsString := 's';
     FieldByName('CQTPDM').AsString := 's';
     FieldByName('CQTPDT').AsString := 'q';

    FieldByName('CQTMMO').AsString := 'User Remark';
    try
      Post;
    Except
      Cancel;
    end;

  end;

end;


procedure TQ001FrmRequest2.deleteClick(Sender: TObject);
begin
  DeleteFromSelectedList;
end;

procedure TQ001FrmRequest2.cxButton2Click(Sender: TObject);
begin
  AddToSelectedList;
end;

procedure TQ001FrmRequest2.cxButton3Click(Sender: TObject);
begin
  //Q001DMMain.ClientDataSet1.EmptyDataSet;
  
  Q001DMMain.NewSelectList('TL00007');

end;

procedure TQ001FrmRequest2.cxButton7Click(Sender: TObject);
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

    ShowReport(Q001DMMain.SockCon,'L09',obj);

end;

procedure TQ001FrmRequest2.cxButton8Click(Sender: TObject);
var
  buttonSelected : Integer;
begin

  Q001FrmTrackChq.Show;

     (*
  Q001FrmCreateDoc := TQ001FrmCreateDoc.Create(Self);
  try
    Self.IsActive := false;
    Q001FrmCreateDoc.ShowModal;
    Self.IsActive := true;

    if Q001FrmCreateDoc.ModalResult = mrOk then
    begin
      MessageDlg('OK',mtInformation,[mbOK], 0);
    end
    else
    begin
      MessageDlg('Cancel',mtInformation,[mbOK], 0);
    end;

  finally
   Q001FrmCreateDoc.Free;
  end;
         *)

//  Q001DMMain.CDSSLE.ApplyUpdates(0);

end;

procedure TQ001FrmRequest2.cxButton9Click(Sender: TObject);
begin

  Q001FrmOpenCD := TQ001FrmOpenCD.Create(Self);
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

end;

procedure TQ001FrmRequest2.cbDateClick(Sender: TObject);
begin
  inherited;
  deFrom.Enabled := cbDate.Checked;
  deTo.Enabled := cbDate.Checked;
end;

procedure TQ001FrmRequest2.cbInformPropertiesChange(Sender: TObject);
begin
  inherited;
  cxLabel34.Caption:=  cbInform.Text;
end;

procedure TQ001FrmRequest2.cxedtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = VK_RETURN then
  begin
    if not cbDate.Checked then
    begin
      Q001DMMain.SearchCHQ(SearchFieldName,cxedtSearch.Text,rgOption.Properties.Items[rgOption.ItemIndex].Value, SearchFieldIsNumber);
    end
    else
    begin
      Q001DMMain.SearchCHQ(SearchFieldName,cxedtSearch.Text,rgOption.Properties.Items[rgOption.ItemIndex].Value,deFrom.Date,deTo.Date, SearchFieldIsNumber);
    end;

  end

  else if key = VK_DOWN then
       CxGBank.SetFocus;

  //Showmessage(IntToStr(DataSource1.DataSet.RecordCount));
end;

procedure TQ001FrmRequest2.cxedtSearchPropertiesChange(Sender: TObject);
begin
  inherited;
  //timer1.Enabled := false;
  //timer1.Enabled := true;
end;

procedure TQ001FrmRequest2.Timer1Timer(Sender: TObject);
begin
  inherited;
  Q001DMMain.SearchCHQ(SearchFieldName,cxedtSearch.Text,rgOption.Properties.Items[rgOption.ItemIndex].Value);
  timer1.Enabled := false;
end;

procedure TQ001FrmRequest2.TrackChq(Sender: TObject);
//var
//  TrackChq : Integer;
//  Q001FrmTrackChq : TQ001FrmTrackChq;
Begin
   Q001FrmTrackChq.ShowModal;
{
  Q001FrmTrackChq:= TQ001FrmTrackChq.Create(Self);
  try
    Self.IsActive := false;
    Q001FrmTrackChq.ShowModal;
    Self.IsActive := true;

    if Q001FrmTrackChq.ModalResult = mrOk then
    begin
      MessageDlg('OK',mtInformation,[mbOK], 0);
    end
    else
    begin
      MessageDlg('Cancel',mtInformation,[mbOK], 0);
    end;

  finally
   Q001FrmTrackChq.Free;
  end;
}
end;

procedure TQ001FrmRequest2.gdbtvSearchListColumn16GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var

  Row: Integer;
begin
  
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);

  //Showmessage(IntToStr(Row));

end;

procedure TQ001FrmRequest2.gdbtvSearchListColumn3GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ001FrmRequest2.G1Column_AmtGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ001FrmRequest2.cxPageControl1Change(Sender: TObject);
begin
//  ShowMessage(IntToStr(cxPageControl1.ActivePageIndex));
{  case cxPageControl1.ActivePageIndex of
   0:begin
       Panel3.Height :=140;
       Panel6.Height :=319;
     end;
   1:begin
       Panel3.Height :=0;
       Panel6.Height :=519;
     end;
  end;
}
//  ManageMode := (cxPageControl1.ActivePageIndex = 1);
end;

procedure TQ001FrmRequest2.gdbtvSearchListColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  inherited;

  if AColumn.Tag = 99 then
    Exit;

  AColumn.Index := 1;
  SearchFieldName := TcxGridDBColumn(AColumn).DataBinding.FieldName;
  SearchFieldIsNumber := (AColumn.Tag = 77);
  lblKeySearch.Caption := TcxGridDBColumn(AColumn).Caption;
  cxedtSearch.Text := '';
  cxedtSearch.SetFocus;

  Sender.Controller.LeftPos := 0;

end;

procedure TQ001FrmRequest2.gdbtvSearchListDblClick(Sender: TObject);
begin
  AddToSelectedList;
end;

procedure TQ001FrmRequest2.gdbtvSearchListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_BACK then
    cxedtSearch.SetFocus
  else if key = VK_RETURN then
    AddToSelectedList;
end;

procedure TQ001FrmRequest2.gdbtvSearchListSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  TcxGridDBTableSummaryItem(gdbtvSearchList.DataController.Summary.FooterSummaryItems[2]).Format := QuotedStr(IntToStr(Sender.DataController.GetSelectedCount));
  TcxGridDBTableSummaryItem(gdbtvSearchList.DataController.Summary.FooterSummaryItems[3]).Format := QuotedStr(GetSumOfSelectStr( TcxGridDBDataController(Sender.DataController) ));
end;

procedure TQ001FrmRequest2.gdbtvSearchListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ001FrmRequest2.cxGridDBColumn2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var

  Row: Integer;
begin

  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
  
end;



procedure TQ001FrmRequest2.DeleteFromSelectedList;
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

procedure TQ001FrmRequest2.DeleteReqClick(Sender: TObject);
begin
  with Q001DMMain.ManageReq do
  begin
    if not Active then  Open;
    First;
    while not Eof do
    begin
      Delete;
      Next;
    end;
    ApplyUpdates(0);
  end;
//   Q001DMMain.ManageReq.ApplyUpdates(0);
  end;

procedure TQ001FrmRequest2.gdbtvSelectedListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_delete :DeleteFromSelectedList;
//    VK_INSERT :TStringGridHack(StringGrid1).InsertRow(Grow);
    VK_BACK   :cxedtSearch.SetFocus;
    VK_RETURN :DeleteFromSelectedList;
  end;

{
  if key = VK_BACK then
    cxedtSearch.SetFocus
  else if key = VK_RETURN then
    DeleteFromSelectedList;
}
end;

procedure TQ001FrmRequest2.gdbtvSelectedListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if AText <> '' then
    AText := Formatfloat('#,##0.00',StrToFloat(AText));
end;

function TQ001FrmRequest2.GetSumOfSelectStr(cxdc:TcxGridDBDataController): String;
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

procedure TQ001FrmRequest2.MemoClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
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
    inherited;
    FrmMemo.Show;
  end;
end;

procedure TQ001FrmRequest2.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  inherited;
  Action := caFree;

end;

procedure TQ001FrmRequest2.FormCreate(Sender: TObject);
begin

  SearchFieldName := 'CQMBNK';
  SearchFieldIsNumber := false;

  deFrom.Date := Date;
  deTo.Date := Date;
  reqDate.Date := Date;
  ManReqDate1.Date := Date;
  ManReqDate2.Date := Date;
  Panel3.Height := 300;


  cxPageControl1.ActivePageIndex := 0;
  ManageMode := false;
//  Q001DMMain.NewSelectList('TL00007');
  
end;

procedure TQ001FrmRequest2.FormShow(Sender: TObject);
begin
  inherited;
  cxedtSearch.SetFocus;
end;

procedure TQ001FrmRequest2.rgOptionPropertiesChange(Sender: TObject);
begin
  inherited;

  if cxedtSearch.Text <> '' then
   cxedtSearchPropertiesChange(Sender);

end;



procedure TQ001FrmRequest2.searchClick(Sender: TObject);
var  Variable,TypeReq,FChqNo :string;
//     TypeReq  :Integer;
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
  with Q001DMMain.ManageReq do
  begin


//    Variable:= Q001DMMain.ManageReq.FieldByName('CQTNo2').AsString;
    Close;
    CommandText := '';
    if Length(FChqNo) = 0 then 
    CommandText := ' select * from CQDT003 ' +
                   ' where CQTMNS = '''+typereq+'''  ' +
//                   ' and CQTNO2 = '''+fchqno+''' '+
                   ' and cqtcrd between ''20120101'' and ''20120601''  '
    else
    CommandText := ' select * from CQDT003 ' +
                   ' where CQTMNS = '''+typereq+'''  ' +
                   ' and CQTNO2 = '''+fchqno+''' '+
                   ' and cqtcrd between ''20120101'' and ''20120601''  ' ;


{    ' SELECT A.* ,B.CQMNAT ' +
                   ' FROM LLSPDTA.dbo.CQDT002 A '+
                   ' LEFT JOIN LLSPDTA.dbo.CQDM003 B  ON A.CQTCCQ=B.CQMCDE' +
                   ' where a.CQTNO2 = '''+Variable+'''    ' +
                   ' ORDER BY A.CQTCRD';
}

    if not Active then  Open;
  end;
end;

procedure TQ001FrmRequest2.SetManageMode(const Value: boolean);
begin
// เป็ฯการกำหนดว่า  ถ้า ใน mode manage ให้เลือก
// หลาย line ได้  Multiselect 
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


{ --------------Checkbox colums selected (Select/Unselect All)----------------

procedure TQ001FrmMP.CxGBankDBTableView1Column6HeaderClick(Sender: TObject);
var
  i : integer;
  bChk : boolean;
begin
  inherited;

  bChk := false;

  with DataSource1.DataSet do begin
  DisableControls;
  try

  if (CxGBankDBTableView1.DataController.Filter.IsFiltering) and
     (trim(CxGBankDBTableView1.DataController.Filter.FilterText) <> '') then
    Filter := '( Chk = '+QuotedStr('1')+' ) and '+CxGBankDBTableView1.DataController.Filter.FilterText
  else
    Filter := '( Chk = '+QuotedStr('1')+' )';

  //Showmessage(Filter);
  Filtered := true;
  bChk := (RecordCount > 0);
  Filtered := false;

  if (CxGBankDBTableView1.DataController.Filter.IsFiltering) and
     (trim(CxGBankDBTableView1.DataController.Filter.FilterText) <> '') then
  begin
    Filter := CxGBankDBTableView1.DataController.Filter.FilterText;
    Filtered := true;
  end;

  First;
  if not bChk then
  begin

    while not Eof do
    begin
      Edit;
      FieldByName('Chk').Value := 1;
      Post;
      Next;
    end;

  end
  else
  begin

    while not Eof do
    begin
      Edit;
      FieldByName('Chk').Value := 0;
      Post;
      Next;
    end;

  end;//if

  finally
    Filtered := false;
    EnableControls;
  end;

  First;

  end;//with

end;

}

  { -----Add-------

  with DataSource1.DataSet do begin

    DisableControls;
    try
    i := RecNo;
    First;
    while not Eof do
    begin

      if FieldByName('Chk').AsString = '1' then
      begin

       AddChequeEntry(DataSource1.DataSet);

      end;

      Next;
    end;

    RecNo := i;

    finally
     EnableControls;
    end;


  end; //with
  }

  {
  
  procedure TQ001FrmMP.gdbtvSearchListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

   if (AViewInfo.Selected = true) or (Sender.DataController.RecordCount <= 0) then
    Exit;

    if AViewInfo.GridRecord.Values[0] = '1' then
    begin
      ACanvas.Brush.Color :=  clRed;
      ACanvas.Font.Color :=  clWhite;
    end;

end;

  }


    { -------Delete Items---------------
  with DataSource2.DataSet do begin
    Filter := 'Chk = '+#39+'1'+#39;
    DisableControls;
    Filtered := true;
    //ShowMessage(IntToStr(RecordCount));
    try

    //TClientDataSet(DataSource2.DataSet).EmptyDataSet
    First;
    while not Eof do
    begin
     Delete;
     Continue;
     Next;
    end;

    finally
     Filtered := false;
     EnableControls;
    end;

  end;
  }

  {

  --Drop #temp table if exists
 
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[PK_#tempMain]') AND type = 'PK')
	Begin
	ALTER TABLE [dbo].[#tempMain] DROP CONSTRAINT [PK_#tempMain]
	End
 
If exists (select  * from tempdb.dbo.sysobjects o where o.xtype in ('U')  and o.id = object_id(N'tempdb..#tempMain'))
	Begin
	Drop table #tempMain
	End 
--After this i create the table as in above code snippet


  }
