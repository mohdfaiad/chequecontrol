unit U003MainDM;

interface

uses
  SysUtils, Classes, RemCustomDS, RemDataSet, DB, DBClient, MConnect, SConnect,
  SockCon, RemCollect, WideStrings, FMTBcd, Provider, SqlExpr, LoadBank,
  UIT_GLOBAL_LIB, Converse, Dialogs;

type
  TDMU003Main = class(TDataModule)
    RSL: TSockCon;
    CQDM006: TRemDataSet;
    CQDS002: TRemDataSet;
    HP: TClientDataSet;
    procedure CQDS002AfterOpen(DataSet: TDataSet);
    procedure CQDM006AfterScroll(DataSet: TDataSet);
  private

  public
    DLL: TDLLParam;
    procedure LoadCQDM006;
    procedure LoadCQDS002;
    procedure ShowResult(MainData:TRemDataSet;Corr,NotCorr:TClientDataSet);
    procedure UpdateCheque(Corr:TClientDataSet;CQStatus:string);
  end;

var
  DMU003Main: TDMU003Main;

implementation

{$R *.dfm}

procedure TDMU003Main.CQDM006AfterScroll(DataSet: TDataSet);
begin
  LoadCQDS002;
end;

procedure TDMU003Main.CQDS002AfterOpen(DataSet: TDataSet);
begin
  FieldsFormate(CQDM006,CQDS002);
end;

procedure TDMU003Main.LoadCQDM006;
begin
  CQDM006.Command := 'Select * From CQDM006 Where CQMDNO=''''';
end;

procedure TDMU003Main.LoadCQDS002;
begin
  CQDS002.Command := 'Select * From CQDS002 Where CQSDNO=' + '''' + CQDM006.FieldByName('CQMDNO').AsString + '''' + 'Order by CQSDNO';
end;

procedure TDMU003Main.ShowResult(MainData:TRemDataSet; Corr, NotCorr: TClientDataSet);
  procedure CopyCDS(CDS1:TRemDataSet;CDS2:TClientDataSet);
  var i : Integer;
  begin
    CDS2.Append;
    for i := 0 to CDS1.FieldCount-1 do
    begin
      CDS2.FieldByName(CDS1.Fields[i].FieldName).Value :=
      CDS1.FieldByName(CDS1.Fields[i].FieldName).Value;
    end;
    CDS2.Post;
  end;
var u : Integer;
begin
  with MainData do
  begin
    Corr.FieldDefs.Clear;
    NotCorr.FieldDefs.Clear;
    for u := 0 to MainData.FieldCount - 1 do
    begin
      Corr.FieldDefs.Add(Fields[u].FieldName,Fields[u].DataType,Fields[u].Size);
      NotCorr.FieldDefs.Add(Fields[u].FieldName,Fields[u].DataType,Fields[u].Size);
    end;
    Corr.CreateDataSet;
    NotCorr.CreateDataSet;

    with Corr do
    begin
      TFloatField(FieldByName('CQSCQA')).DisplayFormat := '#,##0.00';
      TFloatField(FieldByName('CQSCQD')).DisplayFormat := 'dd/MM/yyyy';
      TFloatField(FieldByName('CQSDED')).DisplayFormat := 'dd/MM/yyyy';
      TFloatField(FieldByName('CQSECD')).DisplayFormat := 'dd/MM/yyyy';
    end;

    with NotCorr do
    begin
      TFloatField(FieldByName('CQSCQA')).DisplayFormat := '#,##0.00';
      TFloatField(FieldByName('CQSCQD')).DisplayFormat := 'dd/MM/yyyy';
      TFloatField(FieldByName('CQSDED')).DisplayFormat := 'dd/MM/yyyy';
      TFloatField(FieldByName('CQSECD')).DisplayFormat := 'dd/MM/yyyy';
    end;

    First;
    while not Eof do
    begin
      if (FieldByName('CQSETY').AsString = '') and (FieldByName('CQSBTY').AsString = 'LS') then
        CopyCDS(MainData,Corr)
      else
        CopyCDS(MainData,NotCorr);
      Next;
    end;
    Corr.First;
    NotCorr.First;
  end;
end;

procedure TDMU003Main.UpdateCheque(Corr:TClientDataSet;CQStatus:string);
var CHQ :TClientDataSet;
    CQS,XXX :string;
begin
  RSL.AddProv('CHQ','ALL');
  CHQ := TRemDataSet.Create(nil);
  CHQ.ProviderName := 'CHQ';
  CHQ.RemoteServer := RSL;
  Corr.DisableControls;
  try
    Corr.First;
    if CQStatus = 'C' then
      CQS  := 'N'
    else if CQStatus = 'P' then
      CQS  := 'P'
    else if CQStatus = 'R' then
      CQS  := 'Y';

    while not Corr.Eof do
    begin
      if Corr.FieldByName('CQSBTY').AsString = 'LS' then
      begin
        CHQ.Close;
        XXX := 'EXEC SP_UPDATEMASTERCHEQUE ' +
                           '''' + Corr.FieldByName('CQSRFN').AsString + ''',' +
                           '''' + Dll.UserID + ''',' +
                           '''' + Dll.WorkStation + ''',' +
                           '''' + Dll.Branch + ''',' +
                           '''' + DLL.PDM + ''',' +
                           '''' + Dll.PDT + ''',' +
                           '''' + CQS + ''',' +
                           '''' + Corr.FieldByName('CQSREC').AsString +''',' +
                           '''' + FormatDateTime('MM/dd/yyyy',Corr.FieldByName('CQSDED').AsDateTime) + ''',' +
                           '''' + CQDM006.FieldByName('CQMACC').AsString + ''',' +
                           '''' + Corr.FieldByName('CQSCNO').AsString + ''',' +
                           '''' + FormatDateTime('MM/dd/yyyy',CQDM006.FieldByName('CQMBSD').AsDateTime) + '''' +
                           '';
        CHQ.CommandText := XXX;
        //ShowMessage(XXX);
        CHQ.Execute;
      end;
      Corr.Next;
    end;
  finally
    CHQ.Free;
    Corr.EnableConstraints;
  end;
end;

end.
