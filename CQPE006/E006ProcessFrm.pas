unit E006ProcessFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TE006FrmProcess = class(TForm)
    Panel1: TPanel;
    pb1: TProgressBar;
    lbl1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  E006FrmProcess: TE006FrmProcess;

implementation

uses E006MainFrm;

{$R *.dfm}

procedure TE006FrmProcess.FormShow(Sender: TObject);
var
  i : integer;
begin


  Pb1.Position := 0;
  Pb1.Max := 100;

  for i := 0 to 500 do
  begin
  pb1.StepBy(25);
    Pb1.Position := i;
    //Sleep(25);
    //Application.ProcessMessages;
  end;
end;
end.
