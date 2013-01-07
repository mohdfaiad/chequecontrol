unit EditBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, ExtCtrls,
  Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxGroupBox, Mask,
   DBCtrls, cxLabel, DB, DSource, cxGraphics, cxLookAndFeels;

type
  TFormBankEdit = class(TForm)
    pane: TPanel;
    cxGroupBox1: TcxGroupBox;
    BtnSave: TcxButton;
    BtnCancel: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    TxtCBk: TcxDBTextEdit;
    TxtNbk: TcxDBTextEdit;
    TxtLBk: TcxDBTextEdit;
    TxtCBra: TcxDBTextEdit;
    TxtNBra: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    procedure BtnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBankEdit: TFormBankEdit;

implementation

uses BankDm;

{$R *.dfm}

procedure TFormBankEdit.BtnSaveClick(Sender: TObject);
begin
  with DmBank do
    begin
      try
        CdsBank ['CQMACT'] := 'A' ;
        CdsBank ['CQMSTS'] := '' ;
        CdsBank ['CQMBRN'] := '' ;
        CdsBank ['CQMPDM'] := '' ;
        CdsBank ['CQMPDT'] := '' ;

        CdsBank ['CQMBNK'] := TxtCBk .Text ;
        CdsBank ['CQMEGN'] := TxtNbk .Text ;
        CdsBank ['CQMBRC'] := TxtCBra .Text ;
        CdsBank ['CQMBRH'] := TxtNBra .Text ;
        CdsBank ['CQMLOC'] := TxtLBk .Text ;

        CdsBank ['CQMETD'] := Now  ;
        CdsBank ['CQMETW'] := '' ;
        CdsBank ['CQMETU'] := '' ;

        CdsBank .ApplyUpdates(0) ;
        Self .Close ;
      except
        Exit ;
      end;
    end;
end;

procedure TFormBankEdit.BtnCancelClick(Sender: TObject);
begin
  DmBank .CdsBank .Cancel ;
  Self .Close ;
end;

procedure TFormBankEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DmBank .LoadBank('') ;
end;

procedure TFormBankEdit.FormShow(Sender: TObject);
begin
  TxtCBk.SetFocus ;
  if Chp = 'AddBank' then
    begin
      Self .Caption := 'Add New Bank' ;
      DmBank .CdsBank .Append ;
    end
  else if Chp = 'EditBank' then
    begin
      Self .Caption := 'Edit Bank' ;
    end ;

end;

end.
