unit DllForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmDllForm = class(TForm)
    lbl1: TLabel;
    btn1: TButton;
    edt1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDllForm: TfrmDllForm;

implementation

{$R *.DFM}

procedure TfrmDllForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmDllForm.btn1Click(Sender: TObject);
begin
  Showmessage('OK');
end;

end.
