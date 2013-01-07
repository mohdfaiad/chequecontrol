unit E007MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ImgList, Provider, DB, ADODB, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, Menus, cxLookAndFeelPainters, DSource, Grids,
  DBGrids, StdCtrls, cxDBEdit, cxGroupBox, cxButtons, SConnect, SockCon,
  DBClient, MConnect, ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel,
  ExtCtrls, cxGraphics, cxMaskEdit, cxDropDownEdit, cxCheckBox,
  cxLookAndFeels, frxClass, frxDBSet, frxBarcode, frxDBXComponents,
  frxADOComponents, frxIBXComponents, frxBDEComponents, frxChart, frxDCtrl,
  frxExportHTML, frxExportCSV, frxExportPDF, frxExportXLS;

type
  TE007frmMain = class(TfrmBase)
    cxGroupBox2: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    lbl5: TLabel;
    cxLabel4: TcxLabel;
    cxLabel1: TcxLabel;
    t3: TcxTextEdit;
    t4: TcxTextEdit;
    t1: TcxTextEdit;
    t2: TcxTextEdit;
    cxCheckBox1: TcxCheckBox;
    AuthComboBox: TcxComboBox;
    procedure AuthComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
   // procedure OkBtnClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure t2KeyPress(Sender: TObject; var Key: Char);
    procedure btnCloseClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);


  private
    { Private declarations }

  public
    { Public declarations }
     function SetBtn(TF:Boolean):Boolean  ;
  end;

var
  E007frmMain: TE007frmMain;
  chk : Boolean ;
implementation

uses E007MainDM, UIT_GLOBAL_LIB;

{$R *.dfm}

procedure TE007frmMain.AuthComboBox1Change(Sender: TObject);
begin
  inherited;
         if AuthComboBox.ItemIndex = 0 then
           begin
             t3 .Enabled := False ;
             t4 .Enabled := False ;

           end
         else
           begin
             t3 .Enabled := True  ;
             t4 .Enabled := True  ;
           end;

end;

procedure TE007frmMain.btnCancelClick(Sender: TObject);
begin
  inherited;
    E007DMMain.loadSMTP ;
    t1.Text := server ;
    t2.Text := port ;
    t3.Text := UserName ;
    t4.Text :=Password ;
    AuthComboBox.Text :=authen ;

    SetBtn(True );

end;

procedure TE007frmMain.btnCloseClick(Sender: TObject);
begin
  inherited;
    E007frmMain .Close
end;

procedure TE007frmMain.btnEditClick(Sender: TObject);
begin
  inherited;
    SetBtn(false);
    t1.SetFocus ;
end;

procedure TE007frmMain.btnSaveClick(Sender: TObject);

var d : Integer ;
begin
  inherited;
chk := True ;

    try
      with E007DMMain do
       begin


          for d := 1 to CdsSet.RecordCount  do
              begin
                CdsSet.Edit ;
                if CdsSet ['CQMCOD']='SMTP_SERVER' then
                  begin
                    CdsSet ['CQMRS1']:=t1.Text  ;
                  end;
                if CdsSet ['CQMCOD']='SMTP_PORT' then
                  begin
                    CdsSet ['CQMRS1']:=t2.Text  ;
                  end;
                if CdsSet ['CQMCOD']='SMTP_USERNAME' then
                  begin
                    CdsSet ['CQMRS1']:=t3.Text ;
                  end;
                if CdsSet ['CQMCOD']='SMTP_PASSWORD' then
                  begin
                    CdsSet ['CQMRS1']:=t4.text ;
                  end;
                if CdsSet ['CQMCOD']='SMTP_AUTHEN' then
                  begin
                    CdsSet ['CQMRS1']:=AuthComboBox.text ;
                  end;
                CdsSet.Next;

              end;
//         if Application.MessageBox('Confirm to save ?', 'Save',
//                MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
//              begin
CdsSet .ApplyUpdates(0);

          SetBtn(True ) ;
             // end
             // else
            //  begin
                //Close;
            //  end;



       end;


      except
         on e:Exception do
         Application .MessageBox(pchar(e.Message ),PChar('error'),MB_OK or MB_ICONERROR );
      end;
      E007DMMain.loadSMTP ;
end;

procedure TE007frmMain.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  inherited;
    if cxCheckBox1.Checked  then
    t4.Properties.EchoMode :=eemNormal
    else

    t4.Properties.EchoMode :=eemPassword  ;
end;

procedure TE007frmMain.FormCreate(Sender: TObject);

begin
  inherited;
    Self.ToolbarVisible:=[tbClose,tbEdit,tbSave,tbCancel];
end;

procedure TE007frmMain.FormShow(Sender: TObject);
const STRCOD : array [1..5]of string =('SMTP_SERVER','SMTP_PORT','SMTP_AUTHEN','SMTP_USERNAME','SMTP_PASSWORD') ;
const STRNME : array [1..5]of string =('SMTP Server','SMTP Port','SMTP Authen','SMTP Username','SMTP Password') ;
var I :Integer ;
begin
  inherited;


    E007DMMain.loadSMTP;

     for I := 1 to 5 do
               begin
                 with E007DMMain DO
                       begin
                        CdsSet .Open  ;
                        if not CdsSet.Locate('CQMCOD',STRCOD[I],[]) then
                          begin
                            CdsSet.CommandText :='insert into CQDM004(CQMACT,CQMABR,CQMABG,CQMCOD,CQMNME) values('+ QuotedStr('A')+','+QuotedStr('EMAIL')+','+QuotedStr('SMTP')+','+QuotedStr(STRCOD[I])+','+QuotedStr(STRNME[I])+')';
                            CdsSet .Execute ;
                          end;
                      end;
                end;
               // ShowMessage(CdsSet .CommandText );



    t1.Text := server ;
    t2.Text := port ;
    t3.Text := UserName ;
    t4.Text :=Password ;
    AuthComboBox.Text :=authen ;

    SetBtn(True ) ;
    cxCheckBox1.Checked :=False;
    t4.Properties.EchoMode:=eemPassword ;
    E007DMMain .LoadSet ;
    //DMSMTP.SMTP.Append ;

   
end;


function TE007frmMain.SetBtn(TF: Boolean): Boolean;
begin
      btnEdit.Enabled:=TF ;
      btnSave.Enabled:=not TF  ;
      btnCancel.Enabled :=not TF ;
      t1.Properties.ReadOnly :=TF   ;
      t2.Properties.ReadOnly :=TF  ;
      t3.Properties.ReadOnly :=TF  ;
      t4.Properties.ReadOnly :=TF  ;
      AuthComboBox.Enabled :=not TF  ;
      cxCheckBox1 .Enabled :=not TF ;

end;

procedure TE007frmMain.t2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

        if not (Key in [#8, '0'..'9']) then begin
          Key := #0;
         Application.MessageBox('Input the correct type of data ', 'Warning',
           MB_OK + MB_ICONWARNING);

        end;


end;

end.



