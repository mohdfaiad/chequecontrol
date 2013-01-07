unit SelectContractFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus,
  StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxDBEdit, cxContainer, cxLabel,
  ExtCtrls, cxLookAndFeels, cxLookAndFeelPainters;

type
  TfrmSelectContract = class(TForm)
    Bevel1: TBevel;
    cxLabel2: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxButton2: TcxButton;
    btnCancel: TcxButton;
    cxButton3: TcxButton;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelectContract: TfrmSelectContract;

implementation

{$R *.dfm}

procedure TfrmSelectContract.btnCancelClick(Sender: TObject);
begin
  close;
end;

end.
