unit E002TakeFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, DSource, Menus,
  cxLookAndFeelPainters, cxButtons,cxControls, cxContainer, cxEdit,
  cxTextEdit, cxGraphics, cxLookAndFeels;

type
  TE002FrmTake = class(TForm)
    pa_status: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    Save: TcxButton;
    Cancel: TcxButton;
    StsCode: TcxTextEdit;
    StsNameTh: TcxTextEdit;
    StsNameEn: TcxTextEdit;
    Add_exit: TcxButton;
    procedure SaveClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure StsCodeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StsCodeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StsCodePropertiesChange(Sender: TObject);
    procedure StsCodeKeyPress(Sender: TObject; var Key: Char);
    procedure Add_exitClick(Sender: TObject);
    
  private
    ValEdit:string;
    { Private declarations }
  public
   procedure btnclosd(tf:Boolean);

  end;

var
  E002FrmTake: TE002FrmTake;

implementation

uses E002MainDm,E002MainFrm;

{$R *.dfm}



procedure TE002FrmTake.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  E002FrmMain.BTNOPEN(True);
  E002DmMain.dsatus.Cancel;
end;
procedure TE002FrmTake.btnclosd(tf: Boolean);
begin
 Add_exit.Enabled:=tf;
 Save.Enabled:=tf;
 Cancel.Enabled:=tf;
end;

procedure TE002FrmTake.FormShow(Sender: TObject);
begin

 if Caption ='Add'then
    begin
     StsCode.Text:='';
     StsNameTh.Text:='';
     StsNameEn.Text:='';
     StsCode.SetFocus;
     btnclosd(False);
    end
   else if Caption= 'Edit' then

   begin
        StsCode.Text:=E002DmMain.dsatus['CQMCDE'];
        StsNameTh.Text:= E002DmMain.dsatus['CQMNAT'];
        StsNameEn.Text:=E002DmMain.dsatus['CQMNAE'];
        StsCode.SetFocus;
        ValEdit := StsCode.Text;
   end;

end;

procedure TE002FrmTake.SaveClick(Sender: TObject);
begin

    if Caption = 'Add' then
      begin
       E002DmMain.dsatus.Append;
       E002DmMain.dsatus['CQMCDE'] :=StsCode.Text;
       E002DmMain.dsatus['CQMNAT']  :=StsNameTh.Text;
       E002DmMain.dsatus['CQMNAE']:=StsNameEn.Text;
       E002DmMain.dsatus.ApplyUpdates(0);
       E002DmMain.dsatus.Append;
       StsCode.Text:='';
       StsNameTh.Text:='';
       StsNameEn.Text:='';
       StsCode.SetFocus;
       btnclosd(False);
       end
      else
        begin
           E002DmMain.dsatus.Edit;
           E002DmMain.dsatus['CQMCDE']:=StsCode.Text;
           E002DmMain.dsatus['CQMNAT']:=StsNameTh.Text;
           E002DmMain.dsatus['CQMNAE']:=StsNameEn.Text;
           E002DmMain.dsatus.ApplyUpdates(0);
           E002FrmMain.BTNOPEN(True);
           Close;

          end;
end;

procedure TE002FrmTake.Add_exitClick(Sender: TObject);
begin
   if Caption = 'Add' then
      begin
       E002DmMain.dsatus.Append;
       E002DmMain.dsatus['CQMCDE'] :=StsCode.Text;
       E002DmMain.dsatus['CQMNAT']  :=StsNameTh.Text;
       E002DmMain.dsatus['CQMNAE']:=StsNameEn.Text;
       E002DmMain.dsatus.ApplyUpdates(0);
       E002FrmMain.BTNOPEN(True);
       Close;
      end

      else
        begin
           E002DmMain.dsatus.Edit;
           E002DmMain.dsatus['CQMCDE']:=StsCode.Text;
           E002DmMain.dsatus['CQMNAT']:=StsNameTh.Text;
           E002DmMain.dsatus['CQMNAE']:=StsNameEn.Text;
           E002DmMain.dsatus.ApplyUpdates(0);
           E002FrmMain.BTNOPEN(True);
           Close;

          end;
end;

procedure TE002FrmTake.CancelClick(Sender: TObject);
begin
      if E002DmMain.dsatus.State=dsInsert then
        begin
           if Application.MessageBox('คุณจะเพิ่มสถานะหรือไม่', '', MB_YESNO +
              MB_ICONWARNING) = IDYES then
              begin
                E002DmMain.dsatus.Cancel;
                E002DmMain.dsatus.Append;
              end
            else
                begin
                   E002DmMain.dsatus.Cancel;
                   E002FrmMain.BTNOPEN(True);
                   Close;
                end;

          end
       else
         begin
             E002DmMain.dsatus.Cancel;
             E002FrmMain.BTNOPEN(True);
             Close;
          end;
end;
procedure TE002FrmTake.StsCodeChange(Sender: TObject);
begin
    StsCode.Text:=UpperCase(StsCode.Text);
end;
procedure TE002FrmTake.StsCodeExit(Sender: TObject);
begin

 if (Caption = 'Add') or (Caption = 'Edit') and (StsCode.Text <> valedit) then
  begin
     if E002DmMain.dsatus.Locate('CQMCDE',StsCode.Text,[])then
      begin
        Application.MessageBox('กรุณากรอกข้อมูลให้ถูกต้อง',
          'เกิดผิดพลาดข้อมูลซำ', MB_OK + MB_ICONSTOP);
            StsCode.Clear;
        if Caption = 'Add' then
        begin
          StsNameTh.Text:='';
          StsNameEn.Text:='';
        end;
        StsCode.SetFocus;
      end;
  end;
  if StsCode.Text ='' then
      begin
          btnclosd(False);
      end
  else
      begin
       btnclosd(True);
      end;

end;
procedure TE002FrmTake.StsCodeKeyPress(Sender: TObject; var Key: Char);
begin
key:=UpCase(key);
end;

procedure TE002FrmTake.StsCodePropertiesChange(Sender: TObject);
begin
//StsCode.Text:=UpperCase(StsCode.Text);
end;

end.
