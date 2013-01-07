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
  frxExportPDF, frxExportXLS, UIT_UTILS_LIB;

type
  TQ001FrmRequest = class(TfrmBase)
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
    cxLabel10: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    btn1: TButton;
    frxdbdtstCHORFR: TfrxDBDataset;
    Re1: TfrxReport;
    G1Column_CheckCondition: TcxGridDBColumn;
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
    Flag_ACSTS :string;
    { Public declarations }
  end;

var
  Q001FrmRequest: TQ001FrmRequest;

implementation

uses  Q001MainDM, Q001TrackChqFrm, Q001MemoFrm;

{$R *.dfm}

procedure TQ001FrmRequest.btn1Click(Sender: TObject);
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
  Re1.LoadFromFile('C:\Report\CHEQUE1.fr3')  ;
 Re1.ShowReport(False);
end;

procedure TQ001FrmRequest.btnCloseClick(Sender: TObject);
begin
  FormClosed := true;
  Self.Close;
  inherited;
end;


procedure TQ001FrmRequest.AddToSelectedList;
var
  i : Integer;
begin
// FormatFloat('#,##0.00',1254.3652)

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

procedure TQ001FrmRequest.clearClick(Sender: TObject);
begin
  with Q001DMMain.CDSMAN do
  begin
    if Active then Close;
    CommandText:= 'select * from CQDT004 where CQTACT = '+#39+#39+' ';
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
  case cbInform.ItemIndex of
    0: Ftext := getRunning(Q001DMMain.SockCon,'RE-','repayin','REPAYIN','');// FieldByName('CQTMNS').AsString := 'RP';
    1: Ftext := getRunning(Q001DMMain.SockCon,'RE-','repayin','REPAYIN','');//FieldByName('CQTMNS').AsString := 'CC';
    2: Ftext := getRunning(Q001DMMain.SockCon,'RE-','repayin','REPAYIN','');//FieldByName('CQTMNS').AsString := 'BR';
    3: Ftext := getRunning(Q001DMMain.SockCon,'RE-','repayin','REPAYIN','');//FieldByName('CQTMNS').AsString := 'RB';
    4: Ftext := getRunning(Q001DMMain.SockCon,'RE-','repayin','REPAYIN','');//FieldByName('CQTMNS').AsString := 'IA';
    5: Ftext := getRunning(Q001DMMain.SockCon,'RE-','repayin','REPAYIN','');//FieldByName('CQTMNS').AsString := 'RA';
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
      case cbInform.ItemIndex of
       0: FieldByName('CQTMNS').AsString := 'RP';
       1: FieldByName('CQTMNS').AsString := 'CC';
       2: FieldByName('CQTMNS').AsString := 'BR';
       3: FieldByName('CQTMNS').AsString := 'RB';
       4: FieldByName('CQTMNS').AsString := 'IA';
       5: FieldByName('CQTMNS').AsString := 'RA';
      end;
      FieldByName('CQTRFN').AsString := Ftext;
      Post;
      Next;
    end;
   Q001DMMain.CDSMAN.ApplyUpdates(0);
  end;
  clearClick(cxButton6);
  cxButton4.Visible := False;
  btn1.Visible := False;
end;


procedure TQ001FrmRequest.AddChequeEntry(ds: TDataSet);
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

     FieldByName('CQTCRW').AsString := Q001DMMain.Dll.WorkStation;
     FieldByName('CQTCRU').AsString := Q001DMMain.Dll.UserID;
     FieldByName('CQTCRD').AsDateTime := getServerDateTime(Q001DMMain.SockCon);
     FieldByName('CQTETD').AsDateTime := getServerDateTime(Q001DMMain.SockCon);
     FieldByName('CQTETW').AsString := Q001DMMain.Dll.WorkStation;
     FieldByName('CQTETU').AsString := Q001DMMain.Dll.UserID;
     FieldByName('CQTBRN').AsString := Q001DMMain.Dll.Branch;
     FieldByName('CQTPDM').AsString := Q001DMMain.Dll.PDM;
     FieldByName('CQTPDT').AsString := Q001DMMain.Dll.PDT;

    FieldByName('CQTMMO').AsString := 'User Remark';
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
  inherited;
  case key of
    VK_RETURN : if not cbDate.Checked then
                    Q001DMMain.SearchCHQ(SearchFieldName,cxedtSearch.Text,rgOption.Properties.Items[rgOption.ItemIndex].Value, SearchFieldIsNumber)
                else
                    Q001DMMain.SearchCHQ(SearchFieldName,cxedtSearch.Text,rgOption.Properties.Items[rgOption.ItemIndex].Value,deFrom.Date,deTo.Date, SearchFieldIsNumber);
    VK_DOWN  : CxGBank.SetFocus;
    end;
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

procedure TQ001FrmRequest.gdbtvSearchListColumn3GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ001FrmRequest.G1Column_AmtGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ001FrmRequest.cxPageControl1Change(Sender: TObject);
begin
//  ShowMessage(IntToStr(cxPageControl1.ActivePageIndex));
  case cxPageControl1.ActivePageIndex of
   0:begin
       Panel1.Visible := True;
       Panel3.Visible := True;
       Panel3.Height :=300;
       Panel6.Height :=159;
//       CxGBank.SetFocus;
     end;
   1:begin
       Panel1.Visible:=False;
       Panel3.Visible:=False;
       Panel4.Align :=alClient;
       Panel3.Height :=0;
       Panel6.Height :=600;
       DTSManReq.DataSet := Q001DMMain.ManageReq;
       cxComboBox1.SetFocus;
     end;
  end;

//  ManageMode := (cxPageControl1.ActivePageIndex = 1);
end;

procedure TQ001FrmRequest.gdbtvSearchListColumnHeaderClick(
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

procedure TQ001FrmRequest.gdbtvSearchListDblClick(Sender: TObject);
begin
  AddToSelectedList;
end;

procedure TQ001FrmRequest.gdbtvSearchListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_BACK then
    cxedtSearch.SetFocus
  else if key = VK_RETURN then
    AddToSelectedList;
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

procedure TQ001FrmRequest.MemoClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
//  inherited;
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

  SearchFieldName := 'CQMBNK';
  SearchFieldIsNumber := false;

  deFrom.Date := Date;
  deTo.Date := Date;
  reqDate.Date := Date+1;
  ManReqDate1.Date := Date;
  ManReqDate2.Date := Date;
  Panel3.Height := 300;

  cxPageControl1.ActivePageIndex := 0;
  ManageMode := false;

end;

procedure TQ001FrmRequest.FormShow(Sender: TObject);
begin
  inherited;
  cxedtSearch.SetFocus;
  DataSource1.DataSet := Q001DMMain.RDSCQM;
  DataSource2.DataSet := Q001DMMain.CDSMAN;

end;

procedure TQ001FrmRequest.rgOptionPropertiesChange(Sender: TObject);
begin
//--

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
    strSQL := strSQL + 'AND (CQTCRD between ''' + FormatDateTime('MM/dd/yyyy',ManReqDate1.Date) + ''' AND ''' + FormatDateTime('MM/dd/yyyy',ManReqDate2.Date) + ''')';

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
ShowMessage(CommandText);

{    ' SELECT A.* ,B.CQMNAT ' +
                   ' FROM LLSPDTA.dbo.CQDT002 A '+
                   ' LEFT JOIN LLSPDTA.dbo.CQDM003 B  ON A.CQTCCQ=B.CQMCDE' +
                   ' where a.CQTNO2 = '''+Variable+'''    ' +
                   ' ORDER BY A.CQTCRD';
}


    if not Active then  Open;
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

