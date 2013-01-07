unit U002SimilarReceiveFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxLabel, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxDBLabel, DBClient, RemCustomDS, RemDataSet, cxAutoFields, StrUtils,
  UIT_GLOBAL_LIB, cxLookAndFeels, cxTextEdit, cxDBEdit,  PleaseWait,DateUtils;

type
  TFrmU002SimilarReceive = class(TForm)
    PANE: TPanel;
    cxLabel2: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel3: TcxLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel7: TcxLabel;
    CQSCQN: TcxDBLabel;
    CQSBKC: TcxDBLabel;
    CQSBRC: TcxDBLabel;
    CQSDLC: TcxDBLabel;
    CQSCQD: TcxDBLabel;
    CQSCQA: TcxDBLabel;
    DCQDS001: TDataSource;
    DHLTC: TDataSource;
    DHLTC_DT: TDataSource;
    cxGrid1DBTableView1CQMACT: TcxGridDBColumn;
    cxGrid1DBTableView1CQMSTS: TcxGridDBColumn;
    cxGrid1DBTableView1CQMBRN: TcxGridDBColumn;
    cxGrid1DBTableView1CQMPDM: TcxGridDBColumn;
    cxGrid1DBTableView1CQMPDT: TcxGridDBColumn;
    cxGrid1DBTableView1CQMDNO: TcxGridDBColumn;
    cxGrid1DBTableView1CQMBNK: TcxGridDBColumn;
    cxGrid1DBTableView1CQMBBR: TcxGridDBColumn;
    cxGrid1DBTableView1CQMLET: TcxGridDBColumn;
    cxGrid1DBTableView1CQMCNO: TcxGridDBColumn;
    cxGrid1DBTableView1CQMTYP: TcxGridDBColumn;
    cxGrid1DBTableView1CQMCTY: TcxGridDBColumn;
    cxGrid1DBTableView1CQMDTE: TcxGridDBColumn;
    cxGrid1DBTableView1CQMITM: TcxGridDBColumn;
    cxGrid1DBTableView1CQMAMT: TcxGridDBColumn;
    cxGrid1DBTableView1CQMDUE: TcxGridDBColumn;
    cxGrid1DBTableView1CQMCSN: TcxGridDBColumn;
    cxGrid1DBTableView1CQMRMK: TcxGridDBColumn;
    cxGrid1DBTableView1CQMRS1: TcxGridDBColumn;
    cxGrid1DBTableView1CQMRS2: TcxGridDBColumn;
    cxGrid1DBTableView1CQMRS3: TcxGridDBColumn;
    cxGrid1DBTableView1CQMRS4: TcxGridDBColumn;
    cxGrid1DBTableView1CQMRS5: TcxGridDBColumn;
    cxGrid1DBTableView1CQMRN1: TcxGridDBColumn;
    cxGrid1DBTableView1CQMRN2: TcxGridDBColumn;
    cxGrid1DBTableView1CQMRN3: TcxGridDBColumn;
    cxGrid1DBTableView1CQMRN4: TcxGridDBColumn;
    cxGrid1DBTableView1CQMRN5: TcxGridDBColumn;
    cxGrid1DBTableView1CQMETD: TcxGridDBColumn;
    cxGrid1DBTableView1CQMETW: TcxGridDBColumn;
    cxGrid1DBTableView1CQMETU: TcxGridDBColumn;
    cxGrid1DBTableView1CQMMTD: TcxGridDBColumn;
    cxGrid1DBTableView1CQMMTU: TcxGridDBColumn;
    cxGrid1DBTableView1CQMMTW: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    DHP: TDataSource;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Panel2: TPanel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxGridDBTableView2BTRACT: TcxGridDBColumn;
    cxGridDBTableView2BTRSTS: TcxGridDBColumn;
    cxGridDBTableView2BTRBRN: TcxGridDBColumn;
    cxGridDBTableView2BTRPDM: TcxGridDBColumn;
    cxGridDBTableView2BTRPDT: TcxGridDBColumn;
    cxGridDBTableView2BTRTYP: TcxGridDBColumn;
    cxGridDBTableView2BTRDTE: TcxGridDBColumn;
    cxGridDBTableView2BTREFF: TcxGridDBColumn;
    cxGridDBTableView2BTRDOC: TcxGridDBColumn;
    cxGridDBTableView2BTRBNK: TcxGridDBColumn;
    cxGridDBTableView2BTRFAC: TcxGridDBColumn;
    cxGridDBTableView2BTRTAC: TcxGridDBColumn;
    cxGridDBTableView2BTRREF: TcxGridDBColumn;
    cxGridDBTableView2BTRCOD: TcxGridDBColumn;
    cxGridDBTableView2BTRTHN: TcxGridDBColumn;
    cxGridDBTableView2BTRTHS: TcxGridDBColumn;
    cxGridDBTableView2BTREGN: TcxGridDBColumn;
    cxGridDBTableView2BTREGS: TcxGridDBColumn;
    cxGridDBTableView2BTRPBY: TcxGridDBColumn;
    cxGridDBTableView2BTRCQB: TcxGridDBColumn;
    cxGridDBTableView2BTRCQR: TcxGridDBColumn;
    cxGridDBTableView2BTRCQN: TcxGridDBColumn;
    cxGridDBTableView2BTRCQD: TcxGridDBColumn;
    cxGridDBTableView2BTRCQS: TcxGridDBColumn;
    cxGridDBTableView2BTRBAC: TcxGridDBColumn;
    cxGridDBTableView2BTRAMT: TcxGridDBColumn;
    cxGridDBTableView2BTRFG1: TcxGridDBColumn;
    cxGridDBTableView2BTRETD: TcxGridDBColumn;
    cxGridDBTableView2BTRETT: TcxGridDBColumn;
    cxGridDBTableView2BTRETU: TcxGridDBColumn;
    cxGridDBTableView2BTRMTD: TcxGridDBColumn;
    cxGridDBTableView2BTRMTT: TcxGridDBColumn;
    cxGridDBTableView2BTRMTU: TcxGridDBColumn;
    cxGridDBTableView2BTRPAT: TcxGridDBColumn;
    HP: TClientDataSet;
    cxButton7: TcxButton;
    CNO: TcxDBTextEdit;
    DTE: TcxDBTextEdit;
    AMT: TcxDBTextEdit;
    BNK: TcxDBTextEdit;
    BBR: TcxDBTextEdit;
    CSN: TcxDBTextEdit;
    cxGridDBTableView1CQSACT: TcxGridDBColumn;
    cxGridDBTableView1CQSSTS: TcxGridDBColumn;
    cxGridDBTableView1CQSBRN: TcxGridDBColumn;
    cxGridDBTableView1CQSPDM: TcxGridDBColumn;
    cxGridDBTableView1CQSPDT: TcxGridDBColumn;
    cxGridDBTableView1CQSDNO: TcxGridDBColumn;
    cxGridDBTableView1CQSRNO: TcxGridDBColumn;
    cxGridDBTableView1CQSSEQ: TcxGridDBColumn;
    cxGridDBTableView1CQSCBR: TcxGridDBColumn;
    cxGridDBTableView1CQSCPD: TcxGridDBColumn;
    cxGridDBTableView1CQSCTP: TcxGridDBColumn;
    cxGridDBTableView1CQSRCT: TcxGridDBColumn;
    cxGridDBTableView1CQSAMT: TcxGridDBColumn;
    cxGridDBTableView1CQSCSN: TcxGridDBColumn;
    cxGridDBTableView1CQSVAT: TcxGridDBColumn;
    cxGridDBTableView1CQSWHT: TcxGridDBColumn;
    cxGridDBTableView1CQSNET: TcxGridDBColumn;
    cxGridDBTableView1CQSADF: TcxGridDBColumn;
    cxGridDBTableView1CQSCFA: TcxGridDBColumn;
    cxGridDBTableView1CQSPFA: TcxGridDBColumn;
    cxGridDBTableView1CQSWFA: TcxGridDBColumn;
    cxGridDBTableView1CQSIWT: TcxGridDBColumn;
    cxGridDBTableView1CQSRS1: TcxGridDBColumn;
    cxGridDBTableView1CQSRS2: TcxGridDBColumn;
    cxGridDBTableView1CQSRS3: TcxGridDBColumn;
    cxGridDBTableView1CQSRS4: TcxGridDBColumn;
    cxGridDBTableView1CQSRS5: TcxGridDBColumn;
    cxGridDBTableView1CQSRN1: TcxGridDBColumn;
    cxGridDBTableView1CQSRN2: TcxGridDBColumn;
    cxGridDBTableView1CQSRN3: TcxGridDBColumn;
    cxGridDBTableView1CQSRN4: TcxGridDBColumn;
    cxGridDBTableView1CQSRN5: TcxGridDBColumn;
    cxGridDBTableView1CQSETD: TcxGridDBColumn;
    cxGridDBTableView1CQSETW: TcxGridDBColumn;
    cxGridDBTableView1CQSETU: TcxGridDBColumn;
    cxGridDBTableView1CQSMTD: TcxGridDBColumn;
    cxGridDBTableView1CQSMTU: TcxGridDBColumn;
    cxGridDBTableView1CQSMTW: TcxGridDBColumn;
    HLTC_DT: TRemDataSet;
    HLTC: TRemDataSet;
    procedure HLTCAfterScroll(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure HLTCAfterOpen(DataSet: TDataSet);
    procedure HLTC_DTAfterOpen(DataSet: TDataSet);
    procedure HPAfterOpen(DataSet: TDataSet);
    procedure DataChanges(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    AO : Boolean;
    procedure SetSimilarReceive(VisibleControl: Boolean; SizeFrm: Integer; SetDataSource: TDataSource; Flag: string);
    procedure LoadHP;
    procedure AlertColor(THLTC:TcxDBTextEdit;TBANK:TcxDBLabel;Condition:Boolean);
  public
    StatusSR : string;
  end;

var
  FrmU002SimilarReceive: TFrmU002SimilarReceive;

implementation

uses U002MainDM,LoadBank,UIT_UTILS_LIB;

{$R *.dfm}

procedure TFrmU002SimilarReceive.DataChanges(Sender: TObject);
begin
  if cxGrid3.Visible = True then
  begin
    if (Trim(CNO.Text) <> '') and (Trim(CQSCQN.Caption) <> '') then
      AlertColor(CNO,CQSCQN,(not SameText(CNO.Text,IntToStr(StrToInt(CQSCQN.Caption)))))
    else
      AlertColor(CNO,CQSCQN,True);

    if (Trim(DTE.Text) <> '') and (Trim(CQSCQD.Caption) <> '') then
      AlertColor(DTE,CQSCQD,(not SameText(DTE.Text,FormatDateTime('yyyyMMdd',CQSCQD.DataBinding.DataSource.DataSet.FieldByName('CQSCQD').AsDateTime))))
    else
      AlertColor(DTE,CQSCQD,True);

    if (Trim(AMT.Text) <> '') and (Trim(CQSCQA.Caption) <> '') then
      AlertColor(AMT,CQSCQA,(not SameText(AMT.Text,CQSCQA.Caption)))
    else
      AlertColor(AMT,CQSCQA,True);

    if (Trim(BNK.Text) <> '') and (Trim(CQSBKC.Caption) <> '') then
      AlertColor(BNK,CQSBKC,(not SameText(BNK.Text,RightStr(CQSBKC.Caption,2))))
    else
      AlertColor(BNK,CQSBKC,True);

    if (Trim(BBR.Text) <> '') and (Trim(CQSBRC.Caption) <> '') then
      AlertColor(BBR,CQSBRC,(not SameText(BBR.Text,RightStr(CQSBRC.Caption,3))))
    else
      AlertColor(BBR,CQSBRC,True);
  end
  else
  begin
    if (Trim(CNO.Text) <> '') and (Trim(CQSCQN.Caption) <> '') then
      AlertColor(CNO,CQSCQN,(not SameText(CNO.Text,CQSCQN.Caption)))
    else
      AlertColor(CNO,CQSCQN,True);

    if (Trim(DTE.Text) <> '') and (Trim(CQSCQD.Caption) <> '') then
      AlertColor(DTE,CQSCQD,(not SameText(DTE.Text,CQSCQD.Caption)))
    else
      AlertColor(DTE,CQSCQD,True);

    if (Trim(AMT.Text) <> '') and (Trim(CQSCQA.Caption) <> '') then
      AlertColor(AMT,CQSCQA,(not SameText(AMT.Text,CQSCQA.Caption)))
    else
      AlertColor(AMT,CQSCQA,True);

    if (Trim(BNK.Text) <> '') and (Trim(CQSBKC.Caption) <> '') then
      AlertColor(BNK,CQSBKC,(not SameText(BNK.Text,CQSBKC.Caption)))
    else
      AlertColor(BNK,CQSBKC,True);

    if (Trim(BBR.Text) <> '') and (Trim(CQSBRC.Caption) <> '') then
      AlertColor(BBR,CQSBRC,(not SameText(BBR.Text,CQSBRC.Caption)))
    else
      AlertColor(BBR,CQSBRC,True);

    if (Trim(CSN.Text) <> '') and (Trim(CQSDLC.Caption) <> '') then
      AlertColor(CSN,CQSDLC,(not SameText(CSN.Text,CQSDLC.Caption)))
    else
      AlertColor(CSN,CQSDLC,True);
  end;
end;

procedure TFrmU002SimilarReceive.AlertColor(THLTC: TcxDBTextEdit;
  TBANK: TcxDBLabel; Condition: Boolean);
begin
  if Condition then
  begin
    THLTC.StyleDisabled.Color := clRed;
    THLTC.StyleDisabled.TextColor := clWhite;
    TBANK.Style.Color := clRed;
    TBANK.Style.TextColor := clWhite;
  end
  else
  begin
    THLTC.StyleDisabled.Color := clWindow;
    THLTC.StyleDisabled.TextColor := clWindowText;
    TBANK.Style.Color := clWindow;
    TBANK.Style.TextColor := clWindowText;
  end;
end;

procedure TFrmU002SimilarReceive.cxButton1Click(Sender: TObject);
var CDS : TClientDataSet;
begin
  if Application.MessageBox('Confirm to Edit your data same Bank?', 'Same Confirm',
    MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    StatusSR := '';
    with DMU002Main do
    begin
      CDS := TClientDataSet.Create(nil);
      try
        SC.AddProv('CDS','ALL');
        CDS.ProviderName := 'CDS';
        CDS.RemoteServer := SC;
        CDS.Close;
        CDS.CommandText := 'Update CQDM007 ' +
                           'Set CQMCNO=:A,CQMDTE=:B,CQMAMT=:C,CQMBNK=:D,CQMBBR=:E' +
                           '   ,CQMMTD=:F,CQMMTU=:G,CQMMTW=:H ' +
                           'Where CQMDNO=' + QuotedStr(HLTC.FieldByName('CQMDNO').AsString);
        CDS.Params.ParamByName('A').Value := CQDS001.FieldByName('CQSCQN').Value;
        CDS.Params.ParamByName('B').Value := CQDS001.FieldByName('CQSCQD').Value;
        CDS.Params.ParamByName('C').Value := CQDS001.FieldByName('CQSCQA').Value;
        CDS.Params.ParamByName('D').Value := CQDS001.FieldByName('CQSBKC').Value;
        CDS.Params.ParamByName('E').Value := CQDS001.FieldByName('CQSBRC').Value;
        CDS.Params.ParamByName('F').Value := FormatDateTime('MM/dd/yyyy HH:mm:ss',getServerDateTime(DMU002Main.SC));
        CDS.Params.ParamByName('G').Value := DMU002Main.DLL.UserID;
        CDS.Params.ParamByName('H').Value := DMU002Main.DLL.WorkStation;
        CDS.Execute;
        PleaseWaitBegin('Re-Check Deposit');
        ProcessDeposit(CQDM005,CQDS001,HP,SC,DLL,'LS');
        PleaseWaitEnd;
      finally
        CDS.Free;
        Close;
      end;
    end;
  end;
end;

procedure TFrmU002SimilarReceive.cxButton2Click(Sender: TObject);
begin
  StatusSR := 'Seperate';
  Close;
end;

procedure TFrmU002SimilarReceive.cxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmU002SimilarReceive.cxButton4Click(Sender: TObject);
begin
  StatusSR := 'Edit';
  Close;
end;

procedure TFrmU002SimilarReceive.cxButton5Click(Sender: TObject);
begin
  PleaseWaitBegin('Re-Check Deposit');
  ProcessDeposit(DMU002Main.CQDM005,DMU002Main.CQDS001,DMU002Main.HP,DMU002Main.SC,DMU002Main.DLL,'HP');
  PleaseWaitEnd;
  if DMU002Main.CQDS001.FieldByName('CQSETY').AsString = 'EX' then
  begin
    Close;
  end
  else LoadHP;
end;

procedure TFrmU002SimilarReceive.cxButton6Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmU002SimilarReceive.cxButton7Click(Sender: TObject);
begin
  if Application.MessageBox('Verify to Confirm this item is the new item?', 'New Item Confirm',
    MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    with DMU002Main do
    begin
      CQDS001.Edit;
      CQDS001.FieldByName('CQSLDF').Value := 'T';
      CQDS001.FieldByName('CQSETY').Value := '';
      CQDS001.FieldByName('CQSRMK').Value := '';
      CQDS001.Post;
      ProcessDeposit(CQDM005,CQDS001,HP,SC,DLL,'NULL');
    end;
    StatusSR := '';
    Close;
  end;
end;

procedure TFrmU002SimilarReceive.FormCreate(Sender: TObject);
begin
  StatusSR := '';
  AO := False;
  if DMU002Main.CQDS001.FieldByName('CQSBTY').AsString = 'HP' then
    SetSimilarReceive(False,574,DHP,'HP')
  else if DMU002Main.CQDS001.FieldByName('CQSBTY').AsString = 'LS' then
    SetSimilarReceive(True,682,DHLTC,'LS');
end;

procedure TFrmU002SimilarReceive.FormShow(Sender: TObject);
begin
  AO := True;
  IF DMU002Main.CQDS001.FieldByName('CQSBTY').AsString = 'LS' then
    HLTCAfterScroll(HLTC_DT);
end;

procedure TFrmU002SimilarReceive.HLTCAfterOpen(DataSet: TDataSet);
begin
  with HLTC do
  begin
    TFloatField(FieldByName('CQMAMT')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQMDTE')).DisplayFormat := 'dd/MM/yyyy';
    TFloatField(FieldByName('CQMDUE')).DisplayFormat := 'dd/MM/yyyy';
    TFloatField(FieldByName('CQMETD')).DisplayFormat := 'dd/MM/yyyy';
    TFloatField(FieldByName('CQMMTD')).DisplayFormat := 'dd/MM/yyyy';
  end;
end;

procedure TFrmU002SimilarReceive.HLTCAfterScroll(DataSet: TDataSet);
begin
  if AO = True then
  begin
    DMU002Main.SC.AddProv('HLTC_DT','ALL');
    HLTC_DT.ProviderName := 'HLTC_DT';
    HLTC_DT.Command := 'Select * From CQDS003 Where CQSDNO=' + QuotedStr(HLTC.FieldByName('CQMDNO').AsString);
    HLTC_DT.Locate('CQSCSN',DMU002Main.CQDS001.FieldByName('CQSDLC').AsString,[]);
  end;
end;



procedure TFrmU002SimilarReceive.HLTC_DTAfterOpen(DataSet: TDataSet);
begin
  with HLTC_DT do
  begin
    TFloatField(FieldByName('CQSAMT')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQSVAT')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQSWHT')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQSNET')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQSADF')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQSETD')).DisplayFormat := 'dd/MM/yyyy';
    TFloatField(FieldByName('CQSMTD')).DisplayFormat := 'dd/MM/yyyy';
  end;
end;

procedure TFrmU002SimilarReceive.HPAfterOpen(DataSet: TDataSet);
begin
  with HP do
  begin
    TFloatField(FieldByName('BTRAMT')).DisplayFormat := '#,##0.00';
//    TFloatField(FieldByName('BTRCQD')).DisplayFormat := 'dd/MM/yyyy';
//    TFloatField(FieldByName('BTRETD')).DisplayFormat := 'dd/MM/yyyy';
//    TFloatField(FieldByName('BTRETT')).DisplayFormat := 'HH:mm:ss';
  end;
end;

procedure TFrmU002SimilarReceive.LoadHP;
begin
  with DMU002Main.CQDS001 do
  begin
    HP.Close;
    HP.ProviderName := 'DSP3';
    HP.CommandText := 'SELECT * FROM HPPDTA.HPTBTR00 ' +
                      'WHERE ((BTRAMT=' + FieldByName('CQSCQA').AsString + ' AND BTRCQD=' + FormatDateTime('yyyyMMdd',FieldByName('CQSCQD').AsDateTime) + ')' +
                      '   OR  (BTRAMT=' + FieldByName('CQSCQA').AsString + ' AND BTRCQN=' + FieldByName('CQSCQN').AsString + ')' +
                      '   OR  (BTRAMT=' + FieldByName('CQSCQA').AsString + ' AND BTRCQR=''' + RightStr(FieldByName('CQSBRC').AsString,3) + ''')' +
                      '   OR  (BTRAMT=' + FieldByName('CQSCQA').AsString + ' AND BTRCQB=''' + RightStr(FieldByName('CQSBKC').AsString,2) + '''))' +
                      '  AND BTRSTS<>''0''' +
                      '  AND BTRDTE > ''' + FormatDateTime('yyyyMMdd',IncYear(NOW,-1)) + '''' +
                      '  AND BTRTYP=''3''';
    HP.Open;
  end;
end;

procedure TFrmU002SimilarReceive.SetSimilarReceive(VisibleControl: Boolean;
  SizeFrm: Integer; SetDataSource: TDataSource; Flag: string);
begin                                               
  Self.Width := SizeFrm;
  cxGrid1.Visible := VisibleControl;
  cxGrid2.Visible := VisibleControl;
  cxGrid3.Visible := not VisibleControl;
  Panel1.Visible := VisibleControl;
  Panel2.Visible := not VisibleControl;
  CNO.DataBinding.DataSource := SetDataSource;
  DTE.DataBinding.DataSource := SetDataSource;
  AMT.DataBinding.DataSource := SetDataSource;
  BNK.DataBinding.DataSource := SetDataSource;
  BBR.DataBinding.DataSource := SetDataSource;
  with DMU002Main.CQDS001 do
  begin
  if Flag = 'HP' then
    begin
      CNO.DataBinding.DataField := 'BTRCQN';
      DTE.DataBinding.DataField := 'BTRCQD';
      AMT.DataBinding.DataField := 'BTRAMT';
      BNK.DataBinding.DataField := 'BTRCQB';
      BBR.DataBinding.DataField := 'BTRCQR';
      LoadHP;
    end
  else if Flag = 'LS' then
    begin
      CNO.DataBinding.DataField := 'CQMCNO';
      DTE.DataBinding.DataField := 'CQMDTE';
      AMT.DataBinding.DataField := 'CQMAMT';
      BNK.DataBinding.DataField := 'CQMBNK';
      BBR.DataBinding.DataField := 'CQMBBR';
      CSN.DataBinding.DataSource := DHLTC_DT;
      CSN.DataBinding.DataField := 'CQSCSN';
      DMU002Main.SC.AddProv('HLTC','ALL');
      HLTC.ProviderName := 'HLTC';
      HLTC.Command := 'Select a.* ' +
                      'From CQDM007 a Left join CQDS003 b On a.CQMDNO=b.CQSDNO ' +
                      'Where a.CQMAMT=' + FieldByName('CQSCQA').AsString +
                      ' And b.CQSCSN=''' + FieldByName('CQSDLC').AsString + '''' +
                      ' And (a.CQMACC IS NULL OR RTRIM(LTRIM(a.CQMACC))='''')' +
                      ' AND LEFT(a.CQMDNO,1) <> ''#'' AND LEFT(a.CQMDNO,1) <> ''*''' +
                      ' AND not exists (select * from CQDM011 c where a.CQMDNO = c.CQMRFN)' +
                      ' AND b.CQSRCT=''N''' +
                      ' AND A.CQMACT=''A''';
      HLTC.Open;
      //InputBox('','',HLTC.Command);
    end;
  end;
end;

end.
