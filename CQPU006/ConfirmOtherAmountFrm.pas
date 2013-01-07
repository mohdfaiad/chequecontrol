unit ConfirmOtherAmountFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxTextEdit, StdCtrls, cxButtons, ExtCtrls, cxMaskEdit, cxCurrencyEdit;

type
  TfrmConfirmOtherAmount = class(TForm)
    Bevel1: TBevel;
    btnOK: TcxButton;
    edAmount: TcxCurrencyEdit;
    procedure btnOKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAmountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    FAmount: real;
    FIsOK: boolean;
    procedure SetAmount(const Value: real);
    procedure SetIsOK(const Value: boolean);
    { Private declarations }
  public
    { Public declarations }
    property Amount:real read FAmount write SetAmount;
    property IsOK :boolean  read FIsOK write SetIsOK;
  end;

var
  frmConfirmOtherAmount: TfrmConfirmOtherAmount;

implementation

{$R *.dfm}

{ TfrmConfirmOtherAmount }

procedure TfrmConfirmOtherAmount.btnOKClick(Sender: TObject);
begin
  IsOK:=true;
  Amount:=edAmount.Value;
  close;
end;

procedure TfrmConfirmOtherAmount.edAmountKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN  then btnOKClick(sender);
end;

procedure TfrmConfirmOtherAmount.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key = VK_ESCAPE then self.close;

end;

procedure TfrmConfirmOtherAmount.FormShow(Sender: TObject);
begin
  edAmount.SelectAll;
  edAmount.SetFocus;
  FIsOK:=false;
end;

procedure TfrmConfirmOtherAmount.SetAmount(const Value: real);
begin
  FAmount := Value;
  edAmount.Text:=FloatToStr(value);
end;

procedure TfrmConfirmOtherAmount.SetIsOK(const Value: boolean);
begin
  FIsOK := Value;
end;

end.
