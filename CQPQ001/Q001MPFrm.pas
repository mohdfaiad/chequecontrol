unit Q001MPFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TQ001FrmMP = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    FWorkMode: word;
    { Private declarations }
  public
    property WorkMode:word read FWorkMode write FWorkMode;
  end;

var
  Q001FrmMP: TQ001FrmMP;

implementation

{$R *.dfm}

procedure TQ001FrmMP.FormCreate(Sender: TObject);
begin
  FWorkMode := 0;
end;

end.
