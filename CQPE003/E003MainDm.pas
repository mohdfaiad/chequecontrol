unit E003MainDm;

interface

uses
  SysUtils, Classes, DBClient, Provider, DB, ADODB, RemCustomDS, RemDataSet,
  MConnect, SConnect, SockCon;

type
  TE003DmMain = class(TDataModule)
    SO_EX: TSockCon;
    ConBro: TConnectionBroker;
    dso_explana: TClientDataSet;
    procedure dso_explanaNewRecord(DataSet: TDataSet);
    procedure dso_explanaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);

  private
    { Private declarations }
  public
    procedure LoadEX;
  end;

var
  E003DmMain: TE003DmMain;
  Ck : string ;
implementation

{$R *.dfm}
 uses Dialogs;
procedure TE003DmMain.dso_explanaNewRecord(DataSet: TDataSet);
begin
dso_explana.FieldByName('CQMACT').AsString:='A';
dso_explana.FieldByName('CQMSTS').AsString:='B';
dso_explana.FieldByName('CQMBRN').AsString:='C';
dso_explana.FieldByName('CQMPDM').AsString:='D';
dso_explana.FieldByName('CQMPDT').AsString:='E';
dso_explana.FieldByName('CQMETD').AsString:='11/11/2554';
dso_explana.FieldByName('CQMETW').AsString:='XX';
dso_explana.FieldByName('CQMETU').AsString:='XXXX';
dso_explana.FieldByName('CQMMTD').AsString:='11/11/2554';
dso_explana.FieldByName('CQMMTU').AsString:='EX';
dso_explana.FieldByName('CQMMTW').AsString:='AAA';
dso_explana.FieldByName('CQMPDM').AsString:='D';

end;

procedure TE003DmMain.dso_explanaReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
ShowMessage(e.Message);
end;

procedure TE003DmMain.LoadEX;
begin
dso_explana.Close;
dso_explana.CommandText:= 'select  * from CQDM003 order by CQMCDE ' ;
dso_explana.Open;
end;

end.
