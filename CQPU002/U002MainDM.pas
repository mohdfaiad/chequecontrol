unit U002MainDM;

interface

uses
  Windows,Forms,SysUtils, Classes, RemCustomDS, RemDataSet, DB, DBClient, MConnect, SConnect,
  SockCon, RemCollect, Dialogs, Converse, WideStrings, FMTBcd, Provider, SqlExpr,
  UIT_GLOBAL_LIB, StrUtils, UIT_UTILS_LIB, JvComponentBase, JvgExportComponents;

type
  TDMU002Main = class(TDataModule)
    SC: TSockCon;
    CQDM005: TRemDataSet;
    CQDS001: TRemDataSet;
    His: TRemDataSet;
    HP: TClientDataSet;
    procedure CQDM005AfterScroll(DataSet: TDataSet);
    procedure CQDS001AfterOpen(DataSet: TDataSet);
    procedure HisAfterOpen(DataSet: TDataSet);
    procedure CQDM005ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CQDS003ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    procedure HPReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  public
    DLL: TDLLParam;
    procedure LoadCQDS001;
    procedure LoadCQDM005(DNO:string='Z');
    procedure LoadHis;
    procedure AddCheque;
    procedure AddMail(DNO:string);
    procedure AddHPTBTR(var DOC:string);
  end;

var
  DMU002Main: TDMU002Main;

implementation

{$R *.dfm}

uses LoadBank;

{ TDMMain }

procedure TDMU002Main.AddHPTBTR(var DOC:string);
var NAM:TClientDataSet;
    BTR: TRemDataset;//TClientDataSet;
  function RunDOC:string;
  var RunD:TClientDataSet;
      MDOC,PREFIX:string;
  begin
    RunD := TClientDataSet.Create(Self);
    try
      RunD.ProviderName := 'DSP1';
      RunD.RemoteServer := SC;
      RunD.Close;
      RunD.CommandText := 'SELECT MAX(BTRDOC) AS MDOC FROM HPPDTA.HPTBTR00 WHERE BTRTYP=''3''';
      RunD.Open;
      MDOC := Trim(RunD.FieldByName('MDOC').AsString);
      if MDOC <> '' then
        begin
          PREFIX := LeftStr(MDOC,2);
          MDOC := FormatFloat('00000000',StrToInt(RightStr(MDOC,8)) + 1);
          Result := PREFIX + MDOC;
        end
      else
        begin
          Result := 'BT00000001';
        end;
    finally
      RunD.Free;
    end;
  end;
begin
  BTR := TRemDataSet.Create(Self);
  NAM := TClientDataSet.Create(Self);
  try
    NAM.ProviderName := 'DSP2';
    NAM.RemoteServer := SC;
    NAM.Close;
    NAM.CommandText := 'SELECT TMPCOD,TMPTHN,TMPTHS,TMPEGN,TMPEGS ' +
                       'FROM HPPDTA.HPMCON00 ' +
                       'LEFT JOIN HSPDTA.TMPCUS00 ON CONCUS = TMPCOD ' +
                       'WHERE CONRUN = ''' + CQDS001.FieldByName('CQSDLC').AsString + '''';
    NAM.Open;

    DOC :=  RunDOC;

    BTR.OnReconcileError := HPReconcileError;
    BTR.ProviderName := 'DSP4';
    BTR.RemoteServer := SC;
    {BTR.Command := 'SELECT * FROM HPPDTA.HPTBTR00 WHERE BTRDOC=''Z''';
    BTR.Append;
      BTR.FieldByName('BTRACT').AsString   := 'A';
      BTR.FieldByName('BTRSTS').AsString   := '2';
      BTR.FieldByName('BTRBRN').AsString   := DLL.Branch;
      BTR.FieldByName('BTRPDM').AsString   := DLL.PDM;
      BTR.FieldByName('BTRPDT').AsString   := DLL.PDT;
      BTR.FieldByName('BTRTYP').AsString   := '3';
      BTR.FieldByName('BTRDTE').AsInteger  := StrToInt(FormatDateTime('yyyyMMdd',getServerDateTime(SC)));
      BTR.FieldByName('BTREFF').AsInteger  := StrToInt(FormatDateTime('yyyyMMdd',CQDS001.FieldByName('CQSDED').AsDateTime));
      BTR.FieldByName('BTRDOC').AsString   := DOC;
      BTR.FieldByName('BTRBNK').AsString   := '17';
      BTR.FieldByName('BTRFAC').AsString   := RightStr(CQDS001.FieldByName('CQSBKC').AsString,2);
      BTR.FieldByName('BTRTAC').AsString   := '-';
      BTR.FieldByName('BTRREF').AsString   := CQDS001.FieldByName('CQSDLC').AsString + '10';
      BTR.FieldByName('BTRCOD').AsInteger  := StrToInt(FormatFloat('0000000',NAM.FieldByName('TMPCOD').AsInteger));
      BTR.FieldByName('BTRTHN').AsString   := IIF(Trim(NAM.FieldByName('TMPTHN').AsString) = '','-',NAM.FieldByName('TMPTHN').AsString);
      BTR.FieldByName('BTRTHS').AsString   := IIF(Trim(NAM.FieldByName('TMPTHS').AsString) = '','-',NAM.FieldByName('TMPTHS').AsString);
      BTR.FieldByName('BTREGN').AsString   := IIF(Trim(NAM.FieldByName('TMPEGN').AsString) = '','-',NAM.FieldByName('TMPEGN').AsString);
      BTR.FieldByName('BTREGS').AsString   := IIF(Trim(NAM.FieldByName('TMPEGS').AsString) = '','-',NAM.FieldByName('TMPEGS').AsString);
      BTR.FieldByName('BTRPBY').AsString   := '1';
      BTR.FieldByName('BTRCQB').AsString   := RightStr(CQDS001.FieldByName('CQSBKC').AsString,2);
      BTR.FieldByName('BTRCQR').AsString   := RightStr(CQDS001.FieldByName('CQSBRC').AsString,3);
      BTR.FieldByName('BTRCQN').AsInteger  := StrToInt(CQDS001.FieldByName('CQSCQN').AsString);
      BTR.FieldByName('BTRCQD').AsInteger  := StrToInt(FormatDateTime('yyyyMMdd',CQDS001.FieldByName('CQSCQD').AsDateTime));
      BTR.FieldByName('BTRCQS').AsString   := '-';
      BTR.FieldByName('BTRBAC').AsString   := CQDS001.FieldByName('CQSCQC').AsString;
      BTR.FieldByName('BTRAMT').AsCurrency := StrToCurr(FormatFloat('#0.00',CQDS001.FieldByName('CQSCQA').AsFloat));
      BTR.FieldByName('BTRFG1').AsString   := '-';
      BTR.FieldByName('BTRETD').AsInteger  := StrToInt(FormatDateTime('yyyyMMdd',getServerDateTime(SC)));
      BTR.FieldByName('BTRETT').AsInteger  := StrToInt(FormatDateTime('HHmmss',getServerDateTime(SC)));
      BTR.FieldByName('BTRETU').AsString   := DLL.UserID;
      BTR.FieldByName('BTRMTD').AsInteger  := 0;
      BTR.FieldByName('BTRMTT').AsInteger  := 0;
      BTR.FieldByName('BTRMTU').AsString   := '-';
    BTR.ApplyUpdates(0); }
    BTR.Close;
    BTR.CommandText := 'INSERT INTO HPPDTA.HPTBTR00 (BTRACT,BTRSTS,BTRBRN,BTRPDM' +
                       ',BTRPDT,BTRTYP,BTRDTE,BTREFF,BTRDOC,BTRBNK,BTRFAC,BTRTAC' +
                       ',BTRREF,BTRCOD,BTRTHN,BTRTHS,BTREGN,BTREGS,BTRPBY,BTRCQB' +
                       ',BTRCQR,BTRCQN,BTRCQD,BTRCQS,BTRBAC,BTRAMT,BTRFG1,BTRETD' +
                       ',BTRETT,BTRETU,BTRMTD,BTRMTT,BTRMTU) ' +
                       'VALUES(''A''' +
                             ',''3''' +
                             ',''' + DLL.Branch + '''' +
                             ',''2''' +
                             ',''01''' +
                             ',''3''' +
                             ',' + FormatDateTime('yyyyMMdd',getServerDateTime(SC)) +
                             ',' + FormatDateTime('yyyyMMdd',CQDS001.FieldByName('CQSDED').AsDateTime) +
                             ',''' + DOC + '''' +
                             ',''17''' +
                             ',''' + RightStr(CQDS001.FieldByName('CQSBKC').AsString,2) + '''' +
                             ',''' + #32 + '''' +
                             ',''' + CQDS001.FieldByName('CQSDLC').AsString + '10''' +
                             ',''' + FormatFloat('0000000',NAM.FieldByName('TMPCOD').AsInteger) + '''' +
                             ',''' + IIF(Trim(NAM.FieldByName('TMPTHN').AsString) = '','' + #32 + '',NAM.FieldByName('TMPTHN').AsString) + '''' +
                             ',''' + IIF(Trim(NAM.FieldByName('TMPTHS').AsString) = '','' + #32 + '',NAM.FieldByName('TMPTHS').AsString) + '''' +
                             ',''' + IIF(Trim(NAM.FieldByName('TMPEGN').AsString) = '','' + #32 + '',NAM.FieldByName('TMPEGN').AsString) + '''' +
                             ',''' + IIF(Trim(NAM.FieldByName('TMPEGS').AsString) = '','' + #32 + '',NAM.FieldByName('TMPEGS').AsString) + '''' +
                             ',''1''' +
                             ',''' + RightStr(CQDS001.FieldByName('CQSBKC').AsString,2) + '''' +
                             ',''' + RightStr(CQDS001.FieldByName('CQSBRC').AsString,3) + '''' +
                             ',' + CQDS001.FieldByName('CQSCQN').AsString +
                             ',' + FormatDateTime('yyyyMMdd',CQDS001.FieldByName('CQSCQD').AsDateTime) +
                             ',''' + #32 + '''' +
                             ',''' + CQDS001.FieldByName('CQSCQC').AsString + '''' +
                             ',' + FormatFloat('#0.00',CQDS001.FieldByName('CQSCQA').AsFloat) +
                             ',''' + #32 + '''' +
                             ',' + FormatDateTime('yyyyMMdd',getServerDateTime(SC)) +
                             ',' + FormatDateTime('HHmmss',getServerDateTime(SC)) +
                             ',''' + DLL.UserID + '''' +
                             ',0' +
                             ',0' +
                             ',''' + #32 + '''' +
                             ')';
    //InputBox('','',BTR.CommandText);
    BTR.Execute;
  finally
    BTR.Free;
    NAM.Free;
  end;
end;

procedure TDMU002Main.AddMail(DNO:string);
var Mail:TRemDataSet;
begin
  Mail := TRemDataSet.Create(nil);
  SC.AddProv('Mail','ALL');
  Mail.ProviderName := 'Mail';
  Mail.RemoteServer := SC;
  Mail.Close;
  Mail.CommandText := 'EXEC SP_MAIL ''' + DNO + ''',''' + DLL.UserID + ''',''' + DLL.WorkStation + '''';
  Mail.Execute;
end;

procedure TDMU002Main.CQDM005AfterScroll(DataSet: TDataSet);
begin
  LoadCQDS001;
end;

procedure TDMU002Main.CQDM005ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TDMU002Main.CQDS001AfterOpen(DataSet: TDataSet);
begin
  FieldsFormate(CQDM005,CQDS001);
end;

procedure TDMU002Main.CQDS003ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TDMU002Main.HisAfterOpen(DataSet: TDataSet);
begin
  TFloatField(His.FieldByName('CQMITA')).DisplayFormat := '#,##0.00';
  TFloatField(His.FieldByName('CQMLSA')).DisplayFormat := '#,##0.00';
  TFloatField(His.FieldByName('CQMHPA')).DisplayFormat := '#,##0.00';
  TFloatField(His.FieldByName('CQMERA')).DisplayFormat := '#,##0.00';
end;

procedure TDMU002Main.HPReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(E.Message);
end;

procedure TDMU002Main.LoadCQDM005(DNO:string='Z');
begin
  CQDM005.Command := 'Select * From CQDM005 Where CQMDNO=''' + DNO + '''';
end;

procedure TDMU002Main.LoadCQDS001;
begin
  CQDS001.Command := 'Select * From CQDS001 Where CQSDNO=' + '''' + CQDM005.FieldByName('CQMDNO').AsString + '''' + 'Order by CQSDNO';
end;

procedure TDMU002Main.LoadHis;
begin
  His.Command := 'Select * From CQDM005';
end;

procedure TDMU002Main.AddCheque;
var MTCheque:TClientDataSet;
    RFNO : string;
begin
  MTCheque := TRemDataSet.Create(nil);
  try
    SC.AddProv('MTCheque','ALL');
    MTCheque.ProviderName := 'MTCheque';
    MTCheque.RemoteServer := SC;
    with CQDS001 do
    begin
      First;
      while not Eof do
      begin
        if (FieldByName('CQSBTY').AsString = 'LS') and (FieldByName('CQSETY').AsString = '') then
        begin
          if (LeftStr(FieldByName('CQSRFN').AsString,1) = '#') OR (LeftStr(FieldByName('CQSRFN').AsString,1) = '*') then
          begin
            RFNO := FieldByName('CQSRFN').AsString;
            Edit;
            FieldByName('CQSRFN').Value := getRunning(SC,'300','DOCLAD','DEPOSIT','');
            Post;
            GenDNO('CQDM007','CQDS003',RFNO,FieldByName('CQSRFN').AsString,SC);
          end;
          MTCheque.Close;
          MTCheque.CommandText := 'EXEC SP_UPDATEMASTERCHEQUE ' +
                                  '''' + FieldByName('CQSRFN').AsString + ''',' +
                                  '''' + Dll.UserID + ''',' +
                                  '''' + Dll.WorkStation + ''',' +
                                  '''' + Dll.Branch + ''',' +
                                  '''' + DLL.PDM + ''',' +
                                  '''' + Dll.PDT + ''',' +
                                  '''A'',' +
                                  '''' + FieldByName('CQSREC').AsString+ ''',' +
                                  '''' + FormatDateTime('MM/dd/yyyy',FieldByName('CQSDED').AsDateTime) + ''',' +
                                  '''' + CQDM005.FieldByName('CQMACC').AsString + ''',' +
                                  '''' + FieldByName('CQSCNO').AsString + ''',' +
                                  '''' + FormatDateTime('MM/dd/yyyy',CQDM005.FieldByName('CQMBSD').AsDateTime) + '''' +
                                  '';

          MTCheque.Execute;
        end
        else IF (FieldByName('CQSBTY').AsString = 'HP') and (FieldByName('CQSETY').AsString = '') then
        begin
          AddHPTBTR(RFNO);
          Edit;
          FieldByName('CQSRFN').Value := RFNO;
          Post;
        end;
        Next;
      end;
    end;
  finally
    MTCheque.Free;
  end;
end;

end.
