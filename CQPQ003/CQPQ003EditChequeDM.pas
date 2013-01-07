unit CQPQ003EditChequeDM;

interface

uses
  SysUtils, Classes, DB, DBClient, RemCustomDS, RemDataSet, MConnect, SConnect,
  SockCon,UIT_UTILS_LIB,UIT_GLOBAL_LIB, RemLinker, Forms, Windows, Dialogs, StrUtils;

type
  TDMCQPQ003EditCheque = class(TDataModule)
    EC: TSockCon;
    CHQ: TRemDataSet;
    CSN: TRemDataSet;
    ECHQ: TRemDataSet;
    CONT: TRemDataSet;
    LOOK: TRemDataSet;
    procedure CHQAfterOpen(DataSet: TDataSet);
    procedure CSNAfterOpen(DataSet: TDataSet);
    procedure CONTAfterOpen(DataSet: TDataSet);
    procedure ECHQAfterOpen(DataSet: TDataSet);
    procedure ECHQCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    Dll:TDLLParam;
    procedure LoadCHQ;
    procedure LoadCSN;
    procedure LoadECHQ;
    procedure LoadCONT;
    procedure SaveECHQ;
  end;

var
  DMCQPQ003EditCheque: TDMCQPQ003EditCheque;

implementation

{$R *.dfm}

{ TDMCQPQ003EditCheque }

procedure TDMCQPQ003EditCheque.CHQAfterOpen(DataSet: TDataSet);
begin
  TFloatField(CHQ.FieldByName('CQMAMT')).DisplayFormat := '#,##0.00';
  TFloatField(CHQ.FieldByName('CQMDAT')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(CHQ.FieldByName('CQMDUE')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(CHQ.FieldByName('CQMTRD')).DisplayFormat := 'dd/MM/yyyy';
end;

procedure TDMCQPQ003EditCheque.CONTAfterOpen(DataSet: TDataSet);
begin
  TFloatField(CONT.FieldByName('CQSAMT')).DisplayFormat := '#,##0.00';
  TFloatField(CONT.FieldByName('CQSVAT')).DisplayFormat := '#,##0.00';
  TFloatField(CONT.FieldByName('CQSWHT')).DisplayFormat := '#,##0.00';
  TFloatField(CONT.FieldByName('CQSNET')).DisplayFormat := '#,##0.00';
end;

procedure TDMCQPQ003EditCheque.CSNAfterOpen(DataSet: TDataSet);
begin
  TFloatField(CSN.FieldByName('CQSAMT')).DisplayFormat := '#,##0.00';
  TFloatField(CSN.FieldByName('CQSVAT')).DisplayFormat := '#,##0.00';
  TFloatField(CSN.FieldByName('CQSWHT')).DisplayFormat := '#,##0.00';
  TFloatField(CSN.FieldByName('CQSNET')).DisplayFormat := '#,##0.00';
end;

procedure TDMCQPQ003EditCheque.ECHQAfterOpen(DataSet: TDataSet);
begin
  TFloatField(ECHQ.FieldByName('CQMAMT')).DisplayFormat := '#,##0.00';
  TFloatField(ECHQ.FieldByName('CQMDAT')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(ECHQ.FieldByName('CQMDUE')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(ECHQ.FieldByName('CQMTRD')).DisplayFormat := 'dd/MM/yyyy';
  ECHQ.Edit;
  ECHQ.FieldByName('STS').AsString := ECHQ.FieldByName('CQMACT').AsString + ECHQ.FieldByName('CQMSTS').AsString;
  ECHQ.Post;
end;

procedure TDMCQPQ003EditCheque.ECHQCalcFields(DataSet: TDataSet);
begin
  LOOK.Command := 'SELECT TOP 1 CQMEGN,CQMBRH FROM CQDM001 WHERE CQMBNK=''' + ECHQ.Field['CQMBNK'] + ''' AND CQMBRC=''' + ECHQ.Field['CQMBBR'] + '''';
  ECHQ.Field['CQMEGN'] := LOOK.Field['CQMEGN'];
  ECHQ.Field['CQMBRH'] := LOOK.Field['CQMBRH'];
end;

procedure TDMCQPQ003EditCheque.LoadCHQ;
begin
  //InputBox('','',
  CHQ.Command := ' SELECT A.CQMACT+A.CQMSTS AS STS' + #13 +
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
                 ' GROUP BY A.CQMACT+A.CQMSTS,A.CQMCNO,B.CQMEGN,B.CQMBRH,A.CQMNO2' + #13 +                 '         ,A.CQMCTY,A.CQMDAT,A.CQMDUE,A.CQMTRD,A.CQMAMT,A.CQMPAT' + #13 +                 '         ,C.BACOWN,A.CQMACC,A.CQMRFN, A.CQMDNO                 ' + #13 +
                 ' ORDER BY A.CQMRFN ' + #13 +
                 ''
                 //)
                 ;
end;

procedure TDMCQPQ003EditCheque.LoadCONT;
begin
  if CHQ.Active then CONT.Command := 'SELECT * FROM CQDS003 WHERE CQSDNO=''' + CHQ.FieldByName('CQMRFN').AsString + '''';
end;

procedure TDMCQPQ003EditCheque.LoadCSN;
begin
  CSN.Command := ' SELECT  A.CQMRFN' +
                 '      , D.CQSCSN' +
                 '      , E.DEA1NAME' +
                 '      , E.MODEL' +
                 '      , ISNULL(D.CQSRS1,''013'') AS CQSRS1' +
                 '      , ISNULL(D.CQSRS2,''ค่าเช่า'') AS CQSRS2' +
                 '      , D.CQSAMT' +
                 '      , D.CQSVAT' +
                 '      , D.CQSWHT' +
                 '      , D.CQSNET' +
                 ' FROM CQDM011 A' +
                 ' LEFT JOIN CQDS003 D ON A.CQMRFN=D.CQSDNO' +
                 ' LEFT JOIN LHPPDTA.DBO.TMP_INFOCOLLECTION E ON E.FSYSTEM=''LS'' AND D.CQSCSN=E.CONRUN' + #13 +
                 ' WHERE EXISTS(SELECT CQTRFN FROM CQDT002 AA WHERE AA.CQTRFN=D.CQSDNO GROUP BY CQTRFN)' + #13 +
                 ' ORDER BY A.CQMRFN';
end;

procedure TDMCQPQ003EditCheque.LoadECHQ;
begin
  ECHQ.close;
//  if CHQ.Active then
  ECHQ.Command := 'SELECT * ' +
                  'FROM CQDM011 '+
                  'WHERE CQMDNO=''' + CHQ.FieldByName('CQMDNO').AsString + '''';
  ECHQ.edit;
  ECHQ.FieldByName('STS').AsString := ECHQ.FieldByName('CQMACT').AsString + ECHQ.FieldByName('CQMSTS').AsString;
  ECHQ.Post; 
end;

procedure TDMCQPQ003EditCheque.SaveECHQ;
var TR:TClientDataSet;
begin
  TR := TClientDataSet.Create(nil);
  try
      ECHQ.Edit;
      ECHQ.FieldByName('CQMACT').AsString  := LeftStr(ECHQ.FieldByName('STS').AsString,1);
      ECHQ.FieldByName('CQMSTS').AsString  := RightStr(ECHQ.FieldByName('STS').AsString,1);
      ECHQ.FieldByName('CQMMTD').AsDateTime:= getServerDate(EC);
      ECHQ.FieldByName('CQMMTU').AsString  := DLL.UserID;
      ECHQ.FieldByName('CQMMTW').AsString  := DLL.WorkStation;
      ECHQ.ApplyUpdates(0);
      EC.AddProv('TR','ALL');
      TR.ProviderName := 'TR';
      TR.RemoteServer := EC;
      TR.Close;
      TR.CommandText := 'IF OBJECT_ID( ''TEMPDB..#ECHQ'' ) IS NOT NULL DROP TABLE #ECHQ' + #13 +
                        'SELECT * INTO #ECHQ FROM CQDM011 ' +
                        'WHERE CQMDNO=''' + ECHQ.FieldByName('CQMDNO').AsString + '''' + #13 +
                        'UPDATE #ECHQ SET CQMETD=CQMMTD' + #13 +
                       '                , CQMETU=CQMMTU' + #13 +
                       '                , CQMETW=CQMMTW' + #13 +
                       '                , CQMCRD=CQMMTD' + #13 +
                       '                , CQMCRU=CQMMTU' + #13 +
                       '                , CQMCRW=CQMMTW' + #13 +
                       '                , CQMMTD=NULL' + #13 +
                       '                , CQMMTU=NULL' + #13 +
                       '                , CQMMTW=NULL' + #13 +
                        'INSERT INTO CQDT002 SELECT *, (SELECT ISNULL(MAX(CQTRNO),0) + 1 FROM CQDT002 WHERE CQTDNO=CQMDNO) FROM #ECHQ' +
                        '';
      TR.Execute;
  finally
    TR.Free;
  end;
end;

end.
