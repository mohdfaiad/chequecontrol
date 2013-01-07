unit BankDm;

interface

uses
  SysUtils, Classes, DB, ADODB, DBClient, Provider, RemCustomDS, RemDataSet,
  MConnect, SConnect, SockCon;

type
  TDmBank = class(TDataModule)
    ScBk: TSockCon;
    CdsBank: TRemDataSet;
    CdsExp: TRemDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadBank(str:string) ;
    procedure Exp ;
  end;

var
  DmBank: TDmBank;
  Chp : string ;


implementation

{$R *.dfm}

{ TDmBank }

procedure TDmBank.Exp;
begin

  CdsExp.Command := 'select * from CQDM001 order by CQMBNK' ;

end;

procedure TDmBank.LoadBank(str:string);
begin
  CdsBank .Command := 'select * from CQDM001' + ' ' ;
end;

end.
