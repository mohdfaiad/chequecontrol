unit Q002MainDM;

interface

uses
  SysUtils, Classes, RemCustomDS, RemDataSet, DB, DBClient, MConnect, SConnect,
  SockCon, Dialogs, UIT_GLOBAL_LIB,UIT_UTILS_LIB;

type
  TQ002DMMain = class(TDataModule)
    SockCon: TSockCon;
    T004: TRemDataSet;
    S003: TRemDataSet;
    procedure T004AfterOpen(DataSet: TDataSet);
    procedure S003AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    Dll   : TDLLParam;
    procedure ChangeStatus(ACT,STS: string;ACD:TDateTime);
    procedure LoadT004(NO2,RFN,MNS,EDF,EDT:string);
  end;

var
  Q002DMMain: TQ002DMMain;

implementation

{$R *.dfm}

{ TQ001DMMain }


{ TQ002DMMain }

procedure TQ002DMMain.ChangeStatus(ACT,STS: string;ACD:TDateTime);
var CST:TClientDataSet;
begin
  CST := TClientDataSet.Create(nil);
  try
    SockCon.AddProv('CST','ALL');
    CST.ProviderName := 'CST';
    CST.RemoteServer := SockCon;
    CST.Close;
    CST.CommandText := 'IF OBJECT_ID( ''TEMPDB..#CHANGESTS'' ) IS NOT NULL DROP TABLE #CHANGESTS ' + #13 +
                       'UPDATE CQDM011 SET CQMSTS=''' + STS + '''' + #13 +
                       '                 , CQMACT=''' + ACT + '''' + #13 +
                       '                 , CQMSTD=''' + FormatDateTime('MM/dd/yyyy',ACD) + '''' + #13 +
                       '                 , CQMMTD=''' + FormatDateTime('MM/dd/yyyy HH:mm:ss',getServerDateTime(SockCon)) + '''' + #13 +
                       '                 , CQMMTU=''' + Dll.UserID + '''' + #13 +
                       '                 , CQMMTW=''' + Dll.WorkStation + '''' + #13 +
                       'WHERE CQMDNO=''' + T004.FieldByName('CQTMNO').AsString + ''' ' + #13 +
                       'SELECT * INTO #CHANGESTS FROM CQDM011 ' + #13 +
                       'WHERE CQMDNO=''' + T004.FieldByName('CQTMNO').AsString + ''' ' + #13 +
                       'UPDATE #CHANGESTS SET CQMETD=CQMMTD' + #13 +
                       '                    , CQMETU=CQMMTU' + #13 +
                       '                    , CQMETW=CQMMTW' + #13 +
                       '                    , CQMCRD=CQMMTD' + #13 +
                       '                    , CQMCRU=CQMMTU' + #13 +
                       '                    , CQMCRW=CQMMTW' + #13 +
                       '                    , CQMMTD=NULL' + #13 +
                       '                    , CQMMTU=NULL' + #13 +
                       '                    , CQMMTW=NULL' + #13 +
                       'INSERT INTO CQDT002 SELECT *, (SELECT ISNULL(MAX(CQTRNO),0) + 1 FROM CQDT002 WHERE CQTDNO=CQMDNO) FROM #CHANGESTS' + #13 +
                       '';
    CST.Execute;
  finally
    CST.Free;
  end;
end;

procedure TQ002DMMain.LoadT004(NO2,RFN,MNS,EDF,EDT:string);
begin
  T004.Close;
  T004.CommandText := 'DECLARE @A VARCHAR(8)  ' + #13 +
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
  T004.Open
end;

procedure TQ002DMMain.S003AfterOpen(DataSet: TDataSet);
begin
  TFloatField(S003.FieldByName('CQSAMT')).DisplayFormat := '#,##0.00';
  TFloatField(S003.FieldByName('CQSVAT')).DisplayFormat := '#,##0.00';
  TFloatField(S003.FieldByName('CQSWHT')).DisplayFormat := '#,##0.00';
  TFloatField(S003.FieldByName('CQSNET')).DisplayFormat := '#,##0.00';
end;

procedure TQ002DMMain.T004AfterOpen(DataSet: TDataSet);
begin
  T004.First;
  while not T004.Eof do
  begin
    T004.Edit;
    T004['CHK'] := 0;
    T004.Post;
    T004.Next;
  end;
  T004.First;
  TFloatField(T004.FieldByName('CQTDAT')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(T004.FieldByName('CQTAMT')).DisplayFormat := '#,##0.00';
end;

end.
