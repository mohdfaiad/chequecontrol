unit Q001MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, Menus, cxLookAndFeelPainters, frxBarcode, frxDBXComponents,
  frxADOComponents, frxIBXComponents, frxClass, frxBDEComponents, frxChart,
  frxDCtrl, frxExportHTML, frxExportCSV, frxExportPDF, frxExportXLS, DBClient,
  frxDBSet, SConnect, SockCon, DB, MConnect, ImgList, Provider, ADODB,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel, StdCtrls, cxButtons,
  ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, SearchBar, cxCheckBox,
  cxDropDownEdit, cxMaskEdit, cxCalendar, cxSplitter, Q001MainDM,UIT_GLOBAL_LIB,
  UIT_UTILS_LIB, cxMemo, Q001RemarkFrm, RemDataSet, Q001TrackingFrm,
  Q001DeleteDeFrm, DateUtils, cxPC, cxCurrencyEdit;

type
  TFrmQ001Main = class(TfrmBase)
    SearchBar1: TSearchBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    reqDate: TcxDateEdit;
    cxLabel2: TcxLabel;
    Label2: TLabel;
    cbInform: TcxComboBox;
    DepDel: TcxButton;
    Clear: TcxButton;
    Memo: TcxButton;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    Panel4: TPanel;
    cxLabel1: TcxLabel;
    ListStatusChq: TcxComboBox;
    cxLabel3: TcxLabel;
    RStr: TcxDateEdit;
    REnd: TcxDateEdit;
    DateChk: TcxCheckBox;
    DOC: TcxLabel;
    Panel3: TPanel;
    Panel5: TPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    DMAS: TDataSource;
    cxGrid1DBTableView1CHK: TcxGridDBColumn;
    cxGrid1DBTableView1ITM: TcxGridDBColumn;
    cxGrid1DBTableView1STS: TcxGridDBColumn;
    cxGrid1DBTableView1CQTNO2: TcxGridDBColumn;
    cxGrid1DBTableView1CQTAMT: TcxGridDBColumn;
    cxGrid1DBTableView1CQTDAT: TcxGridDBColumn;
    cxGrid1DBTableView1CQTTRD: TcxGridDBColumn;
    cxGrid1DBTableView1CQTCTY: TcxGridDBColumn;
    cxGrid1DBTableView1CQMCSN: TcxGridDBColumn;
    cxGrid1DBTableView1MODEL: TcxGridDBColumn;
    cxGrid1DBTableView1DEA1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1CQMEGN: TcxGridDBColumn;
    cxGrid1DBTableView1CQMBRH: TcxGridDBColumn;
    cxGrid1DBTableView1CQMNAT: TcxGridDBColumn;
    DT004: TDataSource;
    cxGrid2DBTableView1CQTEGN: TcxGridDBColumn;
    cxGrid2DBTableView1CQTBRH: TcxGridDBColumn;
    cxGrid2DBTableView1CQTNO2: TcxGridDBColumn;
    cxGrid2DBTableView1CQTCTY: TcxGridDBColumn;
    cxGrid2DBTableView1CQTDAT: TcxGridDBColumn;
    cxGrid2DBTableView1CQTAMT: TcxGridDBColumn;
    cxGrid2DBTableView1CQTTRD: TcxGridDBColumn;
    cxGrid2DBTableView1CQTMMO: TcxGridDBColumn;
    cxGrid2DBTableView1CQTNAT: TcxGridDBColumn;
    cxGrid2DBTableView1CQTCON: TcxGridDBColumn;
    cxGrid2DBTableView1CQTDEA: TcxGridDBColumn;
    cxGrid2DBTableView1CQTMDL: TcxGridDBColumn;
    cxGrid2DBTableView1ITM: TcxGridDBColumn;
    cxGrid2DBTableView1STS: TcxGridDBColumn;
    cxGrid2DBTableView1CQTMNS: TcxGridDBColumn;
    cxGrid2DBTableView1CQTMNO: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    DCSN: TDataSource;
    cxGrid1DBTableView2CQMRFN: TcxGridDBColumn;
    cxGrid1DBTableView2CQSCSN: TcxGridDBColumn;
    cxGrid1DBTableView2DEA1NAME: TcxGridDBColumn;
    cxGrid1DBTableView2MODEL: TcxGridDBColumn;
    cxGrid1DBTableView2CQSRS1: TcxGridDBColumn;
    cxGrid1DBTableView2CQSRS2: TcxGridDBColumn;
    cxGrid1DBTableView2CQSAMT: TcxGridDBColumn;
    cxGrid1DBTableView2CQSVAT: TcxGridDBColumn;
    cxGrid1DBTableView2CQSWHT: TcxGridDBColumn;
    cxGrid1DBTableView2CQSNET: TcxGridDBColumn;
    cxGrid1DBTableView1CQMCCQ: TcxGridDBColumn;
    cxGrid2DBTableView1CQTCCQ: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    cxComboBox1: TcxComboBox;
    ManReqDate1: TcxDateEdit;
    cxLabel4: TcxLabel;
    ManReqDate2: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxButton10: TcxButton;
    cxLabel11: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CQTDNO: TcxGridDBColumn;
    cxGrid1DBTableView1CQTEGN: TcxGridDBColumn;
    cxGrid1DBTableView1CQTBRH: TcxGridDBColumn;
    cxGrid1DBTableView1CQTCON: TcxGridDBColumn;
    cxGrid1DBTableView1CQTDEA: TcxGridDBColumn;
    cxGrid1DBTableView1CQTMDL: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1CQTCCQ: TcxGridDBColumn;
    cxGrid1DBTableView1CQTSTS: TcxGridDBColumn;
    cxGrid1DBTableView1CQTMNS: TcxGridDBColumn;
    cxGrid1DBTableView1CQTMMO: TcxGridDBColumn;
    cxGrid1DBTableView1CQTETW: TcxGridDBColumn;
    cxGrid1DBTableView1CQTRFN: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2CQSDNO: TcxGridDBColumn;
    cxGrid1DBTableView2CQSSEQ: TcxGridDBColumn;
    cxGrid1DBTableView2CQSRCT: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView2ConName: TcxGridDBColumn;
    cxGrid1DBTableView2CARMDL: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridLevel2: TcxGridLevel;
    HisDT: TClientDataSet;
    DHIS: TDataSource;
    DHisDT: TDataSource;
    procedure cxGrid1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ListStatusChqPropertiesChange(Sender: TObject);
    procedure DATECHANGE(Sender: TObject);
    procedure DateChkPropertiesChange(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure cbInformPropertiesChange(Sender: TObject);
    procedure reqDatePropertiesChange(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnPrintClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure MemoClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DepDelClick(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid2DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    CST,FDT,TDT,ABR : string;
    ACT,PRO:string;
    ERR:Integer;
    Tool:TToolbarBtns;
    procedure SELECT(CDSSELECT: TDataSet; VALUES, FIELD: string);
    procedure AddCheque;
    procedure CheckAction;
    procedure GenReport(Preview:Boolean);
    procedure ShowTracking(DNO:string);
  public
    { Public declarations }
  end;

var
  FrmQ001Main: TFrmQ001Main;

implementation

{$R *.dfm}

procedure TFrmQ001Main.AddCheque;
begin
  with DT004.DataSet do
  begin
    Append;
    FieldByName('CQTACT').AsString := 'A';
    FieldByName('CQTSTS').AsString := 'P';
    FieldByName('CQTBRN').AsString := DMQ001Main.Dll.Branch;
    FieldByName('CQTPDM').AsString := DMQ001Main.Dll.PDM;
    FieldByName('CQTPDT').AsString := DMQ001Main.Dll.PDT;
    FieldByName('CQTDNO').AsString := '';
    FieldByName('CQTMNO').AsString := DMAS.DataSet.FieldByName('CQTDNO').AsString;
    FieldByName('CQTSTN').AsString := DMAS.DataSet.FieldByName('STS').AsString;
    FieldByName('CQTBNK').AsString := DMAS.DataSet.FieldByName('CQTBNK').AsString;
    FieldByName('CQTEGN').AsString := DMAS.DataSet.FieldByName('CQMEGN').AsString;
    FieldByName('CQTBBR').AsString := DMAS.DataSet.FieldByName('CQTBBR').AsString;
    FieldByName('CQTBRH').AsString := DMAS.DataSet.FieldByName('CQMBRH').AsString;
    FieldByName('CQTNO1').AsString := DMAS.DataSet.FieldByName('CQTNO1').AsString;
    FieldByName('CQTNO2').AsString := DMAS.DataSet.FieldByName('CQTNO2').AsString;
    FieldByName('CQTTYP').AsString := DMAS.DataSet.FieldByName('CQTTYP').AsString;
    FieldByName('CQTCTY').AsString := DMAS.DataSet.FieldByName('CQTCTY').AsString;
    FieldByName('CQTDAT').AsDateTime := DMAS.DataSet.FieldByName('CQTDAT').AsDateTime;
    FieldByName('CQTAMT').AsCurrency := DMAS.DataSet.FieldByName('CQTAMT').AsCurrency;
    FieldByName('CQTDUE').AsDateTime := DMAS.DataSet.FieldByName('CQTDUE').AsDateTime;
    FieldByName('CQTSTD').AsDateTime := DMAS.DataSet.FieldByName('CQTSTD').AsDateTime;
    FieldByName('CQTPAT').AsString := DMAS.DataSet.FieldByName('CQTPAT').AsString;
    FieldByName('CQTTRD').AsDateTime := DMAS.DataSet.FieldByName('CQTTRD').AsDateTime;
    FieldByName('CQTCCQ').AsString := DMAS.DataSet.FieldByName('CQTCCQ').AsString;
    FieldByName('CQTCUS').AsString := DMAS.DataSet.FieldByName('CQTCUS').AsString;
    FieldByName('CQTVTP').AsString := DMAS.DataSet.FieldByName('CQTVTP').AsString;
    FieldByName('CQTGEN').AsString := DMAS.DataSet.FieldByName('CQTGEN').AsString;
    FieldByName('CQTVBR').AsString := DMAS.DataSet.FieldByName('CQTVBR').AsString;
    FieldByName('CQTVYY').AsString := DMAS.DataSet.FieldByName('CQTVYY').AsString;
    FieldByName('CQTRUN').AsString := DMAS.DataSet.FieldByName('CQTRUN').AsString;
    FieldByName('CQTITM').AsString := DMAS.DataSet.FieldByName('CQTITM').AsString;
    FieldByName('CQTPOS').AsString := DMAS.DataSet.FieldByName('CQTPOS').AsString;
    FieldByName('CQTRED').AsString := DMAS.DataSet.FieldByName('CQTRED').AsString;
    FieldByName('CQTRTD').AsString := DMAS.DataSet.FieldByName('CQTRTD').AsString;
    FieldByName('CQTEXC').AsString := DMAS.DataSet.FieldByName('CQTEXC').AsString;
    FieldByName('CQTDIV').AsString := DMAS.DataSet.FieldByName('CQTDIV').AsString;
    FieldByName('CQTACC').AsString := DMAS.DataSet.FieldByName('CQTACC').AsString;
    FieldByName('CQTPID').AsDateTime := DMAS.DataSet.FieldByName('CQTPID').AsDateTime;
    FieldByName('CQTPIN').AsString := DMAS.DataSet.FieldByName('CQTPIN').AsString;
    FieldByName('CQTPBY').AsString := DMAS.DataSet.FieldByName('CQTPBY').AsString;
    FieldByName('CQTRFN').AsString := DMAS.DataSet.FieldByName('CQTRFN').AsString;
    //FieldByName('CQTMNS')
    //FieldByName('CQTMMO')
    FieldByName('CQTNAT').AsString := DMAS.DataSet.FieldByName('CQMNAT').AsString;
    FieldByName('CQTCON').AsString := DMAS.DataSet.FieldByName('CQSCSN').AsString;
    FieldByName('CQTDEA').AsString := DMAS.DataSet.FieldByName('DEA1NAME').AsString;
    //FieldByName('CQTREQ').AsString := 'RQ';
    if DMQ001Main.CheckDate(reqDate.Text) then
    begin
      FieldByName('CQTACD').AsDateTime := reqDate.Date;
    end;
    FieldByName('CQTMDL').AsString := DMAS.DataSet.FieldByName('MODEL').AsString;
    FieldByName('CQTETD').AsDateTime := getServerDateTime(DMQ001Main.RQC);
    FieldByName('CQTETU').AsString := DMQ001Main.Dll.UserID;
    FieldByName('CQTETW').AsString := DMQ001Main.Dll.WorkStation;
    FieldByName('CQTCRD').AsDateTime := getServerDateTime(DMQ001Main.RQC);
    FieldByName('CQTCRU').AsString := DMQ001Main.Dll.UserID;
    FieldByName('CQTCRW').AsString := DMQ001Main.Dll.WorkStation;
    Post;
  end;
end;

procedure TFrmQ001Main.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
  Self.Close;
end;

procedure TFrmQ001Main.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not DT004.DataSet.IsEmpty then DT004.DataSet.Delete;
end;

procedure TFrmQ001Main.btnNewClick(Sender: TObject);
begin
  inherited;
  DMQ001Main.LoadT004;
  reqDate.Date := StrToDate(DateToStr(INCDAY(Now)));
  Self.ToolbarEnable :=  [tbClose,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];
end;

procedure TFrmQ001Main.btnPrintClick(Sender: TObject);
begin
  inherited;
  if DT004.DataSet.RecordCount <= 0 then
    begin
      if MessageDlg('Please Select Cheque',  mtWarning, [mbOK],0) = mrOk then
         cxGrid1.SetFocus;
    end
  else if ACT = '' then
    begin
      if MessageDlg('Please Select Action Process',  mtWarning, [mbOK],0) = mrOk then
         cbInform.SetFocus;
    end
  else if not DMQ001Main.CheckDate(reqDate.Text) then
    begin
      if MessageDlg('Please Select Active Date',  mtWarning, [mbOK],0) = mrOk then
         reqDate.SetFocus;
    end
  else if ERR > 0 then
    begin
      if MessageDlg('Please Clear Error',  mtWarning, [mbOK],0) = mrOk then
         cxGrid2.SetFocus;
    end
  else if ERR <= 0 then
    begin
      GenReport(True);
    end;
end;

procedure TFrmQ001Main.btnSaveClick(Sender: TObject);
begin
  inherited;
  if DT004.DataSet.RecordCount <= 0 then
    begin
      if MessageDlg('Please Select Cheque',  mtWarning, [mbOK],0) = mrOk then
         cxGrid1.SetFocus;
    end
  else if ACT = '' then
    begin
      if MessageDlg('Please Select Action Process',  mtWarning, [mbOK],0) = mrOk then
         cbInform.SetFocus;
    end
  else if not DMQ001Main.CheckDate(reqDate.Text) then
    begin
      if MessageDlg('Please Select Active Date',  mtWarning, [mbOK],0) = mrOk then
         reqDate.SetFocus;
    end
  else if ERR > 0 then
    begin
      if MessageDlg('Please Clear Error',  mtWarning, [mbOK],0) = mrOk then
         cxGrid2.SetFocus;
    end
  else if ERR <= 0 then
    begin
      DOC.Caption := getRunning(DMQ001Main.RQC,ACT+'-',ABR,ABR,'');
      DMQ001Main.SaveT004(DOC.Caption);
      GenReport(False);
      Self.ToolbarEnable :=  [tbClose,tbNew,tbPrint,tbExport];
      DMQ001Main.LoadMAS(FDT,TDT,CST,SearchBar1.GetSQL);
    end;
end;

procedure TFrmQ001Main.btnSearchClick(Sender: TObject);
begin
  inherited;
  DMQ001Main.LoadMAS(FDT,TDT,CST,SearchBar1.GetSQL);
end;

procedure TFrmQ001Main.cbInformPropertiesChange(Sender: TObject);
begin
  inherited;
  case cbInform.ItemIndex of
    0 : begin  ACT := 'RP'; PRO := 'AY'; ABR := 'REPAYIN'; DepDel.Enabled := True; end;
    1 : begin  ACT := 'CC'; PRO := 'AA'; ABR := 'CANCEL'; DepDel.Enabled := False; end;
    2 : begin  ACT := 'BR'; PRO := 'AA'; ABR := 'BORROW'; DepDel.Enabled := False; end;
    3 : begin  ACT := 'RB'; PRO := 'AB'; ABR := 'REBORROW'; DepDel.Enabled := False; end;
    4 : begin  ACT := 'IA'; PRO := 'AY'; ABR := 'INACTIVE'; DepDel.Enabled := False; end;
    5 : begin  ACT := 'RA'; PRO := 'IY'; ABR := 'REINACTIVE'; DepDel.Enabled := False; end;
    else begin ACT := ''; PRO := ''; ABR := ''; DepDel.Enabled := False; end;
  end;
  CheckAction;
end;

procedure TFrmQ001Main.cxButton10Click(Sender: TObject);
var TypeReq,FChqNo,FdocNo :string;
begin
  inherited;
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
  DMQ001Main.LoadHis(FChqNo
                     ,FdocNo
                     ,TypeReq
                     ,FormatDateTime('MM/dd/yyyy',ManReqDate1.Date)
                     ,FormatDateTime('MM/dd/yyyy',ManReqDate2.Date));
end;

procedure TFrmQ001Main.cxButton1Click(Sender: TObject);
begin
  inherited;
  SELECT(DMAS.DataSet,'1','CHK');
end;

procedure TFrmQ001Main.cxButton2Click(Sender: TObject);
begin
  inherited;
  SELECT(DMAS.DataSet,'0','CHK');
end;

procedure TFrmQ001Main.cxButton3Click(Sender: TObject);
VAR B :TBookmark;
begin
  inherited;
  with cxGrid1DBTableView1.DataController do
  begin
    DataSet.DisableControls;
    B := DataSet.GetBookmark;
      try
       DataSet.First;
       while not DataSet.Eof do
       begin
        if DataSet.FieldByName('CHK').AsInteger = 1 then
        begin
          AddCheque;
          DataSet.Edit;
          DataSet.FieldByName('CHK').AsInteger := 0;
          DataSet.Post;
        end;
        DataSet.Next;
       end;
       CheckAction;
      finally
        DataSet.EnableControls;
        DataSet.GotoBookmark(B);
        DataSet.FreeBookmark(B);
        DataSet.EnableControls;
      end;
  end;
end;

procedure TFrmQ001Main.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var i : Integer;
    DS : TDataSource;     
begin
  inherited;
  if ACellViewInfo.Item.Index = 0 then
  begin
    DS := DMAS;
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

procedure TFrmQ001Main.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  ShowTracking(DMAS.DataSet.FieldByName('CQTDNO').AsString);
end;

procedure TFrmQ001Main.cxGrid1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  inherited;
  if (cxGrid1DBTableView1.Columns[AColumn.Index].DataBinding.Field <> nil)
  AND (cxGrid1DBTableView1.Columns[AColumn.Index].DataBinding.FieldName <> 'CHK')
  AND (cxGrid1DBTableView1.Columns[AColumn.Index].DataBinding.FieldName <> 'ITM') then
     SearchBar1.AddSearch(cxGrid1DBTableView1.Columns[AColumn.Index].DataBinding.Field,AColumn.Caption);
end;

procedure TFrmQ001Main.cxGrid1DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmQ001Main.cxGrid1DBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor2;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmQ001Main.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  ShowTracking(DT004.DataSet.FieldByName('CQTMNO').AsString);
end;

procedure TFrmQ001Main.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //if not AViewInfo.Selected then
  begin
    ERR := 0;
    if (AViewInfo.GridRecord.DisplayTexts[15] = '')
    and (AViewInfo.GridRecord.DisplayTexts[16] <> '')
    and (ACT <> '') then
    begin
      ACanvas.Brush.Color := clRed;
      inc(ERR);
    end;
  end;
end;

procedure TFrmQ001Main.cxGrid2DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmQ001Main.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmQ001Main.cxTabSheet1Show(Sender: TObject);
begin
  inherited;
  Self.ToolbarEnable :=  Tool;
end;

procedure TFrmQ001Main.cxTabSheet2Show(Sender: TObject);
begin
  inherited;
  Tool := Self.ToolbarEnable;
  if Trim(ManReqDate1.Text) = '' then
  begin
    ManReqDate1.Date := Date;
    ManReqDate2.Date := Date;
    cxButton10.Click;
  end;
  Self.ToolbarEnable :=  [tbClose];
end;

procedure TFrmQ001Main.DATECHANGE(Sender: TObject);
begin
  inherited;
    if DMQ001Main.CheckDate(RStr.Text) and DMQ001Main.CheckDate(REnd.Text) and DateChk.Checked then
    begin
      FDT  := FormatDateTime('MM/dd/yyyy',RStr.Date);
      TDT  := FormatDateTime('MM/dd/yyyy',REnd.Date);
    end
    else
    begin
      FDT  := '';
      TDT  := '';
    end;
end;

procedure TFrmQ001Main.DateChkPropertiesChange(Sender: TObject);
begin
  inherited;
  RStr.Enabled := DateChk.Checked;
  REnd.Enabled := DateChk.Checked;
end;

procedure TFrmQ001Main.DepDelClick(Sender: TObject);
begin
  inherited;
  FrmQ001DeleteDe := TFrmQ001DeleteDe.Create(Self);
  Self.IsActive := False;
  try
    FrmQ001DeleteDe.ACD:= reqDate.Text;
    FrmQ001DeleteDe.ShowModal;
    CheckAction
  finally
    Self.IsActive := True;
    FrmQ001DeleteDe.Free;
  end;
end;

procedure TFrmQ001Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmQ001Main.FormCreate(Sender: TObject);
begin
  inherited;
  FormClosed := false;
  ToolbarVisible :=  [tbClose,tbNew,tbEdit,tbSave,tbDelete,tbPrint,tbExport];
  Tool :=  [tbClose,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];
end;

procedure TFrmQ001Main.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_F2:begin
      if (not (tbSearch in Self.ToolbarVisible)) or (not (tbSearch in Self.ToolbarEnable)) then
        Exit;

      MessageDlg('F2 : Search',mtInformation,[mbOK],0);


    end;

    VK_F3:begin
      //if (not (tbSave in Self.ToolbarVisible)) or (not (tbSave in Self.ToolbarEnable)) then
      if (not (tbNew in Self.ToolbarVisible)) or (not (tbNew in Self.ToolbarEnable)) then
        Exit;

        btnNew.Click;
    end;

    VK_F4:begin
      if (not (tbEdit in Self.ToolbarVisible)) or (not (tbEdit in Self.ToolbarEnable)) then
        Exit;

      btnEdit.Click;
    end;

    VK_F5:begin
      if (not (tbSave in Self.ToolbarVisible)) or (not (tbSave in Self.ToolbarEnable)) then
        Exit;

        btnSave.Click;
    end;

    VK_F6:begin
      if (not (tbCancel in Self.ToolbarVisible)) or (not (tbCancel in Self.ToolbarEnable)) then
        Exit;

      btnCancel.Click;
    end;

    VK_F7:begin
      if (not (tbDelete in Self.ToolbarVisible)) or (not (tbDelete in Self.ToolbarEnable)) then
        Exit;
      btnDelete.Click;
    end;

    VK_F8:begin
      if (not (tbPrint in Self.ToolbarVisible)) or (not (tbPrint in Self.ToolbarEnable)) then
        Exit;

      btnPrint.Click;
    end;

    VK_F9:begin
      if (not (tbExport in Self.ToolbarVisible)) or (not (tbExport in Self.ToolbarEnable)) then
        Exit;

      btnExport.Click;
    end;

    VK_F11:begin
      if (not (tbClose in Self.ToolbarVisible)) or (not (tbClose in Self.ToolbarEnable)) then
        Exit;

      btnClose.Click;
    end;

  end;

  if Key = VK_TAB then
  begin
    SelectNext(ActiveControl, GetKeyState(VK_SHIFT) >= 0, True);
    // Move to the next control in the tab order
  end;
end;

procedure TFrmQ001Main.FormShow(Sender: TObject);
begin
  inherited;
  lbMainCurrentDate.Caption:= 'Date: '+ FormatDateTime('dd/MM/yyyy',getServerDateTime(DMQ001Main.RQC));
  CST := '';
  FDT := '';
  TDT := '';
  DMQ001Main.LoadMAS(FDT,TDT,CST,'');
  DMQ001Main.LoadT004;
  DMQ001Main.LoadCSN;
  HisDT.Data := DMQ001Main.CSN.Data;
  reqDate.Date := StrToDate(DateToStr(INCDAY(Now)));
end;

procedure TFrmQ001Main.ListStatusChqPropertiesChange(Sender: TObject);
begin
  inherited;
  case ListStatusChq.ItemIndex of
    0 : CST := '';
    1 : CST := 'AA';
    2 : CST := 'AN';
    3 : CST := 'AP';
    4 : CST := 'AY';
    5 : CST := 'AC';
    6 : CST := 'AB';
    7 : CST := 'I_';
  end;
end;

procedure TFrmQ001Main.MemoClick(Sender: TObject);
begin
  inherited;
  FrmQ001Remark := TFrmQ001Remark.Create(Self);
  Self.IsActive := False;
  try
    FrmQ001Remark.ShowModal;
  finally
    Self.IsActive := True;
    FrmQ001Remark.Free;  
  end;
end;

procedure TFrmQ001Main.reqDatePropertiesChange(Sender: TObject);
VAR B:TBookmark;
begin
  inherited;
  with DT004.DataSet do
  begin
    B := GetBookmark;
    DisableControls;
    try
      First;
      while NOT Eof do
      begin
        Edit;
        if DMQ001Main.CheckDate(reqDate.Text) then
          FieldByName('CQTACD').AsDateTime := reqDate.Date;
        Post;
        Next;
      end;
    finally
      GotoBookmark(B);
      FreeBookmark(B);
      EnableControls;
    end;
  end;
end;

procedure TFrmQ001Main.SELECT(CDSSELECT:TDataSet; VALUES,FIELD: string);
VAR B:TBookmark;
begin
  inherited;
  B := CDSSELECT.GetBookmark;
  CDSSELECT.DisableControls;
  try
    CDSSELECT.First;
    while NOT CDSSELECT.Eof do
    begin
      CDSSELECT.Edit;
      CDSSELECT.FieldByName(FIELD).AsInteger := StrToInt(VALUES);
      CDSSELECT.Post;
      CDSSELECT.Next;
    end;
  finally
    CDSSELECT.GotoBookmark(B);
    CDSSELECT.FreeBookmark(B);
    CDSSELECT.EnableControls;
  end;
end;

procedure TFrmQ001Main.ShowTracking(DNO: string);
begin
  FrmQ001Tracking := TFrmQ001Tracking.Create(Self);
  Self.IsActive := False;
  try
    FrmQ001Tracking.DNO := DNO;
    FrmQ001Tracking.ShowModal;
  finally
    Self.IsActive := True;
    FrmQ001Tracking.Free;
  end;
end;

procedure TFrmQ001Main.CheckAction;
var B:TBookmark;
begin
  if (ACT <> '') and (DT004.DataSet.RecordCount > 0) then
  with DT004.DataSet do
  begin
    DisableControls;
    B:= GetBookmark;
    try
      First;
      while not Eof do
      begin
        if (FieldByName('CQTSTN').AsString = PRO) OR (FieldByName('CQTSTN').AsString='') then
          begin
            Edit;
            FieldByName('CQTMNS').AsString := ACT;
            Post;
          end
        else
          begin
            Edit;
            FieldByName('CQTMNS').AsString := '';
            Post;
          end;
        Next;
      end;
    finally
      EnableControls;
      GotoBookmark(B);
      FreeBookmark(B);
    end;
  end;
end;

procedure TFrmQ001Main.ClearClick(Sender: TObject);
begin
  inherited;
  DMQ001Main.LoadT004;
  reqDate.Date := StrToDate(DateToStr(INCDAY(Now)));
end;

procedure TFrmQ001Main.GenReport(Preview:Boolean);
var obj:array of TReportParam;
    ReportID: string;
begin
  if cbInform.ItemIndex = 0 then
    ReportID := 'MC04'
  else if cbInform.ItemIndex in [1..3] then
    ReportID := 'MC06'
  else if cbInform.ItemIndex in [4..5] then
    ReportID := 'MC05';
       
  SetLength(obj,1);
  obj[0]:=TReportParam.Create;
  if Preview then  
    ShowReportDataset(DMQ001Main.RQC,ReportID,obj,DT004.DataSet)
  else
    ShowReport(DMQ001Main.RQC,ReportID,obj);
end;

end.
