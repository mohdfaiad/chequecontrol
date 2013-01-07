unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

Procedure ShowForm(Atitle:string);stdcall;external 'Project2.DLL';
 

procedure TForm1.btn1Click(Sender: TObject);
begin
   ShowForm('This is a Form in DLL');
end;

end.
