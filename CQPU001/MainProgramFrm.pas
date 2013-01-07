unit MainProgramFrm;

interface                                                                                    

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,DateUtils,
  Dialogs, BaseFrm, ImgList, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxLabel, ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel,
  ExtCtrls, Provider, DB, ADODB, StdCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, Menus,
   cxDropDownEdit, cxCalendar, cxMemo,
  JvExComCtrls, JvComCtrls, cxLookAndFeels,   SConnect,
   DBClient, MConnect,    Grids, DBGrids, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, JvExControls, JvDBLookup, JvExStdCtrls, JvCombobox,
  DBCtrls, SockCon, RemCollect, RemCustomDS, RemDataSet, JvLabel, frxClass,
  frxDBSet, cxLookAndFeelPainters, cxGroupBox, cxRadioGroup, cxDBEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxMaskEdit, cxButtons, cxCheckBox,cxFormats,
  cxDBLabel, frxBarcode, frxDBXComponents, frxADOComponents,
  frxIBXComponents, frxBDEComponents, frxChart, frxDCtrl, frxExportHTML,
  frxExportCSV, frxExportPDF, frxExportXLS, cxCurrencyEdit, Buttons;

type

  TShowWindowType = (swNone, swModal, swNormal);
  TExecuteProgram = function(_MainApp: Pointer;_Type: TShowWindowType; _Parameter: String): Pointer; stdcall;

  TfrmMainProgram = class(TfrmBase)
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel1: TcxLabel;
    TabSheet2: TTabSheet;
    cxButton4: TcxButton;
    cxLabel12: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    cdsBnkBr: TClientDataSet;
    dsBnkBr: TDataSource;
    cdsBnk: TClientDataSet;
    dsBnk: TDataSource;
    btnAdd: TcxButton;
    edChequeF: TcxTextEdit;
    edChequeCount: TcxTextEdit;
    SocketConn: TSockCon;
    connBroker: TConnectionBroker;
    cdsHdr: TClientDataSet;
    dsHdr: TDataSource;
    cdsTemp: TClientDataSet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Button1: TButton;
    edChqAmount: TcxTextEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    edContract: TcxTextEdit;
    edComment: TcxTextEdit;
    _cdsSeperateTmp: TClientDataSet;
    btnGenerateChq: TButton;
    cxLabel20: TcxLabel;
    cdsGenChqTmp: TClientDataSet;
    cdsGenChqTmpCQMACT: TStringField;
    cdsGenChqTmpCQMSTS: TStringField;
    cdsGenChqTmpCQMBRN: TStringField;
    cdsGenChqTmpCQMPDM: TStringField;
    cdsGenChqTmpCQMPDT: TStringField;
    cdsGenChqTmpCQMDNO: TStringField;
    cdsGenChqTmpCQMBNK: TStringField;
    cdsGenChqTmpCQMBBR: TStringField;
    cdsGenChqTmpCQMLET: TStringField;
    cdsGenChqTmpCQMCNO: TStringField;
    cdsGenChqTmpCQMTYP: TStringField;
    cdsGenChqTmpCQMCTY: TStringField;
    cdsGenChqTmpCQMDTE: TSQLTimeStampField;
    cdsGenChqTmpCQMITM: TIntegerField;
    cdsGenChqTmpCQMAMT: TFMTBCDField;
    cdsGenChqTmpCQMDUE: TSQLTimeStampField;
    cdsGenChqTmpCQMCSN: TStringField;
    cdsGenChqTmpCQMRMK: TStringField;
    cdsGenChqTmpCQMRS1: TStringField;
    cdsGenChqTmpCQMRS2: TStringField;
    cdsGenChqTmpCQMRS3: TStringField;
    cdsGenChqTmpCQMRS4: TStringField;
    cdsGenChqTmpCQMRS5: TStringField;
    cdsGenChqTmpCQMRN1: TFMTBCDField;
    cdsGenChqTmpCQMRN2: TFMTBCDField;
    cdsGenChqTmpCQMRN3: TFMTBCDField;
    cdsGenChqTmpCQMRN4: TFMTBCDField;
    cdsGenChqTmpCQMRN5: TFMTBCDField;
    cdsGenChqTmpCQMETD: TSQLTimeStampField;
    cdsGenChqTmpCQMETW: TStringField;
    cdsGenChqTmpCQMETU: TStringField;
    cdsGenChqTmpCQMMTD: TSQLTimeStampField;
    cdsGenChqTmpCQMMTU: TStringField;
    cdsGenChqTmpCQMMTW: TStringField;
    cdsGenChqTmpCQMIAM: TFMTBCDField;
    cdsGenChqTmpCQMCHK: TIntegerField;
    edChequeTotalAmount: TcxLabel;
    edChequeT: TcxTextEdit;
    btnAddNew: TcxButton;
    dtChequeDate: TcxDateEdit;
    dtChequeToDate: TcxDateEdit;
    cmbBank: TcxComboBox;
    cmbBankBranch: TcxComboBox;
    cdsCKINS: TClientDataSet;
    cdsDtl: TClientDataSet;
    dsDtl: TDataSource;
    btnConSearch: TcxButton;
    cxLabel15: TcxLabel;
    cdsDtlCQSACT: TStringField;
    cdsDtlCQSSTS: TStringField;
    cdsDtlCQSBRN: TStringField;
    cdsDtlCQSPDM: TStringField;
    cdsDtlCQSPDT: TStringField;
    cdsDtlCQSDNO: TStringField;
    cdsDtlCQSRNO: TIntegerField;
    cdsDtlCQSSEQ: TIntegerField;
    cdsDtlCQSCBR: TStringField;
    cdsDtlCQSCPD: TStringField;
    cdsDtlCQSCTP: TStringField;
    cdsDtlCQSRCT: TStringField;
    cdsDtlCQSCSN: TStringField;
    cdsDtlCQSRS1: TStringField;
    cdsDtlCQSRS2: TStringField;
    cdsDtlCQSRS3: TStringField;
    cdsDtlCQSRS4: TStringField;
    cdsDtlCQSRS5: TStringField;
    cdsDtlCQSRN1: TFMTBCDField;
    cdsDtlCQSRN2: TFMTBCDField;
    cdsDtlCQSRN3: TFMTBCDField;
    cdsDtlCQSRN4: TFMTBCDField;
    cdsDtlCQSRN5: TFMTBCDField;
    cdsDtlCQSETD: TSQLTimeStampField;
    cdsDtlCQSETW: TStringField;
    cdsDtlCQSETU: TStringField;
    cdsDtlCQSMTD: TSQLTimeStampField;
    cdsDtlCQSMTU: TStringField;
    cdsDtlCQSMTW: TStringField;
    cdsDtl2: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    FMTBCDField5: TFMTBCDField;
    FMTBCDField6: TFMTBCDField;
    FMTBCDField7: TFMTBCDField;
    FMTBCDField8: TFMTBCDField;
    FMTBCDField9: TFMTBCDField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField17: TStringField;
    StringField18: TStringField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    dsDtl2: TDataSource;
    lbPayAt: TcxLabel;
    cmbBnkAccount: TcxComboBox;
    cmbCType: TcxComboBox;
    lbDealerName: TcxLabel;
    Status: TcxRadioGroup;
    btnMCancel: TcxButton;
    btnMReCancel: TcxButton;
    btnMEdit: TcxButton;
    btnMRePrint: TcxButton;
    deStart: TcxDateEdit;
    deEnd: TcxDateEdit;
    btnMOK: TcxButton;
    cdsMainta: TClientDataSet;
    dsMainta: TDataSource;
    cxGrid2DBTableView1CQMACT: TcxGridDBColumn;
    cxGrid2DBTableView1CQMSTS: TcxGridDBColumn;
    cxGrid2DBTableView1CQMDFG: TcxGridDBColumn;
    cxGrid2DBTableView1CQMDNO: TcxGridDBColumn;
    cxGrid2DBTableView1CQMACC: TcxGridDBColumn;
    cxGrid2DBTableView1CQMBNK: TcxGridDBColumn;
    cxGrid2DBTableView1CQMBBR: TcxGridDBColumn;
    cxGrid2DBTableView1CQMCNO: TcxGridDBColumn;
    cxGrid2DBTableView1CQMDTE: TcxGridDBColumn;
    cxGrid2DBTableView1CQMAMT: TcxGridDBColumn;
    cxGrid2DBTableView1CQMCSN: TcxGridDBColumn;
    cxGrid2DBTableView1CQMRMK: TcxGridDBColumn;
    lbChqType: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    lbKeyIn: TcxLabel;
    cxButton3: TcxButton;
    edAccNo: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cdsDtlCQSCFA: TFMTBCDField;
    cdsDtlCQSPFA: TStringField;
    cdsDtlCQSWFA: TStringField;
    Panel1: TPanel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    btnOK: TcxButton;
    pnGrid: TPanel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1CQSCSN: TcxGridDBColumn;
    cxGrid3DBTableView1CQSRS1: TcxGridDBColumn;
    cxGrid3DBTableView1CQSRS2: TcxGridDBColumn;
    cxGrid3DBTableView1CQSAMT: TcxGridDBColumn;
    cxGrid3DBTableView1CQSVAT: TcxGridDBColumn;
    cxGrid3DBTableView1CQSWHT: TcxGridDBColumn;
    cxGrid3DBTableView1CQSNET: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    Splitter1: TSplitter;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CQMCNO: TcxGridDBColumn;
    cxGrid1DBTableView1CQMDTE: TcxGridDBColumn;
    cxGrid1DBTableView1CQSCSN: TcxGridDBColumn;
    cxGrid1DBTableView1CQSCNM: TcxGridDBColumn;
    cxGrid1DBTableView1CQSMDL: TcxGridDBColumn;
    cxGrid1DBTableView1CQSAMT: TcxGridDBColumn;
    cxGrid1DBTableView1CQSVAT: TcxGridDBColumn;
    cxGrid1DBTableView1CQSWHT: TcxGridDBColumn;
    cxGrid1DBTableView1CQSNET: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cdsDtlCQSCNM: TStringField;
    cdsDtlCQSMDL: TStringField;
    cdsDtlCQMDTE: TDateTimeField;
    cdsDtlCQMCNO: TStringField;
    _cdsDtl: TClientDataSet;
    _cdsDtlCQSACT: TStringField;
    _cdsDtlCQSSTS: TStringField;
    _cdsDtlCQSBRN: TStringField;
    _cdsDtlCQSPDM: TStringField;
    _cdsDtlCQSPDT: TStringField;
    _cdsDtlCQSDNO: TStringField;
    _cdsDtlCQSRNO: TIntegerField;
    _cdsDtlCQSSEQ: TIntegerField;
    _cdsDtlCQSCBR: TStringField;
    _cdsDtlCQSCPD: TStringField;
    _cdsDtlCQSCTP: TStringField;
    _cdsDtlCQSRCT: TStringField;
    _cdsDtlCQSCSN: TStringField;
    _cdsDtlCQSCFA: TFMTBCDField;
    _cdsDtlCQSPFA: TStringField;
    _cdsDtlCQSWFA: TStringField;
    _cdsDtlCQSRS1: TStringField;
    _cdsDtlCQSRS2: TStringField;
    _cdsDtlCQSRS3: TStringField;
    _cdsDtlCQSRS4: TStringField;
    _cdsDtlCQSRS5: TStringField;
    _cdsDtlCQSRN1: TFMTBCDField;
    _cdsDtlCQSRN2: TFMTBCDField;
    _cdsDtlCQSRN3: TFMTBCDField;
    _cdsDtlCQSRN4: TFMTBCDField;
    _cdsDtlCQSRN5: TFMTBCDField;
    _cdsDtlCQSETD: TSQLTimeStampField;
    _cdsDtlCQSETW: TStringField;
    _cdsDtlCQSETU: TStringField;
    _cdsDtlCQSMTD: TSQLTimeStampField;
    _cdsDtlCQSMTU: TStringField;
    _cdsDtlCQSMTW: TStringField;
    DBGrid1: TDBGrid;
    Button2: TButton;
    DataSource2: TDataSource;
    cdsDtlCQSIWT: TStringField;
    cxGrid1DBTableView1CQSIWT: TcxGridDBColumn;
    _cdsDtlCQSIWT: TStringField;
    btnInfo: TSpeedButton;
    cdsDtlCQSAMT: TFMTBCDField;
    cdsDtlCQSVAT: TFMTBCDField;
    cdsDtlCQSWHT: TFMTBCDField;
    cdsDtlCQSNET: TFMTBCDField;
    cdsDtlCQSADF: TFMTBCDField;
    _cdsDtlCQSAMT: TFMTBCDField;
    _cdsDtlCQSVAT: TFMTBCDField;
    _cdsDtlCQSWHT: TFMTBCDField;
    _cdsDtlCQSNET: TFMTBCDField;
    _cdsDtlCQSADF: TFMTBCDField;
    cdsDtl2CQSAMT: TFMTBCDField;
    cdsDtl2CQSVAT: TFMTBCDField;
    cdsDtl2CQSWHT: TFMTBCDField;
    cdsDtl2CQSNET: TFMTBCDField;
    cdsDtl2CQSADF: TFMTBCDField;
    cdsDtl2CQSCFA: TFMTBCDField;
    cdsDtl2CQSPFA: TStringField;
    cdsDtl2CQSWFA: TStringField;
    cdsDtl2CQSIWT: TStringField;
    cxGrid2DBTableView1RecordStatus: TcxGridDBColumn;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure cmbBnkExit(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure cdsHdrReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cxButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edChequeCountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edChqAmountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGenerateChqClick(Sender: TObject);
    procedure cdsHdrBeforePost(DataSet: TDataSet);
    procedure edChequeTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edChequeFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddNewClick(Sender: TObject);
    procedure edContractKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCommentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edChqAmountKeyPress(Sender: TObject; var Key: Char);
    procedure edChequeCountKeyPress(Sender: TObject; var Key: Char);
    procedure edChequeFKeyPress(Sender: TObject; var Key: Char);
    procedure edChequeTKeyPress(Sender: TObject; var Key: Char);
    procedure dtChequeDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtChequeToDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbBankPropertiesChange(Sender: TObject);
    procedure cmbBankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbBankBranchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConSearchClick(Sender: TObject);
    procedure edChequeCountExit(Sender: TObject);
    procedure edChqAmountExit(Sender: TObject);
    procedure cdsDtlCalcFields(DataSet: TDataSet);
    procedure cdsDtl2CalcFields(DataSet: TDataSet);
    procedure TabSheet2Show(Sender: TObject);
    procedure btnMOKClick(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
    procedure btnMCancelClick(Sender: TObject);
    procedure btnMReCancelClick(Sender: TObject);
    procedure btnMEditClick(Sender: TObject);
    procedure cdsDtlAfterDelete(DataSet: TDataSet);
    procedure cdsDtlCQMCNOSetText(Sender: TField; const Text: string);
    procedure _cdsDtlBeforePost(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid3DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid2DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure btnCloseClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnMRePrintClick(Sender: TObject);
    procedure cdsMaintaAfterScroll(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CQSWHTCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid3DBTableView1CQSWHTCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnSearchClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure edContractPropertiesChange(Sender: TObject);
    procedure cdsDtlAfterPost(DataSet: TDataSet);
    procedure _cdsDtlReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsDtlReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
    FLoadedForm: TForm;
    FLibHandle: Cardinal;
    _DOCNO,TempNO:string;

    _NUMROW:integer;

    isPrintReport,_IsNewDocument:boolean;
    IsPDC:Boolean;


    // initial form
    procedure initForm();
    function CalChqAmount():real;
    procedure ExecutePlugin(DLLName,ProcName:string);


    procedure generateChq(CRN:string);
    function ShowSeperateChq(_contract:string):integer;
    function showManualReceive(_contract:string):integer;
    procedure ClearScreen();
    procedure addDate(dt:TDateTime;day:integer);
    function getModelName(contract:string):string;
    //function getContractName(contract:string):string;
    procedure GetMainta;


  public
    { Public declarations }
    ProvList: TStrings;
    _Params:string;

  end;

var
  frmMainProgram: TfrmMainProgram;
  rcBnk,rcBnkBrn:TClientDataSet;
  rcdsBnk,rcdsBnkBrn:TDataSource;


  _Handle: THandle;
  _ExecuteProgram: TExecuteProgram;

implementation

{$R *.dfm}

uses ConfirmationFrm,  CQPU001_UTILS,UIT_UTILS_LIB, UIT_GLOBAL_LIB,
  ConSearchFrm, InfoFrm;



Procedure SetControls(const Parent: TWinControl;_enable:boolean) ;

   procedure FixControls(const Parent: TWinControl) ;
   var
     ctl, L: Integer;
     List: TList;
   begin
     List := TList.Create;
     try
       for ctl := 0 to Parent.ControlCount - 1 do
       begin
         if Parent.Controls[ctl] is TWinControl then
         begin
           if List.Count = 0 then
        L := 0
           else
           begin
             with Parent.Controls[ctl] do
               for L := 0 to List.Count - 1 do
                 if (Top < TControl(List[L]).Top) or ((Top = TControl(List[L]).Top) and (Left < TControl(List[L]).Left)) then Break;
           end;

           //List.Insert(L, Parent.Controls[ctl]) ;
           Parent.Controls[ctl].Enabled:=_enable;

           FixControls(TWinControl(Parent.Controls[ctl])) ;
           end;
         end;

       for ctl := 0 to List.Count - 1 do
         TWinControl(List[ctl]).TabOrder := ctl;
     finally
       List.Free;
     end;
   end;
 begin
   FixControls(Parent) ;
 end;
procedure TfrmMainProgram.btnAddNewClick(Sender: TObject);
var chqCount,j,k,ChqNum:integer;
    chqDate:TDateTime;
    ans:integer;
    IsOverdueAlert:boolean;

    MsgFont,BtnFont: TFont ;
begin
   inherited;

   IsOverdueAlert:=false;
   _DOCNO:=getRunning(SocketConn,'201','DOCNO','PAYMENT','');
   if trim(_DOCNO)='' then exit;

   if cmbBank.SelectedItem<0 then
   begin
    IsActive:=false;
    Application.MessageBox(pchar('Please select bank!!'),pchar('Warning'),mb_ok or MB_ICONWARNING);
    IsActive:=true;
    cmbBank.SetFocus;
    exit;
   end;

   if cmbBankBranch.SelectedItem<0 then
   begin
    IsActive:=false;
    Application.MessageBox(pchar('Please select bankbranch!!'),pchar('Warning'),mb_ok or MB_ICONWARNING);
    IsActive:=true;
    cmbBankBranch.SetFocus;
    exit;
   end;

   if not IsChqNo(edChequeF.Text) then
   begin
    IsActive:=false;
    Application.MessageBox(pchar('Invalid Cheque No'),pchar('Warning'),mb_ok or MB_ICONWARNING);
    IsActive:=true;
    edChequeF.SetFocus;
    exit;
   end;


   if IsConnErr(SocketConn,edContract.text) then
   begin
    IsActive:=false;

    if (Application.MessageBox(pchar('Contract Installments error, Continue!!!'),pchar('Confirmation'),MB_YESNO or MB_ICONWARNING))=mrNo
    then
    begin
      edContract.SetFocus;
      exit;
    end;

    IsActive:=true;

   end;



   MsgFont:=TFont.Create;
   MsgFont.Name:='Tahoma';
   MsgFont.Height:=30;
   MsgFont.Style:=[fsBold];

   BtnFont:=TFont.Create;
   BtnFont.Name:='Tahoma';
   BtnFont.Height:=16;
   BtnFont.Style:=[fsBold];

  if not IsActive then Exit;

  if trim(edContract.Text)='' then
  begin
    IsActive:=false;
    MessageDlgCustom('Contract No. Cannot Empty !!!',mtWarning,[mbOK],['OK'],MsgFont,BtnFont);
    IsActive:=true;
    edContract.SetFocus;
    exit;
  end;


  if IsConChqExists(SocketConn,edContract.Text,edChequeF.Text,TString(cmbBank.Properties.Items.Objects[cmbBank.SelectedItem]).Str,TString(cmbBankBranch.Properties.Items.Objects[cmbBankBranch.SelectedItem]).Str) then
  begin
    IsActive:=false;
    Application.MessageBox(pchar('Chqno Duplicate!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
    IsActive:=true;
    edChequeF.SetFocus;
    exit;
  end;





   if btnAddNew.Enabled=false then exit;   

   isPrintReport:=false;
   if trim(_DOCNO)='' then
    begin
      IsActive:=false;
      Application.MessageBox(pchar('Invalid Documnet No.!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      IsActive:=true;
      exit;
    end;

  if not CheckNumber(edChequeCount.text) then exit;

  // check installment
  
  cdsCKINS.close;
  //cdsCKINS.CommandText:='exec sp_getInsPeriod :A,:B';
  cdsCKINS.CommandText:='select * from fn_getInsPeriod (:A,:B)';

  cdsCKINS.CommandText:=''+
   ' declare @csn varchar(15) '+
   ' declare @NDate datetime '+
   ' set @csn=:A  '+
   ' set @NDate= {fn now()}     '+
   ' select @NDate=max(INSDUE) from HPTINS00 where INSCRN= @csn '+
//   ' set @NDate = DATEADD(month,12-MONTH({fn now()}),{fn now()}) '+
   ' select top 1 *,INSNET as NETAMT from fn_GetChqPayment(@csn,@NDate) '+
   ' where  INSNET=:B and PAYSTS=1 '+
   ' order by INSITM ';

  cdsCKINS.Params.ParamByName('A').AsString:=edContract.text;
  cdsCKINS.Params.ParamByName('B').AsCurrency:=StrToFloat(edChqAmount.Text);//CalChqAmount;
  cdsCKINS.Open;


  if cdsCKINS.Active then
  if ((cdsCKINS.RecordCount<=0) or (cdsCKINS.IsEmpty)) then
  begin
    cdsCKINS.close;
    cdsCKINS.CommandText:=''+
     ' declare @csn varchar(15) '+
     ' declare @NDate datetime '+
     ' set @csn=:A  '+
     ' set @NDate= {fn now()}     '+
     ' select @NDate=max(INSDUE) from HPTINS00 where INSCRN= @csn '+
     ' select top 1 *,INSNET as NETAMT from fn_GetChqPayment(@csn,@NDate) '+
     ' where  INSNET=:B and INSDUE>{fn now()} '+
     ' order by INSITM ';

    cdsCKINS.Params.ParamByName('A').AsString:=edContract.text;
    cdsCKINS.Params.ParamByName('B').AsCurrency:=StrToFloat(edChqAmount.Text);//CalChqAmount;
    cdsCKINS.Open;
  end;
  




  sleep(100);

  IsPDC:=(strtoint(edChequeCount.Text)>1);

  // xxx


  if not cdsDtl.Active then
  begin
    cdsDtl.Close;
    cdsDtl.CreateDataSet;
    //cdsDtl.CommandText:='select * from CQDS003 where  CQSACT=''z''';
    //cdsDtl.Open;
  end;


  if cdsCKINS.Active then
  if (cdsCKINS.IsEmpty) then // or (cdsCKINS.RecordCount>1) then
  //if (cdsCKINS.RecordCount>1) then      { check pdc or 1-1 or 1-N}
  begin
   IsActive:=false;
   //ans:=MessageDlgCustom('Please select !!!',mtWarning,[mbYes,mbIgnore,mbCancel],['Seperate','Cancel','Hold'],MsgFont,BtnFont);
   ans:=ShowSeperateChq(edContract.Text);//showManualReceive(edContract.Text);
   
   Screen.Cursor:=crDefault;
   IsActive:=true;

   Screen.Cursor:=crDefault;
   if ans=mrCancel then exit;
   

    if ans=mrOk then                                      { Extra Pay }
    begin
     if _cdsSeperateTmp.Active then
      if _cdsSeperateTmp.RecordCount>0 then
      begin
        //inc(_NUMROW);

        if CheckNumber(edChequeCount.Text) then
        for j := 1 to strtoint(edChequeCount.Text)  do
        begin
           if j<=strtoint(edChequeCount.Text) then  _DOCNO:=getRunning(SocketConn,'201','DOCNO','PAYMENT','');

            _NUMROW:=0;
            { generate cheque number , cheque date , model name}
            ChqNum:=strtoint(edChequeF.Text);
            inc(ChqNum,cdsDtl.RecordCount);
            chqDate:=IncMonth(dtChequeDate.Date,cdsDtl.RecordCount);

            {insert header}
            with cdsHdr do
              begin
                //EmptyDataSet;
                Append;
                FieldByName('CQMBNK').AsString:=TString(cmbBank.Properties.Items.Objects[cmbBank.SelectedItem]).Str;
                FieldByName('CQMBBR').AsString:=TString(cmbBankBranch.Properties.Items.Objects[cmbBankBranch.SelectedItem]).Str;
                FieldByName('CQMPAT').AsString:=TString(cmbBnkAccount.Properties.Items.Objects[cmbBnkAccount.SelectedItem]).Str;

                if UpperCase(_Params)='KEYIN' then
                begin
                  //FieldByName('CQMCTY').AsString:=TString(cmbCType.Properties.Items.Objects[cmbCType.SelectedItem]).Str;
                  FieldByName('CQMACC').AsString:=edAccNo.Text;
                end;

                if UpperCase(_Params)='KEYIN' then
                  FieldByName('CQMDFG').AsString:='K'
                else
                  FieldByName('CQMDFG').AsString:='R';
                FieldByName('CQMRMK').AsString:=edComment.Text;
                FieldByName('CQMDTE').AsDateTime:=dtChequeDate.Date;
                FieldByName('CQMDUE').AsDateTime:=dtChequeToDate.Date;

                {#57}
                if IsPDC then
                  FieldByName('CQMAMT').AsCurrency:=StrToFloat(edChqAmount.text)
                else
                  FieldByName('CQMAMT').AsCurrency:=CalChqAmount;

                FieldByName('CQMCNO').AsString:=edChequeF.Text; // cheque no
                FieldByName('CQMCSN').AsString:=edContract.Text ;
                if ans=mrIgnore then
                  FieldByName('CQMSTS').AsString:='H'
                else
                  FieldByName('CQMSTS').AsString:='A';

                FieldByName('CQMITM').AsInteger:=0;
                post;
             end;



            _cdsSeperateTmp.First;
           while not _cdsSeperateTmp.Eof do
           begin
                if _cdsSeperateTmp.FieldByName('RCT').AsString<>'O' then
                begin
                    if cdsDtl.Active then
                    begin
                      if _cdsSeperateTmp.FieldByName('NET').AsCurrency>0 then                   { not add 0.00 line}                                                                                                {support 1: N patial}
                        begin
                          inc(_NUMROW);

                          cdsDtl.Append;
                          cdsDtl.FieldByName('CQSSTS').AsString:='A';
                          cdsDtl.FieldByName('CQSSEQ').AsInteger:=_NUMROW;
                          cdsDtl.FieldByName('CQSDNO').AsString:=_DOCNO;
                          cdsDtl.FieldByName('CQSRCT').AsString:='N';
                          cdsDtl.FieldByName('CQSRS1').AsString:='013';
                          cdsDtl.FieldByName('CQSCSN').AsString:=_cdsSeperateTmp.FieldByName('CON').AsString; // contract no
                          cdsDtl.FieldByName('CQSAMT').AsCurrency:=_cdsSeperateTmp.FieldByName('AMT').AsCurrency;//StrToCurr(edChqAmount.Text);
                          cdsDtl.FieldByName('CQSVAT').AsCurrency:=_cdsSeperateTmp.FieldByName('VAT').AsCurrency;//StrToCurr(edChqAmount.Text);
                          cdsDtl.FieldByName('CQSWHT').AsCurrency:=_cdsSeperateTmp.FieldByName('WHT').AsCurrency;//StrToCurr(edChqAmount.Text);
                          cdsDtl.FieldByName('CQSNET').AsCurrency:=_cdsSeperateTmp.FieldByName('NET').AsCurrency;
                          cdsDtl.FieldByName('CQSWFA').AsString:=_cdsSeperateTmp.FieldByName('IWHT').AsString;      // Include WT (Y/N)
                          cdsDtl.FieldByName('CQSADF').AsCurrency:=Abs(_cdsSeperateTmp.FieldByName('DIFF').AsCurrency);      // Diff
                          cdsDtl.FieldByName('CQSIWT').AsString:='N'; // default uncheck


                          if _cdsSeperateTmp.FieldByName('DIFF').AsCurrency>0 then
                            cdsDtl.FieldByName('CQSCFA').AsCurrency:=1                 { cal flag 1/-1 }
                          else if _cdsSeperateTmp.FieldByName('DIFF').AsCurrency<0 then
                            cdsDtl.FieldByName('CQSCFA').AsCurrency:=-1;      // Diff  { cal flag 1/-1 }

                          if _cdsSeperateTmp.FieldByName('DIFF').AsCurrency<>0 then     {fix}
                          begin
                            //other payments
                            if not cdsDtl2.Active then
                            begin
                              cdsDtl2.ProviderName:='';
                              cdsDtl2.RemoteServer:=nil;
                              cdsDtl2.CreateDataSet;
                            end;


                            { short / over amount}
                            Inc(_NUMROW);
                            cdsDtl2.Append;
                            cdsDtl2.FieldByName('CQSSTS').AsString:='A';
                            cdsDtl2.FieldByName('CQSSEQ').AsInteger:=_NUMROW;
                            cdsDtl2.FieldByName('CQSDNO').AsString:=_DOCNO;
                            if (_cdsSeperateTmp.FieldByName('DIFF').AsCurrency)<0 then
                            begin
                              cdsDtl2.FieldByName('CQSRS1').AsString:=getCde(SocketConn,'RECEIVE','SHORTOVER','SRTAMT','CQMVA1');    // 121
                              cdsDtl2.FieldByName('CQSRS2').AsString:=getCde(SocketConn,'RECEIVE','SHORTOVER','SRTAMT','CQMVA2');    // SHORT AMOUNT
                            end else
                            begin
                              cdsDtl2.FieldByName('CQSRS1').AsString:=getCde(SocketConn,'RECEIVE','SHORTOVER','OVRAMT','CQMVA1');    // 122
                              cdsDtl2.FieldByName('CQSRS2').AsString:=getCde(SocketConn,'RECEIVE','SHORTOVER','OVRAMT','CQMVA2');    // OVER AMOUNT
                            end;

                            cdsDtl2.FieldByName('CQSRCT').AsString:='O';
                            cdsDtl2.FieldByName('CQSCSN').AsString:=_cdsSeperateTmp.FieldByName('CON').AsString; // contract no

                            cdsDtl2.FieldByName('CQSAMT').AsCurrency:=abs(_cdsSeperateTmp.FieldByName('DIFF').AsCurrency); //
                            cdsDtl2.FieldByName('CQSVAT').AsCurrency:=0;
                            cdsDtl2.FieldByName('CQSWHT').AsCurrency:=0;
                            cdsDtl2.FieldByName('CQSNET').AsCurrency:=abs(_cdsSeperateTmp.FieldByName('DIFF').AsCurrency);//StrToCurr(edChqAmount.Text);
                            cdsDtl2.post;

                          end;


                          if _cdsSeperateTmp.FieldByName('PFA').AsString='SO' then     {Y = full , N= not full}
                            cdsDtl.FieldByName('CQSPFA').AsString:='Y'
                          else
                            cdsDtl.FieldByName('CQSPFA').AsString:='N';


                          { generate cheque number , cheque date , model name}
                          //ChqNum:=strtoint(edChequeF.Text);
                          //inc(ChqNum,cdsDtl.RecordCount);
                          //chqDate:=IncMonth(dtChequeDate.Date,cdsDtl.RecordCount);
                          cdsDtlCQMCNO.AsString:=FormatCurr('0000000',ChqNum);//inttostr(k);
                          cdsDtlCQMDTE.AsDateTime:=chqDate;

                          cdsDtlCQSMDL.AsString:=getModelName(cdsDtlCQSCSN.AsString);
                          cdsDtlCQSCNM.AsString:=getContractName(SocketConn,cdsDtlCQSCSN.AsString);



                          cdsDtl.post;
                        end;
                    end;
                end else
                begin
                  //other payments
                  if not cdsDtl2.Active then
                  begin
                    cdsDtl2.ProviderName:='';
                    cdsDtl2.RemoteServer:=nil;
                    cdsDtl2.CreateDataSet;
                  end;


                  Inc(_NUMROW);
                  cdsDtl2.Append;
                  cdsDtl2.FieldByName('CQSSTS').AsString:='A';
                  cdsDtl2.FieldByName('CQSSEQ').AsInteger:=_NUMROW;
                  cdsDtl2.FieldByName('CQSDNO').AsString:=_DOCNO;
                  cdsDtl2.FieldByName('CQSRS1').AsString:=_cdsSeperateTmp.FieldByName('CDE').AsString;
                  cdsDtl2.FieldByName('CQSRS2').AsString:=_cdsSeperateTmp.FieldByName('DES').AsString;

                  cdsDtl2.FieldByName('CQSRCT').AsString:=_cdsSeperateTmp.FieldByName('RCT').AsString;
                  cdsDtl2.FieldByName('CQSCSN').AsString:=_cdsSeperateTmp.FieldByName('CON').AsString; // contract no

                  cdsDtl2.FieldByName('CQSAMT').AsCurrency:=_cdsSeperateTmp.FieldByName('AMT').AsCurrency;//StrToCurr(edChqAmount.Text);
                  cdsDtl2.FieldByName('CQSVAT').AsCurrency:=_cdsSeperateTmp.FieldByName('VAT').AsCurrency;//StrToCurr(edChqAmount.Text);
                  cdsDtl2.FieldByName('CQSWHT').AsCurrency:=_cdsSeperateTmp.FieldByName('WHT').AsCurrency;//StrToCurr(edChqAmount.Text);
                  cdsDtl2.FieldByName('CQSNET').AsCurrency:=_cdsSeperateTmp.FieldByName('AMT').AsCurrency+_cdsSeperateTmp.FieldByName('VAT').AsCurrency;//StrToCurr(edChqAmount.Text);
                  cdsDtl2.post;
                end;

            _cdsSeperateTmp.Next;
           end;

          end;
      end;{if}
    end else
    if ans=mrYes  then                                    { Seperate 1:N }
    begin
     //_cdsSeperateTmp.Close;
     //_cdsSeperateTmp.CreateDataSet;
     Screen.Cursor:=crHourGlass;
     if cdsDtl.Active then     
       cdsDtl.EmptyDataSet;
     //if _cdsSeperateTmp.Active then
      //_cdsSeperateTmp.EmptyDataSet;

     //ShowSeperateChq(edContract.Text);
     if _cdsSeperateTmp.Active then
     if _cdsSeperateTmp.RecordCount>0 then
     begin
       if CheckNumber(edChequeCount.Text) then
       for j := 1 to strtoint(edChequeCount.Text)  do
       begin
        _NUMROW:=0;
         _cdsSeperateTmp.First;
        ChqNum:=strtoint(edChequeF.Text);
        inc(ChqNum,j-1);//inc(ChqNum,cdsDtl.RecordCount);
        chqDate:=IncMonth(dtChequeDate.Date,j-1);//chqDate:=IncMonth(dtChequeDate.Date,cdsDtl.RecordCount);

            {insert header}
            with cdsHdr do
              begin
                //EmptyDataSet;
                Append;
                FieldByName('CQMBNK').AsString:=TString(cmbBank.Properties.Items.Objects[cmbBank.SelectedItem]).Str;
                FieldByName('CQMBBR').AsString:=TString(cmbBankBranch.Properties.Items.Objects[cmbBankBranch.SelectedItem]).Str;
                FieldByName('CQMPAT').AsString:=TString(cmbBnkAccount.Properties.Items.Objects[cmbBnkAccount.SelectedItem]).Str;
                
                if UpperCase(_Params)='KEYIN' then
                begin
                  //FieldByName('CQMCTY').AsString:=TString(cmbCType.Properties.Items.Objects[cmbCType.SelectedItem]).Str;
                  FieldByName('CQMACC').AsString:=edAccNo.Text;
                end;

                if UpperCase(_Params)='KEYIN' then
                  FieldByName('CQMDFG').AsString:='K'
                else
                  FieldByName('CQMDFG').AsString:='R';
                FieldByName('CQMRMK').AsString:=edComment.Text;
                FieldByName('CQMDTE').AsDateTime:=chqDate;
                FieldByName('CQMDUE').AsDateTime:=dtChequeToDate.Date;

                {#57}
                if IsPDC then
                  FieldByName('CQMAMT').AsCurrency:=StrToFloat(edChqAmount.text)
                else
                  FieldByName('CQMAMT').AsCurrency:=CalChqAmount;

                FieldByName('CQMCNO').AsString:=inttostr(ChqNum); // cheque no
                FieldByName('CQMCSN').AsString:=edContract.Text ;
                if ans=mrIgnore then
                  FieldByName('CQMSTS').AsString:='H'
                else
                  FieldByName('CQMSTS').AsString:='A';

                FieldByName('CQMITM').AsInteger:=0;
                post;
             end;



         while not _cdsSeperateTmp.Eof do
         begin
            inc(_NUMROW);

            if _cdsSeperateTmp.FieldByName('RCT').AsString<>'O' then
            begin
              if cdsDtl.Active then
              begin
                cdsDtl.Append;
                cdsDtl.FieldByName('CQSSTS').AsString:='A';
                cdsDtl.FieldByName('CQSSEQ').AsInteger:=_NUMROW;
                cdsDtl.FieldByName('CQSDNO').AsString:=_DOCNO;
                cdsDtl.FieldByName('CQSRCT').AsString:='N';
                cdsDtl.FieldByName('CQSRS1').AsString:='013';

                cdsDtl.FieldByName('CQSCSN').AsString:=_cdsSeperateTmp.FieldByName('CON').AsString; // contract no
                cdsDtl.FieldByName('CQSAMT').AsCurrency:=_cdsSeperateTmp.FieldByName('AMT').AsCurrency;//StrToCurr(edChqAmount.Text);
                cdsDtl.FieldByName('CQSVAT').AsCurrency:=_cdsSeperateTmp.FieldByName('VAT').AsCurrency;//StrToCurr(edChqAmount.Text);
                if _cdsSeperateTmp.FieldByName('IWHT').AsString='Y' then
                  cdsDtl.FieldByName('CQSWHT').AsCurrency:=_cdsSeperateTmp.FieldByName('WHT').AsCurrency//StrToCurr(edChqAmount.Text);
                else
                  cdsDtl.FieldByName('CQSWHT').AsCurrency:=0;
                //cdsDtl.FieldByName('CQSNET').AsCurrency:=_cdsSeperateTmp.FieldByName('AMT').AsCurrency;//+_cdsSeperateTmp.FieldByName('VAT').AsCurrency;//StrToCurr(edChqAmount.Text);


                if _cdsSeperateTmp.FieldByName('IWHT').AsString='Y' then
                  cdsDtl.FieldByName('CQSNET').AsCurrency:=(_cdsSeperateTmp.FieldByName('AMT').AsCurrency
                  +_cdsSeperateTmp.FieldByName('VAT').AsCurrency)-_cdsSeperateTmp.FieldByName('WHT').AsCurrency
                //_NetAmount:=(_Amount+_VAT)-_WT
                else
                 cdsDtl.FieldByName('CQSNET').AsCurrency:=_cdsSeperateTmp.FieldByName('AMT').AsCurrency
                 +_cdsSeperateTmp.FieldByName('VAT').AsCurrency;
                //_NetAmount:=_Amount+_VAT;

                cdsDtl.FieldByName('CQSIWT').AsString:='N';


                { generate cheque number , cheque date , model name}
                (*ChqNum:=strtoint(edChequeF.Text);
                inc(ChqNum,cdsDtl.RecordCount);
                chqDate:=IncMonth(dtChequeDate.Date,cdsDtl.RecordCount);
                *)
                cdsDtlCQMCNO.AsString:=FormatCurr('0000000',ChqNum);//inttostr(k);
                cdsDtlCQMDTE.AsDateTime:=chqDate;
                cdsDtlCQSMDL.AsString:=getModelName(cdsDtlCQSCSN.AsString);
                cdsDtlCQSCNM.AsString:=getContractName(SocketConn,cdsDtlCQSCSN.AsString);

                cdsDtl.post;
              end;
            end else
            begin
              //other payments
              if not cdsDtl2.Active then
              begin
                cdsDtl2.ProviderName:='';
                cdsDtl2.RemoteServer:=nil;
                cdsDtl2.CreateDataSet;
              end;


              cdsDtl2.Append;
              cdsDtl2.FieldByName('CQSSTS').AsString:='A';
              cdsDtl2.FieldByName('CQSSEQ').AsInteger:=_NUMROW;
              cdsDtl2.FieldByName('CQSDNO').AsString:=_DOCNO;
              cdsDtl2.FieldByName('CQSRS1').AsString:=_cdsSeperateTmp.FieldByName('CDE').AsString;
              cdsDtl2.FieldByName('CQSRS2').AsString:=_cdsSeperateTmp.FieldByName('DES').AsString;

              cdsDtl2.FieldByName('CQSRCT').AsString:=_cdsSeperateTmp.FieldByName('RCT').AsString;
              cdsDtl2.FieldByName('CQSCSN').AsString:=_cdsSeperateTmp.FieldByName('CON').AsString; // contract no

              cdsDtl2.FieldByName('CQSAMT').AsCurrency:=_cdsSeperateTmp.FieldByName('AMT').AsCurrency;//StrToCurr(edChqAmount.Text);
              cdsDtl2.FieldByName('CQSVAT').AsCurrency:=_cdsSeperateTmp.FieldByName('VAT').AsCurrency;//StrToCurr(edChqAmount.Text);
              cdsDtl2.FieldByName('CQSWHT').AsCurrency:=_cdsSeperateTmp.FieldByName('WHT').AsCurrency;//StrToCurr(edChqAmount.Text);
              cdsDtl2.FieldByName('CQSNET').AsCurrency:=_cdsSeperateTmp.FieldByName('AMT').AsCurrency+_cdsSeperateTmp.FieldByName('VAT').AsCurrency;//StrToCurr(edChqAmount.Text);
              cdsDtl2.post;
            end;



           _cdsSeperateTmp.Next;
         end;

          if j<strtoint(edChequeCount.Text) then  _DOCNO:=getRunning(SocketConn,'201','DOCNO','PAYMENT','');
       end;

       //ClearScreen;
       btnAddNew.Enabled:=false;
       Screen.Cursor:=crDefault;



     end;
    end

    //==========================================================================================
    // Hold
    //==========================================================================================
     else if ans=mrIgnore  then
     begin
      if (cdsDtl.State in [dsInsert,dsEdit]) then cdsDtl.Cancel;
       // if cdsDtl.RecordCount>0 then        
          with cdsDtl do
          begin
            inc(_NUMROW);
            Append;
            cdsDtl.FieldByName('CQSSTS').AsString:='H';
            cdsDtl.FieldByName('CQSSEQ').AsInteger:=_NUMROW;
            cdsDtl.FieldByName('CQSDNO').AsString:=_DOCNO;
            cdsDtl.FieldByName('CQSRCT').AsString:='N';
            cdsDtl.FieldByName('CQSRS1').AsString:='013';

            cdsDtl.FieldByName('CQSCSN').AsString:=edContract.Text; // contract no
            cdsDtl.FieldByName('CQSNET').AsCurrency:=StrToCurr(edChqAmount.Text);
            cdsDtl.FieldByName('CQSIWT').AsString:='N';            


            { generate cheque number , cheque date , model name}
            ChqNum:=strtoint(edChequeF.Text);
            inc(ChqNum,cdsDtl.RecordCount);
            chqDate:=IncMonth(dtChequeDate.Date,cdsDtl.RecordCount);
            cdsDtlCQMCNO.AsString:=FormatCurr('0000000',ChqNum);//inttostr(k);
            cdsDtlCQMDTE.AsDateTime:=chqDate;
            cdsDtlCQSMDL.AsString:=getModelName(cdsDtlCQSCSN.AsString);
            cdsDtlCQSCNM.AsString:=getContractName(SocketConn,cdsDtlCQSCSN.AsString);


            post;
            btnAddNew.Enabled:=false;
          end;


          {insert header}
          with cdsHdr do
            begin
              //EmptyDataSet;
              Append;
              FieldByName('CQMBNK').AsString:=TString(cmbBank.Properties.Items.Objects[cmbBank.SelectedItem]).Str;
              FieldByName('CQMBBR').AsString:=TString(cmbBankBranch.Properties.Items.Objects[cmbBankBranch.SelectedItem]).Str;
              FieldByName('CQMPAT').AsString:=TString(cmbBnkAccount.Properties.Items.Objects[cmbBnkAccount.SelectedItem]).Str;

              if UpperCase(_Params)='KEYIN' then
              begin
                //FieldByName('CQMCTY').AsString:=TString(cmbCType.Properties.Items.Objects[cmbCType.SelectedItem]).Str;
                FieldByName('CQMACC').AsString:=edAccNo.Text;
              end;

              if UpperCase(_Params)='KEYIN' then
                FieldByName('CQMDFG').AsString:='K'
              else
                FieldByName('CQMDFG').AsString:='R';
              FieldByName('CQMRMK').AsString:=edComment.Text;
              FieldByName('CQMDTE').AsDateTime:=dtChequeDate.Date;
              FieldByName('CQMDUE').AsDateTime:=dtChequeToDate.Date;

              {#57}
              if IsPDC then
                FieldByName('CQMAMT').AsCurrency:=StrToFloat(edChqAmount.text)
              else
                FieldByName('CQMAMT').AsCurrency:=CalChqAmount;

              FieldByName('CQMCNO').AsString:=edChequeF.Text; // cheque no
              FieldByName('CQMCSN').AsString:=edContract.Text ;
              if ans=mrIgnore then
                FieldByName('CQMSTS').AsString:='H'
              else
                FieldByName('CQMSTS').AsString:='A';

              FieldByName('CQMITM').AsInteger:=0;
              post;
           end;

     end;


  end
  else
  if not (cdsDtl.State in [dsInsert,dsEdit]) then
    with cdsDtl do
    begin
       cdsHdr.EmptyDataSet;
      // 1:1  and PDC
      if cdsCKINS.Active then
      if cdsCKINS.RecordCount>0 then
      begin
        if CheckNumber(edChequeCount.Text) then
        for j := 1 to strtoint(edChequeCount.Text)  do
            begin

              IsPDC:=(strtoint(edChequeCount.Text)>1);

              cdsCKINS.First;
              // check due date
              if not cdsCKINS.FieldByName('INSDUE').IsNull then
                begin
                  if cdsCKINS.FieldByName('INSDUE').AsDateTime<dtChequeDate.Date then
                  begin
                    //Application.MessageBox(pchar('Cheque Over Due!!! , Due is ['+FormatDateTime('dd/MM/yyyy',cdsCKINS.FieldByName('INSDUE').AsDateTime)+']'),pchar('Warning'),MB_OK or MB_ICONWARNING);              MessageDlgCustom('Cheque Over Due!!! , Due is ['+FormatDateTime('dd/MM/yyyy',cdsCKINS.FieldByName('INSDUE').AsDateTime)+']',mtWarning,[mbOK],['OK'],MsgFont,BtnFont);
                    IsActive:=false;
                    if not IsOverdueAlert then
                    if (MessageDlgCustom('Confirm Receive Cheque Over Due!!! , Due is ['+FormatDateTime('dd/MM/yyyy',cdsCKINS.FieldByName('INSDUE').AsDateTime)+']',mtConfirmation,[mbYes,mbNo],['Yes','No'],MsgFont,BtnFont)<>mrYes )
                    then
                    begin
                      IsOverdueAlert:=true;
                      IsActive:=true;
                      exit;
                    end;

                    IsActive:=true;
                    dtChequeDate.SetFocus;
                  end;

                  inc(_NUMROW);
                  Append;
                  cdsDtl.FieldByName('CQSSTS').AsString:='A';
                  cdsDtl.FieldByName('CQSSEQ').AsInteger:=_NUMROW;
                  cdsDtl.FieldByName('CQSDNO').AsString:=_DOCNO;
                  cdsDtl.FieldByName('CQSRCT').AsString:='N';
                  cdsDtl.FieldByName('CQSRS1').AsString:='013';

                  cdsDtl.FieldByName('CQSCSN').AsString:=edContract.Text; // contract no
                  cdsDtl.FieldByName('CQSAMT').AsCurrency:=cdsCKINS.FieldByName('INSIAM').AsCurrency;//StrToCurr(edChqAmount.Text);
                  cdsDtl.FieldByName('CQSVAT').AsCurrency:=cdsCKINS.FieldByName('INSVAM').AsCurrency;
                  cdsDtl.FieldByName('CQSWHT').AsCurrency:=cdsCKINS.FieldByName('WHT').AsCurrency;
                  cdsDtl.FieldByName('CQSIWT').AsString:='N';

                  { generate cheque number , cheque date , model name}
                  ChqNum:=strtoint(edChequeF.Text);
                  inc(ChqNum,cdsDtl.RecordCount);
                  chqDate:=IncMonth(dtChequeDate.Date,cdsDtl.RecordCount);
                  cdsDtlCQMCNO.AsString:=FormatCurr('0000000',ChqNum);//inttostr(k);
                  cdsDtlCQMDTE.AsDateTime:=chqDate;
                  cdsDtlCQSMDL.AsString:=getModelName(cdsDtlCQSCSN.AsString);
                  cdsDtlCQSCNM.AsString:=getContractName(SocketConn,cdsDtlCQSCSN.AsString);

                  if cdsCKINS.FieldByName('WHT').AsCurrency>0 then
                    cdsDtl.FieldByName('CQSWFA').AsString:='Y'
                  else
                    cdsDtl.FieldByName('CQSWFA').AsString:='N';
                  cdsDtl.FieldByName('CQSNET').AsCurrency:=cdsCKINS.FieldByName('NETAMT').AsCurrency;
                  post;


                  //ClearScreen;
                  edChequeCount.SetFocus;
                  btnAddNew.Enabled:=false;

                //_DOCNO:=getRunning(SocketConn,'RC','DOCNO','PAYMENT','');



                // header
                with cdsHdr do
                  begin
                    Append;
                    FieldByName('CQMBNK').AsString:=TString(cmbBank.Properties.Items.Objects[cmbBank.SelectedItem]).Str;
                    FieldByName('CQMBBR').AsString:=TString(cmbBankBranch.Properties.Items.Objects[cmbBankBranch.SelectedItem]).Str;
                    FieldByName('CQMPAT').AsString:=TString(cmbBnkAccount.Properties.Items.Objects[cmbBnkAccount.SelectedItem]).Str;

                 //   FieldByName('CQMCTY').AsString:=TString(cmbCType.Properties.Items.Objects[cmbCType.SelectedItem]).Str;
                //    FieldByName('CQMACC').AsString:=TString(cmbBnkAccount.Properties.Items.Objects[cmbBnkAccount.SelectedItem]).Str;

                    if UpperCase(_Params)='KEYIN' then
                      FieldByName('CQMDFG').AsString:='K'
                    else
                       FieldByName('CQMDFG').AsString:='R';   { change from 'I' to 'R' at 13/06/2012}

                    if UpperCase(_Params)='KEYIN' then
                    FieldByName('CQMACC').AsString:=edAccNo.Text;

                    FieldByName('CQMRMK').AsString:=edComment.Text;
                    FieldByName('CQMDTE').AsDateTime:=chqDate;//dtChequeDate.Date;
                    FieldByName('CQMDUE').AsDateTime:=chqDate;//dtChequeToDate.Date;

                    {#57}
                    if IsPDC then
                      FieldByName('CQMAMT').AsCurrency:=StrToFloat(edChqAmount.text)
                    else
                      FieldByName('CQMAMT').AsCurrency:=CalChqAmount;

                    FieldByName('CQMCNO').AsString:=FormatCurr('0000000',ChqNum);//edChequeF.Text; // cheque no
                    FieldByName('CQMCSN').AsString:=edContract.Text ;


                    if ans=mrIgnore then
                      FieldByName('CQMSTS').AsString:='H'
                    else
                      FieldByName('CQMSTS').AsString:='A';
                    FieldByName('CQMITM').AsInteger:=0;

                    post;
                 end;
            end;

            if j<strtoint(edChequeCount.Text) then  _DOCNO:=getRunning(SocketConn,'201','DOCNO','PAYMENT','');


          end;
          btnAddNew.Enabled:=false;

      end else
      begin
        // not found installment contract
        //Application.MessageBox(pchar('Contract No. Not found!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
        IsActive:=false;
        MessageDlgCustom('Contract No. Not found!!!',mtWarning,[mbOK],['OK'],MsgFont,BtnFont);
        IsActive:=true;
        edContract.SetFocus;
        exit;
      end;
    end;

    

     {
      if ans in [mrOk,mrIgnore,mrYes] then //
      with cdsHdr do
        begin
          EmptyDataSet;
          Append;
          FieldByName('CQMBNK').AsString:=TString(cmbBank.Properties.Items.Objects[cmbBank.SelectedItem]).Str;
          FieldByName('CQMBBR').AsString:=TString(cmbBankBranch.Properties.Items.Objects[cmbBankBranch.SelectedItem]).Str;
          if UpperCase(_Params)='KEYIN' then
          begin
            FieldByName('CQMCTY').AsString:=TString(cmbCType.Properties.Items.Objects[cmbCType.SelectedItem]).Str;
            FieldByName('CQMACC').AsString:=edAccNo.Text;
          end;

          if UpperCase(_Params)='KEYIN' then
            FieldByName('CQMDFG').AsString:='K'
          else
            FieldByName('CQMDFG').AsString:='R';
          FieldByName('CQMRMK').AsString:=edComment.Text;
          FieldByName('CQMDTE').AsDateTime:=dtChequeDate.Date;
          FieldByName('CQMDUE').AsDateTime:=dtChequeToDate.Date;

          FieldByName('CQMAMT').AsCurrency:=CalChqAmount;
          FieldByName('CQMCNO').AsString:=edChequeF.Text; // cheque no
          FieldByName('CQMCSN').AsString:=edContract.Text ;
          if ans=mrIgnore then
            FieldByName('CQMSTS').AsString:='H'
          else
            FieldByName('CQMSTS').AsString:='A';

          FieldByName('CQMITM').AsInteger:=0;
          post;
       end;

       }





    {
    if cdsDtl.RecordCount>0 then
    begin
      MessageDlg('Confirm Save and Print Temp Receive',mtConfirmation,[mbYes],0);
      btnOK.Click;
    end;
    }    


    //edChequeCount.SetFocus;
end;

procedure TfrmMainProgram.btnCancelClick(Sender: TObject);
begin
  inherited;

  if cdsHdr.Active then
    cdsHdr.EmptyDataSet;

  if cdsDtl.Active then
    cdsDtl.EmptyDataSet;
  if cdsDtl2.Active then
    cdsDtl2.EmptyDataSet;

  ClearScreen;
  SetControls(TabSheet1,true);

  dtChequeDate.Date:=getServerDate(SocketConn);
  dtChequeToDate.Date:=getServerDate(SocketConn);

  edChequeCount.SetFocus;
  btnAddNew.Enabled:=true;


end;

procedure TfrmMainProgram.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
//  Self.Close;
  FreeAndNil(frmMainProgram);
end;

procedure TfrmMainProgram.btnConSearchClick(Sender: TObject);
begin
  inherited;
  IsActive := False;
  frmConSearch:=TfrmConSearch.Create(Application);
  frmConSearch.ShowModal;
  edContract.Text:=frmConSearch.Contact;
  lbDealerName.Caption:=getContractName(SocketConn,frmConSearch.Contact);
  IsActive := True;
end;

procedure TfrmMainProgram.btnGenerateChqClick(Sender: TObject);
type
  TExeCutePlugIn = procedure (cds:TClientDataSet;_MainApp:TApplication);stdcall;
var
  ExeCutePlugin:TExeCutePlugIn;
  i:integer;
begin
  inherited;
  if FLibHandle=0 then
    FLibHandle := LoadLibrary('CQPU006.dll');
  ExeCutePlugin := GetProcAddress(FLibHandle, 'ExeCuteGenChq');

  generateChq(edContract.Text);      //8100250

  Self.IsActive := false;
  ExeCutePlugin(cdsGenChqTmp,Application);

  if cdsHdr.State in [dsInsert,dsEdit] then cdsHdr.Cancel;


  cdsGenChqTmp.First;
  while (not cdsGenChqTmp.Eof) do
  begin
    if cdsGenChqTmp.FieldByName('CQMCHK').AsInteger=1 then
    begin
      cdsHdr.Append();
        for i := 0 to (cdsGenChqTmp.FieldCount - 1) do
          if (cdsGenChqTmp.Fields[i].FieldName<>'CQMIAM') and (cdsGenChqTmp.Fields[i].FieldName<>'CQMCHK')  then
            cdsHdr.FieldByName(cdsGenChqTmp.Fields[i].FieldName).Value :=
              cdsGenChqTmp.FieldByName(cdsGenChqTmp.Fields[i].FieldName).Value;
    end;
    try
    cdsHdr.Post();
    except
    end;
    cdsGenChqTmp.Next();
  end;


  Self.IsActive := true;

end;


procedure TfrmMainProgram.btnInfoClick(Sender: TObject);
var fInfo:TfrmInfo;
begin
  inherited;
  //
  if trim(edContract.Text)<>'' then
  begin
    if trim(getContractName(SocketConn,edContract.Text))<>'' then
    begin
      fInfo:=TfrmInfo.Create(Application);
      fInfo.contract:=edContract.Text;
      IsActive:=false;
      fInfo.ShowModal;
      IsActive:=true;
    end else
    begin
      IsActive:=false;
      btnInfo.Enabled:=false;
      Application.MessageBox(pchar('Contract Not found!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      IsActive:=true;
    end;
    
  end;
end;

procedure TfrmMainProgram.btnMCancelClick(Sender: TObject);
begin
  inherited;
  cdsMainta.Edit;
  cdsMainta.FieldByName('CQMACT').Value := 'I';
  cdsMainta.ApplyUpdates(-1);
end;

procedure TfrmMainProgram.btnMEditClick(Sender: TObject);
begin
  inherited;
  ShowSeperateChq(cdsMainta.FieldByName('CQMCSN').AsString);
  Screen.Cursor:=crDefault;
end;

procedure TfrmMainProgram.btnMOKClick(Sender: TObject);
begin
  inherited;
  //Status.ItemIndex := -1;
  GetMainta;
end;

procedure TfrmMainProgram.btnMReCancelClick(Sender: TObject);
begin
  inherited;
  cdsMainta.Edit;
  cdsMainta.FieldByName('CQMACT').Value := 'A';
  cdsMainta.ApplyUpdates(-1);
end;

procedure TfrmMainProgram.btnMRePrintClick(Sender: TObject);
var
obj,rpVariables:array of TReportParam;
begin
  inherited;
  if cdsMainta.RecordCount>0 then
    if cdsMainta.FieldByName('CQMSTS').AsString='A' then
    begin
        SetLength(obj,1);
        obj[0]:=TReportParam.Create;
        obj[0].AddParam('DNO',cdsMainta.FieldByName('CQMTNO').AsString);
        //obj[0].AddParam('ACT',cdsMainta.FieldByName('CQMACT').AsString);
        obj[0].AddParam('DTYP','COPY');

        //obj[1]:=TReportParam.Create;
        //obj[1].AddParam('DNO',cdsMainta.FieldByName('CQMTNO').AsString);
        ShowReport(SocketConn,'RCV002',obj);
    end else
    begin
      Application.MessageBox(pchar('Can not reprint temporary!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      exit;
    end;
end;

procedure TfrmMainProgram.addDate(dt: TDateTime; day: integer);
var    cDD,cMM,cYYYY:word;
begin
  DecodeDate(dt,cYYYY,cMM,cDD);
  addDate(dtChequeDate.Date,5);
end;

procedure TfrmMainProgram.btnAddClick(Sender: TObject);
type
  TMyFormClass = function: TFormClass; stdcall;
  TPluginInitParams= procedure (params:TPluginParams);stdcall;

  TExeCutePlugIn = procedure (cds:TClientDataSet;_MainApp:TApplication);stdcall;

var
  lMyFormClass: TMyFormClass;
  PluginInitParams:TPluginInitParams;
  _params:TPluginParams;
  ExeCutePlugin:TExeCutePlugIn;

var
   AComponent: TComponent;
   I : integer;
   _sock:TSockCon;
   _cds:TClientDataSet;

begin
  inherited;
  if FLibHandle=0 then
    FLibHandle := LoadLibrary('CQPU006.dll');     // seperate cheque module
  ExeCutePlugin := GetProcAddress(FLibHandle, 'ExeCute');
  Self.IsActive := false;
  ExeCutePlugin(cdsHdr,Application);
  Self.IsActive := true;
end;




procedure TfrmMainProgram.btnNewClick(Sender: TObject);
begin
  inherited;
  _IsNewDocument:=true;
  if cdsHdr.Active then
    cdsHdr.EmptyDataSet;

  if cdsDtl.Active then
    cdsDtl.EmptyDataSet;
  if cdsDtl2.Active then
    cdsDtl2.EmptyDataSet;

  ClearScreen;


  SetControls(TabSheet1,true);

  dtChequeDate.Date:=getServerDate(SocketConn);
  dtChequeToDate.Date:=getServerDate(SocketConn);


  edChequeCount.SetFocus;
  btnAddNew.Enabled:=true;

end;

procedure TfrmMainProgram.btnOKClick(Sender: TObject);
var docno:string;
    icount:integer;

    obj,rpVariables:array of TReportParam;
    i,k:integer;
begin
  try

      if not btnOK.Enabled then exit;
      

      btnOK.Enabled:=false;
     
       // inherited;
       IsActive:=false;
       icount:=0;

       if cdsDtl.Active then
       begin
        if cdsDtl.RecordCount<=0 then
        begin
           if cdsDtl2.Active then
            if cdsDtl2.RecordCount<=0 then
              exit;
        end;
       end else
       exit;

       if not _IsNewDocument then exit;


       if MessageDlg('Confirm Save',mtInformation,mbOKCancel,0)=mrok then
        begin
           IsActive:=true;
           TempNO:=getRunning(SocketConn,'201','RECEIVE','TEMPNO','CQMVA1');  {fix 18-06-2012 remove  frefix 'T'}
            cdsDtl.First;
            cdsHdr.First;

            if trim(TempNO)='' then
            begin
                Application.MessageBox(pchar('Invalid TEMPNO!!!'),pchar('Warning'),mb_ok or MB_ICONWARNING);
                exit;
            end;


            while not cdsHdr.Eof do
            begin
              cdsHdr.Edit;
              cdsHdr.FieldByName('CQMTNO').AsString:=TempNO;
              cdsHdr.Post;
              cdsHdr.Next;
            end;

            cdsHdr.First;
            while not cdsHdr.Eof do
            begin
//              if not IsChqNo(cdsDtl.FieldByName('CQMCNO').AsInteger) then
              if IsChqNo(edChequeCount.Text) then
                if strtoint(edChequeCount.Text)>1 then
                  if not IsChqNo(cdsDtl.FieldByName('CQMCNO').AsString) then
                  begin
                    IsActive:=false;
                    Application.MessageBox(pchar('Invalid Cheque No'),pchar('Warning'),mb_ok or MB_ICONWARNING);
                    IsActive:=true;
                    edChequeF.SetFocus;
                    exit;
                  end else
                  if not IsChqNo(edChequeF.Text) then
                  begin
                    IsActive:=false;
                    Application.MessageBox(pchar('Invalid Cheque No'),pchar('Warning'),mb_ok or MB_ICONWARNING);
                    IsActive:=true;
                    edChequeF.SetFocus;
                    exit;
                  end ;

              cdsHdr.Next;
            end;

            cdsHdr.ApplyUpdates(0);

            _cdsDtl.Close;
            _cdsDtl.Open;

            copyCdsA(cdsDtl,_cdsDtl);
            if cdsDtl2.Active then
              copyCdsA(cdsDtl2,_cdsDtl);

            _cdsDtl.ApplyUpdates(0);

             if UpperCase(_Params)='KEYIN' then
             begin
                execSQLA(SocketConn,'declare @DT datetime set @DT={FN NOW()}  exec SP_UPDATEMASTERCHEQUE '''+cdsHdr.FieldByName('CQMDNO').AsString+''','''+cdsHdr.FieldByName('CQMETU').AsString+''','''+cdsHdr.FieldByName('CQMETW').AsString+''','''+cdsHdr.FieldByName('CQMBRN').AsString+''','''+cdsHdr.FieldByName('CQMPDM').AsString+''','''+cdsHdr.FieldByName('CQMPDT').AsString+''',''A'','''',@DT,'''','''+trim(cdsHdr.FieldByName('CQMDNO').AsString)+''',@DT');
             end;

            cdsHdr.Close;
            cdsHdr.open;

            SetLength(obj,2);
            obj[0]:=TReportParam.Create;
            obj[0].AddParam('DNO',TempNO);
            obj[0].AddParam('ACT','A');
            obj[0].AddParam('DTYP','MASTER');


            obj[1]:=TReportParam.Create;
            obj[1].AddParam('DNO',TempNO);

            SetLength(rpVariables,2);
            rpVariables[0]:=TReportParam.Create;
            rpVariables[0].AddParam('param1','abcdefg');

             //if MessageDlg('Show Report?',mtConfirmation,[mbOK,mbCancel],0)=mrOk then
             //begin
               if UpperCase(_Params)<>'KEYIN' then
                  ShowReport(SocketConn,'RCV002',obj);
             //end;

            _IsNewDocument:=false;
            SetControls(TabSheet1,false);
       end;
       IsActive:=true;
      btnOK.Enabled:=true;
  except
    on ee:Exception do
    begin
      Application.MessageBox(pchar(ee.Message),pchar('Warning #00'),MB_OK or MB_ICONWARNING);
      cdsDtl.Filtered:=false;
    end;
  end;

end;

procedure TfrmMainProgram.btnSaveClick(Sender: TObject);
begin
  inherited;
    btnOK.Click;
end;


procedure TfrmMainProgram.btnSearchClick(Sender: TObject);
begin
  inherited;
  btnConSearchClick(Sender);
end;

procedure TfrmMainProgram.Button1Click(Sender: TObject);
var ObiectTmp: TObject;
    str:TString;
     s:string;
begin
  inherited;
 // RemDataSet1.Command:='select * from UserMenu';
 // ShowMessage(inttostr(RemDataSet1.RecordCount));

 //ShowMessage(getRunning(SocketConn,'RC','DOCNO','PAYMENT',''));
  // ObiectTmp:= cmbBank.Properties.Items.Objects[0];

//   str := String(cmbBank.Properties.Items.Objects[cmbBank.SelectedItem]);
  // str := cmbBank.Properties.Items.ValueFromIndex[cmbBank.SelectedItem];
   // str := TStrings(cmbBank.Properties.Items.Objects[cmbBank.SelectedItem]).Text;
   // str:= TString(cmbBank.Properties.Items.Objects[cmbBank.SelectedItem]);

  // ShowMessage(str.Str);
//   ShowMessage(String(cmbBank.Properties.Items.Objects[cmbBank.Properties.Items.IndexOf(cmbBank.Text)]));



end;





procedure TfrmMainProgram.Button2Click(Sender: TObject);
begin
  inherited;
      _cdsDtl.Close;
      _cdsDtl.Open;


      copyCdsA(cdsDtl,_cdsDtl);
end;

function TfrmMainProgram.CalChqAmount:real;
var rep:Real;
begin
  rep:=0;
  if ((trim(edChequeCount.Text)<>'') and (trim(edChqAmount.Text)<>'')) then
  begin
    edChequeTotalAmount.Caption:=FormatCurr('#,###,##0.00',strtoint(edChequeCount.Text)*StrToFloat(edChqAmount.Text));
     rep:=strtoint(edChequeCount.Text)*StrToFloat(edChqAmount.Text);
  end;


  result:=rep;
end;

procedure TfrmMainProgram.cdsDtl2CalcFields(DataSet: TDataSet);
begin
  inherited;
  //DataSet.FieldByName('CQSMDL').AsString:=getModelName(cdsDtlCQSCSN.AsString);
  //DataSet.FieldByName('CQSCNM').AsString:=getContractName(cdsDtlCQSCSN.AsString);
end;

procedure TfrmMainProgram.cdsDtlAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if DataSet.RecordCount<=0 then
  begin
    _NUMROW:=0;
    if cdsHdr.Active then
      cdsHdr.EmptyDataSet;

    if cdsDtl.Active then
      cdsDtl.EmptyDataSet;

    btnAddNew.Enabled:=true;
  end;
end;

procedure TfrmMainProgram.cdsDtlAfterPost(DataSet: TDataSet);
begin
//inherited;
   if  cdsHdr.Locate('CQMDNO',cdsDtlCQSDNO.AsString,[]) then
    begin
      if not (cdsHdr.State in [dsInsert,dsEdit]) then cdsHdr.Edit;
      TFloatField(cdsHdr.FieldByName('CQMDTE')).DisplayFormat := 'dd/MM/yyyy';
      TFloatField(cdsDtl.FieldByName('CQMDTE')).DisplayFormat := 'dd/MM/yyyy';
      cdsHdr.FieldByName('CQMDTE').AsDateTime := cdsDtl.FieldByName('CQMDTE').AsDateTime;
      cdsHdr.FieldByName('CQMCNO').AsString   := cdsDtl.FieldByName('CQMCNO').AsString;
      cdsHdr.Post;
    end;
end;

procedure TfrmMainProgram.cdsDtlCalcFields(DataSet: TDataSet);
var chqDate:TDateTime;
    k:integer;
    MyClass: TComponent;
begin
  inherited;

  try    //be fix
(*  

    k:=strtoint(edChequeF.Text);
 //   if k<(strtoint(edChequeCount.Text)+strtoint(edChequeF.Text)) then
      inc(k,cdsDtlCQSSEQ.AsInteger-1);

//    if k<(strtoint(edChequeCount.Text)+strtoint(edChequeF.Text)) then
      chqDate:=IncMonth(dtChequeDate.Date,cdsDtlCQSSEQ.AsInteger-1);

    cdsDtlCQMCNO.AsString:=FormatCurr('0000000',k);//inttostr(k);
    cdsDtlCQMDTE.AsDateTime:=chqDate;

    cdsDtlCQSMDL.AsString:=getModelName(cdsDtlCQSCSN.AsString);
    cdsDtlCQSCNM.AsString:=getContractName(cdsDtlCQSCSN.AsString);

    *)
  except

  end;

end;

procedure TfrmMainProgram.cdsDtlCQMCNOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=text;
end;

procedure TfrmMainProgram.cdsDtlReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  Application.MessageBox(pchar(e.Message),pchar('Error #1'),MB_OK or MB_ICONERROR);

end;

procedure TfrmMainProgram.cdsHdrBeforePost(DataSet: TDataSet);
begin
  inherited;
  with DataSet do begin
    if (DataSet.State in [dsInsert]) then
    begin
      FieldByName('CQMACT').AsString:='A';

      FieldByName('CQMBRN').AsString:=Branch;
      FieldByName('CQMPDM').AsString:=PDM;
      FieldByName('CQMPDT').AsString:=PDT;
      FieldByName('CQMDNO').AsString:=_DOCNO;


      FieldByName('CQMETU').AsString:=UserID;
      TFloatField(FieldByName('CQMETD')).DisplayFormat := 'dd/MM/yyyy';
      FieldByName('CQMETD').AsDateTime:=getServerDateTime(SocketConn);
      FieldByName('CQMETW').AsString:=WorkStation;
    end else  if (DataSet.State in [dsEdit]) then
    begin
      FieldByName('CQMMTU').AsString:=UserID;
      FieldByName('CQMMTW').AsString:=WorkStation;
      TFloatField(FieldByName('CQMMTD')).DisplayFormat := 'dd/MM/yyyy';
      FieldByName('CQMMTD').AsDateTime:=getServerDateTime(SocketConn);
    end;
  end;
end;

procedure TfrmMainProgram.cdsHdrReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  Application.MessageBox(pchar(e.Message),pchar('Error #3'),MB_OK or MB_ICONERROR);
end;





procedure TfrmMainProgram.cdsMaintaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  btnMEdit.Enabled:=(DataSet.FieldByName('CQMSTS').AsString='H');
  btnMCancel.Enabled:=(DataSet.FieldByName('CQMACT').AsString='A');
  btnMReCancel.Enabled:=(DataSet.FieldByName('CQMACT').AsString='I');

  btnMReCancel.Enabled:=(DataSet.FieldByName('CQMACT').AsString='I');
  btnMReCancel.Enabled:=(DataSet.FieldByName('CQMACT').AsString='I');

  btnMRePrint.Enabled:=(DataSet.FieldByName('CQMACT').AsString<>'I');
  cxButton3.Enabled:=(DataSet.FieldByName('CQMACT').AsString<>'I');
end;

procedure TfrmMainProgram.ClearScreen;
begin
  edChequeF.Text:='';
  edChequeT.Text:='';
  edChequeCount.text:='1';
  edChqAmount.Text:='0';
  edContract.text:='';
  edComment.text:='';
  lbDealerName.Caption:='-';
  _NUMROW:=0;


  edChequeTotalAmount.Caption:='0';
end;

procedure TfrmMainProgram.cmbBankBranchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key in [VK_RETURN,VK_TAB] then
   if cmbBankBranch.SelectedItem<0 then
   begin
    IsActive:=false;
    Application.MessageBox(pchar('Please select bankbranch!!'),pchar('Warning'),mb_ok or MB_ICONWARNING);
    IsActive:=true;
    cmbBankBranch.SetFocus;
    exit;
   end else  
    dtChequeDate.SetFocus;

end;

procedure TfrmMainProgram.cmbBankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key in [VK_RETURN,VK_TAB] then
  begin
    if cmbBank.SelectedItem>=0 then
    begin
      cmbBankPropertiesChange(Sender);
      cmbBankBranch.SetFocus;
    end else
    begin
     IsActive:=false;
     Application.MessageBox(pchar('Please Select Bank!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
     IsActive:=true;
     cmbBank.SetFocus;
    end;
  end;
end;

procedure TfrmMainProgram.cmbBankPropertiesChange(Sender: TObject);
var str:TString;
    strSql:string;
begin
  inherited;

  if cmbBank.SelectedItem>=0 then
  begin
  str:= TString(cmbBank.Properties.Items.Objects[cmbBank.SelectedItem]);
  if str<>nil then
    if (trim(str.Str)<>'') then
    begin
    cmbBankBranch.Properties.Items.Clear;
    rcBnkBrn:=TClientDataSet.Create(self);
    rcBnkBrn.RemoteServer:=SocketConn;
    if trim(str.Str)<>'' then
      begin
        strSQL:=StringReplace(_sql_001,':A',''''+str.Str+'''',[rfReplaceAll]);
        loadComboList(cmbBankBranch,connBroker,'CQMBRC','CQMBRH',strSQL,rcBnkBrn,'rcBnkBrn');
      end;
    end;
  end;

end;

procedure TfrmMainProgram.cmbBnkExit(Sender: TObject);
var strSQL:String;
begin
  inherited;

end;

procedure TfrmMainProgram.cxButton1Click(Sender: TObject);
begin
  inherited;
  cdsHdr.ApplyUpdates(0);
  ShowMessage('Save OK');
end;

procedure TfrmMainProgram.cxButton3Click(Sender: TObject);
var
obj,rpVariables:array of TReportParam;
begin
  inherited;
  if cdsMainta.RecordCount>0 then
  if cdsMainta.FieldByName('CQMSTS').AsString='A' then
    begin
        SetLength(obj,1);
        obj[0]:=TReportParam.Create;
        obj[0].AddParam('DNO',cdsMainta.FieldByName('CQMTNO').AsString);
        //obj[0].AddParam('ACT',cdsMainta.FieldByName('CQMACT').AsString);
        obj[0].AddParam('DTYP','MASTER');

        //obj[1]:=TReportParam.Create;
        //obj[1].AddParam('DNO',cdsMainta.FieldByName('CQMTNO').AsString);
        ShowReport(SocketConn,'RCV002',obj);
    end else
    begin
      Application.MessageBox(pchar('Can not reprint temporary!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
      exit;
    end;
end;

procedure TfrmMainProgram.cxDBTextEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    cmbBank.SetFocus;
end;

procedure TfrmMainProgram.cxGrid1DBTableView1CQSWHTCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
   ACanvas.Font.Color:=clred;
end;

procedure TfrmMainProgram.cxGrid1DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMainProgram.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if not AViewInfo.Selected then
    begin
      if SameText(AViewInfo.GridRecord.DisplayTexts[0],'I') then
        ACanvas.Brush.Color := clGradientInactiveCaption
      else if SameText(AViewInfo.GridRecord.DisplayTexts[1],'H') then
        ACanvas.Brush.Color := clSkyBlue;
    end
  else
    begin
    ACanvas.Brush.Color := clMoneyGreen;
    ACanvas.Font.Color  := clBlue;
    end;                
end;

procedure TfrmMainProgram.cxGrid2DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMainProgram.cxGrid3DBTableView1CQSWHTCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Font.Color:=clred;
end;

procedure TfrmMainProgram.cxGrid3DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmMainProgram.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
  inherited;
  with cdsMainta do
    if Active then  
    begin
      if Status.ItemIndex <> 0 then
        begin
          Filter := Status.Properties.Items[Status.ItemIndex].Value;
          Filtered := True;
          //btnMRePrint.Enabled:=(cdsMainta.RecordCount>0);
        end
      else
        Filtered := False;
    end;
end;

procedure TfrmMainProgram.dtChequeDateKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key in [VK_RETURN,VK_TAB] then
  begin
    if CheckNumber(edChequeCount.text) then
    begin
      if strtoint(edChequeCount.text)>1 then
          dtChequeToDate.Date:=IncMonth(dtChequeDate.Date,strtoint(edChequeCount.text)-1)
      else
          dtChequeToDate.Date:=dtChequeDate.Date;

    end;



    dtChequeToDate.SetFocus;
  end;
end;

procedure TfrmMainProgram.dtChequeToDateKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key in [VK_RETURN,VK_TAB] then
    edContract.SetFocus;
end;

procedure TfrmMainProgram.edChequeCountExit(Sender: TObject);
begin
  inherited;
    if CheckNumber(edChequeCount.Text) then
      begin
        if strtoint(edChequeCount.Text)>0 then
        begin
          //edChqAmount.SetFocus;
          CalChqAmount;
        end else
        begin
          //edChequeCount.SetFocus;
          //edChequeCount.SelectAll;
        end;
      end else
      begin
        //edChequeCount.SetFocus;
        //edChequeCount.SelectAll;
      end;
end;

procedure TfrmMainProgram.edChequeCountKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key in [VK_RETURN,VK_TAB] then
    if CheckNumber(edChequeCount.Text) then
      begin
        if strtoint(edChequeCount.Text)>0 then
        begin
          edChqAmount.SetFocus;
          CalChqAmount;
        end else
        begin
          edChequeCount.SetFocus;
          edChequeCount.SelectAll;
        end;
      end else
      begin
        edChequeCount.SetFocus;
        edChequeCount.SelectAll;
      end;
end;

procedure TfrmMainProgram.edChequeCountKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if Key in ['a'..'z'] + ['A'..'Z'] then Key := #0;
end;

procedure TfrmMainProgram.edChequeFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if CheckNumber(edChequeF.Text) then
  if Key in [VK_RETURN,VK_TAB] then
    if IsChqNo(edChequeF.Text) then
    begin
      //edChequeT.Text:=inttostr( strtoint(edChequeF.Text)+(strtoint(edChequeCount.text)-1));
      edChequeF.text:=FormatCurr('000000#',strtoint(edChequeF.Text));
      edChequeT.Text:=FormatCurr('000000#', strtoint(edChequeF.Text)+(strtoint(edChequeCount.text)-1));
      edChequeT.SetFocus;
    end else
    begin
     IsActive:=false;
     Application.MessageBox(pchar('Invalid Cheque No.'),pchar('Warning'),MB_OK or MB_ICONWARNING);
     IsActive:=true;
     edChequeF.SetFocus;
    end;
end;

procedure TfrmMainProgram.edChequeFKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if Key in ['a'..'z'] + ['A'..'Z'] then Key := #0;
end;

procedure TfrmMainProgram.edChequeTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key in [VK_RETURN,VK_TAB] then
    cmbBank.SetFocus;

end;

procedure TfrmMainProgram.edChequeTKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if Key in ['a'..'z'] + ['A'..'Z'] then Key := #0;
end;

procedure TfrmMainProgram.edChqAmountExit(Sender: TObject);
begin
  inherited;
  begin
    if trim(edChqAmount.text)<>'' then
      if StrToFloat(edChqAmount.Text)>0 then
        begin
         // edChequeF.SetFocus;
          CalChqAmount;
        end;
  end;
end;

procedure TfrmMainProgram.edChqAmountKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key in [VK_RETURN,VK_TAB] then
  begin
    if trim(edChqAmount.text)<>'' then
      if StrToFloat(edChqAmount.Text)>0 then
        begin
          edChequeF.SetFocus;
          CalChqAmount;
        end;
  end;
end;

procedure TfrmMainProgram.edChqAmountKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key in ['a'..'z'] + ['A'..'Z'] then Key := #0
end;

procedure TfrmMainProgram.edCommentKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if IsActive then
    if Key = VK_RETURN then
     btnAddNewClick(sender);
end;

procedure TfrmMainProgram.edContractKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var _contractName:string;
begin
  inherited;
  if Key in [VK_RETURN,VK_TAB] then
   if cmbBankBranch.SelectedItem<0 then
   begin
    IsActive:=false;
    Application.MessageBox(pchar('Please select bankbranch!!'),pchar('Warning'),mb_ok or MB_ICONWARNING);
    IsActive:=true;
    cmbBankBranch.SetFocus;
    exit;
   end else  
    if trim(edContract.text)<>'' then
    begin
      if not IsConChqExists(SocketConn,edContract.Text,edChequeF.Text,TString(cmbBank.Properties.Items.Objects[cmbBank.SelectedItem]).Str,TString(cmbBankBranch.Properties.Items.Objects[cmbBankBranch.SelectedItem]).Str) then
      begin
        _contractName:= getContractName(SocketConn,edContract.Text);
        btnInfo.Enabled:=true;

        if Trim(_contractName)='' then
        begin
          IsActive:=false;
          btnInfo.Enabled:=false;
          Application.MessageBox(pchar('Contract Not found!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
          IsActive:=true;
          edContract.SetFocus;
          exit;
        end;

        lbDealerName.Caption:=_contractName;
        edComment.SetFocus;
      end else
      begin
        IsActive:=false;
        Application.MessageBox(pchar('Chqno Duplicate!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
        IsActive:=true;
        edChequeF.SetFocus;
      end;
    end;
end;

procedure TfrmMainProgram.edContractPropertiesChange(Sender: TObject);
begin
  inherited;
  btnInfo.Enabled:=trim(edContract.Text)<>'';
end;

procedure TfrmMainProgram.ExecutePlugin(DLLName, ProcName: string);
begin
  _Handle := LoadLibrary(PChar(DLLName));
  if (_Handle <> 0) then
  begin
    _ExecuteProgram := GetProcAddress(_Handle,pchar(ProcName));
    try
      if(Assigned(_ExecuteProgram)) then
      begin
        try
          _ExecuteProgram(nil, swModal, '192.168.1.211');
        finally
        end;
      end;
    finally
      FreeLibrary(_Handle);
    end;
  end;
end;

procedure TfrmMainProgram.FormCreate(Sender: TObject);
begin
  inherited;
  //SetControls(pnContainer,false);
  JvPageControl1.ActivePage:=TabSheet1;
  SetControls(TabSheet1,false);
  _NUMROW:=0;
  SocketConn.AddProv('cdsMainta','ALL');
  cdsMainta.ProviderName := 'cdsMainta';
  deStart.Date:=now();
  deEnd.Date:=now();

  dtChequeDate.Properties.InputKind := ikMask;
  dtChequeToDate.Properties.InputKind := ikMask;

  cxFormatController.StandardDateEditMask := '99/99/9999';
end;

procedure TfrmMainProgram.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_F2:begin
      if (not (tbSearch in Self.ToolbarVisible)) or (not (tbSearch in Self.ToolbarEnable)) then
        Exit;

      btnSearchClick(sender);
//      MessageDlg('F2 : Search',mtInformation,[mbOK],0);

    end;

    VK_F3:begin
      if (not (tbSave in Self.ToolbarVisible)) or (not (tbSave in Self.ToolbarEnable)) then
      if (tbNew in Self.ToolbarVisible) or (tbNew in Self.ToolbarEnable) then
        Exit;

        btnNew.Click;
    end;
    (*
    VK_F4:begin
      if (not (tbEdit in Self.ToolbarVisible)) or (not (tbEdit in Self.ToolbarEnable)) then
        Exit;

      MessageDlg('F4 : Edit',mtInformation,[mbOK],0);
    end;

    *)

    VK_F5:begin
      if (not (tbSave in Self.ToolbarVisible)) or (not (tbSave in Self.ToolbarEnable)) then
        Exit;

        if btnAddNew.Enabled then
          btnSave.Click;
    end;

    VK_F6:begin
      if (not (tbCancel in Self.ToolbarVisible)) or (not (tbCancel in Self.ToolbarEnable)) then
        Exit;



      MessageDlg('F6 : Cancel',mtInformation,[mbOK],0);
    end;

    VK_F7:begin
      if (not (tbDelete in Self.ToolbarVisible)) or (not (tbDelete in Self.ToolbarEnable)) then
        Exit;
      MessageDlg('F7 : Delete',mtInformation,[mbOK],0);
    end;

    VK_F8:begin
      if (not (tbPrint in Self.ToolbarVisible)) or (not (tbPrint in Self.ToolbarEnable)) then
        Exit;
      MessageDlg('F8 : Print',mtInformation,[mbOK],0);
    end;

    VK_F9:begin
      if (not (tbExport in Self.ToolbarVisible)) or (not (tbExport in Self.ToolbarEnable)) then
        Exit;
      MessageDlg('F9 : Export',mtInformation,[mbOK],0);
    end;

    VK_F11:begin
      if (not (tbClose in Self.ToolbarVisible)) or (not (tbClose in Self.ToolbarEnable)) then
        Exit;

      MessageDlg('F11 : Exit',mtInformation,[mbOK],0);
    end;

  end;

  if Key = VK_TAB then
  begin
    SelectNext(ActiveControl, GetKeyState(VK_SHIFT) >= 0, True);
    // Move to the next control in the tab order
  end;



end;

procedure TfrmMainProgram.FormShow(Sender: TObject);
begin
  inherited;
    initForm;



    //ToolbarEnable := [tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport]

    //cdsSeperateTmp.Close;
    //cdsSeperateTmp.CreateDataSet;
end;

procedure TfrmMainProgram.frxReportGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;

end;

//======================================================================================
// generate Seperate Cheque
//======================================================================================
procedure TfrmMainProgram.generateChq(CRN:string);
var chqCount,i:integer;
    chqAmt,TotalAmt:Real;
    chqNo:integer;
    chqDate,ChqDueDate,_chqDate,_ChqDueDate:TDateTime;
    chqContract,chqComment:string;

    cqDD,cqMM,cqYYYY,cdDD,cdMM,cdYYYY:word;

    tcdsHPINS:TClientDataSet;

begin
  //

  if ((trim(edChequeCount.Text)<>'') and (trim(edChqAmount.Text)<>'')
    and (trim(edChequeF.Text)<>'')
  ) then
  begin

  // key in
  chqCount:=strtoint(edChequeCount.Text);
  chqAmt:=StrToFloat(edChqAmount.Text);
  chqNo:=strtoint(edChequeF.Text);
  chqContract:=edContract.Text;
  chqComment:=edComment.Text;

  // installments

  tcdsHPINS:=TClientDataSet.Create(nil);
  tcdsHPINS.Name:='tcdsHPINS';
  initCdsConn(tcdsHPINS,SocketConn,'tcdsHPINS');



  with tcdsHPINS do
  begin
    close;
    CommandText:='select INSCRN,INSF11,INSITM,INSIAM,INSIRA,INSVAM,INSVPA,INSVRA,INSDAM  from HPTINS00 where INSCRN='''+CRN+''' and INSF11=3 order by INSITM';
    open;
  end;






  //chq Date
  DecodeDate(dtChequeDate.Date,cqYYYY,cqMM,cqDD);
  DecodeDate(dtChequeToDate.Date,cdYYYY,cdMM,cdDD);


  _chqDate:=EncodeDate(cqYYYY,cqMM,cqDD);
  _ChqDueDate:=EncodeDate(cdYYYY,cdMM,cdDD) ;

    with cdsGenChqTmp do begin
      EmptyDataSet;

      if tcdsHPINS.Active then
        if tcdsHPINS.RecordCount>0 then
             tcdsHPINS.First;

      for i := 0 to chqCount-1  do
        begin
        
          Append;

          cdsGenChqTmpCQMCHK.AsInteger:=0;

          cdsGenChqTmpCQMACT.AsString:=inttostr(i) ;//'';
          cdsGenChqTmpCQMSTS.AsString:=inttostr(i) ;//'';
          cdsGenChqTmpCQMBRN.AsString:=inttostr(i) ;//'';
          cdsGenChqTmpCQMPDM.AsString:=inttostr(i) ;//'';
          cdsGenChqTmpCQMPDT.AsString:=inttostr(i) ;//'';
          cdsGenChqTmpCQMDNO.AsString:=inttostr(i) ;//'';
          cdsGenChqTmpCQMBNK.AsString:=inttostr(i) ;//'';
          cdsGenChqTmpCQMBBR.AsString:=inttostr(i) ;//'';
          cdsGenChqTmpCQMLET.AsString:=inttostr(i) ;//'';

          cdsGenChqTmpCQMCNO.AsString:=inttostr(chqNo) ;//'';
          cdsGenChqTmpCQMTYP.AsString:=inttostr(i) ;//'';
          cdsGenChqTmpCQMCTY.AsString:=inttostr(i) ;//'';
          cdsGenChqTmpCQMDTE.AsDateTime:=_chqDate;//EncodeDate(cqYYYY,cqMM,cqDD) ;//'';
          cdsGenChqTmpCQMITM.AsString:=inttostr(i+1) ;//'';
          cdsGenChqTmpCQMAMT.AsCurrency:=chqAmt;//'';

          if (i <=tcdsHPINS.RecordCount-1)  then
            cdsGenChqTmpCQMIAM.AsCurrency:=tcdsHPINS.FieldByName('INSIAM').AsCurrency
          else
          cdsGenChqTmpCQMIAM.AsCurrency:=0;
          cdsGenChqTmpCQMDUE.AsDateTime:=_ChqDueDate;//EncodeDate(cdYYYY,cdMM,cdDD) ;//'';
          cdsGenChqTmpCQMCSN.AsString:=chqContract ;//'';
          cdsGenChqTmpCQMRMK.AsString:=chqComment ;//'';

          cdsGenChqTmpCQMMTD.AsDateTime:=now();//'';
          cdsGenChqTmpCQMMTU.AsString:=inttostr(i) ;//'';
          cdsGenChqTmpCQMMTW.AsString:=inttostr(i) ;//'';

          Post;

          inc(chqNo);
          //IncMonth(_chqDate);
         //IncMonth(_ChqDueDate);

          inc(cqMM);
          inc(cdMM);


          _chqDate:=EncodeDate(cqYYYY,cqMM,cqDD);
          _ChqDueDate:=EncodeDate(cdYYYY,cdMM,cdDD) ;




        if tcdsHPINS.Active then
          if not tcdsHPINS.Eof then tcdsHPINS.Next;
         

        end;
    end;
  end;

end;


{
function TfrmMainProgram.getContractName(contract: string): string;
  var rcTemp:TClientDataSet;
      rep:string;
  begin

    rep:='';
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=SocketConn;
    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('runnung_prov004', 'ALL');
      ProviderName:='runnung_prov004';
      close;
      CommandText:=''+
           ' select '+
           ' b.[DLR Name] as DAEName '+
           ' from HPMCON00 a '+
           ' left join DEALER b on a.CONDEA=b.Code '+
           ' where a.CONRUN='''+contract+''' ';

      open;
        if recordcount>0 then
        begin
          rep:=rcTemp.FieldByName('DAEName').AsString;
        end;
    end;

    result:=rep;

  end;  }

procedure TfrmMainProgram.GetMainta;
var start,endd:string;
    endt:TDateTime;
    strSQL:string;
begin
  start := FormatDateTime('MM/dd/yyyy',deStart.Date);
  endt:=deEnd.Date;
  IncDay(endt);
  endd  := FormatDateTime('MM/dd/yyyy',IncDay(deEnd.Date));
  cdsMainta.Close;
  strSQL:=''+

   ' declare @FDT varchar(10) '+
   ' declare @TDT varchar(10) '+

   ' set @FDT='''+start+'''   '+
   ' set @TDT='''+endd+'''   '+

   ' SELECT *  FROM CQDM007 WHERE '+
   '   ( day(CQMETD) BETWEEN day(@FDT) AND day(@TDT) ) '+
   ' and ( month(CQMETD) BETWEEN month(@FDT) AND month(@TDT) )  '+
   ' and ( year(CQMETD) BETWEEN year(@FDT) AND year(@TDT) ) '+
   ' and CQMSTS<>''D'' ';


  cdsMainta.CommandText :=strSQL;// 'SELECT * FROM CQDM007 WHERE CQMETD BETWEEN ''' + START + ''' AND ''' + ENDD + '''';
  cdsMainta.Open;
end;

function TfrmMainProgram.getModelName(contract: string): string;
  var rcTemp:TClientDataSet;
      rep:string;
  begin

    rep:='';
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=SocketConn;
    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('runnung_prov003', 'ALL');
      ProviderName:='runnung_prov003';
      close;
      CommandText:=''+
                   ' select e.CARMDL   '+
                   ' from DBMCOA03 d   '+
                   '   left join DBMCAR00 e on d.CARNUM=e.CARNUM   '+
                   ' where d.COARUN ='''+contract+'''   ';

      open;
        if recordcount>0 then
        begin
          rep:=rcTemp.FieldByName('CARMDL').AsString;
        end;
    end;

    result:=rep;

  end;

function TfrmMainProgram.ShowSeperateChq(_contract: string):integer;
var p:TPluginParams;
type
  TMyFormClass = function: TFormClass; stdcall;
  TPluginInitParams= procedure (params:TPluginParams);stdcall;

  TExeCutePlugIn = function (cds:TClientDataSet;_MainApp:TApplication;Params:TPluginParams):integer;stdcall;

var
  lMyFormClass: TMyFormClass;
  PluginInitParams:TPluginInitParams;
  _params:TPluginParams;
  ExeCutePlugin:TExeCutePlugIn;

var
   AComponent: TComponent;
   I : integer;
   _sock:TSockCon;
   _cds:TClientDataSet;

begin
  inherited;
  if FLibHandle=0 then

    FLibHandle := LoadLibrary('CQPU006.dll');     // seperate cheque module
  ExeCutePlugin := GetProcAddress(FLibHandle, 'ExeCute');
  Self.IsActive := false;
  Screen.Cursor:=crHourGlass;

  p.param1:=_contract;
  p.param2:=edChequeF.Text;
  p.param6:=strtoint(edChequeCount.Text);
  if JvPageControl1.ActivePage=TabSheet2 then
    p.param11:=cdsMainta.FieldByName('CQMAMT').AsCurrency
  else
    p.param11:=StrToCurr(edChqAmount.Text);
    //p.param11:=CalChqAmount;

   p.UserID:=UserID;
   p.PDM:=PDM;
   p.PDT:=PDT;
   p.Branch:=Branch;
   p.WorkStation := WorkStation;

  Result:=ExeCutePlugin(_cdsSeperateTmp,Application,p);;
  Self.IsActive := true;

end;


procedure TfrmMainProgram.TabSheet2Show(Sender: TObject);
VAR CDSDATE:TClientDataSet;
begin
  inherited;


  //Status.ItemIndex:=2;


   GetMainta;


  Status.ItemIndex:=2;
  with cdsMainta do
    if Active then  
    begin
      if Status.ItemIndex <> 0 then
        begin
          Filter := Status.Properties.Items[Status.ItemIndex].Value;
          Filtered := True;
          //btnMRePrint.Enabled:=(cdsMainta.RecordCount>0);
        end
      else
        Filtered := False;
    end;  

  {
  CDSDATE := TClientDataSet.Create(NIL);
  try
    SocketConn.AddProv('CDSDATE','ALL');
    CDSDATE.ProviderName := 'CDSDATE';
    CDSDATE.RemoteServer := SocketConn;
    CDSDATE.Close;
    CDSDATE.CommandText := 'SELECT MIN(CQMDTE) AS DDATE FROM LLSPDTA.dbo.CQDM007';
    CDSDATE.Open;
    if CDSDATE.FieldByName('DDATE').AsString <> '' then deStart.Date := CDSDATE.FieldByName('DDATE').AsDateTime;
    CDSDATE.Close;
    CDSDATE.CommandText := 'SELECT MAX(CQMDTE) AS DDATE FROM LLSPDTA.dbo.CQDM007';
    CDSDATE.Open;
    if CDSDATE.FieldByName('DDATE').AsString <> '' then deEnd.Date := CDSDATE.FieldByName('DDATE').AsDateTime;
    GetMainta;
  finally
    CDSDATE.Free;
  end;
  }
end;

procedure TfrmMainProgram._cdsDtlBeforePost(DataSet: TDataSet);
begin
  inherited;
  with DataSet do begin
    if (DataSet.State in [dsInsert]) then
    begin
      FieldByName('CQSACT').AsString:='A';
      //FieldByName('CQSSTS').AsString:='A';

      FieldByName('CQSBRN').AsString:=Branch;
      FieldByName('CQSPDM').AsString:=PDM;
      FieldByName('CQSPDT').AsString:=PDT;

      FieldByName('CQSETU').AsString:=UserID;
      TFloatField(FieldByName('CQSETD')).DisplayFormat := 'dd/MM/yyyy';
      FieldByName('CQSETD').AsDateTime:=getServerDateTime(SocketConn);
      FieldByName('CQSETW').AsString:=WorkStation;
    end else  if (DataSet.State in [dsEdit]) then
    begin
      FieldByName('CQSMTU').AsString:=UserID;
      FieldByName('CQSMTW').AsString:=WorkStation;
      TFloatField(FieldByName('CQSMTD')).DisplayFormat := 'dd/MM/yyyy';
      FieldByName('CQSMTD').AsDateTime:=getServerDateTime(SocketConn);
    end;
  end;
end;

procedure TfrmMainProgram._cdsDtlReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  Application.MessageBox(pchar(e.Message),pchar('Error #2'),MB_OK or MB_ICONERROR);
end;

procedure TfrmMainProgram.initForm;
var strSql:string;
    cdsBnkAcc:TClientDataSet;

begin

   lbMainCurrentDate.Caption:= 'Date: '+ FormatDateTime('dd/MM/yyyy',getServerDateTime(SocketConn));


   cdshdr.Close;
   cdshdr.Open;


   cdsDtl.Close;
   cdsDtl.CreateDataSet;

   rcBnk:=TClientDataSet.Create(self);
   rcdsBnk:=TDataSource.Create(self);

   cdsBnkAcc:=TClientDataSet.Create(self);
   cdsBnkAcc.RemoteServer:=SocketConn;

   rcBnk.RemoteServer:=SocketConn;
   loadComboList(cmbBank,connBroker,'CQMBNK','CQMEGN',_sql_002,rcBnk,'rcBnk');


 //strSql:='select CQMCDE,CQMVA1,CQMNME from CQDM008 where CQMGRP=''BOOKBANK'' and CQMACT=''A'' order by CQMNM1 ';
 //loadComboList(cmbBnkAccount,connBroker,'CQMVA1','CQMNME',strSql,cdsBnkAcc,'rcBnkAcc');

   strSql:='SELECT BACPAT,BACOWN  FROM DBMBAC00';
   loadComboList(cmbBnkAccount,connBroker,'BACPAT','BACOWN',strSql,cdsBnkAcc,'rcBnkAcc');
   setDefaultIndexComboList(cmbBnkAccount,'8');

   strSql:='select CQMCDE,CQMVA1,CQMNME from CQDM008 where CQMGRP=''CTYPE'' and CQMACT=''A''';
   loadComboList(cmbCType,connBroker,'CQMCDE','CQMNME',strSql,cdsBnkAcc,'rcBnkAcc');

   // key in mode
   lbKeyIn.Visible:= ( UpperCase(_Params)='KEYIN');
   lbChqType.Visible:= false;//( UpperCase(_Params)='KEYIN');
   cmbCType.Visible:= false;//( UpperCase(_Params)='KEYIN');

   // set field format
   TFloatField(cdsDtl.FieldByName('CQSAMT')).DisplayFormat := '#,##0.00';
   TFloatField(cdsDtl.FieldByName('CQSVAT')).DisplayFormat := '#,##0.00';
   TFloatField(cdsDtl.FieldByName('CQSWHT')).DisplayFormat := '#,##0.00';
   TFloatField(cdsDtl.FieldByName('CQSNET')).DisplayFormat := '#,##0.00';

   TFloatField(cdsDtl2.FieldByName('CQSAMT')).DisplayFormat := '#,##0.00';
   TFloatField(cdsDtl2.FieldByName('CQSVAT')).DisplayFormat := '#,##0.00';
   TFloatField(cdsDtl2.FieldByName('CQSWHT')).DisplayFormat := '#,##0.00';
   TFloatField(cdsDtl2.FieldByName('CQSNET')).DisplayFormat := '#,##0.00';

   // rental grid
   cxGrid1DBTableView1CQSVAT.Caption:='VAT('+inttostr(getTaxRate(SocketConn))+'%)';
   cxGrid1DBTableView1CQSWHT.Caption:='WT('+inttostr(getWHTRate(SocketConn))+'%)';
   // other grid
   cxGrid3DBTableView1CQSVAT.Caption:='VAT('+inttostr(getTaxRate(SocketConn))+'%)';
   cxGrid3DBTableView1CQSWHT.Caption:='WT('+inttostr(getWHTRate(SocketConn))+'%)';



   deStart.Date:=getServerDate(SocketConn);
   deEnd.Date:=getServerDate(SocketConn);


end;

function TfrmMainProgram.showManualReceive(_contract: string):integer;
var p:TPluginParams;  
type
  TMyFormClass = function: TFormClass; stdcall;
  TPluginInitParams= procedure (params:TPluginParams);stdcall;

  TExeCutePlugIn = function (cds:TClientDataSet;_MainApp:TApplication;Params:TPluginParams):integer;stdcall;

var
  lMyFormClass: TMyFormClass;
  PluginInitParams:TPluginInitParams;
  _params:TPluginParams;
  ExeCutePlugin:TExeCutePlugIn;

var
   AComponent: TComponent;
   I : integer;
   _sock:TSockCon;
   _cds:TClientDataSet;

begin
  inherited;
  if FLibHandle=0 then

    FLibHandle := LoadLibrary('CQPU006.dll');     // seperate cheque module
  //ExeCutePlugin := GetProcAddress(FLibHandle, 'ExeCute');
  ExeCutePlugin := GetProcAddress(FLibHandle, 'ExeCuteManualReceive');
  Self.IsActive := false;
  Screen.Cursor:=crHourGlass;

  p.param1:=_contract;
  p.param2:=edChequeF.Text;
  if JvPageControl1.ActivePage=TabSheet2 then
    p.param11:=cdsMainta.FieldByName('CQMAMT').AsCurrency
  else
    p.param11:=CalChqAmount;

  Result:= ExeCutePlugin(_cdsSeperateTmp,Application,p);;
  Self.IsActive := true;

end;

end.
