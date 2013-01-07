unit MainDM;

interface

uses
  SysUtils, Classes, RemCustomDS, RemDataSet, DB, DBClient, MConnect, SConnect,
  SockCon;

type
  TDMMain = class(TDataModule)
    SockCon: TSockCon;
    ConBro: TConnectionBroker;
    CDS1: TClientDataSet;
    RDS1: TRemDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMain: TDMMain;

implementation

{$R *.dfm}

end.
