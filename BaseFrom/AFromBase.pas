unit AFromBase;
interface

uses Windows,SysUtils,Classes,Controls,Forms,Graphics;

type TAFormBase = class(TForm)
protected
  procedure FitInContainer(AParent:TWinControl;AForm:TForm);
public
  constructor CreateEx(AParent:TWinControl;AForm:TForm);virtual;
end;



type TAFormBaseClass = class of TAFormBase;


implementation

constructor TAFormBase.CreateEx(AParent:TWinControl;AForm:TForm);
begin
  Create(Application);
  self.BorderStyle:=bsnone;
  self.Color:=clBtnFace;
  //other custom code goes here
end;

procedure TAFormBase.FitInContainer(AParent:TWinControl;AForm:TForm);
begin
  Parent:=AParent;
  Visible:=True;
  //Left:=0;Top:=0;

  //AForm.ClientHeight:=Height + 32;
  //AForm.Width:=Width + AForm.Width - AParent.Width;
  Align:=alClient;
  //AForm.Left:=(Screen.Width - AForm.Width) shr 1;
end;

end.

