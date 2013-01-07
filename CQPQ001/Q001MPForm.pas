unit Q001MPForm;

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
  frxClass, frxDBSet, cxCalendar, cxPC, cxMemo, cxGridDBDataDefinitions;

type
  TQ001FrmMP = class(TfrmBase)
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
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
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
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxLabel34: TcxLabel;
    cxButton5: TcxButton;
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
    procedure cxButton1Click(Sender: TObject);
    procedure gdbtvSearchListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdbtvSearchListDblClick(Sender: TObject);
    procedure gdbtvSelectedListDblClick(Sender: TObject);
    procedure gdbtvSelectedListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBColumn8GetDisplayText(Sender: TcxCustomGridTableItem;
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
  Q001FrmMP: TQ001FrmMP;

implementation

{$R *.dfm}
uses  Q001CreateDocFrm, Q001MainDM, Q001MCFrm, Q001OpenCDFrm;

procedure TQ001FrmMP.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
  Self.Close;
end;

{
procedure TQ001FrmMP.AddChequeEntry(f1, f2, f3: String);
begin

  //Showmessage(f1+f2+f3);

  with DataSource2.DataSet do begin

    if not Active then
    begin
      Q001MainDM.Q001DMMain.ClientDataSet1.CreateDataSet;
      //Open;
    end;

    Append;
    FieldByName('Chk').AsInteger := 0;
    FieldByName('F11').AsString := f1;
    FieldByName('F12').AsString := f2;
    FieldByName('F13').AsString := f3;
    Post;
  end;

end;
}

procedure TQ001FrmMP.AddChequeEntry(ds: TDataSet);
begin

  with DataSource2.DataSet do begin

    if not Active then
    begin
      //Q001MainDM.Q001DMMain.ClientDataSet1.CreateDataSet;
      Open;
    end;

    Append;
      FieldByName('CQMBNK').AsString := ds.FieldByName('CQMBNK').AsString;
      FieldByName('CQMEGN').AsString := ds.FieldByName('CQMEGN').AsString;
      FieldByName('CQMBBR').AsString := ds.FieldByName('CQMBBR').AsString;
      FieldByName('CQMBRH').AsString := ds.FieldByName('CQMBRH').AsString;
      FieldByName('CQMNO2').AsString := ds.FieldByName('CQMNO2').AsString;
      FieldByName('CQMAMT').AsString := ds.FieldByName('CQMAMT').AsString;
      FieldByName('CQMDAT').AsString := ds.FieldByName('CQMDAT').AsString;
      FieldByName('CQMTRD').AsString := ds.FieldByName('CQMTRD').AsString;
      FieldByName('CONRUN').AsString := ds.FieldByName('CONRUN').AsString;
      FieldByName('DLR Name').AsString := ds.FieldByName('DLR Name').AsString;
      FieldByName('CARMDL').AsString := ds.FieldByName('CARMDL').AsString;
      FieldByName('CQMCTY').AsString := ds.FieldByName('CQMCTY').AsString;
      FieldByName('CQMRUN').AsString := ds.FieldByName('CQMRUN').AsString;
      FieldByName('CQMACT').AsString := ds.FieldByName('CQMACT').AsString;
      FieldByName('CQMSTS').AsString := ds.FieldByName('CQMSTS').AsString;
    try
     Post;
    Except
     Cancel;
    end;
  end;

end;


procedure TQ001FrmMP.AddToSelectedList;
var
  i : Integer;
begin

  with gdbtvSearchList.DataController do begin

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

end;

procedure TQ001FrmMP.cxButton1Click(Sender: TObject);
begin
  DeleteFromSelectedList;
end;

procedure TQ001FrmMP.cxButton2Click(Sender: TObject);
begin
  AddToSelectedList;
end;

procedure TQ001FrmMP.cxButton3Click(Sender: TObject);
begin
  //Q001DMMain.ClientDataSet1.EmptyDataSet;
  
  Q001DMMain.NewSelectList;

end;

procedure TQ001FrmMP.cxButton7Click(Sender: TObject);
var
  obj:array of TReportParam;
begin
 // inherited;
  //ShowReport(SockCon,'L09',obj);
   {
    SetLength(obj,1);
    obj[0]:=TReportParam.Create;
    obj[0].AddParam('DNO','');
    obj[0].AddParam('ACT','A');
    }


     SetLength(obj,1);                   {***}
     obj[0]:=TReportParam.Create;        {***}

    if cbInform.ItemIndex = 2 then
      obj[0].AddParam('dt','C')
    else if cbInform.ItemIndex = 3 then
      obj[0].AddParam('dt','B')
    else
      obj[0].AddParam('dt','O');

    ShowReport(Q001DMMain.SockCon,'L09',obj);

end;

procedure TQ001FrmMP.cxButton8Click(Sender: TObject);
var
  buttonSelected : Integer;
begin

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

end;

procedure TQ001FrmMP.cxButton9Click(Sender: TObject);
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

procedure TQ001FrmMP.cbDateClick(Sender: TObject);
begin
  inherited;
  deFrom.Enabled := cbDate.Checked;
  deTo.Enabled := cbDate.Checked;
end;

procedure TQ001FrmMP.cxedtSearchKeyDown(Sender: TObject; var Key: Word;
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

procedure TQ001FrmMP.cxedtSearchPropertiesChange(Sender: TObject);
begin
  inherited;
  //timer1.Enabled := false;
  //timer1.Enabled := true;
end;

procedure TQ001FrmMP.Timer1Timer(Sender: TObject);
begin
  inherited;
  Q001DMMain.SearchCHQ(SearchFieldName,cxedtSearch.Text,rgOption.Properties.Items[rgOption.ItemIndex].Value);
  timer1.Enabled := false;
end;

procedure TQ001FrmMP.gdbtvSearchListColumn16GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var

  Row: Integer;
begin
  
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);

  //Showmessage(IntToStr(Row));

end;

procedure TQ001FrmMP.gdbtvSearchListColumn3GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ001FrmMP.cxGridDBColumn8GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ001FrmMP.cxPageControl1Change(Sender: TObject);
begin
  ManageMode := (cxPageControl1.ActivePageIndex = 1);
end;

procedure TQ001FrmMP.gdbtvSearchListColumnHeaderClick(
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

end;

procedure TQ001FrmMP.gdbtvSearchListDblClick(Sender: TObject);
begin
  AddToSelectedList;
end;

procedure TQ001FrmMP.gdbtvSearchListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_BACK then
    cxedtSearch.SetFocus
  else if key = VK_RETURN then
    AddToSelectedList;
end;

procedure TQ001FrmMP.gdbtvSearchListSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  TcxGridDBTableSummaryItem(gdbtvSearchList.DataController.Summary.FooterSummaryItems[2]).Format := QuotedStr(IntToStr(Sender.DataController.GetSelectedCount));
  TcxGridDBTableSummaryItem(gdbtvSearchList.DataController.Summary.FooterSummaryItems[3]).Format := QuotedStr(GetSumOfSelectStr( TcxGridDBDataController(Sender.DataController) ));
end;

procedure TQ001FrmMP.gdbtvSearchListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ001FrmMP.cxGridDBColumn2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var

  Row: Integer;
begin

  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;



procedure TQ001FrmMP.DeleteFromSelectedList;
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

procedure TQ001FrmMP.gdbtvSelectedListDblClick(Sender: TObject);
begin
  DeleteFromSelectedList;
end;

procedure TQ001FrmMP.gdbtvSelectedListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_BACK then
    cxedtSearch.SetFocus
  else if key = VK_RETURN then
    DeleteFromSelectedList;
end;

procedure TQ001FrmMP.gdbtvSelectedListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

function TQ001FrmMP.GetSumOfSelectStr(cxdc:TcxGridDBDataController): String;
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

procedure TQ001FrmMP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TQ001FrmMP.FormCreate(Sender: TObject);
begin

  SearchFieldName := 'CQMBNK';
  SearchFieldIsNumber := false;

  deFrom.Date := Date;
  deTo.Date := Date;
  Panel3.Height := 300;

  cxPageControl1.ActivePageIndex := 0;
  ManageMode := false;

  Q001DMMain.NewSelectList;
  
end;

procedure TQ001FrmMP.FormShow(Sender: TObject);
begin
  inherited;
  cxedtSearch.SetFocus;
end;

procedure TQ001FrmMP.rgOptionPropertiesChange(Sender: TObject);
begin
  inherited;

  if cxedtSearch.Text <> '' then
   cxedtSearchPropertiesChange(Sender);

end;



procedure TQ001FrmMP.SetManageMode(const Value: boolean);
begin
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
