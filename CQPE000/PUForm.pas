unit PUForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls;

type
  TFormPU = class(TForm)
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Button1: TButton;
    Memo1: TMemo;
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
