unit PleaseWait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GIFImg;

procedure PleaseWaitBegin(sStatus : OpenString);
procedure PleaseWaitEnd;

type
  TPleaseWaitForm = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    lblStatus: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PleaseWaitForm: TPleaseWaitForm;

implementation

{$R *.dfm}

procedure PleaseWaitBegin;
begin
  if PleaseWaitForm = nil then
  begin
    PleaseWaitForm := TPleaseWaitForm.Create(nil);
    PleaseWaitForm.Caption :='Running ...';
  end;
  PleaseWaitForm.lblStatus.Caption := sStatus;
  PleaseWaitForm.Show;
  PleaseWaitForm.Repaint;
end;

procedure PleaseWaitEnd;
begin
  PleaseWaitForm.free;
  PleaseWaitForm := nil;
end;

end.
