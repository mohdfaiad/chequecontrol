unit BankImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, cxLookAndFeelPainters, cxButtons;

type
  TFormImportBank = class(TForm)
    pnl1: TPanel;
    mmoImBank1: TMemo;
    mmoImBank2: TMemo;
    BtnImBank: TcxButton;
    procedure BtnImBankClick(Sender: TObject);
  private
    { Private declarations }
    procedure ImportBank ;
    procedure ParseDelimited(const sl : TStrings; const value : string; const delimiter : string) ;
  public
    { Public declarations }
  end;

var
  FormImportBank: TFormImportBank;

implementation

{$R *.dfm}

procedure TFormImportBank.BtnImBankClick(Sender: TObject);
begin
  ImportBank ;
end;

procedure TFormImportBank.ImportBank;
var x : Integer ;
begin
  mmoImBank1 .Lines .LoadFromFile('c:\TH_BANK_BRANCH_DETAILS.csv');
  for x := 0 to mmoImBank1  .Lines.Count - 1 do
  begin
       ParseDelimited(mmoImBank2  .Lines ,mmoImBank1  .Lines [x],',')   ;
     ShowMessage(mmoImBank2 .Lines [1]);
       Application .ProcessMessages ;
  end;

end;

procedure TFormImportBank.ParseDelimited(const sl: TStrings; const value, delimiter: string);
 var
    dx : integer;
    ns : string;
    txt : string;
    delta : integer;
 begin
    delta := Length(delimiter) ;
    txt := value + delimiter;
    sl.BeginUpdate;
    sl.Clear;
    try
      while Length(txt) > 0 do
      begin
        dx := Pos(delimiter, txt) ;
        ns := Copy(txt,0,dx-1) ;
        sl.Add(ns) ;
        txt := Copy(txt,dx+delta,MaxInt) ;
      end;
    finally
      sl.EndUpdate;
    end;
 end;

end.
