unit MPUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, BaseFrm, SConnect, SockCon, DB, DBClient, MConnect,
  ImgList, Provider, ADODB, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxLabel, ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel, ExtCtrls,
  Menus, cxLookAndFeelPainters, Grids, cxButtons;

type
  TFormMP = class(TfrmBase)
    Memo1: TMemo;
    Popup: TButton;
    Close: TButton;
    StringGrid1: TStringGrid;
    procedure PopupClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMP: TFormMP;

implementation

{$R *.dfm}

Uses PUUnit;


procedure TFormMP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormMP.PopupClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
  FormPU := TFormPU.Create(Self);
  try
    FormPU.ShowModal;

    if FormPU.ModalResult = mrOk then
    begin
      MessageDlg('OK',mtInformation,[mbOK], 0);
    end
    else
    begin
      MessageDlg('Cancel',mtInformation,[mbOK], 0);
    end;

  finally
   FormPU.Free;
  end;

end;

end.
