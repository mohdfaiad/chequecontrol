unit Prefen_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, Mask, DBCtrls,
  ExtCtrls, DB, DSource,BaseFrm, SConnect, SockCon, DBClient, MConnect, ImgList,
  Provider, ADODB, cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel,
  ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TFormPreference = class(TfrmBase)
    DS_PRE: TDSource;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Edit4: TEdit;
    Save: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPreference: TFormPreference;

implementation

uses Pre_DM, UIT_GLOBAL_LIB;

{$R *.dfm}

procedure TFormPreference.btnCloseClick(Sender: TObject);
begin
  inherited;
Self.Close;
end;

procedure TFormPreference.btnSaveClick(Sender: TObject);
begin
  inherited;
 with DM_Pre do
  begin

    WHT_RARE:= Edit1.Text  ;
    OV_DUE :=Edit2.Text   ;
    PEN_RATE := Edit3.Text  ;
    DU_ALERT :=Edit4.Text ;

    if Application.MessageBox('Do you want save?', 'Delete', MB_OKCANCEL +
      MB_ICONWARNING) = IDOK then
    begin
       Save_pre;
    end
    else
    begin
      Close;
    end;

  end;
end;

procedure TFormPreference.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure TFormPreference.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure TFormPreference.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure TFormPreference.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure TFormPreference.FormCreate(Sender: TObject);
begin
  inherited;
Self.ToolbarVisible:=[tbClose,tbSave];
end;

procedure TFormPreference.FormShow(Sender: TObject);
begin
  with DM_Pre do
  begin
    load_pre;
    Edit1.Text := WHT_RARE;
    Edit2.Text := OV_DUE;
    Edit3.Text := PEN_RATE;
    Edit4.Text := DU_ALERT;
    Edit1.SetFocus;
  end;  
end;

procedure TFormPreference.SaveClick(Sender: TObject);
begin
  with DM_Pre do
  begin

    WHT_RARE:= Edit1.Text  ;
    OV_DUE :=Edit2.Text   ;
    PEN_RATE := Edit3.Text  ;
    DU_ALERT :=Edit4.Text ;

    if Application.MessageBox('Do you want save?', 'Delete', MB_OKCANCEL +
      MB_ICONWARNING) = IDOK then
    begin
       Save_pre;
    end
    else
    begin
      Close;
    end;

  end;
end;

end.
