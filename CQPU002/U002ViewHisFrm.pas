unit U002ViewHisFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel, DB, DSource,
  cxAutoFields, cxDBLabel, cxDBEdit, LoadBank, cxGraphics, cxLookAndFeels;

type
  TFrmU002ViewHis = class(TForm)
    PaneHis: TPanel;
    btnOK: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    DHis: TDataSource;
    CAFHis: TCxAutoFields;
    CQMITS: TcxDBTextEdit;
    CQMHPS: TcxDBTextEdit;
    CQMERR: TcxDBTextEdit;
    CQMLSS: TcxDBTextEdit;
    CQMITA: TcxDBTextEdit;
    CQMHPA: TcxDBTextEdit;
    CQMERA: TcxDBTextEdit;
    CQMLSA: TcxDBTextEdit;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmU002ViewHis: TFrmU002ViewHis;

implementation

uses U002MainDM;

{$R *.dfm}

procedure TFrmU002ViewHis.btnOKClick(Sender: TObject);
begin
  close;
end;

end.
