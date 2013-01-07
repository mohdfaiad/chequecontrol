unit Q001MCFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxTextEdit, cxMemo, StdCtrls,
  cxButtons, cxDBLabel, cxControls, cxContainer, cxEdit, cxLabel, ExtCtrls;

type
  TQ001FrmMC = class(TForm)
    Panel1: TPanel;
    cxLabel12: TcxLabel;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel13: TcxLabel;
    CQSBKC: TcxLabel;
    CQSBRC: TcxLabel;
    CQSCQC: TcxDBLabel;
    CQSCQD: TcxDBLabel;
    CQSCQN: TcxDBLabel;
    CQSCQA: TcxDBLabel;
    CQSCQT: TcxLabel;
    EOK: TcxButton;
    ECan: TcxButton;
    cxLabel15: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxLabel10: TcxLabel;
    CQSPLO: TcxDBLabel;
    cxLabel16: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxDBLabel2: TcxDBLabel;
    cxLabel29: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel14: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxDBLabel10: TcxDBLabel;
    cxDBLabel11: TcxDBLabel;
    cxDBLabel12: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    cxTextEdit1: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
  private
    FWorkMode: word;
    procedure SetWorkMode(const Value: word);
    { Private declarations }
  public
    //0 = Edit Cheque, 1 = Manage Cheque
    property WorkMode:word read FWorkMode write SetWorkMode;
  end;

var
  Q001FrmMC: TQ001FrmMC;

implementation

{$R *.dfm}

procedure TQ001FrmMC.FormCreate(Sender: TObject);
begin
  FWorkMode := 0;
end;

procedure TQ001FrmMC.SetWorkMode(const Value: word);
begin
  if Value = 0 then
    Self.Caption := 'Manage Chq.[123456](Edit Cheque)'
  else
    Self.Caption := 'Manage Chq.[123456](Maintanance Cheque)';

  FWorkMode := Value;
end;

end.
