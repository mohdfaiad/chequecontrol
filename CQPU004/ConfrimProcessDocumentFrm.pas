unit ConfrimProcessDocumentFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, Menus, cxLookAndFeelPainters,
  cxButtons;

type
  TfrmConfrimProcessDocumentFrm = class(TForm)
    Bevel1: TBevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Memo1: TMemo;
    Label1: TLabel;
    btnCancel: TcxButton;
    cxButton1: TcxButton;
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfrimProcessDocumentFrm: TfrmConfrimProcessDocumentFrm;

implementation

{$R *.dfm}

procedure TfrmConfrimProcessDocumentFrm.btnCancelClick(Sender: TObject);
begin
  Close;
end;

end.
