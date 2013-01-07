unit Q001MainDM;

interface

uses
  SysUtils, Classes, UIT_GLOBAL_LIB, DB, DBClient, MConnect, SConnect, SockCon,
  RemCustomDS, RemDataSet, Dialogs;

type
  TDMQ001Main = class(TDataModule)
    RQC: TSockCon;
    MAS: TRemDataSet;
    T004: TRemDataSet;
    CSN: TRemDataSet;
    HIS: TRemDataSet;
    procedure T004CalcFields(DataSet: TDataSet);
    procedure MASAfterOpen(DataSet: TDataSet);
    procedure T004AfterOpen(DataSet: TDataSet);
    procedure CSNAfterOpen(DataSet: TDataSet);
  private

  public
    Dll : TDLLParam;
    procedure LoadMAS(FDate,TDate,Status,WhereOther:string);
    function GetStr(var Inpstr: string; Delim: string): string;
    function After(InpStr, s: string): string;
    function Between(SubStr1, SubStr2, s: string): string;
    function LastPos(InpStr, s: string): byte;
    function IIF(Conditions:Boolean;FTrue,FFalse:Variant):Variant;
    function CheckDate(SDate: string): Boolean;
    procedure LoadT004;
    procedure SaveT004(DNO:string);
    procedure LoadCSN;
    procedure LoadHis(NO2, RFN, MNS, EDF, EDT: string);
  end;

var
  DMQ001Main: TDMQ001Main;

implementation

{$R *.dfm}

{ TDMQ001Main }

{ TDMQ001Main }

procedure TDMQ001Main.LoadCSN;
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

procedure TDMQ001Main.LoadMAS(FDate, TDate, Status,
  WhereOther: string);
var WhereOther1,WhereOther2,FiledS,CCCC,Prefix:string;
begin
  WhereOther1 := WhereOther;
  WhereOther2 := WhereOther;
  while Trim(WhereOther1) <> '' do
  begin
    CCCC   := GetStr(WhereOther1,'AND');
    FiledS := Trim(Between('[',']',CCCC));
    if Trim(FiledS) <> '' then
    begin
      if FiledS = 'STS' then
        begin
          Status :=  Trim(Between('%','%',CCCC));
          WhereOther2 := StringReplace(WhereOther2,'AND' + CCCC,'',[rfReplaceAll,rfIgnoreCase]); 
        end
      else
        begin
          if UpperCase(FiledS) = 'CQSCSN'then
            Prefix := 'C.'
          else if UpperCase(FiledS) = 'MODEL'then
            Prefix := 'D.'
          else if UpperCase(FiledS) = 'DEA1NAME'then
            Prefix := 'D.'
          else if UpperCase(FiledS) = 'CQMEGN'then
            Prefix := 'E.'
          else if UpperCase(FiledS) = 'CQMBRH'then
            Prefix := 'E.'
          else if UpperCase(FiledS) = 'CQMNAT'then
            Prefix := 'F.'
          else
            Prefix := 'A.';

          WhereOther2 := StringReplace(WhereOther2,'[' + FiledS + ']',Prefix + '[' + FiledS + ']',[rfReplaceAll,rfIgnoreCase]);
        end;
    end;
  end;
  MAS.Close;
  MAS.CommandText := 'DECLARE @FDATE VARCHAR(10)                       ' + #13 +
            'DECLARE @TDATE VARCHAR(10)                       ' + #13 +
            'DECLARE @STATUS VARCHAR(2)                       ' + #13 +
            'SET @FDATE  = ''' + FDate + '''                  ' + #13 +
            'SET @TDATE  = ''' + TDate + '''                  ' + #13 +
            'SET @STATUS = ''' + Status + '''                 ' + #13 +
            'SELECT 0 AS CHK                                  ' + #13 +
            '   , RANK() OVER (ORDER BY BB.CQTDNO) AS ITM     ' + #13 +
            '   , (BB.CQTACT + BB.CQTSTS) AS STS              ' + #13 +
            '   , BB.*                                        ' + #13 +
            {
            '   , BB.CQTDNO                                   ' + #13 +
            '   , BB.CQTNO2                                   ' + #13 +
            '   , BB.CQTAMT                                   ' + #13 +
            '   , BB.CQTDAT                                   ' + #13 +
            '   , BB.CQTTRD                                   ' + #13 +
            '   , BB.CQTCTY                                   ' + #13 +
            }
            '   , AA.CQMCSN AS CQSCSN                         ' + #13 +
            '   , D.MODEL                                     ' + #13 +
            '   , D.DEA1NAME                                  ' + #13 +
            '   , E.CQMEGN                                    ' + #13 +
            '   , E.CQMBRH                                    ' + #13 +
            '   , F.CQMNAT                                    ' + #13 +
            'FROM ( SELECT * FROM (                                         ' + #13 +
            '  SELECT A.CQTDNO, A.CQTRNO AS RNO, B.CQMCSN                   ' + #13 +
            '  FROM ( SELECT CQTDNO, MAX(CQTRNO) AS RNO                     ' + #13 +
            '         FROM CQDT002                                          ' + #13 +
            '         WHERE (                                               ' + #13 +
            '            (RTRIM(LTRIM(ISNULL(@FDATE,'''')))='''' OR RTRIM(LTRIM(ISNULL(@TDATE,'''')))='''')' + #13 +
            '            OR (                                               ' + #13 +
            '              CONVERT(DATETIME,CONVERT(VARCHAR,CQTSTD,101),101)' + #13 +
            '              BETWEEN CAST(RTRIM(LTRIM(@FDATE)) AS DATETIME)   ' + #13 +
            '                AND CAST(RTRIM(LTRIM(@TDATE)) AS DATETIME)     ' + #13 +
            '               )                                               ' + #13 +
            '               )                                               ' + #13 +
            '        GROUP BY CQTDNO                                        ' + #13 +
            '        ) CC                                                    ' + #13 +
            '  LEFT JOIN CQDT002 A ON CC.CQTDNO=A.CQTDNO AND CC.RNO=A.CQTRNO' + #13 +
            '  LEFT JOIN CQDM007 B ON A.CQTRFN=B.CQMDNO       ' + #13 +
            '  LEFT JOIN CQDS003 C ON B.CQMDNO=C.CQSDNO       ' + #13 +
            '  LEFT JOIN LHPPDTA.DBO.TMP_INFOCOLLECTION D ON D.FSYSTEM=''LS'' AND C.CQSCSN=D.CONRUN' + #13 +
            '  LEFT JOIN CQDM001 E ON A.CQTBNK=E.CQMBNK AND A.CQTBBR=E.CQMBRC' + #13 +
            '  LEFT JOIN CQDM003 F ON CAST(A.CQTCCQ AS INT)=F.CQMCDE' + #13 +
            '  WHERE (LEN(ISNULL(@STATUS,'''')) < 2 OR (A.CQTACT=LEFT(@STATUS,1) AND A.CQTSTS LIKE RIGHT(@STATUS,1)))' + #13 +
            '    AND NOT EXISTS (SELECT EX.CQTMNO FROM CQDT004 EX WHERE EX.CQTACT=''A'' AND EX.CQTSTS=''P'' AND EX.CQTMNO=A.CQTDNO)' + #13 +
            WhereOther2 + '                                                                                          ' + #13 +
            '  ) DD GROUP BY CQTDNO, RNO, CQMCSN ) AA                                                                ' + #13 +
            'LEFT JOIN CQDT002 BB ON AA.CQTDNO=BB.CQTDNO AND AA.RNO=BB.CQTRNO                                        ' + #13 +
            'LEFT JOIN LHPPDTA.DBO.TMP_INFOCOLLECTION D ON D.FSYSTEM=''LS'' AND AA.CQMCSN=D.CONRUN                   ' + #13 +
            'LEFT JOIN CQDM001 E ON BB.CQTBNK=E.CQMBNK AND BB.CQTBBR=E.CQMBRC                                        ' + #13 +
            'LEFT JOIN CQDM003 F ON CAST(BB.CQTCCQ AS INT)=F.CQMCDE           ';
            //'GROUP BY (BB.CQTACT + BB.CQTSTS), BB.CQTDNO, BB.CQTNO2, BB.CQTAMT, BB.CQTDAT, BB.CQTTRD, BB.CQTCTY' + #13 +
            //'       , AA.CQMCSN, D.MODEL, D.DEA1NAME, E.CQMEGN, E.CQMBRH, F.CQMNAT';
  MAS.Open;
end;

procedure TDMQ001Main.LoadT004;
begin
    T004.Close;
    T004.CommandText:= 'IF OBJECT_ID( ''TEMPDB..#CQDT004'' ) IS NOT NULL DROP TABLE #CQDT004' + #13 +
                       'select  * into #CQDT004 from CQDT004 where CQTACT = ''Z''';
    T004.Execute;
    T004.Close;
    T004.CommandText:= 'select * from #CQDT004';
    T004.Open;
end;

procedure TDMQ001Main.MASAfterOpen(DataSet: TDataSet);
begin
  TFloatField(MAS.FieldByName('CQTAMT')).DisplayFormat := '#,##0.00';
  TFloatField(MAS.FieldByName('CQTDAT')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(MAS.FieldByName('CQTTRD')).DisplayFormat := 'dd/MM/yyyy';
end;

procedure TDMQ001Main.SaveT004(DNO:string);
begin
  T004.ApplyUpdates(0);
  T004.Close;
  T004.CommandText := 'UPDATE #CQDT004 SET CQTDNO=''' + DNO + '''' + #13 +
                      'INSERT INTO CQDT004 SELECT * FROM #CQDT004';
  T004.Execute;
  T004.Command := 'SELECT * FROM CQDT004 WHERE CQTDNO=''' + DNO + '''';
end;

procedure TDMQ001Main.T004AfterOpen(DataSet: TDataSet);
begin
  TFloatField(T004.FieldByName('CQTAMT')).DisplayFormat := '#,##0.00';
  TFloatField(T004.FieldByName('CQTDAT')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(T004.FieldByName('CQTTRD')).DisplayFormat := 'dd/MM/yyyy';
end;

procedure TDMQ001Main.T004CalcFields(DataSet: TDataSet);
begin
  T004.FieldByName('ITM').AsInteger := T004.RecNo;
end;

function TDMQ001Main.GetStr(var Inpstr: string; Delim: string): string;
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

function TDMQ001Main.IIF(Conditions: Boolean; FTrue, FFalse: Variant): Variant;
begin
  if Conditions then
    Result := FTrue
  else
    Result := FFalse;
end;

function TDMQ001Main.Between(SubStr1, SubStr2, s: string): string;
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

function TDMQ001Main.LastPos(InpStr, s: string): byte;
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

function TDMQ001Main.After(InpStr, s: string): string;
var
  i: integer;
begin
  i := Pos(InpStr, s);
  if i <> 0 then
    Result := Copy(s, i + Length(InpStr), Length(S));
end;

function TDMQ001Main.CheckDate(SDate: string): Boolean;
begin
  try
    StrToDate(SDate);
    Result := True;
  except
    Result := False;
  end;
end;

procedure TDMQ001Main.CSNAfterOpen(DataSet: TDataSet);
begin
  TFloatField(CSN.FieldByName('CQSAMT')).DisplayFormat := '#,##0.00';
  TFloatField(CSN.FieldByName('CQSVAT')).DisplayFormat := '#,##0.00';
  TFloatField(CSN.FieldByName('CQSWHT')).DisplayFormat := '#,##0.00';
  TFloatField(CSN.FieldByName('CQSNET')).DisplayFormat := '#,##0.00';
end;

procedure TDMQ001Main.LoadHis(NO2,RFN,MNS,EDF,EDT:string);
begin
  HIS.Close;
  HIS.CommandText := 'DECLARE @A VARCHAR(8)  ' + #13 +
                      'DECLARE @B VARCHAR(15) ' + #13 +
                      'DECLARE @C VARCHAR(2)  ' + #13 +
                      'DECLARE @D VARCHAR(10) ' + #13 +
                      'DECLARE @E VARCHAR(10) ' + #13 +
                      'SET @A = ''' + NO2 + '''' + #13 +
                      'SET @B = ''' + RFN + '''' + #13 +
                      'SET @C = ''' + MNS + '''' + #13 +
                      'SET @D = ''' + EDF + '''' + #13 +
                      'SET @E = ''' + EDT + '''' + #13 +
                      'SELECT * FROM CQDT004' + #13 +
                      'WHERE CQTACT=''A'' AND CQTSTS=''P''' + #13 +
                      '  AND (RTRIM(LTRIM(ISNULL(@A,'''')))='''' OR CQTNO2=RTRIM(LTRIM(@A)))' + #13 +
                      '  AND (RTRIM(LTRIM(ISNULL(@B,'''')))='''' OR CQTDNO=RTRIM(LTRIM(@B)))' + #13 +
                      '  AND (RTRIM(LTRIM(ISNULL(@C,'''')))='''' OR CQTMNS=RTRIM(LTRIM(@C)))' + #13 +
                      '  AND ((RTRIM(LTRIM(ISNULL(@D,'''')))='''' OR RTRIM(LTRIM(ISNULL(@E,'''')))='''') OR (CONVERT(DATETIME,CONVERT(VARCHAR,CQTCRD,101),101) BETWEEN CAST(RTRIM(LTRIM(@D)) AS DATETIME) AND CAST(RTRIM(LTRIM(@E)) AS DATETIME)))';
  HIS.Open
end;

end.
