unit E001MainDM;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, SConnect, SockCon,UIT_GLOBAL_LIB,
  RemCustomDS, RemDataSet, UIT_UTILS_LIB;

type
  TDME001Main = class(TDataModule)
    SC: TSockCon;
    BNK: TRemDataSet;
    procedure BNKNewRecord(DataSet: TDataSet);
    procedure BNKAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    Dll : TDLLParam;
    procedure LoadBank;
  end;

var
  DME001Main: TDME001Main;

implementation

{$R *.dfm}

{ TDME001Main }

procedure TDME001Main.BNKAfterEdit(DataSet: TDataSet);
begin
  BNK.FieldByName('CQMMTD').AsDateTime := getServerDateTime(SC);
  BNK.FieldByName('CQMMTW').AsString := Dll.WorkStation;
  BNK.FieldByName('CQMMTU').AsString := Dll.UserID;
end;

procedure TDME001Main.BNKNewRecord(DataSet: TDataSet);
begin
  BNK.FieldByName('CQMACT').AsString := 'A';
  BNK.FieldByName('CQMSTS').AsString := '';
  BNK.FieldByName('CQMBRN').AsString := Dll.Branch;
  BNK.FieldByName('CQMPDM').AsString := Dll.PDM;
  BNK.FieldByName('CQMPDT').AsString := Dll.PDT;
  BNK.FieldByName('CQMBAT').AsString := '';
  BNK.FieldByName('CQMBRT').AsString := '';
  BNK.FieldByName('CQMETD').AsDateTime := getServerDateTime(SC);
  BNK.FieldByName('CQMETW').AsString := Dll.WorkStation;
  BNK.FieldByName('CQMETU').AsString := Dll.UserID;
end;

procedure TDME001Main.LoadBank;
begin
  BNK.Command := 'SELECT * FROM CQDM001 ORDER BY CQMBNK,CQMBRC';
end;

end.
