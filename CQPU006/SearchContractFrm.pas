unit SearchContractFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, DBClient, StdCtrls, JvExStdCtrls,
  JvEdit, JvDBSearchEdit, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Menus, cxLookAndFeelPainters, cxButtons,
  cxContainer, cxLabel;

type
  TfrmSearchContract = class(TForm)
    grid: TcxGrid;
    gridDBTableView1: TcxGridDBTableView;
    gridLevel1: TcxGridLevel;
    Panel1: TPanel;
    dsContract: TDataSource;
    cdsSearch: TClientDataSet;
    gridDBTableView1INSCRN: TcxGridDBColumn;
    gridDBTableView1DAEName: TcxGridDBColumn;
    jvContract: TJvDBSearchEdit;
    jvDealerName: TJvDBSearchEdit;
    cxLabel19: TcxLabel;
    cxLabel1: TcxLabel;
    btnOK: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure jvContractKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure jvDealerNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FContractNo: string;
    procedure SetContractNo(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property ContractNo:string read FContractNo write SetContractNo;
  end;

var
  frmSearchContract: TfrmSearchContract;

implementation

uses ChequeSeparateFrm;

{$R *.dfm}

procedure TfrmSearchContract.btnOKClick(Sender: TObject);
begin
 ContractNo:=cdsSearch.FieldByName('INSCRN').AsString;
 close;
end;

procedure TfrmSearchContract.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
  VK_ESCAPE : self.close;
  VK_F5 : btnOKClick(sender);
 end;
end;

procedure TfrmSearchContract.FormShow(Sender: TObject);
begin
  cdsSearch.Open;
  jvContract.SetFocus;
end;

procedure TfrmSearchContract.jvContractKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_RETURN then
      begin
        jvDealerName.SetFocus;
      end;
end;

procedure TfrmSearchContract.jvDealerNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_RETURN then
      begin
          btnOKClick(sender);
      end;
end;

procedure TfrmSearchContract.SetContractNo(const Value: string);
begin
  FContractNo := Value;
end;

end.
