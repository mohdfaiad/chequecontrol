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
  DBClient, MConnect, cxLookAndFeels, frxClass, frxDBSet, frxBarcode,
  frxDBXComponents, frxADOComponents, frxIBXComponents, frxBDEComponents,
  frxChart, frxDCtrl, frxExportHTML, frxExportCSV, frxExportPDF,
  frxExportXLS;

type
  TfrmMainProgram = class(TfrmBase)
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
    cxDBComboBox2: TcxDBComboBox;
    cxDBComboBox1: TcxDBComboBox;
    Label1: TLabel;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainProgram: TfrmMainProgram;

implementation

{$R *.dfm}
uses  CreateDocumentFrm;

procedure TfrmMainProgram.cxButton2Click(Sender: TObject);
begin
//  inherited;
TfrmCreateDocument.Create(Application).Show;

end;

end.
