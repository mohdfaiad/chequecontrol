unit E003ExtakeFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, Mask, DBCtrls,
  ExtCtrls, DB, DSource, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDBEdit, cxGraphics, cxLookAndFeels;

type
  TE003FrmExtake = class(TForm)
    pa_ex_take: TPanel;
    Cancel: TcxButton;
    Save: TcxButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    RsnCode: TcxTextEdit;
    RsnNameTh: TcxTextEdit;
    RsnNameEn: TcxTextEdit;
    Save_Exit: TcxButton;
    procedure SaveClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RsnCodeExit(Sender: TObject);
    procedure RsnCodeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Save_ExitClick(Sender: TObject);
   


  private
    ValEdit:string;
  public
    procedure btnclosd(tf:Boolean);
  end;

var
  E003FrmExtake: TE003FrmExtake;

implementation

uses E003MainDm,E003MainFrm;

{$R *.dfm}



procedure TE003FrmExtake.RsnCodeKeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key)
 {if  not (Key in [#8, '0'..'9']) then
    begin
       Key := #0;
          Application.MessageBox('Input the correct type of data ', 'Warning',
           MB_OK + MB_ICONWARNING);
  end;}
end;

procedure TE003FrmExtake.FormClose(Sender: TObject; var Action: TCloseAction);
begin
E003FrmMain.btnopen(True);
E003DmMain.dso_explana.Cancel;
end;
procedure TE003FrmExtake.btnclosd(tf: Boolean);
begin
 Save.Enabled:=tf;
 Save_Exit.Enabled:=tf;
 Cancel.Enabled:=tf;
end;


procedure TE003FrmExtake.FormShow(Sender: TObject);
begin

  if Caption ='Add'then
    begin
      RsnCode.Text:='';
      RsnNameTh.Text:='';
      RsnNameEn.Text:='';
      RsnCode.SetFocus;
      btnclosd(False);
    end
   else if Caption= 'Edit' then

   begin
        RsnCode.Text:=E003DmMain.dso_explana['CQMCDE'];
        RsnNameTh.Text:= E003DmMain.dso_explana['CQMNAT'];
        RsnNameEn.Text:=E003DmMain.dso_explana['CQMNAE'];
        ValEdit := RsnCode.Text;
        RsnCode.SetFocus;
   end;
end;


procedure TE003FrmExtake.SaveClick(Sender: TObject);
begin
if Caption = 'Add' then
    begin
      E003DmMain.dso_explana.Append;
      E003DmMain.dso_explana['CQMCDE'] :=RsnCode.Text;
      E003DmMain.dso_explana['CQMNAT']  :=RsnNameTh.Text;
      E003DmMain.dso_explana['CQMNAE']:=RsnNameEn.Text;
      E003DmMain.dso_explana.ApplyUpdates(0);
      E003DmMain.dso_explana.Append;
      RsnCode.Text:='';
      RsnNameTh.Text:='';
      RsnNameEn.Text:='';
      RsnCode.SetFocus;
      btnclosd(False);
    end

  else
    begin
      E003DmMain.dso_explana.Edit;
      E003DmMain.dso_explana['CQMCDE']:=RsnCode.Text;
      E003DmMain.dso_explana['CQMNAT']:=RsnNameTh.Text;
      E003DmMain.dso_explana['CQMNAE']:=RsnNameEn.Text;
      E003DmMain.dso_explana.ApplyUpdates(0);
      E003FrmMain.btnopen(True);
      Close;
    end;
 end;

procedure TE003FrmExtake.Save_ExitClick(Sender: TObject);
begin
 if Caption = 'Add' then
    begin
       E003DmMain.dso_explana.Append;
       E003DmMain.dso_explana['CQMCDE'] :=RsnCode.Text;
       E003DmMain.dso_explana['CQMNAT']  :=RsnNameTh.Text;
       E003DmMain.dso_explana['CQMNAE']:=RsnNameEn.Text;
       E003DmMain.dso_explana.ApplyUpdates(0);
       E003FrmMain.btnopen(True);
       Close;
    end
  else
    begin
      E003DmMain.dso_explana.Edit;
      E003DmMain.dso_explana['CQMCDE']:=RsnCode.Text;
      E003DmMain.dso_explana['CQMNAT']:=RsnNameTh.Text;
      E003DmMain.dso_explana['CQMNAE']:=RsnNameEn.Text;
      E003DmMain.dso_explana.ApplyUpdates(0);
      E003FrmMain.btnopen(True);
      Close;
    end;
end;
procedure TE003FrmExtake.CancelClick(Sender: TObject);
begin
  if E003DmMain.dso_explana.State=dsInsert then
  begin
      if Application.MessageBox('คุณจะเพิ่มสถานะหรือไม่', '', MB_YESNO +
      MB_ICONWARNING) = IDYES then
        begin
           E003DmMain.dso_explana.Cancel;
            E003DmMain.dso_explana.Append;
         end
    else
       begin
            E003DmMain.dso_explana.Cancel;
            Close;
       end;
  end
  else
  begin
  E003DmMain.dso_explana.Cancel;
  E003FrmMain.btnopen(True);
  Close;
  end;

end;
 procedure TE003FrmExtake.RsnCodeExit(Sender: TObject);
begin
if (Caption = 'Add') or (Caption = 'Edit') and (RsnCode.Text <> valedit) then
  begin
     if   E003DmMain.dso_explana.Locate('CQMCDE',RsnCode.Text,[])then
      begin
        Application.MessageBox('กรุณากรอกข้อมูลให้ถูกต้อง',
          'เกิดผิดพลาดข้อมูลซำ', MB_OK + MB_ICONSTOP);
        RsnCode.Clear;
        if Caption = 'Add' then
        begin
          RsnNameTh.Text:='';
          RsnNameEn.Text:='';
        end;
        RsnCode.SetFocus;
      end;
  end;
    if RsnCode.Text ='' then
         begin
          btnclosd(False);
         end
      else
         begin
          btnclosd(true);
         end;
  end;

end.



