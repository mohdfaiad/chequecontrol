unit CQPQ003EditChequeFrm;

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
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, SearchBar,CQPQ003EditChequeDM,
  cxDBLabel, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxSplitter, cxAutoFields,
  DBCtrls, UIT_GLOBAL_LIB, UIT_UTILS_LIB, RemDataSet, StrUtils, JvComponentBase,
  JvEnterTab;

type
  TFrmCQPQ003EditCheque = class(TfrmBase)
    EditCHQ: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1STSA: TcxGridDBColumn;
    cxGrid1DBTableView1CQMCNOA: TcxGridDBColumn;
    cxGrid1DBTableView1CQMEGNB: TcxGridDBColumn;
    cxGrid1DBTableView1CQMBRHB: TcxGridDBColumn;
    cxGrid1DBTableView1CQMNO2A: TcxGridDBColumn;
    cxGrid1DBTableView1CQMCTYA: TcxGridDBColumn;
    cxGrid1DBTableView1CQMDATA: TcxGridDBColumn;
    cxGrid1DBTableView1CQMAMTA: TcxGridDBColumn;
    cxGrid1DBTableView1CQMPATA: TcxGridDBColumn;
    cxGrid1DBTableView1BACOWNC: TcxGridDBColumn;
    cxGrid1DBTableView1CQMACCA: TcxGridDBColumn;
    cxGrid1DBTableView1CQMRFNA: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2CQMRFNA: TcxGridDBColumn;
    cxGrid1DBTableView2CQSCSND: TcxGridDBColumn;
    cxGrid1DBTableView2DLRNameF: TcxGridDBColumn;
    cxGrid1DBTableView2CARMDLH: TcxGridDBColumn;
    cxGrid1DBTableView2CQSRS1D: TcxGridDBColumn;
    cxGrid1DBTableView2CQSRS2D: TcxGridDBColumn;
    cxGrid1DBTableView2CQSNETD: TcxGridDBColumn;
    DCHQ: TDataSource;
    DCSN: TDataSource;
    Panel1: TPanel;
    cxLabel14: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel12: TcxLabel;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    cxLabel16: TcxLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    STS: TcxDBLabel;
    CQMEGN: TcxDBLabel;
    CQMBRH: TcxDBLabel;
    CQMCTY: TcxDBLabel;
    CQMNO2: TcxDBLabel;
    CQMDAT: TcxDBLabel;
    CQMDUE: TcxDBLabel;
    CQMAMT: TcxDBLabel;
    CQMPAT: TcxDBLabel;
    CQMACC: TcxDBLabel;
    CQMTRD: TcxDBLabel;
    cxLabel27: TcxLabel;
    CQSCSN: TcxDBLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel28: TcxLabel;
    cxGrid2DBTableView1CQSDNO: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRCT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSAMT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSCSN: TcxGridDBColumn;
    cxGrid2DBTableView1CQSVAT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSWHT: TcxGridDBColumn;
    cxGrid2DBTableView1CQSNET: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRS1: TcxGridDBColumn;
    cxGrid2DBTableView1CQSRS2: TcxGridDBColumn;
    DCON: TDataSource;
    CQMSTS: TcxDBTextEdit;
    BNK: TcxDBTextEdit;
    BBR: TcxDBTextEdit;
    CTY: TcxDBTextEdit;
    NO2: TcxDBTextEdit;
    DAT: TcxDBTextEdit;
    DUE: TcxDBTextEdit;
    AMT: TcxDBTextEdit;
    PAT: TcxDBTextEdit;
    ACC: TcxDBTextEdit;
    TRD: TcxDBTextEdit;
    DECHQ: TDataSource;
    CAF: TCxAutoFields;
    CSNO: TcxTextEdit;
    DECSN: TDataSource;
    cxGrid1DBTableView2CQSWHTD: TcxGridDBColumn;
    cxGrid1DBTableView2CQSVATD: TcxGridDBColumn;
    cxGrid1DBTableView2CQSAMTD: TcxGridDBColumn;
    SearchBar1: TSearchBar;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    procedure cxGrid1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormShow(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure cxTabSheet2Resize(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure CSNOExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CSNOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView2ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnSearchClick(Sender: TObject);
    procedure CQMSTSExit(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BNKExit(Sender: TObject);
    procedure BBRExit(Sender: TObject);
    procedure BNKEnter(Sender: TObject);
    procedure BBREnter(Sender: TObject);
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
    FLoadedForm: TForm;
    FLibHandle: Cardinal;
    cdsH,cdsD: TClientDataSet;
    procedure ShowSeperateChq(_contract,ChqNo: string; ChqAmount: Currency);
    procedure CreateRecevie;
    procedure SaveRecevie;
    procedure UpdateRecevie;
    procedure AddRecevie11(Goods,Vat,Wht,Net:string);
    procedure CheckContract;
    function GetStr(var Inpstr: string; Delim: string): string;
    function Between(SubStr1, SubStr2, s: string): string;
    function LastPos(InpStr, s: string): byte;
    function After(InpStr, s: string): string;
  public
    { Public declarations }
  end;

var
  FrmCQPQ003EditCheque: TFrmCQPQ003EditCheque;

implementation

uses CQPQ003RemarkFrm;

{$R *.dfm}

procedure TFrmCQPQ003EditCheque.AddRecevie11(Goods,Vat,Wht,Net:string);
begin
  CreateRecevie;
  with DMCQPQ003EditCheque do
  begin
    cdsH.close;
    cdsH.CommandText:='select * from CQDM007 where CQMACT=''Z''';
    cdsH.open;
    cdsH.Append;
    cdsH.FieldByName('CQMACT').Value := 'A';
    cdsH.FieldByName('CQMSTS').Value := 'E';
    cdsH.FieldByName('CQMDFG').Value := 'R';
    cdsH.FieldByName('CQMBRN').Value := Dll.Branch;
    cdsH.FieldByName('CQMPDM').Value := Dll.PDM;
    cdsH.FieldByName('CQMPDT').Value := Dll.PDT;
    cdsH.FieldByName('CQMDNO').Value := GeneratePWDSecurityString(15);
    cdsH.FieldByName('CQMACC').Value := ECHQ.FieldByName('CQMACC').AsString;
    cdsH.FieldByName('CQMPAT').Value := ECHQ.FieldByName('CQMPAT').AsString;
    cdsH.FieldByName('CQMBNK').Value := ECHQ.FieldByName('CQMBNK').AsString;
    cdsH.FieldByName('CQMBBR').Value := ECHQ.FieldByName('CQMBBR').AsString;
    cdsH.FieldByName('CQMCNO').Value := ECHQ.FieldByName('CQMNO2').AsString;
    cdsH.FieldByName('CQMCTY').Value := ECHQ.FieldByName('CQMCTY').AsString;
    cdsH.FieldByName('CQMDTE').Value := ECHQ.FieldByName('CQMDAT').AsDateTime;
    cdsH.FieldByName('CQMAMT').Value := ECHQ.FieldByName('CQMAMT').AsFloat;
    cdsH.FieldByName('CQMDUE').Value := ECHQ.FieldByName('CQMDUE').AsDateTime;
    cdsH.FieldByName('CQMCSN').Value := CSNO.Text;
    cdsH.FieldByName('CQMETD').Value := getServerDateTime(EC);
    cdsH.FieldByName('CQMETW').Value := Dll.WorkStation;
    cdsH.FieldByName('CQMETU').Value := Dll.UserID;
    cdsH.Post;

    cdsD.close;
    cdsD.CommandText:='select * from CQDS003 where CQSACT=''Z''';
    cdsD.open;
    cdsD.Append;
    cdsD.FieldByName('CQSACT').Value := 'A';
    cdsD.FieldByName('CQSSTS').Value := 'A';
    cdsD.FieldByName('CQSBRN').Value := Dll.Branch;
    cdsD.FieldByName('CQSPDM').Value := Dll.PDM;
    cdsD.FieldByName('CQSPDT').Value := Dll.PDT;
    cdsD.FieldByName('CQSDNO').Value := cdsH.FieldByName('CQMDNO').AsString;
    cdsD.FieldByName('CQSSEQ').Value := 1;
    cdsD.FieldByName('CQSRCT').Value := 'N';
    cdsD.FieldByName('CQSAMT').Value := Goods;
    cdsD.FieldByName('CQSCSN').Value := Trim(CSNO.Text);
    cdsD.FieldByName('CQSVAT').Value := Vat;
    cdsD.FieldByName('CQSWHT').Value := Wht;
    cdsD.FieldByName('CQSNET').Value := Net;
    cdsD.FieldByName('CQSADF').Value := 0;
    cdsD.FieldByName('CQSCFA').Value := 1;
    cdsD.FieldByName('CQSPFA').Value := 'Y';
    cdsD.FieldByName('CQSWFA').Value := 'Y';
    cdsD.FieldByName('CQSRS1').Value := '013';
    cdsD.FieldByName('CQSRS2').Value := 'ค่าเช่า';
    cdsD.FieldByName('CQSETD').Value := getServerDateTime(EC);
    cdsD.FieldByName('CQSETW').Value := Dll.WorkStation;
    cdsD.FieldByName('CQSETU').Value := Dll.UserID;
    cdsD.Post;

    DECSN.DataSet := cdsD;
  end;
end;

procedure TFrmCQPQ003EditCheque.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
  Self.Close;
end;

procedure TFrmCQPQ003EditCheque.btnPrintClick(Sender: TObject);
var obj:array of TReportParam;
    DNO : string;
begin
  inherited;
  SetLength(obj,4);
  obj[0]:=TReportParam.Create;
  obj[1]:=TReportParam.Create;
  obj[2]:=TReportParam.Create;
  obj[3]:=TReportParam.Create;
  if DECHQ.DataSet.State in [dsInsert,dsEdit] then DECHQ.DataSet.Post;
  DNO := DCHQ.DataSet.FieldByName('CQMDNO').AsString;
  DCHQ.DataSet.Filter := 'CQMDNO=''' + DNO + '''';
  DCHQ.DataSet.Filtered := True;
  ShowReportDataset(DMCQPQ003EditCheque.EC,'MC07',obj
                   ,DCON.DataSet
                   ,DECSN.DataSet
                   ,DCHQ.DataSet
                   ,DECHQ.DataSet);
  DCHQ.DataSet.Filtered := False;
  DCHQ.DataSet.Locate('CQMDNO',DNO,[])
//  ShowReport(DMCQPQ003EditCheque.EC,'MC07',obj);
end;

procedure TFrmCQPQ003EditCheque.btnSaveClick(Sender: TObject);
var DNO : string;
begin
  inherited;
  with DMCQPQ003EditCheque do
  begin
    EC.StartTran;
    try
      if ECHQ.State in [dsInsert,dsEdit] then ECHQ.Post;
      if (ECHQ.FieldByName('STS').AsString <> CHQ.FieldByName('STS').AsString)
      or (ECHQ.FieldByName('CQMBNK').AsString <> LeftStr(CHQ.FieldByName('CQMEGN').AsString,3))
      or (ECHQ.FieldByName('CQMBBR').AsString <> LeftStr(CHQ.FieldByName('CQMBRH').AsString,4))
      or (ECHQ.FieldByName('CQMCTY').AsString <> CHQ.FieldByName('CQMCTY').AsString)
      or (ECHQ.FieldByName('CQMNO2').AsString <> CHQ.FieldByName('CQMNO2').AsString)
      or (ECHQ.FieldByName('CQMDAT').AsString <> CHQ.FieldByName('CQMDAT').AsString)
      or (ECHQ.FieldByName('CQMDUE').AsString <> CHQ.FieldByName('CQMDUE').AsString)
      or (ECHQ.FieldByName('CQMAMT').AsString <> CHQ.FieldByName('CQMAMT').AsString)
      or (ECHQ.FieldByName('CQMPAT').AsString <> CHQ.FieldByName('CQMPAT').AsString)
      or (ECHQ.FieldByName('CQMACC').AsString <> CHQ.FieldByName('CQMACC').AsString)
      or (ECHQ.FieldByName('CQMTRD').AsString <> CHQ.FieldByName('CQMTRD').AsString)
      or ((CQSCSN.Caption <> trim(CSNO.Text)) or ((CQSCSN.Caption = trim(CSNO.Text)) and (DECSN.DataSet = cdsD)))
      then 
      begin    
        IF DECSN.DataSet = cdsD THEN 
          SaveRecevie
        else
          UpdateRecevie;
        SaveECHQ;
        EC.Commit;
        ShowMessage('Save Edit Completed');
        DNO := CHQ.FieldByName('CQMDNO').AsString;
        btnPrint.Click;
        btnSearch.Click;
        CHQ.Locate('CQMDNO',DNO,[]);
        EditCHQ.ActivePage := cxTabSheet1;
      end
      else EC.Commit;
    except
      on ee:Exception do
      begin
        Application.MessageBox(pchar(ee.Message),pchar('Warning'),MB_OK or MB_ICONWARNING);
        EC.Rollback;
      end;
    end;
  end;
end;

procedure TFrmCQPQ003EditCheque.btnSearchClick(Sender: TObject);
var sqlCHQ,WHERE1,WHERE2,CCCC,FiledS,CHQ,CSN,STS,Prefix : string;
begin
  inherited;
  CHQ := ' SELECT A.CQMACT+A.CQMSTS AS STS' + #13 +
         '       , A.CQMDNO' + #13 +
         '       , A.CQMCNO' + #13 +
         '       , B.CQMEGN' + #13 +
         '       , B.CQMBRH' + #13 +
         '       , A.CQMNO2' + #13 +
         '       , A.CQMCTY' + #13 +
         '       , A.CQMDAT' + #13 +
         '       , A.CQMDUE' + #13 +
         '       , A.CQMTRD' + #13 +
         '       , A.CQMAMT' + #13 +
         '       , A.CQMPAT' + #13 +
         '       , C.BACOWN' + #13 +
         '       , A.CQMACC' + #13 +
         '       , A.CQMRFN' + #13 +
         ' FROM CQDM011 A'  + #13 +
         ' LEFT JOIN CQDM001 B ON A.CQMBNK=B.CQMBNK AND A.CQMBBR=B.CQMBRC' + #13 +
         ' LEFT JOIN DBMBAC00 C ON CAST(A.CQMPAT AS INT) = C.BACPAT      ' + #13 +
         ' LEFT JOIN CQDS003 D ON A.CQMRFN=D.CQSDNO                      ' + #13 +
         ' LEFT JOIN LHPPDTA.DBO.TMP_INFOCOLLECTION E ON E.FSYSTEM=''LS'' AND D.CQSCSN=E.CONRUN' + #13 +
         ' GROUP BY A.CQMACT+A.CQMSTS,A.CQMCNO,B.CQMEGN,B.CQMBRH,A.CQMNO2' + #13 +         '         ,A.CQMCTY,A.CQMDAT,A.CQMDUE,A.CQMTRD,A.CQMAMT,A.CQMPAT' + #13 +         '         ,C.BACOWN,A.CQMACC,A.CQMRFN, A.CQMDNO                 ' + #13 +
         ' ORDER BY A.CQMRFN ' + #13 +
         '';
  CSN := DMCQPQ003EditCheque.CSN.CommandText;
  WHERE1 := SearchBar1.GetSQL;
  WHERE2 := SearchBar1.GetSQL;
  while Trim(WHERE1) <> '' do
  begin
    CCCC   := GetStr(WHERE1,'AND');
    FiledS := Trim(Between('[',']',CCCC));
    if Trim(FiledS) <> '' then
    begin
      if FiledS = 'STS' then
        begin
          STS := Between('%','%',CCCC);
          if Length(STS) < 2 then
            begin
              //ShowMessage('<');
              WHERE2 := StringReplace(WHERE2,'AND' + CCCC,'',[rfReplaceAll,rfIgnoreCase]);
              WHERE2 := StringReplace(WHERE2,CCCC,'',[rfReplaceAll,rfIgnoreCase]);
            end
          else if Length(STS) > 2 then
            begin
              //ShowMessage('>');
              WHERE2 := StringReplace(WHERE2,'AND' + CCCC,'',[rfReplaceAll,rfIgnoreCase]);
              WHERE2 := StringReplace(WHERE2,CCCC,'',[rfReplaceAll,rfIgnoreCase]);
            end
          else
          if Pos('WHERE',UpperCase(CCCC)) > 0 then
            WHERE2 := StringReplace(WHERE2,After(' ',Trim(CCCC)),'A.CQMACT=''' + LeftStr(STS,1) + ''' AND A.CQMSTS=''' + RightStr(STS,1) + '''',[rfReplaceAll,rfIgnoreCase])
          else
            WHERE2 := StringReplace(WHERE2,Trim(CCCC),' A.CQMACT=''' + LeftStr(STS,1) + ''' AND A.CQMSTS=''' + RightStr(STS,1) + '''',[rfReplaceAll,rfIgnoreCase]);
        end
      else
        begin
          if Pos(FiledS,CHQ) > 0 then
            Prefix := LeftStr(Trim(MidStr(CHQ,Pos(FiledS,CHQ)-3,3)),2)
          else if Pos(FiledS,CSN) > 0 then
            Prefix := LeftStr(Trim(MidStr(CSN,Pos(FiledS,CSN)-3,3)),2)
          else
            Prefix := '';
          WHERE2 := StringReplace(WHERE2,'[' + FiledS + ']',Prefix + '[' + FiledS + ']',[rfReplaceAll,rfIgnoreCase]);
        end;
    end;
  end;
  //ShowMessage(StringReplace(CHQ,' GROUP BY',WHERE2 + #13 + ' GROUP BY',[rfReplaceAll,rfIgnoreCase]));
  DMCQPQ003EditCheque.CHQ.Command := StringReplace(CHQ,' GROUP BY',WHERE2 + #13 + ' GROUP BY',[rfReplaceAll,rfIgnoreCase]);
end;

procedure TFrmCQPQ003EditCheque.CheckContract;
var Contract:string;
    CC:TClientDataSet;
begin
  Contract := Trim(CSNO.Text);
  if (Contract <> '') and (Contract <> Trim(CQSCSN.Caption)) and (Length(Contract) = 7) then
    begin
      CC := TClientDataSet.Create(nil);
      try
        with DMCQPQ003EditCheque do
        begin
          EC.AddProv('CC','ALL');
          CC.ProviderName := 'CC';
          CC.RemoteServer := EC;
          CC.Close;
//          CC.CommandText := 'SELECT * from FN_CalcuGoods((SELECT (CONINA-CONINV) FROM HPMCON00 WHERE CONRUN=''' + Contract + '''),''' + Contract + ''')';
          CC.CommandText := 'SELECT * from FN_CalcuGoods((SELECT INSIAM FROM HPTINS00 WHERE INSCRN=''' + Contract + ''' AND INSITM=1),''' + Contract + ''')';
          CC.Open;
          if FormatFloat('0.00',CC.FieldByName('NET').AsFloat)
           = FormatFloat('0.00',ECHQ.FieldByName('CQMAMT').AsFloat) then
            AddRecevie11(CC.FieldByName('GOODS').AsString
                        ,CC.FieldByName('VAT').AsString
                        ,CC.FieldByName('WHT').AsString
                        ,CC.FieldByName('NET').AsString)
          else if FormatFloat('0.00',CC.FieldByName('NET').AsFloat) <> '0.00' then                     
            ShowSeperateChq(Contract
                           ,ECHQ.FieldByName('CQMNO2').AsString
                           ,ECHQ.FieldByName('CQMAMT').AsCurrency)
          else
            begin
              DECSN.DataSet := DMCQPQ003EditCheque.CONT;
              CSNO.Text := CQSCSN.Caption;
            end;  
        end;
      except
        on ee:Exception do
        begin
          Application.MessageBox(pchar(ee.Message),pchar('Warning'),MB_OK or MB_ICONWARNING);
          exit;
        end;
      end;
    end
  else
    begin
      DECSN.DataSet := DMCQPQ003EditCheque.CONT;
      CSNO.Text := CQSCSN.Caption;
    end;
end;

procedure TFrmCQPQ003EditCheque.CQMSTSExit(Sender: TObject);
begin
  inherited;
  IF Length(CQMSTS.TEXT) < 2 then
  begin
    DMCQPQ003EditCheque.ECHQ.Edit;
    DMCQPQ003EditCheque.ECHQ.FieldByName('STS').AsString := DMCQPQ003EditCheque.ECHQ.FieldByName('CQMACT').AsString + DMCQPQ003EditCheque.ECHQ.FieldByName('CQMSTS').AsString;
    DMCQPQ003EditCheque.ECHQ.Post;
  end;
end;

procedure TFrmCQPQ003EditCheque.CreateRecevie;
begin
  if (cdsH <> nil) or (cdsD <> nil)  then
  begin
    cdsH.Free;
    cdsD.Free;
  end;
  cdsH := TClientDataSet.Create(nil);
  cdsD := TClientDataSet.Create(nil);
  with DMCQPQ003EditCheque do
  begin
    EC.AddProv('cdsH,cdsD','ALL');
    cdsH.ProviderName := 'cdsH';
    cdsD.ProviderName := 'cdsD';
    cdsH.RemoteServer := EC;
    cdsD.RemoteServer := EC;
  end;
end;

procedure TFrmCQPQ003EditCheque.CSNOExit(Sender: TObject);
begin
  inherited;
  //CheckContract;
end;

procedure TFrmCQPQ003EditCheque.CSNOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then CheckContract;
end;

procedure TFrmCQPQ003EditCheque.cxButton1Click(Sender: TObject);
begin
  inherited;
  FrmCQPQ003Remark := TFrmCQPQ003Remark.Create(Self);
  Self.IsActive := False;
  try
    FrmCQPQ003Remark.ShowModal;
  finally
    Self.IsActive := True;
    FrmCQPQ003Remark.Free;  
  end;
end;

procedure TFrmCQPQ003EditCheque.cxGrid1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  inherited;
  if cxGrid1DBTableView1.Columns[AColumn.Index].DataBinding.Field <> nil then
     SearchBar1.AddSearch(cxGrid1DBTableView1.Columns[AColumn.Index].DataBinding.Field,AColumn.Caption);

end;

procedure TFrmCQPQ003EditCheque.cxGrid1DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmCQPQ003EditCheque.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  EditCHQ.ActivePage := cxTabSheet2;
end;

procedure TFrmCQPQ003EditCheque.cxGrid1DBTableView2ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  inherited;
  if cxGrid1DBTableView2.Columns[AColumn.Index].DataBinding.Field <> nil then
    SearchBar1.AddSearch(cxGrid1DBTableView2.Columns[AColumn.Index].DataBinding.Field,AColumn.Caption);
end;

procedure TFrmCQPQ003EditCheque.cxGrid1DBTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor2;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmCQPQ003EditCheque.cxGrid2DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmCQPQ003EditCheque.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmCQPQ003EditCheque.cxTabSheet2Resize(Sender: TObject);
begin
  inherited;
  Panel1.Width := (cxTabSheet2.Width - 8) div 2  ;
end;

procedure TFrmCQPQ003EditCheque.cxTabSheet2Show(Sender: TObject);
begin
  inherited;
  DMCQPQ003EditCheque.LoadECHQ;
  DMCQPQ003EditCheque.LoadCONT;
  CSNO.Text := CQSCSN.Caption;
end;

procedure TFrmCQPQ003EditCheque.FormCreate(Sender: TObject);
begin
  inherited;
  ToolbarEnable := [tbClose,tbSearch,tbSave];
end;

procedure TFrmCQPQ003EditCheque.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmCQPQ003EditCheque.FormShow(Sender: TObject);
begin
  inherited;
  DMCQPQ003EditCheque.LoadCHQ;
  DMCQPQ003EditCheque.LoadCSN;
  EditCHQ.ActivePage := cxTabSheet1;
  lbMainCurrentDate.Caption:= 'Date: '+ FormatDateTime('dd/MM/yyyy',getServerDateTime(DMCQPQ003EditCheque.EC));
  Self.ToolbarEnable :=  [tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];
end;

procedure TFrmCQPQ003EditCheque.SaveRecevie;
begin
  if cdsD.Active then 
  begin
    if cdsD.RecordCount>0 then
    begin
      cdsH.Edit;
      cdsH.FieldByName('CQMDNO').AsString := getRunning(DMCQPQ003EditCheque.EC,'MTN','EDITCHEQUE','EDITCHEQUE','');
      cdsH.Post;
      cdsD.First;
      while not cdsD.Eof do
      begin
        cdsD.Edit;
        cdsD.FieldByName('CQSDNO').AsString := cdsH.FieldByName('CQMDNO').AsString;
        cdsD.Post;
        cdsD.Next;
      end;                 

        cdsH.ApplyUpdates(0);
        cdsD.ApplyUpdates(0);
        DMCQPQ003EditCheque.ECHQ.Edit;
        DMCQPQ003EditCheque.ECHQ.FieldByName('CQMRFN').AsString := cdsH.FieldByName('CQMDNO').AsString;
        DMCQPQ003EditCheque.ECHQ.Post;
    end
  end;  
end;

procedure TFrmCQPQ003EditCheque.ShowSeperateChq(_contract,ChqNo: string; ChqAmount: Currency);
var p:TPluginParams;
type
  TMyFormClass = function: TFormClass; stdcall;
  TPluginInitParams= procedure (params:TPluginParams);stdcall;
  TExeCutePlugIn = procedure (cds:TClientDataSet;_MainApp:TApplication;Params:TPluginParams);stdcall;

var
  lMyFormClass: TMyFormClass;
  PluginInitParams:TPluginInitParams;
  _params:TPluginParams;
  ExeCutePlugin:TExeCutePlugIn;
  _NUMROW:integer;

var
   AComponent: TComponent;
   I : integer;
   _sock:TSockCon;
   _cds:TClientDataSet;
   _cdsSeperateTmp: TClientDataSet;
begin
  inherited;
  if FLibHandle=0 then
    FLibHandle := LoadLibrary('CQPU006.dll');     // seperate cheque module
  ExeCutePlugin := GetProcAddress(FLibHandle, 'ExeCute');
  Self.IsActive := false;
  Screen.Cursor:=crHourGlass;

  p.param1:=_contract;
  p.param2:=ChqNo;
  p.param6:=1;
  p.param11:=ChqAmount;
  _cdsSeperateTmp := TClientDataSet.Create(Self);
  try
    DMCQPQ003EditCheque.EC.AddProv('_cdsSeperateTmp','ALL');
    _cdsSeperateTmp.ProviderName := '_cdsSeperateTmp';
    _cdsSeperateTmp.RemoteServer := DMCQPQ003EditCheque.EC;
    ExeCutePlugin(_cdsSeperateTmp,Application,p);;
    Self.IsActive := true;
    Screen.Cursor:=crDefault;

    _NUMROW:=0;
  (******************************************************************)
    if _cdsSeperateTmp.Active then
    begin
      if _cdsSeperateTmp.RecordCount>0 then
      begin
        CreateRecevie;
        with DMCQPQ003EditCheque do
        begin
          cdsH.close;
          cdsH.CommandText:='select * from CQDM007 where CQMACT=''Z''';
          cdsH.open;
          cdsH.Append;
          cdsH.FieldByName('CQMACT').Value := 'A';
          cdsH.FieldByName('CQMSTS').Value := 'E';
          cdsH.FieldByName('CQMDFG').Value := 'R';
          cdsH.FieldByName('CQMBRN').Value := DLL.Branch;
          cdsH.FieldByName('CQMPDM').Value := DLL.PDM;
          cdsH.FieldByName('CQMPDT').Value := DLL.PDT;
          cdsH.FieldByName('CQMDNO').Value := GeneratePWDSecurityString(15);
          cdsH.FieldByName('CQMACC').Value := ECHQ.FieldByName('CQMACC').AsString;
          cdsH.FieldByName('CQMBNK').Value := ECHQ.FieldByName('CQMBNK').AsString;
          cdsH.FieldByName('CQMBBR').Value := ECHQ.FieldByName('CQMBBR').AsString;
          cdsH.FieldByName('CQMCNO').Value := ECHQ.FieldByName('CQMNO2').AsString;
          cdsH.FieldByName('CQMCTY').Value := ECHQ.FieldByName('CQMCTY').AsString;
          cdsH.FieldByName('CQMDTE').Value := ECHQ.FieldByName('CQMDAT').AsDateTime;
          cdsH.FieldByName('CQMITM').Value := 1;
          cdsH.FieldByName('CQMAMT').Value := ECHQ.FieldByName('CQMAMT').AsFloat;
          cdsH.FieldByName('CQMCSN').Value := _contract;
          cdsH.FieldByName('CQMETD').Value := getServerDateTime(EC);
          cdsH.FieldByName('CQMETW').Value := DLL.WorkStation;
          cdsH.FieldByName('CQMETU').Value := DLL.UserID;
          cdsH.Post;
          cdsD.close;
          cdsD.CommandText:='select * from CQDS003 where CQSACT=''Z''';
          cdsD.open;
          inc(_NUMROW);
          _cdsSeperateTmp.First;
           while not _cdsSeperateTmp.Eof do
           begin
              if  (_cdsSeperateTmp.FieldByName('AMT').AsCurrency<>0)
              and (_cdsSeperateTmp.FieldByName('NET').AsCurrency<>0) then
              begin
                if cdsD.Active then
                begin
                  cdsD.Append;
                  cdsD.FieldByName('CQSACT').AsString:='A';
                  cdsD.FieldByName('CQSSTS').AsString:='Y';
                  cdsD.FieldByName('CQSBRN').AsString:=DLL.Branch;
                  cdsD.FieldByName('CQSPDM').AsString:=DLL.PDM;
                  cdsD.FieldByName('CQSPDT').AsString:=DLL.PDT;
                  cdsD.FieldByName('CQSSEQ').AsInteger:=_NUMROW;
                  cdsD.FieldByName('CQSDNO').AsString:=cdsH.FieldByName('CQMDNO').AsString;
                  cdsD.FieldByName('CQSRCT').AsString:=_cdsSeperateTmp.FieldByName('RCT').AsString;
                  cdsD.FieldByName('CQSCSN').AsString:=_cdsSeperateTmp.FieldByName('CON').AsString; // contract no
                  cdsD.FieldByName('CQSAMT').AsCurrency:=_cdsSeperateTmp.FieldByName('AMT').AsCurrency;//StrToCurr(edChqAmount.Text);
                  cdsD.FieldByName('CQSVAT').AsCurrency:=_cdsSeperateTmp.FieldByName('VAT').AsCurrency;//StrToCurr(edChqAmount.Text);
                  cdsD.FieldByName('CQSWHT').AsCurrency:=_cdsSeperateTmp.FieldByName('WHT').AsCurrency;//StrToCurr(edChqAmount.Text);
                  cdsD.FieldByName('CQSNET').AsCurrency:=_cdsSeperateTmp.FieldByName('NET').AsCurrency;
                  cdsD.FieldByName('CQSWFA').AsString:=_cdsSeperateTmp.FieldByName('IWHT').AsString;      // Include WT (Y/N)
                  cdsD.FieldByName('CQSADF').AsCurrency:=Abs(_cdsSeperateTmp.FieldByName('DIFF').AsCurrency);      // Diff
                  if _cdsSeperateTmp.FieldByName('DIFF').AsCurrency>0 then
                    cdsD.FieldByName('CQSCFA').AsCurrency:=1
                  else if _cdsSeperateTmp.FieldByName('DIFF').AsCurrency<0 then
                    cdsD.FieldByName('CQSCFA').AsCurrency:=-1;      // Diff

                  if _cdsSeperateTmp.FieldByName('PFA').AsString='SO' then
                    cdsD.FieldByName('CQSPFA').AsString:='Y'
                  else
                    cdsD.FieldByName('CQSPFA').AsString:='N';

                    // other payment
                  //if _cdsSeperateTmp.FieldByName('RCT').AsString='O' then
                  //begin
                    cdsD.FieldByName('CQSRS1').AsString:=_cdsSeperateTmp.FieldByName('CDE').AsString;
                    cdsD.FieldByName('CQSRS2').AsString:=_cdsSeperateTmp.FieldByName('DES').AsString;
                  //end;
                  cdsD.FieldByName('CQSETD').AsDateTime:=getServerDateTime(EC);
                  cdsD.FieldByName('CQSETW').AsString:=DLL.WorkStation;
                  cdsD.FieldByName('CQSETU').AsString:=DLL.UserID;
                  cdsD.post;
                end;
                inc(_NUMROW);
              end;
              _cdsSeperateTmp.Next;
           end;
        end;
        if cdsD.RecordCount > 0 then DECSN.DataSet := cdsD;
      end
      else
      begin
        DECSN.DataSet := DMCQPQ003EditCheque.CONT;
        CSNO.Text := CQSCSN.Caption;
      end;
    end
    else
    begin
      DECSN.DataSet := DMCQPQ003EditCheque.CONT;
      CSNO.Text := CQSCSN.Caption;
    end;
  finally
    _cdsSeperateTmp.Free;
  end;
  (******************************************************************)
end;
procedure TFrmCQPQ003EditCheque.UpdateRecevie;
var UR:TClientDataSet;
begin
  UR := TClientDataSet.Create(nil);
  try
    with DMCQPQ003EditCheque do
    begin
      EC.AddProv('UR','ALL');
      UR.ProviderName := 'UR';
      UR.RemoteServer := EC;
      UR.Close;
      UR.CommandText := 'UPDATE CQDM007 SET CQMSTS=''E''' +
                        '                  ,CQMACC=''' + ECHQ.FieldByName('CQMACC').AsString + '''' +
                        '                  ,CQMPAT=''' + ECHQ.FieldByName('CQMPAT').AsString + '''' +
                        '                  ,CQMBNK=''' + ECHQ.FieldByName('CQMBNK').AsString + '''' +
                        '                  ,CQMBBR=''' + ECHQ.FieldByName('CQMBBR').AsString + '''' +
                        '                  ,CQMCNO=''' + ECHQ.FieldByName('CQMNO2').AsString + '''' +
                        '                  ,CQMCTY=''' + ECHQ.FieldByName('CQMCTY').AsString + '''' +
                        '                  ,CQMDTE=''' + FormatDateTime('MM/dd/yyyy',ECHQ.FieldByName('CQMDAT').AsDateTime) + '''' +
                        '                  ,CQMAMT=' +  ECHQ.FieldByName('CQMAMT').AsString + 
                        '                  ,CQMDUE=''' + FormatDateTime('MM/dd/yyyy',ECHQ.FieldByName('CQMDUE').AsDateTime) + '''' +
                        '                  ,CQMMTD=''' + FormatDateTime('MM/dd/yyyy HH:mm:ss',getServerDateTime(EC)) + '''' +
                        '                  ,CQMMTU=''' + Dll.UserID + '''' +
                        '                  ,CQMMTW=''' + Dll.WorkStation + '''' +
                        ' WHERE CQMDNO=''' + ECHQ.FieldByName('CQMRFN').AsString + '''';
      UR.Execute;
    end;
  finally
    UR.Free;
  end;  
end;

function TFrmCQPQ003EditCheque.GetStr(var Inpstr: string; Delim: string): string;
var
  i: integer;
begin
  i := Pos(Delim, InpStr);
  if i = 0 then
  begin
    GetStr := Inpstr;
    Inpstr := '';
  end
  else
  begin
    GetStr := Copy(InpStr, 1, I - 1);
    Delete(InpStr, 1, I + (Length(Delim)-1));
  end;
end;

procedure TFrmCQPQ003EditCheque.BBREnter(Sender: TObject);
begin
  inherited;
  BBR.DataBinding.DataField := 'CQMBBR';
end;

procedure TFrmCQPQ003EditCheque.BBRExit(Sender: TObject);
begin
  inherited;
  BBR.DataBinding.DataField := 'CQMBRH';
end;

function TFrmCQPQ003EditCheque.Between(SubStr1, SubStr2, s: string): string;
var
  i, j: integer;
begin
  Between := '';
  i := Pos(SubStr1, s);
  if i <> 0 then
  begin
    i := i + Length(SubStr1);
    j := LastPos(SubStr2, s);
    if (j <> 0) and (j > i) then
      Between := Copy(s, i, j - i);
  end;
end;

procedure TFrmCQPQ003EditCheque.BNKEnter(Sender: TObject);
begin
  inherited;
  BNK.DataBinding.DataField := 'CQMBNK';
end;

procedure TFrmCQPQ003EditCheque.BNKExit(Sender: TObject);
begin
  inherited;
  BNK.DataBinding.DataField := 'CQMEGN';
end;

function TFrmCQPQ003EditCheque.LastPos(InpStr, s: string): byte;
var
  i, lsub, ls: integer;
begin
  LastPos := 0;
  ls      := Length(s);
  lsub    := Length(InpStr);

  if (ls > 0) and (lsub > 0) then
    for i := ls - lsub + 1 downto 1 do
    begin
      if InpStr = Copy(s, i, lsub) then
      begin
        LastPos := i;
        Exit;
      end;
    end;
end;

function TFrmCQPQ003EditCheque.After(InpStr, s: string): string;
var
  i: integer;
begin
  i := Pos(InpStr, s);
  if i <> 0 then
    Result := Copy(s, i + Length(InpStr), Length(S));
end;


end.
