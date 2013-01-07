unit ConfirmationFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, cxContainer, cxLabel, cxLookAndFeels;

type
  TfrmConfirmation = class(TForm)
    Bevel1: TBevel;
    btnSelectContract: TcxButton;
    btnCancel: TcxButton;
    cxButton3: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBComboBox2: TcxDBComboBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSelectContractClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfirmation: TfrmConfirmation;

implementation

{$R *.dfm}

uses SelectContractFrm;

procedure TfrmConfirmation.btnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConfirmation.btnSelectContractClick(Sender: TObject);
begin
  TfrmSelectContract.Create(Application).ShowModal;
end;

end.
