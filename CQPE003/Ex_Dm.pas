unit Ex_Dm;

interface

uses
  SysUtils, Classes, DBClient, Provider, DB, ADODB, RemCustomDS, RemDataSet,
  MConnect, SConnect, SockCon;

type
  TDm_Explanation = class(TDataModule)
    dso_explana: TRemDataSet;
  private
    { Private declarations }
  public
    procedure LoadEX;
  end;

var
  Dm_Explanation: TDm_Explanation;
  Ck : string ;
implementation

{$R *.dfm}

procedure TDm_Explanation.LoadEX;
begin
  dso_explana.Command:= 'select * from Explanation' ;
end;

end.
