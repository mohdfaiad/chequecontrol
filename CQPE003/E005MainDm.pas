unit E005MainDm;

interface

uses
  SysUtils, Classes, DBClient, Provider, DB, ADODB, RemCustomDS, RemDataSet,
  MConnect, SConnect, SockCon;

type
  TE003DmMain = class(TDataModule)
    dso_explana: TRemDataSet;
    SO_EX: TSockCon;
    procedure dso_explanaNewRecord(DataSet: TDataSet);

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

procedure TE003DmMain.dso_explanaNewRecord(DataSet: TDataSet);
begin
dso_explana['CQMACT']:='A';
dso_explana['CQMSTS']:='B';
dso_explana['CQMBRN']:='C';
dso_explana['CQMPDM']:='D';
dso_explana['CQMPDT']:='E';
dso_explana['CQMETD']:='11/11/2554';
dso_explana['CQMETW']:='XX';
dso_explana['CQMETU']:='XXX';
dso_explana['CQMMTD']:='11/11/2554';
dso_explana['CQMMTU']:='EX';
dso_explana['CQMMTW']:='EXX';

end;

procedure TE003DmMain.LoadEX;
begin
  dso_explana.Command:= 'select * from CQDM003 order by  cast(CQMCDE as integer)' ;
end;

end.
