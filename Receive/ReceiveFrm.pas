unit ReceiveFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  cxClasses,  StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, cxContainer, cxTextEdit, cxGridLevel, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, ComCtrls, JvExComCtrls,
  cxMemo, cxLabel, cxCalendar, JvComCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, ToolWin, ImgList, Provider, ADODB;

type
  TfrmReceive = class(TfrmBase)
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxDBComboBox2: TcxDBComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel9: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel1: TcxLabel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure JumpTo(Area:TWinControl);
  end;

var
  frmReceive: TfrmReceive;

implementation

{$R *.dfm}

{ TfrmReceive }

procedure TfrmReceive.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  ShowMessage('22222222222222');
end;

procedure TfrmReceive.JumpTo(Area: TWinControl);
begin
 // PANE.Parent:=Area;
end;

end.
