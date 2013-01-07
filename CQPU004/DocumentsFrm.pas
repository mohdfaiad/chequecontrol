unit DocumentsFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  ExtCtrls, StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxDBEdit, cxContainer, cxLabel,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxPC;

type
  TfrmDocuments = class(TForm)
    cxLabel2: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnCancel: TcxButton;
    cxButton2: TcxButton;
    btnSelect: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Bevel1: TBevel;
    cxLabel4: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    procedure btnSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocuments: TfrmDocuments;

implementation

{$R *.dfm}

uses
  ConfrimProcessDocumentFrm;

procedure TfrmDocuments.btnSelectClick(Sender: TObject);
begin
 TfrmConfrimProcessDocumentFrm.create(Application).ShowModal();
end;

end.
