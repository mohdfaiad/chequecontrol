unit U005MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, Mask, DBCtrls,
  ExtCtrls, DB, DSource,BaseFrm, SConnect, SockCon, DBClient, MConnect, ImgList,
  Provider, ADODB, cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel,
  ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel, cxGraphics,
  cxLookAndFeels, frxClass, frxDBSet, frxBarcode, frxDBXComponents,
  frxADOComponents, frxIBXComponents, frxBDEComponents, frxChart, frxDCtrl,
  frxExportHTML, frxExportCSV, frxExportPDF, frxExportXLS;

type
  TU005FrmMain = class(TfrmBase)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Save: TcxButton;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    Edit4: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private

  public
    procedure btnopen(tf:Boolean);
    procedure loaddata ;
  end;

var
  U005FrmMain: TU005FrmMain;

implementation

uses U005MainDM, UIT_GLOBAL_LIB;

{$R *.dfm}

procedure TU005FrmMain.loaddata;
begin
 btnopen(True);
  with U005DmMain do
  begin
    load_pre;
    Edit1.Text := WHT_RARE;
    Edit2.Text := OV_DUE;
    Edit3.Text := PEN_RATE;
    Edit4.Text := DU_ALERT;
    Edit1.SetFocus;
  end;
end;
procedure TU005FrmMain.FormShow(Sender: TObject);
begin
 loaddata;
end;

procedure TU005FrmMain.btnCancelClick(Sender: TObject);
begin
  inherited;
  loaddata;
end;

procedure TU005FrmMain.btnCloseClick(Sender: TObject);
begin
  inherited;
Self.Close;
end;

procedure TU005FrmMain.btnEditClick(Sender: TObject);
begin
  inherited;
  btnopen(False);
 U005DmMain.RD_Prefen.Edit;


end;

procedure TU005FrmMain.btnopen(tf: Boolean);
begin
    Edit1.Properties.ReadOnly:=tf;
    Edit2.Properties.ReadOnly:=tf;
    Edit3.Properties.ReadOnly:=tf;
    Edit4.Properties.ReadOnly:=tf;
    btnEdit.Enabled:=tf;
    btnSave.Enabled:=not tf;
    btnCancel.Enabled:=not tf;
end;

procedure TU005FrmMain.btnSaveClick(Sender: TObject);
begin
  inherited;
 with U005DmMain do
  begin

    WHT_RARE:= Edit1.Text  ;
    OV_DUE :=Edit2.Text   ;
    PEN_RATE := Edit3.Text  ;
    DU_ALERT :=Edit4.Text ;
    Save_pre;
    btnopen(True);
    end;

  end;


procedure TU005FrmMain.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8,'.', '0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure TU005FrmMain.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure TU005FrmMain.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8,'.', '0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure TU005FrmMain.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure TU005FrmMain.FormCreate(Sender: TObject);
begin
  inherited;
Self.ToolbarVisible:=[tbClose,tbSave,tbEdit,tbCancel];
end;



end.
