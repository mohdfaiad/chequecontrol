unit MainProgramFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, Provider, DB, ADODB, ImgList, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, ComCtrls, ToolWin, JvExExtCtrls,
  JvExtComponent, JvPanel, ExtCtrls, StdCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, SConnect, SockCon, DBClient, MConnect;

type
  TfrmMainProgram = class(TfrmBase)
    Label1: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label2: TLabel;
    cxTextEdit3: TcxTextEdit;
    Label3: TLabel;
    cxTextEdit4: TcxTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
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
