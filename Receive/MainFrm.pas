unit MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBClient, DB, SqlExpr, Provider, StdCtrls, Grids,
  DBGrids, ADODB, ExtCtrls;

type
  TfrmMain = class(TForm)
    dsp: TDataSetProvider;
    cds1: TClientDataSet;
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    ADODataSet: TADODataSet;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  cds1.Close;
  cds1.open;
end;

procedure TfrmMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
  ShowMessage('xxxx');
end;

end.
