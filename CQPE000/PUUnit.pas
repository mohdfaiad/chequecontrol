unit PUUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TFormPU = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPU: TFormPU;

implementation

{$R *.dfm}

procedure TFormPU.Button1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
