unit U002DelMemoFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, ExtCtrls, U002MainDM,
  LoadBank, DB;

type
  TFrmU002DelMemo = class(TForm)
    Panel1: TPanel;
    OK: TcxButton;
    Cancel: TcxButton;
    RMK: TcxMemo;
    procedure OKClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FBtn: Boolean;
    { Private declarations }
  public
    property Btn:Boolean  read FBtn write FBtn;
  end;

var
  FrmU002DelMemo: TFrmU002DelMemo;

implementation

{$R *.dfm}

procedure TFrmU002DelMemo.CancelClick(Sender: TObject);
begin
  Btn := False;
  Close;
end;

procedure TFrmU002DelMemo.FormShow(Sender: TObject);
begin
  RMK.Text := DMU002Main.CQDS001.FieldByName('CQSRMK').AsString;
end;

procedure TFrmU002DelMemo.OKClick(Sender: TObject);
begin
  if Application.MessageBox('Confirm to Delete this data From Bank?', 'Delete Confirm',
    MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    with DMU002Main do
    begin
      //DMU002Main.ItemDelete;                       
      CQDS001.Edit;
      CQDS001.FieldByName('CQSRMK').AsString := RMK.Text;
      CQDS001.FieldByName('CQSDEL').Value := 'T';
      CQDS001.Post;
      PROCESSDEPOSIT(CQDM005,CQDS001,HP,SC,DLL,'NULL');
    end;
    Btn := True;
    Close;
  end;
end;

end.
