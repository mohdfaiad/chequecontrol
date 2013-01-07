unit FixDuplicateRowFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, DB, SqlExpr, DBClient, FMTBcd, StdCtrls, Grids,
  DBGrids, Provider;

type
  TfrmFixDuplicateRow = class(TForm)
    cdsTarget: TClientDataSet;
    SQLConnection1: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnProcess: TButton;
    cdsSrc: TClientDataSet;
    cdsTargetCQMACT: TStringField;
    cdsTargetCQMSTS: TStringField;
    cdsTargetCQMABR: TStringField;
    cdsTargetCQMGRP: TStringField;
    cdsTargetCQMCDE: TStringField;
    cdsTargetCQMNME: TStringField;
    cdsTargetCQMDES: TStringField;
    cdsTargetCQMVA1: TStringField;
    cdsTargetCQMVA2: TStringField;
    cdsTargetCQMVA3: TStringField;
    cdsTargetCQMVA4: TStringField;
    cdsTargetCQMVA5: TStringField;
    cdsTargetCQMNM1: TFMTBCDField;
    cdsTargetCQMNM2: TFMTBCDField;
    cdsTargetCQMNM3: TFMTBCDField;
    cdsTargetCQMNM4: TFMTBCDField;
    cdsTargetCQMNM5: TFMTBCDField;
    cdsTargetCQMETD: TSQLTimeStampField;
    cdsTargetCQMETW: TStringField;
    cdsTargetCQMETU: TStringField;
    cdsTargetCQMMTD: TSQLTimeStampField;
    cdsTargetCQMMTU: TStringField;
    cdsTargetCQMMTW: TStringField;
    cdsSrcCQMACT: TStringField;
    cdsSrcCQMSTS: TStringField;
    cdsSrcCQMABR: TStringField;
    cdsSrcCQMGRP: TStringField;
    cdsSrcCQMCDE: TStringField;
    cdsSrcCQMNME: TStringField;
    cdsSrcCQMDES: TStringField;
    cdsSrcCQMVA1: TStringField;
    cdsSrcCQMVA2: TStringField;
    cdsSrcCQMVA3: TStringField;
    cdsSrcCQMVA4: TStringField;
    cdsSrcCQMVA5: TStringField;
    cdsSrcCQMNM1: TFMTBCDField;
    cdsSrcCQMNM2: TFMTBCDField;
    cdsSrcCQMNM3: TFMTBCDField;
    cdsSrcCQMNM4: TFMTBCDField;
    cdsSrcCQMNM5: TFMTBCDField;
    cdsSrcCQMETD: TSQLTimeStampField;
    cdsSrcCQMETW: TStringField;
    cdsSrcCQMETU: TStringField;
    cdsSrcCQMMTD: TSQLTimeStampField;
    cdsSrcCQMMTU: TStringField;
    cdsSrcCQMMTW: TStringField;
    procedure btnProcessClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFixDuplicateRow: TfrmFixDuplicateRow;

implementation

{$R *.dfm}

function AppendCds(cdsSource:TClientDataSet;cdsTarget:TClientDataSet):boolean;
var i:integer;
    strFName,strFValue:string;
    ArrCol: array of string;
begin
try
  Result := False;

    cdsSource.First();
    while (not cdsSource.Eof) do
    begin
      strFName:='';

      for i := 0 to (cdsSource.FieldCount - 1) do
      begin

         if cdsSource.FieldByName(cdsSource.Fields[i].FieldName).IsNull then
         begin
         strFName:=strFName+cdsSource.Fields[i].FieldName;

         if (i<cdsSource.FieldCount - 1) then
         strFName:=strFName+';';
         end;


         SetLength(arrcol,i+1);
         if not cdsSource.FieldByName(cdsSource.Fields[i].FieldName).IsNull then
         ArrCol[i]:=cdsSource.FieldByName(cdsSource.Fields[i].FieldName).Value;
      end;

      if not cdsTarget.Locate(strFName,ArrCol,[]) then
      begin
       { cdsTarget.Append();

        for i := 0 to (cdsSource.FieldCount - 1) do
          cdsTarget.FieldByName(cdsSource.Fields[i].FieldName).Value :=
            cdsSource.FieldByName(cdsSource.Fields[i].FieldName).Value;
            }
      end;

      try
     // cdsTarget.Post();
      except
      end;
      cdsSource.Next();
    end;

    finally
    result := True;
  end;
end;

procedure TfrmFixDuplicateRow.btnProcessClick(Sender: TObject);
begin
  cdsSrc.Open;
  cdsTarget.Open;
  cdsTarget.EmptyDataSet;


  AppendCds(cdsSrc,cdsTarget);
end;

end.
