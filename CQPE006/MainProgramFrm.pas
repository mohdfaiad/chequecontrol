unit MainProgramFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ImgList, Provider, DB, ADODB, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, ComCtrls, ToolWin, JvExExtCtrls,
  JvExtComponent, JvPanel, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, Menus, cxLookAndFeelPainters,
  cxDBEdit, StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  JvExComCtrls, JvComCtrls, SConnect, SockCon, DBClient, MConnect,frxClass,
  shellapi,SyncObjs,AlSMTPClient,inifiles,ActiveX,OleCtrls,SHDocVw,ComObj,
  frxExportPDF, cxGroupBox;

 type
  TfrmMainProgram = class(TfrmBase)
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    TabSheet2: TTabSheet;
    Bevel2: TBevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel13: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    TabSheet3: TTabSheet;
    Bevel3: TBevel;
    cxLabel1: TcxLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxButton6: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    ProgressBar1: TProgressBar;
    cxButton10: TcxButton;
    RadioGroup1: TRadioGroup;
    RadioButton3: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup2: TRadioGroup;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxPDFExport2: TfrxPDFExport;
    cxButton12: TcxButton;
    FileAttachMemo: TMemo;
    cxButton11: TcxButton;
    MsgMemo: TMemo;
    SendBtn: TcxButton;
    lbl1: TLabel;
    lbl5: TLabel;
    lbl4: TLabel;
    lblSubject: TLabel;
    lbl3: TLabel;
    lbl2: TLabel;
    SMTP: TClientDataSet;
    cxGroupBox1: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxLabel9: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel10: TcxLabel;
    FromEdit: TcxTextEdit;
    ToEdit: TcxTextEdit;
    CcEdit: TcxTextEdit;
    SubjectEdit: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SendBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton12Click(Sender: TObject);
    procedure SMTPReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
    FIniFileName  : String;
    FInitialized  : Boolean;
    FSMTPCLient: TALSMTPCLient;
  procedure SaveStringsToIniFile(const IniFileName : String;
                               const IniSection  : String;
                               const IniKey      : String;
                               Strings           : TStrings);
  function LoadStringsFromIniFile(const IniFileName : String;
                                const IniSection  : String;
                                const IniKey      : String;
                                Strings           : TStrings) : Boolean;

  public
    { Public declarations }
  end;

var
  frmMainProgram: TfrmMainProgram;
   nRunning : integer;
  SERVER1 ,USERNAME1,PASSWORD1,PORT1,AUTHEN1 : string ;

  //sSub,sBody,sSurfix : String;


implementation

uses alFcnString,ALInternetMessageCommon, ALMultiPartMixedParser,UIT_GLOBAL_LIB;
          //mailform, settingForm;

{$R *.dfm}
const
  SectionData       = 'Detail';
  KeyHost           = 'HostName';
  KeyPort           = 'Port';
  KeyFrom           = 'From';
  KeyTo             = 'To';
  KeyCc             = 'Cc';
  KeyBcc            = 'Bcc';
  KeySubject        = 'Subject';
  KeyUser           = 'UserName';
  KeyPass           = 'Password';
  KeyAuth           = 'Authentification';
  KeyPriority       = 'Priority';
  KeyConfirm        = 'Confirm';
  SectionWindow     = 'Window';
  KeyTop            = 'Top';
  KeyLeft           = 'Left';
  KeyWidth          = 'Width';
  KeyHeight         = 'Height';
  SectionFileAttach = 'Files';
  KeyFileAttach     = 'File';
  SectionMsgMemo    = 'Message';
  KeyMsgMemo        = 'Msg';



procedure TfrmMainProgram.cxButton12Click(Sender: TObject);
begin
  inherited;
     if OpenDialog1.Execute then
      begin
//         TIdAttachment.Create(IdMsgSend.MessageParts, OpenDialog1.FileName);
//         TIdAttachment should NO LONGER be used. Use IdAttachmentFile or IdAttachmentFile instead.
       //  TIdAttachmentFile.Create(IdMsgSend.MessageParts, OpenDialog1.FileName);
       //  ResetAttachmentListView;
      end;
end;

procedure TfrmMainProgram.FormClose(Sender: TObject; var Action: TCloseAction);
var IniFile : TIniFile;
begin
  inherited;
  IniFile := TIniFile.Create(FIniFileName);
  IniFile.WriteString(SectionData, KeyHost, '');//FormSetting .HostEdit.Text);
  IniFile.WriteString(SectionData, KeyPort, '');//FormSetting .PortEdit.Text);
  IniFile.WriteString(SectionData, KeyFrom, FromEdit.Text);
  IniFile.WriteString(SectionData, KeyTo, ToEdit.Text);
  IniFile.WriteString(SectionData, KeyCc, CcEdit.Text);
  //IniFile.WriteString(SectionData, KeyBcc, BccEdit.Text);
  IniFile.WriteString(SectionData, KeySubject, SubjectEdit.Text);
  IniFile.WriteString(SectionData, KeyUser, '');//FormSetting .UsernameEdit.Text);
  IniFile.WriteString(SectionData, KeyPass, '');//FormSetting .PasswordEdit.Text);
  IniFile.WriteInteger(SectionData, KeyAuth, 0);//FormSetting .AuthComboBox.ItemIndex);
  IniFile.WriteInteger(SectionData, KeyPriority, 0);//FormSetting .PriorityComboBox.ItemIndex);
  //IniFile.WriteInteger(SectionData, KeyConfirm, Ord(FormSetting .ConfirmCheckBox.Checked));
  SaveStringsToIniFile(FIniFileName, SectionFileAttach, KeyFileAttach, FileAttachMemo.Lines);
  SaveStringsToIniFile(FIniFileName, SectionMsgMemo, KeyMsgMemo, MsgMemo.Lines);
  IniFile.WriteInteger(SectionWindow, KeyTop, Top);
  IniFile.WriteInteger(SectionWindow, KeyLeft, Left);
  IniFile.WriteInteger(SectionWindow, KeyWidth, Width);
  IniFile.WriteInteger(SectionWindow, KeyHeight, Height);
  IniFile.Free;

  try
   // ie.quit;
  except
  end;
  sleep(500);
  CoUninitialize;
end;

procedure TfrmMainProgram.FormCreate(Sender: TObject);
{var Url, Flags, TargetFrameName, PostData, Headers: OleVariant;}
begin
  inherited;
        Self.ToolbarVisible:=[tbClose,tbSearch ,tbNew,tbEdit,tbSave ,tbDelete,tbPrint,tbExport];

       // DisplayMemo.Clear;
  FIniFileName := LowerCase(Application.ExeName);
  FIniFileName := Copy(FIniFileName, 1, Length(FIniFileName) - 3) + 'ini';
  FSmtpClient := TAlSMTPClient.Create;
  CoInitialize(nil);

  begin
  nRunning := 0;


  end;
end;

procedure TfrmMainProgram.FormDestroy(Sender: TObject);
begin
  inherited;
      FSMTPCLient.Free;
end;

procedure TfrmMainProgram.FormShow(Sender: TObject);
var IniFile : TIniFile;
    d : Integer;
begin
  inherited;
    SMTP.Close;
    SMTP.CommandText := 'select CODE ,VAL1 from CQMCDE00 where ABBR ='+ QuotedStr('EMAIL')+'and ABBRGROUP ='+ QuotedStr('SMTP');
    SMTP.Open ;
 try
    for d := 1 to SMTP.RecordCount  do
      begin
        if SMTP.RecordCount >0 then
          SMTP.First;
          begin
            if SMTP['CODE']='SMTP_SERVER' then
              begin
                  SERVER1 := SMTP.FieldByName('VAL1').AsString ;
              end;
            if SMTP['CODE']='SMTP_PORT' then
              begin
                  PORT1 := SMTP.FieldByName('VAL1').AsString ;
              end;
            if SMTP['CODE']='SMTP_USERNAME' then
              begin
                  USERNAME1 := SMTP.FieldByName('VAL1').AsString ;
              end;
            if SMTP['CODE']='SMTP_PASSWORD' then
              begin
                  PASSWORD1 := SMTP.FieldByName('VAL1').AsString ;
              end;
            if SMTP['CODE']='SMTP_AUTHEN' then
              begin
                  AUTHEN1 := SMTP.FieldByName('VAL1').AsString ;
              end;
            SMTP.Next;
          end;

      end;

 finally

 end;

  if not FInitialized then begin
    FInitialized := TRUE;
    IniFile := TIniFile.Create(FIniFileName);
    {FormSetting .HostEdit.Text    := IniFile.ReadString(SectionData, KeyHost,'localhost'); }
    {FormSetting .PortEdit.Text   := IniFile.ReadString(SectionData, KeyPort, '25');  }
    FromEdit.Text    := IniFile.ReadString(SectionData, KeyFrom, 'hondaleasing@honda.com');
    ToEdit.Text      := IniFile.ReadString(SectionData, KeyTo, 'anonymous@uit.com');
    CcEdit.Text      := IniFile.ReadString(SectionData, KeyCc, '');
   // BccEdit.Text     := IniFile.ReadString(SectionData, KeyBcc, 'francois.piette@swing.be');
    SubjectEdit.Text := IniFile.ReadString(SectionData, KeySubject, 'This is the message subject');
    //UsernameEdit.Text :=  IniFile.ReadString(SectionData, KeyUser, 'account name');
   // FormSetting .PasswordEdit.Text      :=  IniFile.ReadString(SectionData, KeyPass, 'account password');
   // FormSetting .AuthComboBox.ItemIndex     := IniFile.ReadInteger(SectionData, KeyAuth, 0);
   // FormSetting .PriorityComboBox.ItemIndex := IniFile.ReadInteger(SectionData, KeyPriority, 2);
    //FormSetting .ConfirmCheckBox.Checked    := Boolean(IniFile.ReadInteger(SectionData, KeyConfirm, 0));
    if not LoadStringsFromIniFile(
                                  FIniFileName,
                                  SectionFileAttach,
                                  KeyFileAttach,
                                  FileAttachMemo.Lines
                                 ) then
      FileAttachMemo.Text := '';
    if not LoadStringsFromIniFile(
                                  FIniFileName,
                                  SectionMsgMemo,
                                  KeyMsgMemo,
                                  MsgMemo.Lines
                                 ) then
      MsgMemo.Text := 'This is the first line' + #13#10 +
                      'Then the second one' + #13#10 +
                      'The next one is empty' + #13#10 +
                      '' + #13#10 +
                      'The next one has only a single dot' + #13#10 +
                      '.' + #13#10 +
                      'Finally the last one' + #13#10;
//    Top    := IniFile.ReadInteger(SectionWindow, KeyTop,    (Screen.Height - Height)); //div 0);
//    Left   := IniFile.ReadInteger(SectionWindow, KeyLeft,   (Screen.Width - Width)); //div 0);
//    Width  := IniFile.ReadInteger(SectionWindow, KeyWidth,  Width);
//    Height := IniFile.ReadInteger(SectionWindow, KeyHeight, Height);
    IniFile.Free;
  end;
end;

function TfrmMainProgram.LoadStringsFromIniFile(const IniFileName, IniSection,
  IniKey: String; Strings: TStrings): Boolean;
var IniFile : TIniFile;
    nItem   : Integer;
    I       : Integer;
    Buf     : String;
begin
  Result := TRUE;
  if (IniFileName = '') or
     (IniSection = '') or
     (IniKey = '') or
     (not Assigned(Strings)) then Exit;
  Strings.Clear;
  IniFile := TIniFile.Create(IniFileName);
  try
    if IniFile.ReadString(IniSection, IniKey + 'EmptyFlag', '') <> '' then Exit;
    IniFile.ReadSectionValues(IniSection, Strings);
  finally
    IniFile.Free;
  end;
  nItem := Strings.Count - 1;
  while nItem >= 0 do begin
    Buf := Strings.Strings[nItem];
    if CompareText(IniKey, Copy(Buf, 1, Length(IniKey))) <> 0 then Strings.Delete(nItem)
    else begin
      if not (Buf[Length(IniKey) + 1] in ['0'..'9']) then Strings.Delete(nItem)
      else begin
        I := Pos('=', Buf);
        Strings.Strings[nItem] := Copy(Buf, I + 1, Length(Buf));
      end;
    end;
    Dec(nItem);
  end;
  Result := (Strings.Count <> 0);
end;

procedure TfrmMainProgram.SaveStringsToIniFile(const IniFileName, IniSection,
  IniKey: String; Strings: TStrings);
var IniFile : TIniFile;
    nItem   : Integer;
begin
  if (IniFileName = '') or
     (IniSection = '') or
     (IniKey = '') or
     (not Assigned(Strings)) then Exit;
  IniFile := TIniFile.Create(IniFileName);
  IniFile.EraseSection(IniSection);
  if Strings.Count <= 0 then IniFile.WriteString(IniSection, IniKey + 'EmptyFlag', 'Empty')
  else
    for nItem := 0 to Strings.Count - 1 do
        IniFile.WriteString(
                            IniSection,
                            IniKey + IntToStr(nItem),
                            Strings.Strings[nItem]
                           );
  IniFile.Free;
end;

procedure TfrmMainProgram.SendBtnClick(Sender: TObject);
Var aEmailHeader: TALEmailHeader;
    AMultiPartMixedAttachments : TALMultiPartMixedContents;
    aLst: TstringList;
    Str: string;
    i : integer;
begin
  inherited;
  Inc(nRunning);

//  sSurfix := IntToStr(nRunning)+' : '+FormatDateTime('dd/mm/yyyy hh:mm s',now);
//  sSub := 'Subject : '+ sSurfix;
//  sBody := 'Body : '+ sSurfix;


    frxPDFExport1.ShowDialog := false;
    frxPDFExport1.FileName := ExtractFilePath( Application.ExeName)+'tmp\111.pdf';
    frxReport1.FileName := 'c:\1.fr3';
    frxReport1.PrepareReport();
    frxReport1.Export(frxPDFExport1);

    frxPDFExport2.ShowDialog := false;
    frxPDFExport2.FileName := ExtractFilePath( Application.ExeName)+'tmp\222.pdf';
    frxReport2.FileName := 'c:\2.fr3';
    frxReport2.PrepareReport();
    frxReport2.Export(frxPDFExport2);


  aLst := TstringList.Create;
  aEmailHeader := TALEmailHeader.Create;
  Try

    Str :=  ToEdit.Text + #13#10 + ccEdit.Text + #13#10 + '';
    Str := AlStringReplace(Str,',',#13#10,[RfReplaceall]);
    Str := AlStringReplace(Str,';',#13#10,[RfReplaceall]);
    aLst.Text := Trim(Str);
    i := 0;
    While i <= aLst.Count - 1 do begin
      aLst[i] := trim(aLst[i]);
      If aLst[i] = '' then aLst.Delete(i)
      else inc(i);
    end;

    aEmailHeader.From := FromEdit.Text;
    aEmailHeader.SendTo := ToEdit.Text;
    aEmailHeader.cc := ccEdit.Text;
    aEmailHeader.Subject :=SubjectEdit.Text;
    //If ConfirmCheckBox.Checked then aEmailHeader.DispositionNotificationTo := FromEdit.Text;
    aEmailHeader.Priority := 'normal';//PriorityComboBox.Text;
//    If PriorityComboBox.ItemIndex = 1 then str := 'High'
//    else If PriorityComboBox.ItemIndex = 2 then str := 'Normal'
//    else str := 'Low';
    aEmailHeader.CustomHeaders.Add('X-MSMail-Priority: ' + str);
    //If trim(FileAttachMemo.Lines.text) <> '' then begin
      AMultiPartMixedAttachments := TALMultiPartMixedContents.Create(true);
    Try
       // For i := 0 to FileAttachMemo.Lines.Count - 1 do
         // If FileAttachMemo.Lines[i] <> '' then
            AMultiPartMixedAttachments.Add.LoadDataFromFileAsAttachmentBase64Encode(ExtractFilePath( Application.ExeName)+'tmp\111.pdf');

          FSmtpClient.SendMailMultipartMixed(
                                              'SMTP.3bbmail.com',//FormSetting .HostEdit.Text,
                                             25,//strtoint(FormSetting .PortEdit.Text),
                                             FromEdit.Text,
                                             aLst,
                                             '',//FormSetting .UsernameEdit.Text,
                                             '',//FormSetting .PasswordEdit.Text,
                                             TAlSmtpClientAuthType(0),
                                             aEmailHeader,
                                             MsgMemo.Lines.Text,
                                             'text/plain',
                                             AMultiPartMixedAttachments
                                            );

      finally
       //ShowMessage('send complete111');
        AMultiPartMixedAttachments.Free;
      end;

      aEmailHeader.Subject :=SubjectEdit.Text; //SubjectEdit.Text;
      AMultiPartMixedAttachments := TALMultiPartMixedContents.Create(true);
    Try
      For i := 0 to FileAttachMemo.Lines.Count - 1 do
      If FileAttachMemo.Lines[i] <> '' then
          AMultiPartMixedAttachments.Add.LoadDataFromFileAsAttachmentBase64Encode(ExtractFilePath( Application.ExeName)+'tmp\222.pdf'); //trim(FileAttachMemo.Lines[i]));

        FSmtpClient.SendMailMultipartMixed(
                                           'SMTP.3bbmail.com',// FormSetting .HostEdit.Text,
                                           25,//strtoint(FormSetting .PortEdit.Text),
                                           FromEdit.Text,
                                           aLst,
                                           '',//FormSetting .UsernameEdit.Text,
                                           '',//FormSetting .PasswordEdit.Text,
                                           TAlSmtpClientAuthType(0),
                                           aEmailHeader,
                                           MsgMemo.Lines.Text,
                                           'text/plain',
                                           AMultiPartMixedAttachments
                                          );

    finally
      AMultiPartMixedAttachments.Free;
    end;
    ProgressBar1.Visible :=True;
    ProgressBar1.StepIt ;
    ShowMessage('sent complete');
  finally
    aEmailHeader.Free;
    aLst.free;
  end;
end;
procedure TfrmMainProgram.SMTPReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
   //e.ErrorCode ;
end;

{$IFDEF DEBUG}
initialization
 // ReportMemoryleaksOnSHutdown := True;
{$ENDIF}
end.



