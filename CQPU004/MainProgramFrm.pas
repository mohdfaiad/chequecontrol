unit MainProgramFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, Provider, DB, ADODB, ImgList, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, ComCtrls, ToolWin, JvExExtCtrls,
  JvExtComponent, JvPanel, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDBEdit, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, SConnect, SockCon,
  DBClient, MConnect;

type
  TfrmMainProgram = class(TfrmBase)
    Bevel2: TBevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel15: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    btnSearchDoc: TcxButton;
    cxDBComboBox2: TcxDBComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure btnSearchDocClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainProgram: TfrmMainProgram;

implementation

{$R *.dfm}

uses DocumentsFrm;

procedure TfrmMainProgram.btnSearchDocClick(Sender: TObject);
begin
//  inherited;
   TfrmDocuments.Create(Application).ShowModal;
end;

end.
