unit PaymentInfoFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, DBClient, MConnect, SConnect, SockCon;

type
  TfrmPaymentInfo = class(TForm)
    Bevel1: TBevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SockCon: TSockCon;
    _cds: TClientDataSet;
    _cdsNo: TIntegerField;
    _cdsGoods: TIntegerField;
    _cdsVat: TIntegerField;
    _cdsReceive: TIntegerField;
    _cdsVat_1: TIntegerField;
    _cdsStatble: TIntegerField;
    _cdsType: TStringField;
    _ds: TDataSource;
    cxGrid1DBTableView1No: TcxGridDBColumn;
    cxGrid1DBTableView1Goods: TcxGridDBColumn;
    cxGrid1DBTableView1Vat: TcxGridDBColumn;
    cxGrid1DBTableView1Receive: TcxGridDBColumn;
    cxGrid1DBTableView1Vat_1: TcxGridDBColumn;
    cxGrid1DBTableView1Statble: TcxGridDBColumn;
    cxGrid1DBTableView1Type: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure initForm();
  public
    { Public declarations }
  end;

var
  frmPaymentInfo: TfrmPaymentInfo;

implementation

{$R *.dfm}

{ TfrmPaymentInfo }

procedure TfrmPaymentInfo.FormShow(Sender: TObject);
begin
  initForm;
end;

procedure TfrmPaymentInfo.initForm;
begin
  //
  if SockCon.Connected then
  with _cds do
  begin
    //close;
    //CreateDataSet;
    open;
  end;
end;

end.
