unit Q001RemarkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMemo, StdCtrls, cxButtons, ExtCtrls, Q001MainDM;

type
  TFrmQ001Remark = class(TForm)
    Panel1: TPanel;
    OK: TcxButton;
    Cancel: TcxButton;
    RMK: TcxMemo;
    procedure FormShow(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmQ001Remark: TFrmQ001Remark;

implementation

{$R *.dfm}

procedure TFrmQ001Remark.CancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmQ001Remark.FormShow(Sender: TObject);
begin
  RMK.Text := DMQ001Main.T004.FieldByName('CQTMMO').AsString;
end;

procedure TFrmQ001Remark.OKClick(Sender: TObject);
begin
  if Application.MessageBox('Confirm to save Remark?', 'Remark Confirm',
    MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    with DMQ001Main.T004 do
    begin
      First;
      while not eof do
      begin
        Edit;
        FieldByName('CQTMMO').AsString := RMK.Text;
        Post;
        Next;
      end;
    end;
    Close;
  end;
end;

end.
