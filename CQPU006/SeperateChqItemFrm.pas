unit SeperateChqItemFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit,
   cxTextEdit, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, Menus, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, JvExStdCtrls, JvEdit, JvDBSearchEdit,
  Grids, DBGrids, cxCurrencyEdit,SockCon, cxButtonEdit, JvExExtCtrls,
  JvNetscapeSplitter;

type

  tcxAccessProperties = Class(TcxCustomEditProperties);

  TfrmSeperateChqItem = class(TForm)
    grid: TcxGrid;
    gridDBTableView1: TcxGridDBTableView;
    gridLevel1: TcxGridLevel;
    dsPayments: TDataSource;
    cdsPayType: TClientDataSet;
    gridDBTableView1ACDACD: TcxGridDBColumn;
    gridDBTableView1ACDDES: TcxGridDBColumn;
    gridDBTableView1ACDNET: TcxGridDBColumn;
    cdsContract: TClientDataSet;
    cdsContractCON: TStringField;
    cdsContractDESC: TStringField;
    gridDBTableView1ACDAMT: TcxGridDBColumn;
    gridDBTableView1ACDRCV: TcxGridDBColumn;
    gridDBTableView1ACDBAL: TcxGridDBColumn;
    gridDBTableView1ACDVAM: TcxGridDBColumn;
    DataSource1: TDataSource;
    cdsPayTypeAccum: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    CurrencyField5: TCurrencyField;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    gridDBTableView1ACDCON: TcxGridDBColumn;
    gridDBTableView1ACDCONDES: TcxGridDBColumn;
    gridDBTableView1ACDEXAMT: TcxGridDBColumn;
    cdsExtAmt: TClientDataSet;
    _cdsPayType: TClientDataSet;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    CurrencyField22: TCurrencyField;
    CurrencyField23: TCurrencyField;
    CurrencyField24: TCurrencyField;
    CurrencyField25: TCurrencyField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    CurrencyField26: TCurrencyField;
    StringField50: TStringField;
    StringField51: TStringField;
    CurrencyField27: TCurrencyField;
    StringField52: TStringField;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edPAmount: TcxTextEdit;
    edPNet: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    btnOK: TcxButton;
    ACDDES: TJvDBSearchEdit;
    ACDACD: TJvDBSearchEdit;
    cmbContract: TcxComboBox;
    cxLabel6: TcxLabel;
    lbOtherPayNet: TcxLabel;
    lbOtherCoverNet: TcxLabel;
    btnCancel: TcxButton;
    lbDiff: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    btnSearchContract: TcxButton;
    JvNetscapeSplitter1: TJvNetscapeSplitter;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edPAmountKeyPress(Sender: TObject; var Key: Char);
    procedure edPNetKeyPress(Sender: TObject; var Key: Char);
    procedure edPAmountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPNetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ACDACDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACDDESKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure gridDBTableView1ACDRCVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure _cdsPayType1BeforePost(DataSet: TDataSet);
    procedure gridDBTableView1ACDBALCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure _cdsPayType1BeforeEdit(DataSet: TDataSet);
    procedure gridDBTableView1ACDRCVPropertiesEditValueChanged(
      Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridDBTableView1ACDCONGetProperties(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure gridDBTableView1ACDCONPropertiesEditValueChanged(
      Sender: TObject);
    procedure btnSearchContractClick(Sender: TObject);
    procedure gridDBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FAmount : real;

    FCDE : string;
    FDES :string;
    FCONTRACT:string;
    FCONTRACT_NAME:string;
    FisOK:boolean;
    FOtherAmount: real;
    F_CoverAmount: real;
    F_OtherCRAmount: Currency;
    F_OtherDRAmount: Currency;
    FPDT: string;
    FUserID: string;
    FPDM: string;
    FBranch: string;
    FWorkStation: string;
    procedure Set_OtherAmount(const Value: real);
    procedure Set_CoverAmount(const Value: real);
    procedure Set_OtherCRAmount(const Value: Currency);
    procedure Set_OtherDRAmount(const Value: Currency);
    procedure SetBranch(const Value: string);
    procedure SetPDM(const Value: string);
    procedure SetPDT(const Value: string);
    procedure SetUserID(const Value: string);
    procedure SetWorkStation(const Value: string);

  public
    { Public declarations }
    property  _Amount : real read FAmount write FAmount;
    property  _CDE:string read FCDE;
    property  _DES:string read FDES;
    property  _CONTRACT:string read FCONTRACT;
    property  _CONTRACT_NAME:string read FCONTRACT_NAME;
    property  _IsOK:boolean read FisOK;

    property _OtherAmount : real read FOtherAmount write FOtherAmount;
    property _OtherCRAmount : Currency  read F_OtherCRAmount write Set_OtherCRAmount;
    property _OtherDRAmount : Currency  read F_OtherDRAmount write Set_OtherDRAmount;

    property _CoverAmount :real read F_CoverAmount write Set_CoverAmount;


    property UserID : string   read FUserID write SetUserID;
    property Branch : string   read FBranch write SetBranch;
    property PDM : string  read FPDM write SetPDM;
    property PDT : string  read FPDT write SetPDT;
    property WorkStation : string  read FWorkStation write SetWorkStation;




  end;

var
  frmSeperateChqItem: TfrmSeperateChqItem;

implementation

uses ChequeSeparateFrm,UIT_UTILS_LIB,CQPU001_UTILS, UIT_GLOBAL_LIB,
  SearchContractFrm;

{$R *.dfm}

procedure TfrmSeperateChqItem.ACDACDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
      begin
        ACDDES.SetFocus;
      end;
end;

procedure TfrmSeperateChqItem.ACDDESKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
      begin
        edPNet.SetFocus;
      end;

end;

procedure TfrmSeperateChqItem.btnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSeperateChqItem.btnOKClick(Sender: TObject);
begin




  //if FOtherAmount<>F_CoverAmount then
  if FOtherAmount<>0 then
  begin
    Application.MessageBox(pchar('Other Payments not balance!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
    exit;
  end;
  



  //if  CheckReal(edPNet.Text) then
  //begin
    _Amount:=FOtherAmount;//StrToFloat(edPNet.Text);
    FCDE:=_cdsPayType.FieldByName('ACDACD').AsString;
    FDES:=_cdsPayType.FieldByName('ACDDES').AsString;
    FCONTRACT:=TString(cmbContract.Properties.Items.Objects[cmbContract.SelectedItem]).Str;
    (*
    if frmChequeSeparate.cdsOtherPayments.Active then
    with frmChequeSeparate.cdsOtherPayments do
    begin
      Append;
      FieldByName('CDE').AsString:=cdsPayType.FieldByName('ACDACD').AsString;
      FieldByName('DES').AsString:=cdsPayType.FieldByName('ACDDES').AsString;
      //FieldByName('AMT').AsCurrency:=StrToFloat(edPAmount.Text);
      FieldByName('AMT').AsCurrency:=StrToFloat(edPNet.Text);
      FieldByName('VAT').AsCurrency:=0.00;
      FieldByName('NET').AsCurrency:=StrToFloat(edPNet.Text);
      post;

      frmChequeSeparate._OAmount:=0.00 ;//frmChequeSeparate._OAmount+StrToFloat(edPAmount.Text);
      frmChequeSeparate._ONetAmount:= frmChequeSeparate._ONetAmount+StrToFloat(edPNet.Text);

      self.close;
    end;

    *)

    FisOK:=true;
    self.close;
  //end;

end;

procedure TfrmSeperateChqItem.btnSearchContractClick(Sender: TObject);
var frm:TfrmSearchContract;
  ci:integer;
begin
  frm:=TfrmSearchContract.Create(nil);
  frm.ShowModal;
  if trim(frm.ContractNo)<>'' then
  begin
    for ci := 0 to cmbContract.Properties.Items.Count-1 do
    begin
      if TString(cmbContract.Properties.Items.Objects[ci]).Str=trim(frm.ContractNo) then
      begin
        cmbContract.ItemIndex:=ci;
        exit;
      end;
    end;
    cmbContract.Properties.Items.AddObject(trim(frm.ContractNo)+' '+getContractName(frmChequeSeparate.SockCon,frm.ContractNo),TString.Create(trim(frm.ContractNo)));
    cmbContract.ItemIndex:=cmbContract.Properties.Items.Count-1;
  end;
end;

procedure TfrmSeperateChqItem.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=$00DBDBDB;
end;

procedure TfrmSeperateChqItem.edPAmountKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if checkreal(edPAmount.Text) then
  if Key=VK_RETURN then
  begin
    edPNet.SetFocus;
  end;
end;

procedure TfrmSeperateChqItem.edPAmountKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key in ['a'..'z'] + ['A'..'Z'] then Key := #0;
end;

procedure TfrmSeperateChqItem.edPNetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if checkreal(edPNet.Text) then
      if Key=VK_RETURN then
      begin

       if _OtherAmount=0 then
         btnOKClick(Sender)
         else
       begin
          if (_cdsPayType.Locate('ACDACD',ACDACD.Text,[])) then
          begin
            if not (_cdsPayType.State in [dsEdit])  then _cdsPayType.Edit;
            _cdsPayType.FieldByName('ACDRCV').AsCurrency:=StrToFloat(edPNet.Text);
            _cdsPayType.Post;

            edPNet.Text:='0.00';
            ACDACD.SetFocus;
          end;
       end;
      end;
end;

procedure TfrmSeperateChqItem.edPNetKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key in ['a'..'z'] + ['A'..'Z'] then Key := #0;
end;

procedure TfrmSeperateChqItem.FormCreate(Sender: TObject);
begin
// TcxEditButton(TcxAccessProperties(cmbPDes.Properties).Buttons[0] ).Visible:=false;
end;

procedure TfrmSeperateChqItem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
  VK_ESCAPE : self.close;
  VK_F5 :btnOKClick(sender);
  VK_F3 :btnSearchContractClick(sender);
 end;
end;

procedure TfrmSeperateChqItem.FormShow(Sender: TObject);
var strsql,strsql2:string;
    rcPaycode:TClientDataSet;
begin


  FisOK:=false;

  lbOtherPayNet.Caption:= FormatCurr('#,##0.00',FOtherAmount);

  _OtherDRAmount:= _CoverAmount;
  _OtherCRAmount:=0;

   _OtherAmount:=abs(_OtherCRAmount-_OtherDRAmount);


   lbDiff.Caption:= FormatCurr('#,##0.00',_OtherAmount);
   //ShowMessage(FloatToStr(_OtherAmount));


  // load paytype
  TSockCon(cdsPayType.RemoteServer).AddProv('dspPayType', 'ALL');
  cdsPayType.ProviderName:='dspPayType';
  cdsPayType.Close;

  // load paytype
  TSockCon(cdsExtAmt.RemoteServer).AddProv('dspExtAmt', 'ALL');
  cdsExtAmt.ProviderName:='dspExtAmt';
  cdsExtAmt.Close;




  // load cdsPayTypeAccum
  //TSockCon(cdsPayTypeAccum.RemoteServer).AddProv('cdsPayTypeAccum', 'ALL');
  //cdsPayTypeAccum.ProviderName:='cdsPayTypeAccum';
  //cdsPayTypeAccum.Close;



  //strsql:='select ACDACD,ACDDES,ACDNET,0.00 as ACDAMT,0.00 as ACDRCV , 0.00 as ACDBAL from HPPDTA.dbo.HPMACD00 order by ACDACD';
  (*strsql:=''+
  ' select ACDACD,ACDDES,ACDNET,0.00 as ACDAMT,0.00 as ACDRCV , 0.00 as ACDBAL from HPMACD00  a '+
  ' where exists( '+
  '   select * from HPMADF00  where ADFRTY=a.ACDACD '+
  ' ) '+
  ' order by ACDACD ';
  *)

  strsql:=''+
  ' select '+
	' ACDACD,ACDDES,ACDNET,0.00 as ACDAMT,0.00 ACDVAM,0.00 as ACDRCV , 0.00 as ACDBAL   '+
	' ,b.ADFR01,b.ADFR02,b.ADFR03,b.ADFR05,b.ADFR07,b.ADFR13      '+
	' ,c.THDPCN , case b.ADFR05 when 1 then ''Include Vat''  when 2 then ''Exclude Vat'' else '''' end ADFR05DESC ,b.ADFRN2  '+
	' from HPMACD00  a   '+
	' left join HPMADF00 b on a.ACDACD= b.ADFRTY   '+
	' left join (  '+
	' select     '+
	'	THDTB1,THDTB2,THDDSC,THDPCN     '+
	' from DBMTHD00 where THDTB1=''HPVATM''        '+
	'                           '+
	' ) c on b.ADFR02=c.THDTB2    '+
	'  left join   HPMADF00 cc on a.ACDACD=cc.ADFRTY            '+
  ' where exists(   '+
  '   select * from HPMADF00  where ADFRTY=a.ACDACD    '+
  ' )          '+
  ' and cc.ADFSEQ between ''01'' and ''49''          '+
  ' order by ACDACD  ';


  strsql2:=''+
  ' select '+
	' ACDACD,ACDDES,ACDNET,0.00 as ACDAMT,0.00 ACDVAM,0.00 as ACDRCV , 0.00 as ACDBAL   '+
	' ,b.ADFR01,b.ADFR02,b.ADFR03,b.ADFR05,b.ADFR07,b.ADFR13      '+
	' ,c.THDPCN , case b.ADFR05 when 1 then ''Include Vat''  when 2 then ''Exclude Vat'' else '''' end ADFR05DESC,b.ADFRN2   '+
	' from HPMACD00  a   '+
	' left join HPMADF00 b on a.ACDACD= b.ADFRTY   '+
	' left join (  '+
	' select     '+
	'	THDTB1,THDTB2,THDDSC,THDPCN     '+
	' from DBMTHD00 where THDTB1=''HPVATM''        '+
	'                           '+
	' ) c on b.ADFR02=c.THDTB2    '+
	'                '+
  ' where exists(   '+
  '   select * from HPMADF00  where ADFRTY=a.ACDACD    '+
  ' )          '+
  ' and  ADFR01<>'''' '+    
  ' order by ACDACD  ';



 //inputbox('','',strsql);

  cdsPayType.CommandText:=strsql;
  cdsPayType.Open;

  //cdsPayTypeAccum.commandtext:=strsql2;
  //cdsPayTypeAccum.open;

  rcPaycode:=TClientDataSet.Create(self);
  rcPaycode.RemoteServer:=frmChequeSeparate.SockCon;

  ACDACD.SetFocus;
  if cdsContract.Active then
  begin
    loadComboList(cmbContract,'CON','DESC',cdsContract);
    loadComboBoxProperties(TcxComboBoxProperties(gridDBTableView1ACDCON.Properties),'CON','CON',cdsContract);
  end;





  _cdsPayType.EmptyDataSet;
  //_cdsPayType.CreateDataSet;

//  copyCds(cdsPayType,_cdsPayType);
  copyCdsA(cdsPayType,_cdsPayType);



  if _cdsPayType.RecordCount>0 then
  _cdsPayType.First;

  cdsPayTypeAccum.EmptyDataSet;
  copyCdsA(cdsPayType,cdsPayTypeAccum);


  cdsPayTypeAccum.Filter:='ADFR01<>''''';
  cdsPayTypeAccum.Filtered:=true;

  _cdsPayType.Filter:='ADFR01=''''';
  _cdsPayType.Filtered:=true;





  {
  if cdsContract.Active then
    if cdsContract.RecordCount>0 then
    begin
      cdsContract.First;
      ListBox1.Items.Clear;
      while not cdsContract.Eof do
      begin
          ListBox1.AddItem(cdsContractCON.AsString+'-'+cdsContractDESC.AsString, TObject(1973)) ;
          cdsContract.Next;
      end;

    end;
    }


//  loadComboList(cmbPCode,frmChequeSeparate.connBroker,'ACDACD','ACDACD',strsql,rcPaycode,'rcPaycode');
 // loadComboList(cmbPDes ,frmChequeSeparate.connBroker,'ACDACD','ACDDES',strsql,rcPaycode,'rcPaycode');
WindowState:=wsMaximized;

end;

procedure TfrmSeperateChqItem.gridDBTableView1ACDBALCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  ACanvas.Brush.Color:=$00FFF0F0;
  ACanvas.Font.Style:=[fsBold];
end;

procedure TfrmSeperateChqItem.gridDBTableView1ACDCONGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  TcxComboBoxProperties(AProperties).DropDownRows := 9;
end;

procedure TfrmSeperateChqItem.gridDBTableView1ACDCONPropertiesEditValueChanged(
  Sender: TObject);
begin
  //SelectedIndex := TcxComboBox(Sender).ItemIndex
  //ShowMessage(TcxComboBoxProperties(Sender).i);
end;

procedure TfrmSeperateChqItem.gridDBTableView1ACDRCVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  ACanvas.Brush.Color:=$00FFF0F0;
  ACanvas.Font.Color:=clNavy;
  ACanvas.Font.Style:=[fsBold];
end;

procedure TfrmSeperateChqItem.gridDBTableView1ACDRCVPropertiesEditValueChanged(
  Sender: TObject);
begin
  if _cdsPayType.State in [dsEdit] then
 _cdsPayType.Post;
end;

procedure TfrmSeperateChqItem.gridDBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  ShowMessage('xxx');
end;

procedure TfrmSeperateChqItem.gridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmSeperateChqItem.SetBranch(const Value: string);
begin
  FBranch := Value;
end;

procedure TfrmSeperateChqItem.SetPDM(const Value: string);
begin
  FPDM := Value;
end;

procedure TfrmSeperateChqItem.SetPDT(const Value: string);
begin
  FPDT := Value;
end;

procedure TfrmSeperateChqItem.SetUserID(const Value: string);
begin
  FUserID := Value;
end;

procedure TfrmSeperateChqItem.SetWorkStation(const Value: string);
begin
  FWorkStation := Value;
end;

procedure TfrmSeperateChqItem.Set_CoverAmount(const Value: real);
begin
  F_CoverAmount := Value;
  lbOtherCoverNet.Caption:= FormatCurr('#,##0.00',F_CoverAmount);
end;

procedure TfrmSeperateChqItem.Set_OtherAmount(const Value: real);
begin
  FOtherAmount := Value;
end;

procedure TfrmSeperateChqItem.Set_OtherCRAmount(const Value: Currency);
begin
  F_OtherCRAmount := Value;
end;

procedure TfrmSeperateChqItem.Set_OtherDRAmount(const Value: Currency);
begin
  F_OtherDRAmount := Value;
end;

procedure TfrmSeperateChqItem._cdsPayType1BeforeEdit(DataSet: TDataSet);
var icount:integer;
    vatACM:Currency;

procedure acmVATD();
begin
   // cal vat
    //_cdsPayType.FieldByName('ACDAMT').AsCurrency:=_cdsPayType.FieldByName('ACDRCV').AsCurrency;

    if not  (_cdsPayType.FieldByName('ADFR05').AsString='') then
      if _cdsPayType.FieldByName('ADFR05').AsString='1' then        // Include Vat
      begin
         vatACM :=_cdsPayType.FieldByName('ACDVAM').AsCurrency;
        // accumulate vat
        if cdsPayTypeAccum.recordcount>0 then
        begin
           if trim(_cdsPayType.fieldbyname('ADFR03').AsString)<>'' then
           begin
             if cdsPayTypeAccum.Locate('ADFR01',_cdsPayType.fieldbyname('ADFR03').AsString,[]) then
             begin
              cdsPayTypeAccum.edit;
              cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency:=cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency-rounder(vatACM,2);
              cdsPayTypeAccum.post;
             end;
           end;
        end;
     end
     else if _cdsPayType.FieldByName('ADFR05').AsString='2' then   // Exclude Vat
     begin
        vatACM:=_cdsPayType.FieldByName('ACDVAM').AsCurrency;
        // accumulate vat
        if cdsPayTypeAccum.recordcount>0 then
        begin
           if trim(_cdsPayType.fieldbyname('ADFR03').AsString)<>'' then
           begin
             if cdsPayTypeAccum.Locate('ADFR01',_cdsPayType.fieldbyname('ADFR03').AsString,[]) then
             begin
              cdsPayTypeAccum.edit;
              cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency:=cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency-rounder(vatACM,2);
              cdsPayTypeAccum.post;
             end;
           end;
        end;

     end;
end;

begin
  vatACM:=0;
  //_OtherAmount:=_OtherAmount-_cdsPayTypeACDRCV.AsCurrency;
  if trim(DataSet.FieldByName('ACDNET').AsString)='C' then
  begin
    _OtherCRAmount:=_OtherCRAmount-_cdsPayType.FieldByName('ACDRCV').AsCurrency;
  end else  if trim(DataSet.FieldByName('ACDNET').AsString)='D' then
  begin
    _OtherDRAmount:=_OtherDRAmount-_cdsPayType.FieldByName('ACDRCV').AsCurrency;
  end;

  acmVATD;
  //





end;

procedure TfrmSeperateChqItem._cdsPayType1BeforePost(DataSet: TDataSet);
var icount:integer;
    vatACM,acmAMT,acmRCV,acmEX:Currency;
    strDate:string;

procedure acmVATC();
begin
   // cal vat

    _cdsPayType.FieldByName('ACDAMT').AsCurrency:=_cdsPayType.FieldByName('ACDRCV').AsCurrency;

    if not  (_cdsPayType.FieldByName('ADFR05').AsString='') then
      if _cdsPayType.FieldByName('ADFR05').AsString='1' then        // Include Vat
      begin
        acmEX:=0;
         vatACM := _cdsPayType.FieldByName('ACDRCV').AsCurrency*(_cdsPayType.FieldByName('THDPCN').AsCurrency/(100+_cdsPayType.FieldByName('THDPCN').AsCurrency));
        _cdsPayType.FieldByName('ACDVAM').AsCurrency:= Rounder(vatACM,2);

        //if _cdsPayType.FieldByName('ACDVAM').AsCurrency>0 then ShowMessage(FormatFloat('###0.00',vatACM));

        acmAMT:=_cdsPayType.FieldByName('ACDRCV').AsCurrency-_cdsPayType.FieldByName('ACDVAM').AsCurrency;
        _cdsPayType.FieldByName('ACDAMT').AsCurrency:=acmAMT;
        acmRCV:=_cdsPayType.FieldByName('ACDRCV').AsCurrency;

        TCurrencyField(_cdsPayType.FieldByName('ACDAMT')).DisplayFormat := '#,##0.00';
        TCurrencyField(_cdsPayType.FieldByName('ACDVAM')).DisplayFormat := '#,##0.00';
        TCurrencyField(_cdsPayType.FieldByName('ACDRCV')).DisplayFormat := '#,##0.00';

        // accumulate vat
        if cdsPayTypeAccum.recordcount>0 then
        begin
           if trim(_cdsPayType.fieldbyname('ADFR03').AsString)<>'' then
           begin
             if cdsPayTypeAccum.Locate('ADFR01',_cdsPayType.fieldbyname('ADFR03').AsString,[]) then
             begin
              cdsPayTypeAccum.edit;
              cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency:=cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency+ Rounder(vatACM,2);
              cdsPayTypeAccum.FieldByName('ACDRCV').AsCurrency:=cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency;
              cdsPayTypeAccum.post;
             end;
           end;
        end;
     end
     else if _cdsPayType.FieldByName('ADFR05').AsString='2' then   // Exclude Vat
     begin
        vatACM:=_cdsPayType.FieldByName('ACDRCV').AsCurrency*(_cdsPayType.FieldByName('THDPCN').AsCurrency/100);
        acmEX:=  vatACM;
        acmAMT:=_cdsPayType.FieldByName('ACDRCV').AsCurrency;
        acmRCV:=_cdsPayType.FieldByName('ACDRCV').AsCurrency+vatACM;
        _cdsPayType.FieldByName('ACDVAM').AsCurrency:= Rounder(vatACM,2);
        _cdsPayType.FieldByName('ACDAMT').AsCurrency:=acmAMT;
        _cdsPayType.FieldByName('ACDRCV').AsCurrency:=acmRCV;

        TCurrencyField(_cdsPayType.FieldByName('ACDAMT')).DisplayFormat := '#,##0.00';
        TCurrencyField(_cdsPayType.FieldByName('ACDVAM')).DisplayFormat := '#,##0.00';
        TCurrencyField(_cdsPayType.FieldByName('ACDRCV')).DisplayFormat := '#,##0.00';

        // accumulate vat
        if cdsPayTypeAccum.recordcount>0 then
        begin
           if trim(_cdsPayType.fieldbyname('ADFR03').AsString)<>'' then
           begin
             if cdsPayTypeAccum.Locate('ADFR01',_cdsPayType.fieldbyname('ADFR03').AsString,[]) then
             begin
              cdsPayTypeAccum.edit;
              cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency:=cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency+rounder(vatACM,2);
              cdsPayTypeAccum.FieldByName('ACDRCV').AsCurrency:=cdsPayTypeAccum.FieldByName('ACDAMT').AsCurrency;
              cdsPayTypeAccum.post;
             end;
           end;
        end;

     end;
end;


begin

  // call from honda system
  if  _cdsPayType.State in [dsInsert] then
  begin
    strDate:=FormatDateTime('yyyy-MM-dd',getServerDate(frmChequeSeparate.SockCon));

     cdsExtAmt.Close;
     cdsExtAmt.CommandText:='select dbo.FN_LS_EXEC_FNC('''+Branch+''',''2'','''+PDT+''','''+DataSet.FieldByName('ACDCON').AsString+''','''+strDate+''','''+DataSet.FieldByName('ACDACD').AsString+''','''+DataSet.FieldByName('ADFRN2').AsString+''') as AMT';
     cdsExtAmt.Open;

     //if (DataSet.FieldByName('ACDACD').AsString='013') then InputBox('','',cdsExtAmt.CommandText);
     

     if cdsExtAmt.Active then
      if cdsExtAmt.RecordCount>0 then 
        begin
          TFloatField(_cdsPayType.FieldByName('ACDEXAMT')).DisplayFormat := '#,##0.00';
           DataSet.FieldByName('ACDEXAMT').AsCurrency:=cdsExtAmt.FieldByName('AMT').AsCurrency;
        end;
  end;



  vatACM:=0;
  acmAMT:=0;acmRCV:=0; acmEX:=0;

  acmVATC;


  if trim(DataSet.FieldByName('ACDNET').AsString)='C' then
  begin
    _OtherCRAmount:=_OtherCRAmount+_cdsPayType.FieldByName('ACDRCV').AsCurrency;
    //_OtherCRAmount:=_OtherCRAmount+acmRCV;
  end else  if trim(DataSet.FieldByName('ACDNET').AsString)='D' then
  begin
    _OtherDRAmount:=_OtherDRAmount+_cdsPayType.FieldByName('ACDRCV').AsCurrency;
    //_OtherDRAmount:=_OtherDRAmount+acmRCV;
  end;


   // gent contact
   if DataSet.FieldByName('ACDCON').AsString='' then DataSet.FieldByName('ACDCON').AsString:=TString(cmbContract.Properties.Items.Objects[cmbContract.SelectedItem]).Str;


   if DataSet.FieldByName('ACDCON').AsString<>'' then
   begin
      DataSet.FieldByName('ACDCONDES').AsString:=getContractName(frmChequeSeparate.SockCon,DataSet.FieldByName('ACDCON').AsString);
   end;



   _OtherAmount:=_OtherAmount+_cdsPayType.FieldByName('ACDRCV').AsCurrency;
   _cdsPayType.FieldByName('ACDBAL').AsCurrency:=_cdsPayType.FieldByName('ACDRCV').AsCurrency;

   _OtherAmount:=abs(_OtherDRAmount-_OtherCRAmount);
   //120 - (cover - 120)
   lbOtherPayNet.Caption:= FormatCurr('#,##0.00',abs(_OtherCRAmount-abs(_CoverAmount-_OtherDRAmount)));

   lbDiff.Caption:= FormatCurr('#,##0.00',_OtherAmount);



end;




end.
