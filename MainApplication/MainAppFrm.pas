unit MainAppFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, FMTBcd, StdCtrls, Provider, DB, SqlExpr,
  ComCtrls,
  UIT_GLOBAL_LIB,

  ToolWin, ADODB, ExtCtrls;

type



  TfrmMainApplication = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ADOConn: TADOConnection;
    MASTERPANEL: TPanel;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure rundll(dllname:string;showType:TShowWindowType;dbConn:TADOConnection;procname:string='Execute');
  public
    { Public declarations }
  end;

var
  frmMainApplication: TfrmMainApplication;

  LoadChild :function(ParentApplication: TApplication; ShowType: TShowWindowType;Parameter:string;dbConn:TADOConnection);TForm;stdcall;

  DLLHandle : HWND;

implementation





{$R *.dfm}

procedure TfrmMainApplication.rundll(dllname:string;showType:TShowWindowType;dbConn:TADOConnection;procname: string);
begin
try
 if Trim(procname)='' then procname:='Execute';

  Screen.Cursor:=crHourGlass;
  DLLHandle := LoadLibrary(pchar(dllname));
  LoadChild := GetProcAddress(DLLHandle,pchar(procname));
  if Assigned(LoadChild) then LoadChild(Application,showType,'',dbConn);


finally
  Screen.Cursor:=crDefault;
end;
end;

procedure TfrmMainApplication.ToolButton1Click(Sender: TObject);
begin
  TForm(rundll('CQPU001.dll',swNone,ADOConn,'Execute'));
end;

procedure TfrmMainApplication.ToolButton2Click(Sender: TObject);

begin
  rundll('CQPU001.dll',swModal,ADOConn,'Execute');
end;

procedure TfrmMainApplication.ToolButton3Click(Sender: TObject);
begin
 rundll('CQPU001.dll',swModal,ADOConn,'ExecuteReceive');
end;

end.
