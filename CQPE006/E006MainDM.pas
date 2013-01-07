unit E006MainDM;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, SConnect, SockCon, UIT_GLOBAL_LIB,
  RemCustomDS, RemDataSet, UIT_UTILS_LIB;

type
  TDME006Main = class(TDataModule)
    Receive: TRemDataSet;
    Alert: TRemDataSet;
    SCE: TSockCon;
    RSMTP: TRemDataSet;
    ASMTP: TRemDataSet;
    procedure ASMTPNewRecord(DataSet: TDataSet);
    procedure RSMTPNewRecord(DataSet: TDataSet);
    procedure ASMTPAfterEdit(DataSet: TDataSet);
    procedure RSMTPAfterEdit(DataSet: TDataSet);
    procedure ReceiveAfterOpen(DataSet: TDataSet);
    procedure AlertAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    Dll: TDLLParam;
    procedure LoadReceive;
    procedure UpdateCQDT001(DNO:string);
    procedure Search(SCDS: TClientDataSet; GroupStatus, SRList, SRText,  SRDate:string; DateF,DateT : TDateTime);
    procedure LoadAlert;
    procedure AddCQDT003(DNO:string);
    procedure NewSmtp(CDS:TDataSet; TYP:string);
    procedure ModifySmtp(CDS:TDataSet);
    procedure RevertCQDT001(DNO:string);
    procedure RevertCQDT003(DNO:string);
    procedure RevertGetRunning(abr,cde:string);
    procedure ResendUpdate(TB,DNO: string);
  end;

var
  DME006Main: TDME006Main;

implementation

{$R *.dfm}

{ TDME006Main }

procedure TDME006Main.AddCQDT003(DNO: string);
VAR AT003 : TClientDataSet;
begin
  AT003 := TClientDataSet.Create(nil);
  SCE.AddProv('AT003','ALL');
  AT003.ProviderName := 'AT003';
  AT003.RemoteServer := SCE;
  AT003.Close;
  AT003.CommandText := 'INSERT INTO CQDT003 (CQTACT,CQTSTS,CQTBRN,CQTPDM,CQTPDT' +
                       '                    ,CQTDNO,CQTRFN,CQTCSN,CQTCQD,CQTDEA' +
                       '                    ,CQTDLN,CQTONN,CQTADR,CQTEMA,CQTITM' +
                       '                    ,CQTDUE,CQTDAM,CQTETD,CQTETU,CQTETW' +
                       '                    ,CQTCRD,CQTCRU,CQTCRW) ' +
                       '              VALUES(''A''' +
                       '                    ,''C''' +
                       '                    ,''' + Dll.Branch + '''' +
                       '                    ,''' + Dll.PDM + '''' +
                       '                    ,''' + Dll.PDT + '''' +
                       '                    ,''' + DNO + '''' +
                       '                    ,''' + Alert.FieldByName('CQTRFN').AsString + '''' +
                       '                    ,''' + Alert.FieldByName('CQTCSN').AsString + '''' +
                       '                    ,''' + FormatDateTime('MM/dd/yyyy',Alert.FieldByName('CQTCQD').AsDateTime) + '''' +
                       '                    ,''' + Alert.FieldByName('CQTDEA').AsString + '''' +
                       '                    ,''' + Alert.FieldByName('CQTDLN').AsString + '''' +
                       '                    ,''' + Alert.FieldByName('CQTONN').AsString + '''' +
                       '                    ,''' + Alert.FieldByName('CQTADR').AsString + '''' +
                       '                    ,''' + Alert.FieldByName('CQTEMA').AsString + '''' +
                       '                    ,''' + Alert.FieldByName('ITEMS').AsString + '''' +
                       '                    ,''' + FormatDateTime('MM/dd/yyyy',Alert.FieldByName('DUE').AsDateTime) + '''' +
                       '                    ,''' + Alert.FieldByName('AMT').AsString + '''' +
                       '                    ,{FN NOW()}' +
                       '                    ,''' + Dll.UserID + '''' +
                       '                    ,''' + Dll.WorkStation + '''' +
                       '                    ,{FN NOW()}' +
                       '                    ,''' + Dll.UserID + '''' +
                       '                    ,''' + Dll.WorkStation + '''' +
                       '                    )';
  AT003.Execute;
end;

procedure TDME006Main.AlertAfterOpen(DataSet: TDataSet);
begin
  TFloatField(Alert.FieldByName('CQTMTD')).DisplayFormat := 'dd/MM/yyyy HH:mm:ss';
  TFloatField(Alert.FieldByName('DUE')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(Alert.FieldByName('CQTCQD')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(Alert.FieldByName('AMT')).DisplayFormat := '#,##0.00';
end;

procedure TDME006Main.ASMTPAfterEdit(DataSet: TDataSet);
begin
  ModifySmtp(ASMTP);
end;

procedure TDME006Main.ASMTPNewRecord(DataSet: TDataSet);
begin
  NewSmtp(ASMTP,'A');
end;

procedure TDME006Main.LoadAlert;
begin
  Alert.Close;
  Alert.CommandText := 'EXEC SP_ALERT';
  Alert.Open;
  ASMTP.Command := 'SELECT * FROM CQDM013 WHERE CQMTYP=''A'' AND CQMLNU=''' + Dll.UserID + '''';
  if ASMTP.RecordCount <= 0 then ASMTP.Append;
end;

procedure TDME006Main.LoadReceive;
begin
 Receive.Command := 'SELECT 0 AS CHK              ' + #13 +
                    '     , CQTSTS                ' + #13 +
                    '     , CQTRCD                ' + #13 +
                    '     , CQTCSN                ' + #13 +
                    '     , CQTEMA                ' + #13 +
                    '     , CQTDLN                ' + #13 +
                    '     , CQTONN                ' + #13 +
                    '     , CQTADR                ' + #13 +
                    '     , COUNT(CQTCSN) AS CCSN ' + #13 +
                    '     , CQTDEA                ' + #13 +
                    '     , SUM(CQTCQA) AS CQA    ' + #13 +
                    '     , CQTDNO                ' + #13 +
                    '     , CQTMTD                ' + #13 +
                    'FROM CQDT001                 ' + #13 +
                    'GROUP BY CQTSTS, CQTRCD, CQTCSN, CQTEMA, CQTDLN, CQTONN, CQTADR, CQTDEA, CQTDNO, CQTMTD ' + #13 +
                    'ORDER BY CQTRCD,CQTCSN';
 RSMTP.Command := 'SELECT * FROM CQDM013 WHERE CQMTYP=''R'' AND CQMLNU=''' + Dll.UserID + '''';
 if RSMTP.RecordCount <= 0 then RSMTP.Append;
end;



procedure TDME006Main.ModifySmtp(CDS: TDataSet);
begin
  CDS.Edit;
  CDS.FieldByName('CQMMTD').AsDateTime := getServerDateTime(SCE);
  CDS.FieldByName('CQMMTU').AsString := Dll.UserID;
  CDS.FieldByName('CQMMTW').AsString := Dll.WorkStation;
end;

procedure TDME006Main.NewSmtp(CDS: TDataSet; TYP: string);
var LSMTP:TClientDataSet;
begin
  CDS.Edit;
  CDS.FieldByName('CQMACT').AsString := 'A';
  CDS.FieldByName('CQMSTS').AsString := 'A';
  CDS.FieldByName('CQMBRN').AsString := Dll.Branch;
  CDS.FieldByName('CQMPDM').AsString := Dll.PDM;
  CDS.FieldByName('CQMPDT').AsString := Dll.PDT;
  CDS.FieldByName('CQMLNU').AsString := Dll.UserID;
  CDS.FieldByName('CQMTYP').AsString := TYP;
  LSMTP := TClientDataSet.Create(nil);
  try
    SCE.AddProv('LSMTP','ALL');
    LSMTP.ProviderName := 'LSMTP';
    LSMTP.RemoteServer := SCE;
    LSMTP.Close;
    LSMTP.CommandText := 'select CQMCOD ,CQMRS1 from CQDM004 where CQMABR =''EMAIL'' and CQMABG =''SMTP''';
    LSMTP.Open;
    if LSMTP.Locate('CQMCOD','SMTP_SERVER',[]) then
      CDS.FieldByName('CQMHOS').AsString := LSMTP.FieldByName('CQMRS1').AsString;
    if LSMTP.Locate('CQMCOD','SMTP_PORT',[]) then
      CDS.FieldByName('CQMPOT').AsString := LSMTP.FieldByName('CQMRS1').AsString;
    if LSMTP.Locate('CQMCOD','SMTP_USERNAME',[]) then
      CDS.FieldByName('CQMUSR').AsString := LSMTP.FieldByName('CQMRS1').AsString;
    if LSMTP.Locate('CQMCOD','SMTP_PASSWORD',[]) then
      CDS.FieldByName('CQMPAS').AsString := LSMTP.FieldByName('CQMRS1').AsString;
    if LSMTP.Locate('CQMCOD','SMTP_AUTHEN',[]) then
      CDS.FieldByName('CQMAUT').AsString := LSMTP.FieldByName('CQMRS1').AsString;
  finally
    LSMTP.Free;
  end;
  CDS.FieldByName('CQMPRI').AsString := 'normal';
  CDS.FieldByName('CQMETD').AsDateTime := getServerDateTime(SCE);
  CDS.FieldByName('CQMETU').AsString := Dll.UserID;
  CDS.FieldByName('CQMETW').AsString := Dll.WorkStation;
  CDS.FieldByName('CQMCRD').AsDateTime := getServerDateTime(SCE);
  CDS.FieldByName('CQMCRU').AsString := Dll.UserID;
  CDS.FieldByName('CQMCRW').AsString := Dll.WorkStation;
  CDS.Post;
end;

procedure TDME006Main.ReceiveAfterOpen(DataSet: TDataSet);
begin
  TFloatField(Receive.FieldByName('CQTRCD')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(Receive.FieldByName('CQTMTD')).DisplayFormat := 'dd/MM/yyyy HH:mm:ss';
  TFloatField(Receive.FieldByName('CQA')).DisplayFormat := '#,##0.00';
end;

procedure TDME006Main.ResendUpdate(TB,DNO: string);
var RUD: TClientDataSet;
begin
  RUD := TClientDataSet.Create(nil);
  SCE.AddProv('RUD','ALL');
  RUD.ProviderName := 'RUD';
  RUD.RemoteServer := SCE;
  RUD.Close;
  RUD.CommandText := 'UPDATE ' + TB + ' SET CQTMTD={FN NOW()}                 ' + #13 +
                     '                    , CQTMTU=''' + Dll.UserID + '''     ' + #13 +
                     '                    , CQTMTW=''' + Dll.WorkStation + '''' + #13 +
                     'WHERE CQTDNO=''' + DNO + '''';
  RUD.Execute;
end;

procedure TDME006Main.RevertCQDT001(DNO: string);
var RT001 : TClientDataSet;
begin
  RT001 := TClientDataSet.Create(nil);
  SCE.AddProv('RT001','ALL');
  RT001.ProviderName := 'RT001';
  RT001.RemoteServer := SCE;
  RT001.Close;
  RT001.CommandText := 'UPDATE CQDT001 SET CQTSTS=''P''          ' + #13 +
                            ', CQTDNO=NULL                       ' + #13 +
                            ', CQTMTD=NULL                       ' + #13 +
                            ', CQTMTU=NULL                       ' + #13 +
                            ', CQTMTW=NULL                       ' + #13 +
                       'WHERE CQTDNO=''' + DNO + '''';
  RT001.Execute;
end;

procedure TDME006Main.RevertCQDT003(DNO: string);
VAR RT003 : TClientDataSet;
begin
  RT003 := TClientDataSet.Create(nil);
  SCE.AddProv('RT003','ALL');
  RT003.ProviderName := 'RT003';
  RT003.RemoteServer := SCE;
  RT003.Close;
  RT003.CommandText := 'DELETE CQDT003 WHERE CQTDNO=''' + DNO + '''';
  RT003.Execute;
end;

procedure TDME006Main.RevertGetRunning(abr, cde: string);
var RGR:TClientDataSet;
begin
  RGR := TClientDataSet.Create(nil);
  try
    SCE.AddProv('RGR','ALL');
    RGR.ProviderName := 'RGR';
    RGR.RemoteServer := SCE;
    RGR.Close;
    RGR.CommandText := 'UPDATE CQDM008 SET CQMNM1=CAST(CQMNM1 AS INT) - 1 WHERE CQMABR=''' + abr + ''' AND CQMCDE=''' + cde + '''';
    RGR.Execute;
  finally
    RGR.Free;
  end;      
end;

procedure TDME006Main.RSMTPAfterEdit(DataSet: TDataSet);
begin
  ModifySmtp(RSMTP);
end;

procedure TDME006Main.RSMTPNewRecord(DataSet: TDataSet);
begin
  NewSmtp(RSMTP,'R');
end;

procedure TDME006Main.UpdateCQDT001(DNO: string);
var UT001 : TClientDataSet;
begin
  UT001 := TClientDataSet.Create(nil);
  SCE.AddProv('UT001','ALL');
  UT001.ProviderName := 'UT001';
  UT001.RemoteServer := SCE;
  UT001.Close;
  UT001.CommandText := 'UPDATE CQDT001 SET CQTSTS=''C''          ' + #13 +
                            ', CQTDNO=''' + DNO + '''            ' + #13 +
                       'WHERE CQTCSN=''' + Receive.FieldByName('CQTCSN').AsString + '''' + #13 +
                       '  AND CQTRCD=''' + FormatDateTime('MM/dd/yyyy',Receive.FieldByName('CQTRCD').AsDateTime)+ '''' + #13 +
                       '  AND (LTRIM(RTRIM(CQTDNO)) = '''' OR CQTDNO IS NULL)';
  UT001.Execute;
end;

procedure TDME006Main.Search(SCDS: TClientDataSet; GroupStatus, SRList, SRText,  SRDate:string; DateF,DateT : TDateTime);
var S:string;
begin
  if SRList <> '' then s := s + 'AND ' + SRList + ' LIKE ''%' +SRText + '%'' ';
  if SRDate <> '' then s := s + 'AND (' + SRDate + ' >= ''' + DateToStr(DateF) + ''' AND ' + SRDate + ' <= ''' + DateToStr(DateT) + ''')';
  SCDS.Filter := GroupStatus + s;
  SCDS.Filtered := True;
end;

end.
