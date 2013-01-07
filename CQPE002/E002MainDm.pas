unit E002MainDm;

interface

uses
  SysUtils, Classes, DBClient, Provider, DB, ADODB, RemCustomDS, RemDataSet,
  MConnect, SConnect, SockCon;

type
  TE002DmMain = class(TDataModule)
    SC_prefer: TSockCon;
    ConBro: TConnectionBroker;
    dsatus: TClientDataSet;
    procedure dsatusNewRecord(DataSet: TDataSet);
    procedure dsatusReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  
  private
    { Private declarations }
  public
  procedure LoadCq;
    { Public declarations }
  end;

var
  E002DmMain: TE002DmMain;
        

implementation

{$R *.dfm}

uses Dialogs;

procedure TE002DmMain.dsatusNewRecord(DataSet: TDataSet);
begin
dsatus.FieldByName('CQMACT').AsString:='A';
dsatus.FieldByName('CQMSTS').AsString:='B';
dsatus.FieldByName('CQMBRN').AsString:='C';
dsatus.FieldByName('CQMPDM').AsString:='D';
dsatus.FieldByName('CQMPDT').AsString:='E';
dsatus.FieldByName('CQMETD').AsString:='11/11/2554';
dsatus.FieldByName('CQMETW').AsString:='XX';
dsatus.FieldByName('CQMETU').AsString:='XXXX';
dsatus.FieldByName('CQMMTD').AsString:='11/11/2554';
dsatus.FieldByName('CQMMTU').AsString:='EX';
dsatus.FieldByName('CQMMTW').AsString:='AAA';
dsatus.FieldByName('CQMPDM').AsString:='D';
end;

procedure TE002DmMain.dsatusReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
ShowMessage(e.Message);
end;

procedure TE002DmMain.LoadCq;
begin
dsatus.Close;
dsatus.CommandText:='select * FROM CQDM002 order by CQMCDE ';
dsatus.Open;
end;

end.

