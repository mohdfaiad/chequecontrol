unit BranchEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxGroupBox, ExtCtrls, cxLabel,
  cxTextEdit, cxDBEdit, Menus, cxLookAndFeelPainters, StdCtrls, Mask, RzEdit,
  RzDBEdit, cxButtons;

type
  TFormEditBranch = class(TForm)
    pnlpane: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    RzDBEdit3: TRzDBEdit;
    cxLabel3: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditBranch: TFormEditBranch;

implementation

uses BankDm;

{$R *.dfm}

procedure TFormEditBranch.cxButton1Click(Sender: TObject);
begin
  if  (RzDBEdit1.Text <> '') and (RzDBEdit2.Text<>'')  and (RzDBEdit3.Text<>'')  then
    begin

      try
        // btrbnk 
        DmBank .CdsBranch .Fields .FieldByName('btrbnk').Value := Mas ;
        DmBank .CdsBranch .Post ;
        DmBank .CdsBranch .ApplyUpdates(0) ;
        Self .Close ;
      except end;
    end    ;
end;

procedure TFormEditBranch.cxButton2Click(Sender: TObject);
begin
  DmBank .CdsBranch .Cancel ;
  Self .Close ;
end;

procedure TFormEditBranch.FormShow(Sender: TObject);
begin
  if Chp = 'AddBranch' then
    begin
      Self .Caption := 'Add New Branch' ;
      DmBank .CdsBranch .Append ;
    end
  else
    begin
      Self .Caption := 'Edit Branch' ;
    end;
end;

end.
