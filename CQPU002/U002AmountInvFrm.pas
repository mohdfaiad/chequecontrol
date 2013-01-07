unit U002AmountInvFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, ExtCtrls;

type
  TFrmU002AmountInv = class(TForm)
    Panel1: TPanel;
    cxMemo1: TcxMemo;
    Other: TcxButton;
    Contract: TcxButton;
    Exit: TcxButton;
    procedure ExitClick(Sender: TObject);
    procedure ContractClick(Sender: TObject);
    procedure OtherClick(Sender: TObject);
  private
    FSelectBtn: string;
    { Private declarations }
  public
    property SelectBtn: string  read FSelectBtn write FSelectBtn;
  end;

var
  FrmU002AmountInv: TFrmU002AmountInv;

implementation

{$R *.dfm}

procedure TFrmU002AmountInv.ContractClick(Sender: TObject);
begin
 FSelectBtn := 'CONTRACT';
 Close;
end;

procedure TFrmU002AmountInv.ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmU002AmountInv.OtherClick(Sender: TObject);
begin
  FSelectBtn := 'SEPERATE';
  Close;
end;

end.
