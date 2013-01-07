unit MainProgramFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, Provider, DB, ADODB, ImgList, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, ComCtrls, ToolWin, JvExExtCtrls,
  JvExtComponent, JvPanel, ExtCtrls, StdCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TfrmMainProgram = class(TfrmBase)
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Label3: TLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    Label2: TLabel;
    Label4: TLabel;
    cxTextEdit2: TcxTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainProgram: TfrmMainProgram;

implementation

{$R *.dfm}

end.
