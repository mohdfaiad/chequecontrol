unit U002ConFullFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, ExtCtrls;

type
  TFrmU002ConFull = class(TForm)
    Panel1: TPanel;
    cxMemo1: TcxMemo;
    Other: TcxButton;
    Contract: TcxButton;
    Exit: TcxButton;
    procedure ExitClick(Sender: TObject);
    procedure OtherClick(Sender: TObject);
    procedure ContractClick(Sender: TObject);
  private
    FSelectBtn: string;
    { Private declarations }
  public
    property SelectBtn:string  read FSelectBtn write FSelectBtn;
  end;

var
  FrmU002ConFull: TFrmU002ConFull;

implementation

{$R *.dfm}

procedure TFrmU002ConFull.OtherClick(Sender: TObject);
begin
  FSelectBtn := 'OTHER';
  Close;
end;

procedure TFrmU002ConFull.ContractClick(Sender: TObject);
begin
 FSelectBtn := 'CONTRACT';
 Close;
end;

procedure TFrmU002ConFull.ExitClick(Sender: TObject);
begin
  Close;
end;

end.
