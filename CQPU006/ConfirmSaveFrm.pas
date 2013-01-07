unit ConfirmSaveFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, ExtCtrls, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, cxLabel;

type
  TfrmConfirmSave = class(TForm)
    btnOK: TcxButton;
    Bevel1: TBevel;
    lbAmountA: TcxLabel;
    lbVatA: TcxLabel;
    lbWTA: TcxLabel;
    lbNetPay: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfirmSave: TfrmConfirmSave;

implementation

{$R *.dfm}

end.
