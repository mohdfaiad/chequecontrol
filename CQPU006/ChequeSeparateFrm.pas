unit ChequeSeparateFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBClient, DB, MConnect, SConnect, SockCon, ComCtrls, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
     cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, Menus, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxLabel, cxTextEdit,
  UIT_GLOBAL_LIB, DBCtrls, cxCheckBox, cxCurrencyEdit, cxCalendar ;

type

 tcxAccessProperties = Class(TcxCustomEditProperties);

  TfrmChequeSeparate = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    SockCon: TSockCon;
    connBroker: TConnectionBroker;
    cdsRelatedContract: TClientDataSet;
    cdsHistoryHdr: TClientDataSet;
    dsRelatedContract: TDataSource;
    dsHistoryHdr: TDataSource;
    dsHistoryDtl: TDataSource;
    cdsHistoryDtl: TClientDataSet;
    cdsDealerHdr: TClientDataSet;
    dsDealerHdr: TDataSource;
    cdsDealerDtl: TClientDataSet;
    dsDealerDtl: TDataSource;
    dsIns: TDataSource;
    cdsIns: TClientDataSet;
    cdsSeperateTmp: TClientDataSet;
    cdsSeperateTmpCDE: TStringField;
    cdsSeperateTmpCON: TStringField;
    cdsSeperateTmpITM: TStringField;
    cdsSeperateTmpDEA: TStringField;
    cdsSeperateTmpAMT: TCurrencyField;
    cdsSeperateTmpVAT: TCurrencyField;
    cdsSeperateTmpWHT: TCurrencyField;
    cdsSeperateTmpRCT: TStringField;
    cdsSeperateTmpDES: TStringField;
    dsOtherPayments: TDataSource;
    cdsOtherPayments: TClientDataSet;
    cdsOtherPaymentsCDE: TStringField;
    cdsOtherPaymentsDES: TStringField;
    cdsOtherPaymentsAMT: TCurrencyField;
    cdsOtherPaymentsVAT: TCurrencyField;
    cdsOtherPaymentsNET: TCurrencyField;
    Label4: TLabel;
    cxLabel34: TcxLabel;
    cxLabel36: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cdsSeperateTmpNET: TCurrencyField;
    cdsSeperateTmpIWHT: TStringField;
    cdsSeperateTmpGOODS: TCurrencyField;
    cdsSeperateTmpDIFF: TCurrencyField;
    cdsSeperateTmpPFA: TStringField;
    cdsInfo: TClientDataSet;
    dsInfo: TDataSource;
    cxGridDBTableView4CQMDTE: TcxGridDBColumn;
    cxGridDBTableView4CQMCNO: TcxGridDBColumn;
    cxGridDBTableView4INSCRN: TcxGridDBColumn;
    cxGridDBTableView4INSDUE: TcxGridDBColumn;
    cxGridDBTableView4INSITM: TcxGridDBColumn;
    cxGridDBTableView4INSIAM: TcxGridDBColumn;
    cxGridDBTableView4INSVAM: TcxGridDBColumn;
    cxGridDBTableView4INSIRA: TcxGridDBColumn;
    cxGridDBTableView4WHT: TcxGridDBColumn;
    cxGridDBTableView4INSNET: TcxGridDBColumn;
    cxGridDBTableView4CQSADV: TcxGridDBColumn;
    cdsOtherPaymentsCON: TStringField;
    cdsOtherPaymentsACD: TStringField;
    cdsInstallment: TClientDataSet;
    cdsConIRD: TClientDataSet;
    Bevel3: TBevel;
    lbChequeAmount: TcxLabel;
    edSummaryA: TcxTextEdit;
    lbNetAmount: TcxLabel;
    edNetAmountA: TcxTextEdit;
    edWHT: TcxTextEdit;
    _lbWT: TcxLabel;
    _lbDiff: TcxLabel;
    edVatA: TcxTextEdit;
    btnAdd: TcxButton;
    btnHold: TcxButton;
    btnSeOK: TcxButton;
    btnSeCancel: TcxButton;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1CON: TcxGridDBColumn;
    cxGrid3DBTableView1CDE: TcxGridDBColumn;
    cxGrid3DBTableView1DES: TcxGridDBColumn;
    cxGrid3DBTableView1AMT: TcxGridDBColumn;
    cxGrid3DBTableView1VAT: TcxGridDBColumn;
    cxGrid3DBTableView1NET: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    Splitter1: TSplitter;
    pnClient: TPanel;
    cxLabel4: TcxLabel;
    ChqNo: TcxTextEdit;
    cxLabel5: TcxLabel;
    edTatalAmt: TcxTextEdit;
    cxLabel8: TcxLabel;
    lbDealerName: TcxLabel;
    GroupBox1: TGroupBox;
    raPartial: TRadioButton;
    raShortOver: TRadioButton;
    raNoAdjust: TRadioButton;
    AdjPage: TPageControl;
    tabChqOne: TTabSheet;
    GroupBox2: TGroupBox;
    cxLabel12: TcxLabel;
    lbAmount: TcxLabel;
    lbVAT: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel15: TcxLabel;
    lbWT: TcxLabel;
    lbNetAmt: TcxLabel;
    cxLabel17: TcxLabel;
    lbNetAmtAA: TcxLabel;
    cxLabel1: TcxLabel;
    lbTenor: TcxLabel;
    cxLabel9: TcxLabel;
    lbPeroid: TcxLabel;
    lbInsDue: TcxLabel;
    cxLabel11: TcxLabel;
    GroupBox4: TGroupBox;
    lbNetPaymnet: TLabel;
    lbDiff: TLabel;
    lbDiffTotal: TLabel;
    lbNetPay: TcxLabel;
    lbAmountA: TcxLabel;
    lbWTA: TcxLabel;
    lbNetAmountA: TcxLabel;
    lbVatA: TcxLabel;
    edDiff: TcxLabel;
    cxLabel7: TcxLabel;
    cxlbWT: TcxLabel;
    cxLabel23: TcxLabel;
    cxlbVAT: TcxLabel;
    lbx2: TcxLabel;
    edChqCountP2: TcxTextEdit;
    lbx1: TcxLabel;
    edChqCountP1: TcxTextEdit;
    edNetPayment: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    GroupBox3: TGroupBox;
    cxLabel19: TcxLabel;
    lbOut: TcxLabel;
    cxLabel20: TcxLabel;
    lbAdvance: TcxLabel;
    lbNetPayment: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel35: TcxLabel;
    lbDue: TcxLabel;
    tabChqOneToMany: TTabSheet;
    PageControl: TPageControl;
    TabRelatedContract: TTabSheet;
    gridSeperate: TcxGrid;
    gridSeperateDBTableView1: TcxGridDBTableView;
    gridSeperateDBTableView1CHK: TcxGridDBColumn;
    gridSeperateDBTableView1INSCRN: TcxGridDBColumn;
    gridSeperateDBTableView1DEAName: TcxGridDBColumn;
    gridSeperateDBTableView1CARMDL: TcxGridDBColumn;
    gridSeperateDBTableView1INSITM: TcxGridDBColumn;
    gridSeperateDBTableView1CONPER: TcxGridDBColumn;
    gridSeperateDBTableView1INSDUE: TcxGridDBColumn;
    gridSeperateDBTableView1INSIAM: TcxGridDBColumn;
    gridSeperateDBTableView1INSVAM: TcxGridDBColumn;
    gridSeperateDBTableView1WHT: TcxGridDBColumn;
    gridSeperateDBTableView1NET: TcxGridDBColumn;
    gridSeperateLevel1: TcxGridLevel;
    DBNavigator1: TDBNavigator;
    TabDealerGroup: TTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2CONDEA: TcxGridDBColumn;
    cxGridDBTableView2DEANAME: TcxGridDBColumn;
    cxGridDBTableView2EMAIL: TcxGridDBColumn;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3CHK: TcxGridDBColumn;
    cxGridDBTableView3INSCRN: TcxGridDBColumn;
    cxGridDBTableView3CARMDL: TcxGridDBColumn;
    cxGridDBTableView3INSITM: TcxGridDBColumn;
    cxGridDBTableView3CONPER: TcxGridDBColumn;
    cxGridDBTableView3INSDUE: TcxGridDBColumn;
    cxGridDBTableView3INSIAM: TcxGridDBColumn;
    cxGridDBTableView3INSVAM: TcxGridDBColumn;
    cxGridDBTableView3WHT: TcxGridDBColumn;
    cxGridDBTableView3NET: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridLevel3: TcxGridLevel;
    TabLasted: TTabSheet;
    Bevel2: TBevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1CQMDNO: TcxGridDBColumn;
    cxGridDBTableView1CQSETD: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1CQMCHK: TcxGridDBColumn;
    cxGrid2DBTableView1CQSCSN: TcxGridDBColumn;
    cxGrid2DBTableView1CARMDL: TcxGridDBColumn;
    cxGrid2DBTableView1CQMDUE: TcxGridDBColumn;
    cxGrid2DBTableView1CQSAMT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSVAT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSWHT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSNET: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel6: TcxLabel;
    ckWT: TCheckBox;
    edChqCount: TcxTextEdit;
    cxLabel25: TcxLabel;
    edChqNetAmt: TcxTextEdit;
    cxLabel33: TcxLabel;
    cxLabel10: TcxLabel;
    lbModel: TcxLabel;
    cdsOtherPaymentsCONDES: TStringField;
    cxGrid3DBTableView1CONDES: TcxGridDBColumn;
    procedure btnSeCancelClick(Sender: TObject);
    procedure btnSeOKClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControlEnter(Sender: TObject);
    procedure dsRelatedContractDataChange(Sender: TObject; Field: TField);
    procedure gridSeperateDBTableView1CHKPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridDBTableView3CHKPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGrid2DBTableView1CQMCHKPropertiesEditValueChanged(
      Sender: TObject);
    procedure cdsDealerDtlAfterPost(DataSet: TDataSet);
    procedure cdsHistoryDtlAfterPost(DataSet: TDataSet);
    procedure cdsRelatedContractAfterPost(DataSet: TDataSet);
    procedure ckWHTClick(Sender: TObject);
    procedure TabRelatedContractShow(Sender: TObject);
    procedure TabDealerGroupShow(Sender: TObject);
    procedure TabLastedShow(Sender: TObject);
    procedure ckWTClick(Sender: TObject);
    procedure btnHoldClick(Sender: TObject);
    procedure cdsOtherPaymentsAfterInsert(DataSet: TDataSet);
    procedure gridSeperateDBTableView1CHKPropertiesChange(Sender: TObject);
    procedure raNoAdjustClick(Sender: TObject);
    procedure AdjPageChange(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid2DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid3DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure gridSeperateDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView3CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView4CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cdsOtherPaymentsBeforeDelete(DataSet: TDataSet);
    procedure tabChqOneToManyShow(Sender: TObject);
    procedure gridSeperateDBTableView1WHTCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView3WHTCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBTableView1CQSWHTCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cdsOtherPaymentsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FContract:string;
    FChqNO:string;
    FChqAMT:real;
    FAns:Integer;
    FChqCount:integer;

    _defaultWT:boolean;

    _SAmount,    { relate contract variable }
    _SVAT,
    _SNetAmount,
    _SWHT,
    _SAgoods,

    _SAmount1,    { dealer variable }
    _SVAT1,
    _SNetAmount1,
    _SWHT1,

    _SAmount2,    { history variable }
    _SVAT2,
    _SNetAmount2,
    _SWHT2 ,
    
    _WHT,_WHT1,_WHT2,

    _diff
    :real;


    _NetAmount,_NetPay,_WT,_Amount,_VAT,
    _NetAmountAA {for balance cheque 1:1 }

    :double;
    _NetAmountA,_WTA,_AmountA,_VATA,_NetAdvance,_NetOut

    :Currency;
    FPDT: string;
    FUserID: string;
    FPDM: string;
    FBranch: string;
    FWorkStation: string;
        
    procedure initForm();
    function getConPer(_sock:TSockCon;contract:string):integer;
    procedure showInstallment();
    procedure SetBranch(const Value: string);
    procedure SetPDM(const Value: string);
    procedure SetPDT(const Value: string);
    procedure SetUserID(const Value: string);
    procedure SetWorkStation(const Value: string);



  public
    { Public declarations }
    _OAmount,_OVAT,_ONetAmount,_ONetCRAmount,_ONetDRAmount,_OWHT
    : real;

    _ONetDRCRMODE:string;
    procedure initConnection(pParams:TPluginParams);
    procedure pContract4O();

    procedure Calc();    {1:1}
    procedure Calc2(); {1:N}
    procedure CalRelateContract();
    procedure CalDealer();
    procedure CalHistory();

  published
    property _Contract: string read FContract write Fcontract;
    property _ChqNo: string read FChqNO write FChqNO;
    property _ChqAMT: real read FChqAMT write FChqAMT;
    property _Ans: integer read FAns write FAns;
    property _ChqCount: integer read FChqCount write FChqCount;

  public
    property UserID : string  read FUserID write SetUserID;
    property Branch : string  read FBranch write SetBranch;
    property PDM : string  read FPDM write SetPDM;
    property PDT : string  read FPDT write SetPDT;
    property WorkStation : string  read FWorkStation write SetWorkStation;

  end;

var
  frmChequeSeparate: TfrmChequeSeparate;

implementation

uses UIT_UTILS_LIB, SeperateChqItemFrm, ConfirmOtherAmountFrm;



{$R *.dfm}

{ TfrmChequeSeparate }


procedure TfrmChequeSeparate.AdjPageChange(Sender: TObject);
begin
 if AdjPage.ActivePage=tabChqOneToMany then
 begin
   raPartial.Visible:=false;
   raShortOver.Visible:=false;
   raNoAdjust.Checked:=true;

   lbChequeAmount.Visible:=true;
   lbNetAmount.Visible:=true;
   edSummaryA.Visible:=true;
   edNetAmountA.Visible:=true;
   _lbWT.Visible:=true;
   edWHT.Visible:=true;
 end else
 begin
   raPartial.Visible:=true;
   raShortOver.Visible:=true;

   lbChequeAmount.Visible:=false;
   lbNetAmount.Visible:=false;
   edSummaryA.Visible:=false;
   edNetAmountA.Visible:=false;
   _lbWT.Visible:=false;
   edWHT.Visible:=false;
 end;
end;

procedure TfrmChequeSeparate.btnAddClick(Sender: TObject);
var i:integer;
    oAmount:real;
    xxx:Currency;
begin


  //xxx:= 111.2149;
 // ShowMessage();
 // ShowMessage(FormatCurr('#,###.##', 111.2149));
  //ShowMessage(CurrToStr(Rounder(xxx,2)));
  //exit;

  frmSeperateChqItem.Branch:=Branch;
  frmSeperateChqItem.PDM:=PDM;
  frmSeperateChqItem.PDT:=PDT;
  frmSeperateChqItem.UserID:=UserID;
  frmSeperateChqItem.WorkStation:=WorkStation;



  if (_ChqAMT-_ONetAmount)<=0 then
  begin
   Application.MessageBox(pchar('Out of Cheque Amount!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
   exit;
  end;


  if AdjPage.ActivePage=tabChqOneToMany then
  begin
    if _diff<=0 then
    begin
      Application.MessageBox(pchar('Out of Cheque Amount!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      exit;
    end;

    oAmount:=_diff;
  end else
  begin
    frmConfirmOtherAmount.Amount:=_ChqAMT-_ONetAmount;
    
    frmConfirmOtherAmount.ShowModal;
    if frmConfirmOtherAmount.IsOK<>true then exit;
    oAmount:=frmConfirmOtherAmount.Amount;
  end;

  pContract4O;

  if not cdsOtherPayments.Active  then
  begin
    cdsOtherPayments.Close;
    cdsOtherPayments.CreateDataSet;
    cdsOtherPayments.EmptyDataSet;
    frmSeperateChqItem._OtherAmount:=0.00;
    frmSeperateChqItem._CoverAmount:=oAmount;

    frmSeperateChqItem.ShowModal;
  end else
  begin
    frmSeperateChqItem._OtherAmount:=0.00;
    frmSeperateChqItem._CoverAmount:=oAmount;

    frmSeperateChqItem.ShowModal;
  end;


  { is modal ok check }
  //if ( (frmSeperateChqItem._Amount<=0 ) or (frmSeperateChqItem._IsOK=false) )then exit;
  if (  (frmSeperateChqItem._IsOK=false) )then exit;



  // 1:1
  if (((frmSeperateChqItem._Amount)>(_ChqAMT-_ONetAmount)) and (AdjPage.ActivePage=tabChqOne) ) then
  begin
    Application.MessageBox(pchar('Out of Cheque Amount!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
    exit;
  end;

  // 1:M
  if (AdjPage.ActivePage=tabChqOneToMany)  then
  begin
    // relate contract
    if ( ((frmSeperateChqItem._Amount)>(_ChqAMT-(_SNetAmount+_ONetAmount))) and (PageControl.ActivePage=TabRelatedContract) ) then
    begin
      Application.MessageBox(pchar('Out of Cheque Amount!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      exit;
    end;

    // Dealer Group
    if ( ((frmSeperateChqItem._Amount)>(_ChqAMT-(_SNetAmount1+_ONetAmount))) and (PageControl.ActivePage=TabDealerGroup) ) then
    begin
      Application.MessageBox(pchar('Out of Cheque Amount!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      exit;
    end;

    // Lasted
    if ( ((frmSeperateChqItem._Amount)>(_ChqAMT-(_SNetAmount2+_ONetAmount))) and (PageControl.ActivePage=TabLasted) ) then
    begin
      Application.MessageBox(pchar('Out of Cheque Amount!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      exit;
    end;


  end;


  if cdsOtherPayments.Active then
  with cdsOtherPayments do
  begin
    // copy data from other from to local variable    step 1
    if not frmSeperateChqItem._cdsPayType.Active then frmSeperateChqItem._cdsPayType.CreateDataSet;
    if frmSeperateChqItem._cdsPayType.RecordCount>0 then frmSeperateChqItem._cdsPayType.First;
    for i := 0 to frmSeperateChqItem._cdsPayType.RecordCount - 1 do
    begin
      if frmSeperateChqItem._cdsPayType.FieldByName('ACDRCV').AsCurrency>0 then
      begin
        cdsOtherPayments.Append;

        //if trim(frmSeperateChqItem._cdsPayType.FieldByName('ACDCON').AsString)<>'' then
        //  cdsOtherPayments.FieldByName('CON').AsString:=frmSeperateChqItem._cdsPayType.FieldByName('ACDCON').AsString
        //else
        cdsOtherPayments.FieldByName('CON').AsString:=frmSeperateChqItem._CONTRACT;

        cdsOtherPayments.FieldByName('CDE').AsString:=frmSeperateChqItem._cdsPayType.FieldByName('ACDACD').AsString;//frmSeperateChqItem._CDE;
        cdsOtherPayments.FieldByName('DES').AsString:=frmSeperateChqItem._cdsPayType.FieldByName('ACDDES').AsString;//frmSeperateChqItem._DES;
        cdsOtherPayments.FieldByName('ACD').AsString:=frmSeperateChqItem._cdsPayType.FieldByName('ACDNET').AsString;//frmSeperateChqItem._DES;

        cdsOtherPayments.FieldByName('AMT').AsCurrency:=frmSeperateChqItem._cdsPayType.FieldByName('ACDAMT').AsCurrency;//frmSeperateChqItem._Amount;
        cdsOtherPayments.FieldByName('VAT').AsCurrency:=frmSeperateChqItem._cdsPayType.FieldByName('ACDVAM').AsCurrency;
        cdsOtherPayments.FieldByName('NET').AsCurrency:=frmSeperateChqItem._cdsPayType.FieldByName('ACDRCV').AsCurrency;//frmSeperateChqItem._Amount;
        cdsOtherPayments.post;


        if trim(frmSeperateChqItem._cdsPayType.FieldByName('ACDNET').AsString)='C' then
        begin
          frmChequeSeparate._ONetCRAmount:=frmChequeSeparate._ONetCRAmount+frmSeperateChqItem._cdsPayType.FieldByName('ACDRCV').AsCurrency ;
          frmChequeSeparate._ONetAmount:= _ONetAmount+frmSeperateChqItem._cdsPayType.FieldByName('ACDRCV').AsCurrency;
        end
        else if trim(frmSeperateChqItem._cdsPayType.FieldByName('ACDNET').AsString)='D' then
        begin
          frmChequeSeparate._ONetDRAmount:=frmChequeSeparate._ONetDRAmount+frmSeperateChqItem._cdsPayType.FieldByName('ACDRCV').AsCurrency;
          frmChequeSeparate._ONetAmount:= _ONetAmount-frmSeperateChqItem._cdsPayType.FieldByName('ACDRCV').AsCurrency;
        end;

        frmChequeSeparate._OAmount:=0.00 ;

      end;
      if not frmSeperateChqItem._cdsPayType.Eof then

      frmSeperateChqItem._cdsPayType.Next;
    end;

    // copy data from other from to local variable    step 2
    if not frmSeperateChqItem.cdsPayTypeAccum.Active then frmSeperateChqItem.cdsPayTypeAccum.CreateDataSet;
    if frmSeperateChqItem.cdsPayTypeAccum.RecordCount>0 then frmSeperateChqItem.cdsPayTypeAccum.First;
    for i := 0 to frmSeperateChqItem.cdsPayTypeAccum.RecordCount - 1 do
    begin
      if frmSeperateChqItem.cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency>0 then
      begin

        if cdsOtherPayments.locate('CDE;CON',VarArrayOf([frmSeperateChqItem.cdsPayTypeAccum.FieldByName('ACDACD').AsString,frmSeperateChqItem._CONTRACT]),[]) then
        begin
          cdsOtherPayments.edit;
          cdsOtherPayments.FieldByName('AMT').AsCurrency:=cdsOtherPayments.FieldByName('AMT').AsCurrency+frmSeperateChqItem.cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency;//frmSeperateChqItem._Amount;
          cdsOtherPayments.post;

        end else
        begin
          cdsOtherPayments.Append;

          cdsOtherPayments.FieldByName('CON').AsString:=frmSeperateChqItem._CONTRACT;
          cdsOtherPayments.FieldByName('CDE').AsString:=frmSeperateChqItem.cdsPayTypeAccum.FieldByName('ACDACD').AsString;//frmSeperateChqItem._CDE;
          cdsOtherPayments.FieldByName('DES').AsString:=frmSeperateChqItem.cdsPayTypeAccum.FieldByName('ACDDES').AsString;//frmSeperateChqItem._DES;
          cdsOtherPayments.FieldByName('ACD').AsString:=frmSeperateChqItem.cdsPayTypeAccum.FieldByName('ACDNET').AsString;//frmSeperateChqItem._DES;

          cdsOtherPayments.FieldByName('AMT').AsCurrency:=frmSeperateChqItem.cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency;//frmSeperateChqItem._Amount;
          cdsOtherPayments.FieldByName('VAT').AsCurrency:=frmSeperateChqItem.cdsPayTypeAccum.FieldByName('ACDVAM').AsCurrency;
          cdsOtherPayments.FieldByName('NET').AsCurrency:=frmSeperateChqItem.cdsPayTypeAccum.FieldByName('ACDRCV').AsCurrency;//frmSeperateChqItem._Amount;
          cdsOtherPayments.post;
        end;

      end;
      if not frmSeperateChqItem.cdsPayTypeAccum.Eof then

      frmSeperateChqItem.cdsPayTypeAccum.Next;
    end;

  end;


  //calc;

  if AdjPage.ActivePage=tabChqOne then calc 
  else if AdjPage.ActivePage=tabChqOneToMany then 
       begin
         if PageControl.ActivePage=TabRelatedContract then CalRelateContract
         else if PageControl.ActivePage=TabDealerGroup then CalDealer
         else if PageControl.ActivePage=TabLasted then CalHistory;
       end;



end;

procedure TfrmChequeSeparate.btnHoldClick(Sender: TObject);
begin
  _Ans:=mrIgnore;
  self.close;
end;

procedure TfrmChequeSeparate.btnSeCancelClick(Sender: TObject);
begin
  _Ans:=mrCancel;
  self.close;
end;

procedure TfrmChequeSeparate.btnSeOKClick(Sender: TObject);
var iPage,iAdjPage,i:integer;
begin

  if _defaultWT <> ckWT.Checked then
    if (Application.MessageBox(pchar('Confirm Save Without Witholding Tax'),pchar('Warning'),MB_OKCANCEL or MB_ICONWARNING) <> mrOk )
    then exit; 


  iPage:=PageControl.ActivePageIndex;
  iAdjPage:=AdjPage.ActivePageIndex;

  case iAdjPage of
    0:begin  // 1:1
        with cdsSeperateTmp do
        begin
          EmptyDataSet;

          Append;

          if  (raNoAdjust.Checked) then               { Patient }
          begin

              FieldByName('CON').AsString:=_Contract;
              FieldByName('PFA').AsString:='PA';
              FieldByName('RCT').AsString:='N';

              if (_ChqAMT-_ONetAmount)<>0 then
              begin
                FieldByName('WHT').AsFloat:=_WTA;
                FieldByName('AMT').AsFloat:=_AmountA;
                FieldByName('NET').AsFloat:=_NetAmountA;//_NetAmountA-_ONetAmount;//_NetAmountA;
                FieldByName('VAT').AsFloat:=_VATA;
              end;

              if ((_ChqAMT-_ONetAmount)<>0) then        // pay rental and other pay
              begin
               if FormatCurr('####.00',_NetAmountA)<>FormatCurr('####.00',(_NetAmountAA)) then
                begin
                  Application.MessageBox(pchar('#1: Net pay amount not balance to Chq.Amount!!!'+#10#13+'Try,again.'),pchar('Warning'),MB_OK or MB_ICONWARNING);
                  exit;
                end;
              end else                                  // other pay only
              begin
               if FormatCurr('####.00',_ChqAMT)<>FormatCurr('####.00',(_ONetAmount)) then
                begin
                  Application.MessageBox(pchar('#2: Net pay amount not balance to Chq.Amount!!!'+#10#13+'Try,again.'),pchar('Warning'),MB_OK or MB_ICONWARNING);
                  exit;
                end;
              end;

          end
          else
          if (raPartial.Checked) then               { Patient }
          begin

              FieldByName('CON').AsString:=_Contract;
              FieldByName('PFA').AsString:='PA';
              FieldByName('RCT').AsString:='N';

              if (_ChqAMT-_ONetAmount)<>0 then
              begin
                FieldByName('WHT').AsFloat:=_WTA;
                FieldByName('AMT').AsFloat:=_AmountA;
                FieldByName('NET').AsFloat:=_NetAmountA;//_NetAmountA;
                FieldByName('VAT').AsFloat:=_VATA;
              end;

          end
          else if raShortOver.Checked then       { Short / Over Amount }
          begin
            FieldByName('PFA').AsString:='SO';
            FieldByName('WHT').AsFloat:=_WTA;//_WT;
            FieldByName('RCT').AsString:='N';
            FieldByName('AMT').AsFloat:=abs(_AmountA);//_Amount;
            FieldByName('NET').AsFloat:=abs(_NetAmountA);//_NetAmount-_ONetAmount;//_NetAmount;
            FieldByName('CON').AsString:=_Contract;
            FieldByName('VAT').AsFloat:=_VATA;//_VAT;
            //FieldByName('DIFF').AsFloat:=abs(abs(_ChqAMT-_ONetAmount)-_NetPay);//(_ChqAMT-_NetAmount)-_ONetAmount;//_ChqAMT-_NetAmount;
            FieldByName('DIFF').AsFloat:=(abs(_ChqAMT-_ONetAmount)-_NetPay);//(_ChqAMT-_NetAmount)-_ONetAmount;//_ChqAMT-_NetAmount;

          end ;


          if ckWT.Checked then
            FieldByName('IWHT').AsString:='Y'
          else FieldByName('IWHT').AsString:='N';

          post;
        end;

        _Ans:=mrOk;
      end;    // end 1:1
    1:begin  // 1:N
        _Ans:=mrYes;
        case iPage of
          0:
            if FormatCurr('####.00',_ChqAMT)<>FormatCurr('####.00',_SNetAmount) then
            begin
              Application.MessageBox(pchar('Net pay amount not balance to Chq.Amount!!!'+#10#13+'Try,again.'),pchar('Warning'),MB_OK or MB_ICONWARNING);
              exit;
            end;
          1:
            if FormatCurr('####.00',_ChqAMT)<>FormatCurr('####.00',_SNetAmount1) then
            begin
              Application.MessageBox(pchar('Net pay amount not balance to Chq.Amount!!!'+#10#13+'Try,again.'),pchar('Warning'),MB_OK or MB_ICONWARNING);
              exit;
            end;
          2:
            if FormatCurr('####.00',_ChqAMT)<>FormatCurr('####.00',_SNetAmount2) then
            begin
              Application.MessageBox(pchar('Net pay amount not balance to Chq.Amount!!!'+#10#13+'Try,again.'),pchar('Warning'),MB_OK or MB_ICONWARNING);
              exit;
            end;
        end;

        case iPage of
          0:begin
              // Relate contract
              cdsRelatedContract.First;
              if cdsRelatedContract.RecordCount>0 then
              while not cdsRelatedContract.Eof do
                begin
                  if cdsRelatedContract.FieldByName('CHK').AsInteger=1 then
                  begin
                    //ShowMessage(cdsRelatedContract.FieldByName('INSCRN').AsString);
                    cdsSeperateTmp.Append;
                    cdsSeperateTmp.FieldByName('CON').AsString:=cdsRelatedContract.FieldByName('INSCRN').AsString;
                    cdsSeperateTmp.FieldByName('ITM').AsString:=cdsRelatedContract.FieldByName('INSITM').AsString;
                    cdsSeperateTmp.FieldByName('AMT').AsCurrency:=cdsRelatedContract.FieldByName('INSIAM').AsCurrency;
                    cdsSeperateTmp.FieldByName('VAT').AsCurrency:=cdsRelatedContract.FieldByName('INSVAM').AsCurrency;
                    cdsSeperateTmp.FieldByName('WHT').AsCurrency:=cdsRelatedContract.FieldByName('WHT').AsCurrency;
                    cdsSeperateTmp.FieldByName('NET').AsCurrency:=cdsRelatedContract.FieldByName('NET').AsCurrency;   // #149
                    cdsSeperateTmp.FieldByName('RCT').AsString:='N';

                    if ckWT.Checked then
                      cdsSeperateTmp.FieldByName('IWHT').AsString:='Y'
                    //_NetAmount:=(_Amount+_VAT)-_WT
                    else
                     cdsSeperateTmp.FieldByName('IWHT').AsString:='N';
                    //_NetAmount:=_Amount+_VAT;


                    cdsSeperateTmp.FieldByName('DEA').AsString:='';
                    cdsSeperateTmp.Post;
                  end;

                  cdsRelatedContract.Next;
                end;

            end;
          1:begin
              //
              //dsHistoryDtl
              cdsDealerDtl.First;
              if cdsDealerDtl.RecordCount>0 then
              while not cdsDealerDtl.Eof do
                begin
                  if cdsDealerDtl.FieldByName('CHK').AsInteger=1 then
                  begin
                    //ShowMessage(cdsRelatedContract.FieldByName('INSCRN').AsString);
                    cdsSeperateTmp.Append;
                    cdsSeperateTmp.FieldByName('CON').AsString:=cdsDealerDtl.FieldByName('INSCRN').AsString;
                    cdsSeperateTmp.FieldByName('ITM').AsString:=cdsDealerDtl.FieldByName('INSITM').AsString;
                    cdsSeperateTmp.FieldByName('DEA').AsString:=cdsDealerDtl.FieldByName('CONDEA').AsString;
                    cdsSeperateTmp.FieldByName('AMT').AsCurrency:=cdsDealerDtl.FieldByName('INSIAM').AsCurrency;
                    cdsSeperateTmp.FieldByName('WHT').AsCurrency:=cdsDealerDtl.FieldByName('WHT').AsCurrency;
                    cdsSeperateTmp.FieldByName('VAT').AsCurrency:=cdsDealerDtl.FieldByName('INSVAM').AsCurrency;
                    cdsSeperateTmp.FieldByName('NET').AsCurrency:=cdsDealerDtl.FieldByName('NET').AsCurrency;
                    cdsSeperateTmp.FieldByName('RCT').AsString:='N';
                    if ckWT.Checked then
                      cdsSeperateTmp.FieldByName('IWHT').AsString:='Y'
                    //_NetAmount:=(_Amount+_VAT)-_WT
                    else
                     cdsSeperateTmp.FieldByName('IWHT').AsString:='N';
                    //_NetAmount:=_Amount+_VAT;
                    cdsSeperateTmp.Post;
                  end;
                  cdsDealerDtl.Next;
                end;
            end;
          2:begin
              //dsHistoryDtl
              cdsHistoryDtl.First;
              if cdsHistoryDtl.RecordCount>0 then
              while not cdsHistoryDtl.Eof do
                begin
                  if cdsHistoryDtl.FieldByName('CQMCHK').AsInteger=1 then
                  begin
                    //ShowMessage(cdsRelatedContract.FieldByName('INSCRN').AsString);
                    cdsSeperateTmp.Append;
                    cdsSeperateTmp.FieldByName('CON').AsString:=cdsHistoryDtl.FieldByName('CQSCSN').AsString;
                    cdsSeperateTmp.FieldByName('ITM').AsString:=cdsHistoryDtl.FieldByName('CQSRNO').AsString;
                    cdsSeperateTmp.FieldByName('AMT').AsCurrency:=cdsHistoryDtl.FieldByName('CQSAMT').AsCurrency;
                    cdsSeperateTmp.FieldByName('NET').AsCurrency:=cdsHistoryDtl.FieldByName('CQSNET').AsCurrency;
                    cdsSeperateTmp.FieldByName('VAT').AsCurrency:=0;
                    cdsSeperateTmp.FieldByName('DEA').AsString:='';
                    cdsSeperateTmp.FieldByName('RCT').AsString:='N';
                    if ckWT.Checked then
                      cdsSeperateTmp.FieldByName('IWHT').AsString:='Y'
                    //_NetAmount:=(_Amount+_VAT)-_WT
                    else
                     cdsSeperateTmp.FieldByName('IWHT').AsString:='N';
                    //_NetAmount:=_Amount+_VAT;                    
                    cdsSeperateTmp.Post;
                  end;
                  cdsHistoryDtl.Next;
                end;
            end;
        end;
       _Ans:=mrYes;
      end;
      // end 1:N
  end;

  // add other payments
  i:=1;
  if cdsOtherPayments.RecordCount>0 then
  begin
    cdsOtherPayments.First;
    while not cdsOtherPayments.Eof do
      begin

        cdsSeperateTmp.Append;
        cdsSeperateTmp.FieldByName('CDE').AsString:=cdsOtherPayments.FieldByName('CDE').AsString;
        cdsSeperateTmp.FieldByName('CON').AsString:=cdsOtherPayments.FieldByName('CON').AsString;//_Contract;
        cdsSeperateTmp.FieldByName('ITM').AsInteger:=i;
        cdsSeperateTmp.FieldByName('AMT').AsCurrency:=cdsOtherPayments.FieldByName('AMT').AsCurrency;
        cdsSeperateTmp.FieldByName('NET').AsCurrency:=cdsOtherPayments.FieldByName('AMT').AsCurrency;
        cdsSeperateTmp.FieldByName('VAT').AsCurrency:=cdsOtherPayments.FieldByName('VAT').AsCurrency;
        cdsSeperateTmp.FieldByName('DES').AsString:=cdsOtherPayments.FieldByName('DES').AsString;
        cdsSeperateTmp.FieldByName('WHT').AsCurrency:=0;
        cdsSeperateTmp.FieldByName('DEA').AsString:='';
        cdsSeperateTmp.FieldByName('RCT').AsString:='O';
        cdsSeperateTmp.Post;
        inc(i);


        cdsOtherPayments.Next;
      end;
  end;




  self.close;
end;

procedure TfrmChequeSeparate.Calc;
var diff:real;
begin


     // short / over
     if raShortOver.Checked then
     begin
       //diff:=(_ChqAMT-_NetAmount)-_ONetAmount
       diff:=(_ChqAMT-_NetPay)-_ONetAmount;
     end
     else diff:=0;

    if not raShortOver.Checked then
    begin

      if ckWT.Checked then
      begin
        _AmountA:=((_ChqAMT-_ONetAmount-diff)/1.02);
        _VATA:=_AmountA*0.07;
        _WTA:=_AmountA*0.05;



        _NetAmountA:=_ChqAMT-_ONetAmount-diff;
       // _NetAmountA:=(_AmountA+_VATA)-_WTA;


        {installment}
        _NetAmountAA:=(_Amount+_VAT)-_WT
      end
      else
      begin
          {
          _VATA:=((_ChqAMT-_ONetAmount-diff)*0.07);
          _WTA:=0;
          _AmountA:=(_ChqAMT-_ONetAmount-diff)-_VATA;
          _NetAmountA:=(_AmountA+_VATA);
          }
          _AmountA:=(_ChqAMT-_ONetAmount-diff)/1.07;
          _VATA:=_AmountA*0.07;
          _WTA:=0;

          _NetAmountA:=(_AmountA+_VATA);


          {installment}
          _NetAmountAA:=_Amount+_VAT;

      end;
    end else
    begin
        {short over}


        if ckWT.Checked then
        begin
          _AmountA:=_Amount;//((_NetPay)/1.02);
          _VATA:=_VAT;//_AmountA*0.07;
          _WTA:=_WT;//_AmountA*0.05;

          _NetAmountA:=_NetPay;

          {installment}
          _NetAmountAA:=(_Amount+_VAT)-_WT
        end else
        begin
          _AmountA:=_Amount;//((_NetPay)/1.07);
          _VATA:=_VAT;//_AmountA*0.07;
          _WTA:=0.00;

          _NetAmountA:=_NetPay;

          {installment}
          _NetAmountAA:=(_Amount+_VAT);
        end;

    end;

    // Advance - Patial
    if _NetOut<0 then
    begin
      //lbOut.Caption:=FormatCurr('#,##0.00',abs(_NetOut)-((_Amount+_VAT)-_WT));
      lbOut.Caption:=FormatCurr('#,##0.00',abs(_NetOut));
      //_NetPay:=_NetAmount+abs(_NetOut);
      //_NetPay:=abs(_NetOut);
    end
    else if _NetOut>0 then
    begin
      //lbAdvance.Caption:=FormatCurr('#,##0.00',abs(_NetOut)-((_Amount+_VAT)-_WT));
      lbAdvance.Caption:=FormatCurr('#,##0.00',abs(_NetOut));
      //_NetPay:=_NetAmount-abs(_NetOut);
    end else
     begin
        lbOut.Caption:=FormatCurr('#,##0.00',0);
        lbAdvance.Caption:=FormatCurr('#,##0.00',0);
        //_NetPay:=_NetAmount;
     end;



    lbNetPayment.Caption:=FormatCurr('#,##0.00',_NetPay);

    lbAmountA.Caption:=FormatCurr('#,##0.00',_AmountA);
    lbVatA.Caption:=FormatCurr('#,##0.00',_VATA);
    lbWTA.Caption:='('+FormatFloat('#,##0.00',_WTA)+')';

    //ShowMessage(FormatCurr('#,##0.00',_NetAmountA));
    lbNetAmountA.Caption:=FormatCurr('#,##0.00',_NetAmountA);

    lbNetAmt.Caption:=FormatCurr('#,##0.00',_NetAmount);
    lbAmount.Caption:=FormatCurr('#,##0.00',_Amount);

    lbNetPay.Caption:=FormatCurr('#,##0.00',_NetAmountA);
    lbNetAmtAA.Caption:=FormatCurr('#,##0.00',_NetAmountAA);

    //if ckWT.Checked then
    lbWT.Caption:='('+FormatCurr('#,##0.00',_WT)+')';
    //else
    //lbWT.Caption:=FormatCurr('#,##0.00',0);

    lbVAT.Caption:=FormatCurr('#,##0.00',_VAT);

    edChqCount.Text:=formatcurr('#,####,###0',_ChqCount);
    edChqNetAmt.Text:=formatcurr('#,####,###.#0',(_ChqAMT*_ChqCount));
    edChqCountP1.Text:=formatcurr('#,####,###0',_ChqCount);
    edChqCountP2.Text:=formatcurr('#,####,###0',_ChqCount);

    edDiff.Caption:=formatcurr('#,####,###0.00',diff);
    //edDiff.Caption:=formatcurr('#,####,###0.00',(_ChqAMT-_NetAmount)-_ONetAmount);
    edNetPayment.Caption:= formatcurr('#,####,###0.00',(_NetAmountA*_ChqCount));


    edNetAmountA.Text:= formatcurr('#,####,###0.00',((_NetAmountA-_ONetAmount)*_ChqCount)+_ONetAmount);

    showInstallment;



end;
procedure TfrmChequeSeparate.showInstallment;
var insWT,insNET:currency;
    _currPeroid:integer;
begin
  _currPeroid:=0;

  cdsInstallment.Close;
  cdsInstallment.CommandText:=''+

' declare @MaxITM integer '+
' declare @CONN varchar(7) '+
' set @CONN='''+_Contract+'''   '+
' select @MaxITM=Max(a.INSITM)    '+
' from HPTINS00  a    '+
' where a.INSCRN=@CONN  '+
' select * from ( select top 1  * from HPTINS00 where INSCRN=@CONN and INSF11=0  order by INSITM desc ) a '+
' union    '+
' select  * from HPTINS00 where INSCRN=@CONN and INSITM=@MaxITM ';
  cdsInstallment.Open;

  if cdsInstallment.Active then
    if cdsInstallment.RecordCount>0 then
    begin
      cdsInstallment.First;
      if cdsInstallment.FieldByName('INSITM').AsInteger=0 then
      begin
        if not cdsInstallment.Eof then cdsInstallment.Next;
        _currPeroid:=0;
      end;
      
      lbAmount.Caption:=FormatCurr('#,###.00',cdsInstallment.FieldByName('INSIAM').AsCurrency);
      lbVAT.Caption:=FormatCurr('#,##0.00',cdsInstallment.FieldByName('INSVAM').AsCurrency);

      if (getConPer(SockCon,_Contract)<=36) then
      begin
        insWT:=cdsInstallment.FieldByName('INSIAM').AsCurrency*0.05;
      end
      else
      begin
        insWT:=0.00;
      end;
      insNET:=(cdsInstallment.FieldByName('INSIAM').AsCurrency+cdsInstallment.FieldByName('INSVAM').AsCurrency)-insWT;
      lbWT.Caption:='('+FormatCurr('#,##0.00',insWT)+')';
      lbNetAmt.Caption:=FormatCurr('#,##0.00',insNET);

      cdsConIRD.close;
      cdsConIRD.CommandText:='select CONIRD from HPMCON00 where CONRUN='''+_Contract+'''';
      cdsConIRD.Open;

      if cdsConIRD.Active then      
      if cdsConIRD.RecordCount<=0 then
        lbTenor.Caption:=inttostr(0)
      else
        lbTenor.Caption:=cdsConIRD.FieldByName('CONIRD').AsString;

      {
      if _currPeroid=0 then
        lbTenor.Caption:=inttostr(0)
      else
        lbTenor.Caption:=cdsInstallment.FieldByName('INSITM').AsString;
      }

      lbPeroid.Caption:= inttostr(getConPer(SockCon,_Contract));
      lbInsDue.Caption:=FormatDateTime('dd/MM/yyyy', cdsInstallment.FieldByName('INSDUE').AsDateTime)
    end;

    (*
        if ckWT.Checked then
        begin
          _AmountA:=((_NetPay)/1.02);
          _VATA:=_AmountA*0.07;
          _WTA:=_AmountA*0.05;

          _NetAmountA:=_NetPay;

          {installment}
          _NetAmountAA:=(_Amount+_VAT)-_WT
        end else
        begin
          _AmountA:=((_NetPay)/1.07);
          _VATA:=_AmountA*0.07;
          _WTA:=0.00;

          _NetAmountA:=_NetPay;

          {installment}
          _NetAmountAA:=(_Amount+_VAT);
        end;
    *)

end;

procedure TfrmChequeSeparate.Calc2;
begin
  if (AdjPage.ActivePage=tabChqOneToMany) and (PageControl.ActivePage=TabRelatedContract) then CalRelateContract;
  if (AdjPage.ActivePage=tabChqOneToMany) and (PageControl.ActivePage=TabDealerGroup) then CalDealer;
  if (AdjPage.ActivePage=tabChqOneToMany) and (PageControl.ActivePage=TabLasted) then CalHistory;
end;

procedure TfrmChequeSeparate.CalDealer;
begin
  //_SNetAmount1:=_SAmount1;//+_SVAT1;

  if not ckWT.Checked then
    _SNetAmount1:=(_SAmount1-_WHT1)+_ONetAmount
  else
  _SNetAmount1:=_SAmount1+_ONetAmount; // include other pay

   edSummaryA.Text:=FormatCurr('#,##0.#0',_ChqAMT);
   edVatA.Text:=FormatCurr('#,##0.#0',_ChqAMT-_SNetAmount1);
   _diff:=_ChqAMT-_SNetAmount1;
   edNetAmountA.Text:=FormatCurr('#,##0.#0',_SNetAmount1);
   edWHT.Text:=FormatCurr('#,##0.#0',_WHT1);
end;

procedure TfrmChequeSeparate.CalHistory;
begin
  if not ckWT.Checked then
    _SNetAmount2:=(_SAmount2-_WHT2)+_SVAT2
  else
  _SNetAmount2:=_SAmount2+_SVAT2;
  
  _SNetAmount2:=_SNetAmount2+_ONetAmount; // include other pay


   edSummaryA.Text:=FormatCurr('#,##0.#0',_ChqAMT);
   edVatA.Text:=FormatCurr('#,##0.#0',_ChqAMT-_SNetAmount2);
   _diff:=_ChqAMT-_SNetAmount2;
   edNetAmountA.Text:=FormatCurr('#,##0.#0',_SNetAmount2);
  // edWHT.Text:=FormatCurr('#,##0.#0',_WHT);
end;

procedure TfrmChequeSeparate.CalRelateContract;
begin
  if ckWT.Checked then
   _SNetAmount:=(_SAmount-_WHT)+_SVAT
  else
   _SNetAmount:=_SAmount+_SVAT;
   
   //_SNetAmount:=_SAgoods+_SVAT;
   //_SNetAmount:=_SAmount+_SVAT;

  //_SNetAmount:=(_SAmount-_WHT)+_SVAT;
  //_SNetAmount:=_SAmount+_SVAT;
  
  _SNetAmount:=_SNetAmount+_ONetAmount; // include other pay

  //
   edSummaryA.Text:=FormatCurr('#,##0.#0',_ChqAMT);
   edVatA.Text:=FormatCurr('#,##0.#0',_ChqAMT-_SNetAmount);
   _diff:=_ChqAMT-_SNetAmount;
   edNetAmountA.Text:=FormatCurr('#,##0.#0',_SNetAmount);
   edWHT.Text:=FormatCurr('#,##0.#0',_WHT);
end;

procedure TfrmChequeSeparate.cdsDealerDtlAfterPost(DataSet: TDataSet);
begin

  if DataSet.FieldByName('CHK').NewValue='1' then
  begin

   _SAmount1:=_SAmount1+cdsDealerDtl.FieldByName('NET').AsCurrency;
//   _SAmount1:=_SAmount1+_OAmount;
   _SVAT1:=_SVAT1+cdsDealerDtl.FieldByName('INSVAM').AsCurrency;
   _WHT1:=_WHT1+cdsDealerDtl.FieldByName('WHT').AsCurrency;
  end;

  if DataSet.FieldByName('CHK').NewValue='0' then
  begin
   _SAmount1:=_SAmount1-cdsDealerDtl.FieldByName('NET').AsCurrency;
   _SVAT1:=_SVAT1-cdsDealerDtl.FieldByName('INSVAM').AsCurrency;
   _WHT1:=_WHT1-cdsDealerDtl.FieldByName('WHT').AsCurrency;
  end;

  CalDealer;
end;

procedure TfrmChequeSeparate.cdsHistoryDtlAfterPost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('CQMCHK').NewValue='1' then
  begin
   _SAmount2:=_SAmount2+cdsHistoryDtl.FieldByName('CQSAMT').AsCurrency;
   //_SAmount2:=_SAmount2+_OAmount;
   _SVAT2:=0;//_SVAT1+cdsHistoryDtl.FieldByName('INSVAM').AsInteger;
   _WHT2:=_WHT2+cdsHistoryDtl.FieldByName('CQSWHT').AsCurrency;
  end;

  if DataSet.FieldByName('CQMCHK').NewValue='0' then
  begin
   _SAmount2:=_SAmount2-cdsHistoryDtl.FieldByName('CQSAMT').AsCurrency;
   _SVAT2:=0;//_SVAT1-cdsHistoryDtl.FieldByName('INSVAM').AsInteger;
   _WHT2:=_WHT2-cdsHistoryDtl.FieldByName('CQSWHT').AsCurrency;
  end;

  CalHistory;
end;

procedure TfrmChequeSeparate.cdsOtherPaymentsAfterInsert(
  DataSet: TDataSet);
begin
  _OAmount:=_OAmount+DataSet.FieldByName('AMT').AsCurrency;
  _ONetAmount:=_ONetAmount+DataSet.FieldByName('NET').AsCurrency;

end;

procedure TfrmChequeSeparate.cdsOtherPaymentsBeforeDelete(
  DataSet: TDataSet);
begin

  if DataSet.FieldByName('ACD').AsString='C' then
  begin
    _OAmount:=_OAmount-DataSet.FieldByName('AMT').AsCurrency;
    _ONetAmount:=_ONetAmount-DataSet.FieldByName('NET').AsCurrency;
  end else if DataSet.FieldByName('ACD').AsString='D' then
  begin
    _OAmount:=_OAmount+DataSet.FieldByName('AMT').AsCurrency;
    _ONetAmount:=_ONetAmount+DataSet.FieldByName('NET').AsCurrency;
  end;

  //_OAmount:=_OAmount-DataSet.FieldByName('AMT').AsCurrency;
  //_ONetAmount:=_ONetAmount-DataSet.FieldByName('NET').AsCurrency;

  Calc;
end;

procedure TfrmChequeSeparate.cdsOtherPaymentsBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('CONDES').AsString:=getContractName(SockCon,DataSet.FieldByName('CON').AsString);
end;

procedure TfrmChequeSeparate.cdsRelatedContractAfterPost(
  DataSet: TDataSet);
begin

  if DataSet.FieldByName('CHK').NewValue='1' then
  begin
   _SAmount:=_SAmount+cdsRelatedContract.FieldByName('INSIAM').AsCurrency;
   //_SAgoods:=_SAGoods+cdsRelatedContract.FieldByName('INSIAM').AsCurrency;

   //_SAmount:=_SAmount+_OAmount;
   _SVAT:=_SVAT+cdsRelatedContract.FieldByName('INSVAM').AsCurrency;
   _WHT:=_WHT+cdsRelatedContract.FieldByName('WHT').AsCurrency;
  end;


  if _SAmount>0 then  
    if DataSet.FieldByName('CHK').NewValue='0' then
    begin
     _SAmount:=_SAmount-cdsRelatedContract.FieldByName('INSIAM').AsCurrency;
     //_SAgoods:=_SAGoods-cdsRelatedContract.FieldByName('INSIAM').AsCurrency;
     _SVAT:=_SVAT-cdsRelatedContract.FieldByName('INSVAM').AsCurrency;
     _WHT:=_WHT-cdsRelatedContract.FieldByName('WHT').AsCurrency;
    end;


    CalRelateContract;


    (*
  if ckWT.Checked then
   _SNetAmount:=(_SAmount-_WHT)+_SVAT
  else
   _SNetAmount:=_SAmount+_SVAT;
   
   //_SNetAmount:=_SAgoods+_SVAT;
   //_SNetAmount:=_SAmount+_SVAT;

  //_SNetAmount:=(_SAmount-_WHT)+_SVAT;
  //_SNetAmount:=_SAmount+_SVAT;
  _SNetAmount:=_SNetAmount+_ONetAmount; // include other pay

  //
   edSummaryA.Text:=FormatCurr('#,##0.#0',_ChqAMT);
   edVatA.Text:=FormatCurr('#,##0.#0',_SAmount-_ChqAMT);
   edNetAmountA.Text:=FormatCurr('#,##0.#0',_SNetAmount);
   edWHT.Text:=FormatCurr('#,##0.#0',_WHT);

   *)

   
end;

procedure TfrmChequeSeparate.ckWHTClick(Sender: TObject);
begin

{  if ckWHT.Checked then
    _SNetAmount:=(_SAmount-_WHT)+_SVAT
  else
   _SNetAmount:=_SAmount+_SVAT;

  edNetAmountA.Text:=FormatCurr('#,##0.#0',_SNetAmount);

  }   
 
end;

procedure TfrmChequeSeparate.ckWTClick(Sender: TObject);
begin
  if AdjPage.ActivePage=tabChqOne then
  begin
    calc;
  end else
  begin
    Calc2;
  end;
 // else
 //   cdsRelatedContractAfterPost(cdsRelatedContract);
end;

procedure TfrmChequeSeparate.cxGrid2DBTableView1CQMCHKPropertiesEditValueChanged(
  Sender: TObject);
begin
 if cdsHistoryDtl.State in [dsEdit,dsInsert] then cdsHistoryDtl.post;
end;

procedure TfrmChequeSeparate.cxGrid2DBTableView1CQSWHTCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 ACanvas.Font.Color:=clred;
end;

procedure TfrmChequeSeparate.cxGrid2DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor2;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmChequeSeparate.cxGrid3DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmChequeSeparate.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmChequeSeparate.cxGridDBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmChequeSeparate.cxGridDBTableView3CHKPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cdsDealerDtl.State in [dsEdit,dsInsert] then cdsDealerDtl.post;
end;

procedure TfrmChequeSeparate.cxGridDBTableView3CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor2;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmChequeSeparate.cxGridDBTableView3WHTCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   ACanvas.Font.Color:=clred;
end;

procedure TfrmChequeSeparate.cxGridDBTableView4CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmChequeSeparate.dsRelatedContractDataChange(Sender: TObject;
  Field: TField);
begin
  //ShowMessage(DataSet.FieldByName('CHK').AsString);

  (*
  if DataSet.FieldByName('CHK').AsString='1' then
   _SAmount:=_SAmount-DataSet.FieldByName('INSIAM').AsInteger;

  if DataSet.FieldByName('CHK').AsString='0' then
   _SAmount:=_SAmount+DataSet.FieldByName('INSIAM').AsInteger;


   edSummaryA.Text:=FormatCurr('#,###.#0',_SAmount);
   *)

//  if (Field.FieldName='CHK') then ShowMessage(Field.Value);

  
end;

procedure TfrmChequeSeparate.FormCreate(Sender: TObject);
begin
 _Ans:=mrCancel;
end;

procedure TfrmChequeSeparate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
  VK_ESCAPE : self.close;
  VK_F3 : btnAddClick(sender);
  VK_F5 : btnSeOKClick(sender);
 end;
end;

procedure TfrmChequeSeparate.FormShow(Sender: TObject);
begin
  // get history



  _SAmount:=0;
  _SAmount1:=0;
  _SAmount2:=0;

  _SNetAmount:=0;
  _SNetAmount1:=0;
  _SNetAmount2:=0;


  _WHT:=0;
  _WHT1:=0;
  _WHT2:=0;

  cdsIns.close;
  cdsIns.CommandText:='select 0 as CHK,* from HPTINS00 where INSF11=3  order by INSCRN,INSDUE';
  cdsIns.Open;


  cdsSeperateTmp.Close;
  cdsSeperateTmp.CreateDataSet;

  cdsOtherPayments.Close;
  cdsOtherPayments.CreateDataSet;


  lbDealerName.Caption:=getContractName(SockCon,_Contract);
  lbModel.Caption:=getModelName(SockCon,_Contract);


  ChqNo.text:=_Contract;
  edTatalAmt.Text:=formatcurr('#,####,###.#0',_ChqAMT);


  initForm;
  calc;


    
 {
  lbDealerName.Caption:=getContractName(SockCon,_Contract);


  cdsIns.close;
  cdsIns.CommandText:='select 0 as CHK,* from HPTINS00 where INSF11=3  order by INSCRN,INSDUE';
  cdsIns.Open;


  cdsSeperateTmp.Close;
  cdsSeperateTmp.CreateDataSet;

  cdsOtherPayments.Close;
  cdsOtherPayments.CreateDataSet;


  ChqNo.text:=_Contract;
  edTatalAmt.Text:=formatcurr('#,####,###.#0',_ChqAMT);


  initForm;
  calc;
  }
end;

function TfrmChequeSeparate.getConPer(_sock: TSockCon;
  contract: string): integer;
  var rcTemp:TClientDataSet;
      conper:integer;
  begin
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=_sock;
    conper:=0;

    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('temp_prov101', 'ALL');
      ProviderName:='temp_prov101';
      CommandText:='select CONPER from HPMCON00  where CONRUN='''+contract+'''';
      open;

      if recordcount>0 then
      begin
        conper:=FieldByName('CONPER').AsInteger;
      end;

      Result:=conper;
    end;

  end;

procedure TfrmChequeSeparate.gridSeperateDBTableView1CHKPropertiesChange(
  Sender: TObject);
begin
 // if  TcxCheckBox(Sender).Checked then ShowMessage('selected') else ShowMessage('un selected');
  //if  TcxCheckBox(tcxAccessProperties(gridSeperateDBTableView1CHK.Properties)).Checked then ShowMessage('selected') else ShowMessage('un selected');
  if cdsRelatedContract.State in [dsEdit,dsInsert] then cdsRelatedContract.post;
end;

procedure TfrmChequeSeparate.gridSeperateDBTableView1CHKPropertiesEditValueChanged(
  Sender: TObject);
begin
  //
 // if  TcxCheckBox(tcxAccessProperties(gridSeperateDBTableView1CHK.Properties)).Checked then ShowMessage('selected') else ShowMessage('un selected');
  //if cdsRelatedContract.State in [dsEdit,dsInsert] then cdsRelatedContract.post;
  
end;

procedure TfrmChequeSeparate.gridSeperateDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmChequeSeparate.gridSeperateDBTableView1WHTCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   ACanvas.Font.Color:=clred;
end;

procedure TfrmChequeSeparate.initConnection(pParams:TPluginParams);
begin
  //
  {
  SockCon.Connected:=false;
  SockCon.Address:=pParams.param1;
  SockCon.Connected:=true;
  }
end;

procedure TfrmChequeSeparate.initForm;
var cdsTemp,cdsTemp2:TClientDataSet;
begin
  _defaultWT:=false;


  if trim(_Contract)<>'' then
  begin
    cdsTemp:=TClientDataSet.Create(nil);
    cdsTemp.RemoteServer:=sockcon;

    {
    cdsTemp2:=TClientDataSet.Create(nil);
    cdsTemp2.RemoteServer:=sockcon;

    with cdsTemp2 do
    begin
       TSockCon(cdsTemp2.RemoteServer).AddProv('man_prov222', 'ALL');
       ProviderName:='man_prov000';
       close;
       CommandText:='select * from fn_GetChqPayment ('''+_Contract+''',DEFAULT)';
       try
          open;
       except
        on ee:Exception do
          Application.MessageBox(pchar(ee.Message),pchar('Error'),MB_OK or MB_ICONERROR);
       end;
    end;
    }



    with cdsTemp do
    begin
      TSockCon(cdsTemp.RemoteServer).AddProv('man_prov000', 'ALL');


      ProviderName:='man_prov000';
      close;
      //CommandText:='select * from fn_GetChqPayment ('''+_Contract+''',DEFAULT)';
      CommandText:='' +
       ' declare @CRN as varchar(7)   '+
       ' set @CRN='''+_Contract+''''+
       ' declare @maxDT as datetime  '+
       ' select @maxDT=MAX(INSDUE) from HPTINS00 where INSCRN=@CRN  '+
       ' select * from fn_GetChqPayment (@CRN,DEFAULT)  '+
       ' union ' +
       ' select top 1 * from fn_GetChqPayment (@CRN,@maxDT) ';
       //InputBox('','',CommandText);

      try
        open;
      except
        on ee:Exception do
        Application.MessageBox(pchar(ee.Message),pchar('Error'),MB_OK or MB_ICONERROR);
      end;

      _defaultWT:=getConPer(SockCon,_Contract)<=36;

        if recordcount>0 then
        begin

           Last;

           _WT:=cdsTemp.FieldByName('WHT').AsCurrency;
           _defaultWT:=cdsTemp.FieldByName('WHT').AsCurrency>0;

           if cdsTemp.FieldByName('INSIAM').AsCurrency=0 then _defaultWT:=false;



           //ckWT.Checked:=_WT>0;
           //ckWT.Enabled:=_WT>0;
           //ckWT.Checked:=_defaultWT;
           //ckWT.Enabled:=_defaultWT;


           _Amount:=cdsTemp.FieldByName('INSIAM').AsCurrency;
           _VAT:=cdsTemp.FieldByName('INSVAM').AsCurrency;
           //_NetPay:=cdsTemp.FieldByName('NETPAY').AsCurrency;
           _NetPay:=cdsTemp.FieldByName('INSNET').AsCurrency;


           _NetAdvance:=cdsTemp.FieldByName('CQSADV').AsCurrency;
           _NetOut:=cdsTemp.FieldByName('OUTSTD').AsCurrency;

           _NetAmount:=cdsTemp.FieldByName('INSNET').AsCurrency;


           //_NetOut:=cdsTemp.FieldByName('ACCUM').AsCurrency;


           lbDue.Caption:=FormatDateTime('dd/MM/yyyy', cdsTemp.FieldByName('INSDUE').AsDateTime);
           lbTenor.Caption:=cdsTemp.FieldByName('INSITM').AsString;
           lbPeroid.Caption:=inttostr(getConPer(SockCon,_Contract));


           // info
           cdsInfo.close;
           cdsInfo.CommandText:= '' +
           ' declare @dt as datetime  '+
           ' select @dt=MAX(INSDUE) from HPTINS00 where INSCRN='''+_Contract+''' '+
           ' select * from fn_GetChqPayment('''+_Contract+''',@dt) ';
           cdsInfo.Open;

           // set field format
           TFloatField(cdsInfo.FieldByName('INSIAM')).DisplayFormat := '#,##0.00';
           TFloatField(cdsInfo.FieldByName('INSIRA')).DisplayFormat := '#,##0.00';
           TFloatField(cdsInfo.FieldByName('INSVAM')).DisplayFormat := '#,##0.00';
           TFloatField(cdsInfo.FieldByName('INSNET')).DisplayFormat := '#,##0.00';
           TFloatField(cdsInfo.FieldByName('WHT')).DisplayFormat := '#,##0.00';
           TFloatField(cdsInfo.FieldByName('CQSADV')).DisplayFormat := '#,##0.00';





           gridSeperateDBTableView1INSVAM.Caption:='VAT('+inttostr(getTaxRate(SockCon))+'%)';
           gridSeperateDBTableView1WHT.Caption:='WT('+inttostr(getWHTRate(SockCon))+'%)';

           cxGridDBTableView4INSVAM.Caption:='VAT('+inttostr(getTaxRate(SockCon))+'%)';
           cxGridDBTableView4WHT.Caption:='WT('+inttostr(getWHTRate(SockCon))+'%)';

           cxGridDBTableView3INSVAM.Caption:='VAT('+inttostr(getTaxRate(SockCon))+'%)';
           cxGridDBTableView3WHT.Caption:='WT('+inttostr(getWHTRate(SockCon))+'%)';

           cxGrid2DBTableView1CQSVAT.Caption:='VAT('+inttostr(getTaxRate(SockCon))+'%)';
           cxGrid2DBTableView1CQSWHT.Caption:='WT('+inttostr(getWHTRate(SockCon))+'%)';


           ckWT.Caption:='Include WT('+inttostr(getWHTRate(SockCon))+'%)';
           cxlbVAT.Caption:='VAT('+inttostr(getTaxRate(SockCon))+'%)';
           cxlbWT.Caption:='WT('+inttostr(getWHTRate(SockCon))+'%)';

        end;

           ckWT.Checked:=_defaultWT;
           ckWT.Enabled:=_defaultWT;
    end;
  end;

  // inittab
  AdjPage.ActivePage:=tabChqOne;
  PageControl.ActivePage:=TabRelatedContract;
  PageControl1.ActivePage:=TabSheet1;


end;

procedure TfrmChequeSeparate.PageControlEnter(Sender: TObject);
begin

  if _Contract<>'' then
  begin
    if not cdsRelatedContract.Active then
    begin
      cdsRelatedContract.close;
      cdsRelatedContract.CommandText:='sp_getContractRelated '''+_Contract+'''';
      cdsRelatedContract.Open;
    end;
  end;
end;

procedure TfrmChequeSeparate.pContract4O;
var row:integer;
begin
  if  frmSeperateChqItem.cdsContract.Active then
    frmSeperateChqItem.cdsContract.EmptyDataSet;

  if AdjPage.ActivePage=tabChqOneToMany then
  begin
    case PageControl.ActivePageIndex of
      0: {TabRelatedContract}
        begin
          with cdsRelatedContract do
          begin
             if cdsRelatedContract.Active then
             begin
              cdsRelatedContract.first;
              for row:=0 to cdsRelatedContract.RecordCount-1 do
                begin
                   frmSeperateChqItem.cdsContract.Append;
                   frmSeperateChqItem.cdsContractCON.AsString:=cdsRelatedContract.FieldByName('INSCRN').AsString;
                   frmSeperateChqItem.cdsContractDESC.AsString:=cdsRelatedContract.FieldByName('DEAName').AsString;
                   frmSeperateChqItem.cdsContract.Post;
                   cdsRelatedContract.next;
                end;
             end;
          end;
        end;
      1:{TabDealerGroup}
        begin
          with cdsDealerDtl do
          begin
             if cdsDealerDtl.Active then
             begin
             cdsDealerDtl.first;
              for row:=0 to cdsDealerDtl.RecordCount-1 do
                begin
                   frmSeperateChqItem.cdsContract.Append;
                   frmSeperateChqItem.cdsContractCON.AsString:=cdsDealerDtl.FieldByName('INSCRN').AsString;
                   frmSeperateChqItem.cdsContractDESC.AsString:=getContractName(SockCon,cdsDealerDtl.FieldByName('INSCRN').AsString);
                   frmSeperateChqItem.cdsContract.Post;
                   cdsDealerDtl.next;
                end;
             end;
          end;
        end;
      2:{TabLasted}
        begin
          with cdsHistoryDtl do
          begin
             if cdsDealerDtl.Active then
             begin
             cdsDealerDtl.first;
              for row:=0 to cdsDealerDtl.RecordCount-1 do
                begin
                   frmSeperateChqItem.cdsContract.Append;
                   frmSeperateChqItem.cdsContractCON.AsString:=cdsDealerDtl.FieldByName('CQSCSN').AsString;
                   frmSeperateChqItem.cdsContractDESC.AsString:=getContractName(SockCon,cdsDealerDtl.FieldByName('CQSCSN').AsString);
                   frmSeperateChqItem.cdsContract.Post;
                   cdsDealerDtl.next;
                end;
             end;
          end;
        end;

    end;
  end else
  if AdjPage.ActivePage=tabChqOne then
  begin
     frmSeperateChqItem.cdsContract.Append;
     frmSeperateChqItem.cdsContractCON.AsString:=_Contract;
     frmSeperateChqItem.cdsContractDESC.AsString:=getContractName(SockCon,_Contract);
     frmSeperateChqItem.cdsContract.Post;
  end;
     
end;

procedure TfrmChequeSeparate.raNoAdjustClick(Sender: TObject);
begin
    lbDiff.Visible:= raShortOver.Checked;
   // lbDiffTotal.Visible:= not raPartial.Checked;
   //lbNetPaymnet.Visible:= not raPartial.Checked;
    edDiff.Visible:= raShortOver.Checked;
    //lbNetAmountA.Visible:= not raPartial.Checked;
    //edNetPayment.Visible:= not raPartial.Checked;
    lbx1.Visible:= raShortOver.Checked;
    //lbx2.Visible:= not raPartial.Checked;
    edChqCountP1.Visible:= raShortOver.Checked;
    //edChqCountP2.Visible:= not raPartial.Checked;

    Calc;
end;



procedure TfrmChequeSeparate.SetBranch(const Value: string);
begin
  FBranch := Value;
end;

procedure TfrmChequeSeparate.SetPDM(const Value: string);
begin
  FPDM := Value;
end;

procedure TfrmChequeSeparate.SetPDT(const Value: string);
begin
  FPDT := Value;
end;

procedure TfrmChequeSeparate.SetUserID(const Value: string);
begin
  FUserID := Value;
end;

procedure TfrmChequeSeparate.SetWorkStation(const Value: string);
begin
  FWorkStation := Value;
end;

procedure TfrmChequeSeparate.tabChqOneToManyShow(Sender: TObject);
begin
  {clear other pay}
  if cdsOtherPayments.Active then
  begin
    cdsOtherPayments.EmptyDataSet;
    _OAmount:=0;
    _ONetAmount:=0;
    calc;
  end;

  PageControl.ActivePage:=TabRelatedContract;
  Calc;


   edSummaryA.Text:=formatcurr('#,####,###.#0',_ChqAMT);//FormatCurr('#,##0.#0',_SAmount);
   edVatA.Text:=FormatCurr('#,##0.#0',_SNetAmount-_ChqAMT);

   edNetAmountA.Text:=FormatCurr('#,##0.#0',_SNetAmount+_ONetAmount);
   _diff:=(_SNetAmount+_ONetAmount)-_ChqAMT;
end;

procedure TfrmChequeSeparate.TabDealerGroupShow(Sender: TObject);
begin

  
  if  not cdsDealerHdr.Active then
  begin
    cdsDealerHdr.Close;
    cdsDealerHdr.CommandText:='exec sp_getEmailRelated '''+_Contract+'''';
    cdsDealerHdr.Open;
  end;

  if cdsDealerHdr.Active then
  begin
    cdsDealerHdr.First;
    if trim(cdsDealerHdr.FieldByName('EMAIL').AsString)='' then
    begin
      cdsDealerHdr.Close;
    end;
    
    if  not cdsDealerDtl.Active then
    begin
      cdsDealerDtl.close;
      cdsDealerDtl.CommandText:='exec sp_getEmailRelatedDtl '''+_Contract+'''';
      cdsDealerDtl.Open;
    end;
  end;

   ///_SNetAmount1:=0;
   //_SAmount1:=0;
   //edVatA.Text:='0.00';
   //dealer dtl

   if cdsDealerDtl.Active then
    if cdsDealerDtl.RecordCount>0 then    
     begin
       TFloatField(cdsDealerDtl.FieldByName('INSIAM')).DisplayFormat := '#,##0.00';
       TFloatField(cdsDealerDtl.FieldByName('INSVAM')).DisplayFormat := '#,##0.00';
       TFloatField(cdsDealerDtl.FieldByName('WHT')).DisplayFormat := '#,##0.00';
       TFloatField(cdsDealerDtl.FieldByName('NET')).DisplayFormat := '#,##0.00';
     end;

   CalDealer;

   {
   edSummaryA.Text:=formatcurr('#,####,###.#0',_ChqAMT);
   edVatA.Text:=FormatCurr('#,##0.#0',_SAmount1-_ChqAMT);
   edNetAmountA.Text:=FormatCurr('#,##0.#0',_SNetAmount1+_ONetAmount);
   }
end;

procedure TfrmChequeSeparate.TabLastedShow(Sender: TObject);
begin


  if not cdsHistoryHdr.Active then
  begin
    cdsHistoryHdr.Close;
    //cdsHistoryHdr.CommandText:='select CQMDNO from CQDM007   where CQMCSN='''+_Contract+''' group by CQMDNO';
    cdsHistoryHdr.CommandText:='exec SP_GETHISTORY '''+_Contract+'''';
    cdsHistoryHdr.Open;
  end;

  if cdsHistoryHdr.Active then
  begin
    cdsHistoryDtl.Close;
    cdsHistoryDtl.CommandText:='if object_id( ''tempdb..#temp0003'' ) is not  null drop table #temp0003 select identity(int,1,1) as ID,a.*,b.CQMDUE,c.CARMDL , 0 as CQMCHK  into #temp0003 from CQDS003 '+' a  left join CQDM007 b on a.CQSDNO=b.CQMDNO left join DBMCOA03 c on a.CQSCSN=c.COARUN where a.CQSRCT=''N'' select * from #temp0003';// where CQSCSN= '''+_Contract+'''';
    //cdsHistoryDtl.CommandText:='exec SP_GETHISTORY '''+_Contract+'''';
    cdsHistoryDtl.Open;

    //ShowMessage(IntToStr(cdsHistoryDtl.RecordCount));

  end;

  {
   _SNetAmount2:=0;
   _SAmount2:=0;
   _SVAT:=0;
   _WHT:=0;
   }

   //edVatA.Text:='0.00';
   CalHistory;
   {
   edSummaryA.Text:=formatcurr('#,####,###.#0',_ChqAMT);//FormatCurr('#,##0.#0',_SAmount2);
   edVatA.Text:=FormatCurr('#,##0.#0',_SAmount2-_ChqAMT);
   edNetAmountA.Text:=FormatCurr('#,##0.#0',_SNetAmount2+_ONetAmount);
   }
   
end;

procedure TfrmChequeSeparate.TabRelatedContractShow(Sender: TObject);
begin


  if  not cdsRelatedContract.Active then
  begin
    cdsRelatedContract.Close;
    cdsRelatedContract.CommandText:='exec sp_getContractRelated '''+_Contract+'''';
    cdsRelatedContract.open;
  end;

   //_SNetAmount:=0;
   //_SAmount:=0;
   //_SVAT:=0;
   //edVatA.Text:='0.00';


   TFloatField(cdsRelatedContract.FieldByName('INSIAM')).DisplayFormat := '#,##0.00';
   TFloatField(cdsRelatedContract.FieldByName('INSVAM')).DisplayFormat := '#,##0.00';
   TFloatField(cdsRelatedContract.FieldByName('WHT')).DisplayFormat := '#,##0.00';
   TFloatField(cdsRelatedContract.FieldByName('NET')).DisplayFormat := '#,##0.00';

   
   CalRelateContract;


end;

end.
