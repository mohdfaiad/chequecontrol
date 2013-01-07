unit Q001MemoFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, cxLookAndFeelPainters, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo;

type
  TFrmMemo = class(TForm)
    cxButton7: TcxButton;
    cxButton1: TcxButton;
    Memo1: TcxMemo;
    procedure Cancleclick(Sender: TObject);
    procedure saveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMemo: TFrmMemo;

implementation
uses  Q001MainDM;
{$R *.dfm}

procedure TFrmMemo.Cancleclick(Sender: TObject);
begin
   close;
end;

procedure TFrmMemo.FormShow(Sender: TObject);
begin
  Memo1.SetFocus;
end;

procedure TFrmMemo.saveClick(Sender: TObject);
begin
  with Q001DMMain.CDSMAN do
  begin
    if not Active then  Open;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('CQTMMO').AsString := memo1.Text;
      Post;
      Next;
    end;
//   Q001DMMain.CDSMAN.ApplyUpdates(0);
  end;
  FrmMemo.Close;
 end;

end.
