unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvXPCore, JvXPBar, ExtCtrls, JvExExtCtrls,
  JvNetscapeSplitter, JvExtComponent, JvPanel, ComCtrls;

type
  TForm1 = class(TForm)
    JvPanel1: TJvPanel;
    JvNetscapeSplitter1: TJvNetscapeSplitter;
    JvXPBar1: TJvXPBar;
    JvXPBar2: TJvXPBar;
    JvXPBar4: TJvXPBar;
    JvXPBar5: TJvXPBar;
    JvXPBar6: TJvXPBar;
    ScrollBox1: TScrollBox;
    StatusBar1: TStatusBar;
    MAINPANE: TJvPanel;
    procedure JvXPBar1ItemClick(Sender: TObject; Item: TJvXPBarItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.JvXPBar1ItemClick(Sender: TObject; Item: TJvXPBarItem);
begin
 if Item.Index = 0 then
 begin

     case Application.MessageBox('Do you want to log off ?',
       'Warning', MB_YESNO + MB_ICONQUESTION) of
       IDYES:
         begin

         end;
       IDNO:
         begin

         end;
     end;

 end
 else if Item.Index = 1 then
 begin

     case Application.MessageBox('Do you want to exit program ?',
       'Warning', MB_YESNO + MB_ICONQUESTION) of
       IDYES:
         begin
           Self.Close;
         end;
       IDNO:
         begin

         end;
     end;
  
 end;

end;

end.
