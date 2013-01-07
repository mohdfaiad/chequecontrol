unit MainProgramFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, SConnect,  DB, DBClient, MConnect,
  ImgList, Provider, ADODB, StdCtrls, cxButtons, cxTextEdit, cxLabel,
  ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel, ExtCtrls,
  SockCon;

type
  TFrmMainProgram = class(TfrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMainProgram: TFrmMainProgram;

implementation

{$R *.dfm}

end.
