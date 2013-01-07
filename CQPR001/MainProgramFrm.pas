unit MainProgramFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, Menus, cxLookAndFeelPainters, frxBarcode,
  frxDBXComponents, frxADOComponents, frxIBXComponents, frxClass,
  frxBDEComponents, frxChart, frxDCtrl, frxExportHTML, frxExportCSV,
  frxExportPDF, frxExportXLS, DBClient, frxDBSet, SConnect, SockCon, DB,
  MConnect, ImgList, Provider, ADODB, cxTextEdit, cxControls, cxContainer,
  cxEdit, cxLabel, StdCtrls, cxButtons, ComCtrls, ToolWin, JvExExtCtrls,
  JvExtComponent, JvPanel, ExtCtrls;

type
  TfrmMainProgram = class(TfrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
    _Params:string;
  end;

var
  frmMainProgram: TfrmMainProgram;

implementation

{$R *.dfm}

end.
