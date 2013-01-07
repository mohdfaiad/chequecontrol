unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btn3: TButton;
    btn4: TButton;
    btn1: TButton;
    btn2: TButton;
    pnl3: TPanel;
    pnl4: TPanel;
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure ShowForm;stdcall;external 'Project1dll.dll' name 'ShowDllForm';
  function ShowFormModal:integer;stdcall;external 'Project1dll.dll' name 'ShowDllFormModal';
  procedure ShowFormParent(p : TWinControl);stdcall;external 'Project1dll.dll' name 'ShowDllFormParent';
var
  Form1: TForm1;
  FLoadedForm: TForm;

implementation

{$R *.DFM}

Uses Unit2;



procedure TForm1.btn3Click(Sender: TObject);
begin
  ShowFormModal;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  ShowForm;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  ShowFormParent(pnl4);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  form2.BorderStyle := bsNone;
  form2.Parent := pnl3;
  form2.Show;
  form2.Top := 0;
  form2.Left := 0;
end;

end.
