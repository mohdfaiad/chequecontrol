unit CQPQ003RemarkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMemo, StdCtrls, cxButtons, ExtCtrls, DB, cxDBEdit;

type
  TFrmCQPQ003Remark = class(TForm)
    Panel1: TPanel;
    OK: TcxButton;
    Cancel: TcxButton;
    RMK: TcxDBMemo;
    DECHQ: TDataSource;
    procedure OKClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCQPQ003Remark: TFrmCQPQ003Remark;

implementation

uses CQPQ003EditChequeDM;

{$R *.dfm}

procedure TFrmCQPQ003Remark.CancelClick(Sender: TObject);
begin
  DECHQ.DataSet.Cancel;
  Close;
end;

procedure TFrmCQPQ003Remark.FormShow(Sender: TObject);
begin
  if DECHQ.DataSet.State in [dsInsert,dsEdit] then DECHQ.DataSet.Post;
end;

procedure TFrmCQPQ003Remark.OKClick(Sender: TObject);
begin
  if Application.MessageBox('Confirm to save Remark?', 'Remark Confirm',
    MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    DECHQ.DataSet.Post;
    Close;
  end;
end;

end.
