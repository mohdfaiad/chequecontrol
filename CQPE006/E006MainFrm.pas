unit E006MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, Menus, cxLookAndFeelPainters, frxBarcode, frxDBXComponents,
  frxADOComponents, frxIBXComponents, frxClass, frxBDEComponents, frxChart,
  frxDCtrl, frxExportHTML, frxExportCSV, frxExportPDF, frxExportXLS, DBClient,
  frxDBSet, SConnect, SockCon, DB, MConnect, ImgList, Provider, ADODB,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel, StdCtrls, cxButtons,
  ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel, ExtCtrls,
  cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxMemo, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxCheckBox, cxPC, cxGroupBox, cxRadioGroup, cxDBEdit, cxAutoFields,
  Buttons, JvExStdCtrls, JvMemo, RemDataSet, DSource ;

type
  TFrmE006Main = class(TfrmBase)
    cxPageControl1: TcxPageControl;
    cxtReceive: TcxTabSheet;
    cxtAlert: TcxTabSheet;
    grp1: TGroupBox;
    cxLabel3: TcxLabel;
    RSearchText: TcxTextEdit;
    RSearchList: TcxComboBox;
    RStr: TcxDateEdit;
    REnd: TcxDateEdit;
    Panel1: TPanel;
    lbl4: TLabel;
    lbl1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RFrom: TcxDBTextEdit;
    RSent: TcxButton;
    RSubj: TcxDBTextEdit;
    RCC: TcxDBTextEdit;
    RRefresh: TcxButton;
    RPreview: TcxButton;
    RSeAll: TcxButton;
    RUSeAll: TcxButton;
    Label1: TLabel;
    RTo: TcxDBTextEdit;
    RMsg: TcxDBMemo;
    cxGroupBox1: TcxGroupBox;
    RHost: TcxDBTextEdit;
    RPort: TcxDBTextEdit;
    Label10: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    RUser: TcxDBTextEdit;
    Label3: TLabel;
    RPass: TcxDBTextEdit;
    RPriority: TcxDBComboBox;
    RAuthen: TcxDBComboBox;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    DReceive: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CHK: TcxGridDBColumn;
    cxGrid1DBTableView1CQTRCD: TcxGridDBColumn;
    cxGrid1DBTableView1CQTCSN: TcxGridDBColumn;
    cxGrid1DBTableView1CQTEMA: TcxGridDBColumn;
    cxGrid1DBTableView1CQTDLN: TcxGridDBColumn;
    cxGrid1DBTableView1CQTADR: TcxGridDBColumn;
    cxGrid1DBTableView1CCSN: TcxGridDBColumn;
    cxGrid1DBTableView1CQTDEA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1CQA: TcxGridDBColumn;
    RStatus: TcxRadioGroup;
    RDateChk: TcxCheckBox;
    GroupBox1: TGroupBox;
    cxLabel1: TcxLabel;
    ASearchText: TcxTextEdit;
    ASearchList: TcxComboBox;
    AStr: TcxDateEdit;
    AEnd: TcxDateEdit;
    AStatus: TcxRadioGroup;
    ADateChk: TcxCheckBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    AFrom: TcxDBTextEdit;
    ASent: TcxButton;
    ASubj: TcxDBTextEdit;
    ACC: TcxDBTextEdit;
    ARefresh: TcxButton;
    APreview: TcxButton;
    ASeAll: TcxButton;
    AUSeAll: TcxButton;
    ATo: TcxDBTextEdit;
    AMsg: TcxDBMemo;
    cxGroupBox2: TcxGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    AHost: TcxDBTextEdit;
    APort: TcxDBTextEdit;
    AUser: TcxDBTextEdit;
    APass: TcxDBTextEdit;
    APriority: TcxDBComboBox;
    AAuthen: TcxDBComboBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    DAlert: TDataSource;
    cxGridDBTableView1CHK: TcxGridDBColumn;
    cxGridDBTableView1CQTCQD: TcxGridDBColumn;
    cxGridDBTableView1CQTCSN: TcxGridDBColumn;
    cxGridDBTableView1CQTDLN: TcxGridDBColumn;
    cxGridDBTableView1CQTONN: TcxGridDBColumn;
    cxGridDBTableView1CQTADR: TcxGridDBColumn;
    cxGridDBTableView1CQTEMA: TcxGridDBColumn;
    cxGridDBTableView1ITEMS: TcxGridDBColumn;
    cxGridDBTableView1DUE: TcxGridDBColumn;
    cxGridDBTableView1CQTDEA: TcxGridDBColumn;
    DRSMTP: TDataSource;
    DASMTP: TDataSource;
    cxGrid1DBTableView1CQTMTD: TcxGridDBColumn;
    cxGridDBTableView1CQTMTD: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxtReceiveShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ClickSent(Sender: TObject);
    procedure RPreviewClick(Sender: TObject);
    procedure RRefreshClick(Sender: TObject);
    procedure RSeAllClick(Sender: TObject);
    procedure RUSeAllClick(Sender: TObject);
    procedure AStatusPropertiesChange(Sender: TObject);
    procedure RSearchListPropertiesChange(Sender: TObject);
    procedure RSearchTextPropertiesChange(Sender: TObject);
    procedure RDateChange(Sender: TObject);
    procedure cxtAlertShow(Sender: TObject);
    procedure ARefreshClick(Sender: TObject);
    procedure APreviewClick(Sender: TObject);
    procedure ASeAllClick(Sender: TObject);
    procedure AUSeAllClick(Sender: TObject);
    procedure ASearchListPropertiesChange(Sender: TObject);
    procedure ASearchTextPropertiesChange(Sender: TObject);
    procedure RDateChkPropertiesChange(Sender: TObject);
    procedure ADateChange(Sender: TObject);
    procedure ADateChkPropertiesChange(Sender: TObject);
    procedure RStatusPropertiesChange(Sender: TObject);
    procedure MsgKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    FilePath:string;
    _ASendStatus, _ASRList, _ASRText, _ASRDate: string; _ADateF, _ADateT: TDateTime;
    _RSendStatus, _RSRList, _RSRText, _RSRDate: string; _RDateF, _RDateT: TDateTime;
    procedure CreateReport(RNO: string;Preview: Boolean);
    function CheckDate(SDate: string):Boolean;
    procedure SentMaiL(smServer, smPort, smUserName, smPassword, smPriority,smFrom, smTo, smCC, smSubject, smMsg: string; smAuthen:Integer);
    procedure SELECT(CDSSELECT:TDataSet; VALUES,FIELD: string);
  public
    { Public declarations }
  end;

var
  FrmE006Main: TFrmE006Main;

implementation

uses ALSMTPClient, ALInternetMessageCommon, ALMultiPartMixedParser, E006MainDM,
     UIT_GLOBAL_LIB, UIT_UTILS_LIB;

{$R *.dfm}
//const
//  SectionData           = 'Config Mail';
//   seSMTP_Server            = 'SMTP Server';
//   seSMTP_Port              = 'SMTP Port';
//   seAccount                = 'Account';
//   sePassword               = 'Password';
//   seFrom_user              = 'From user';
//   seSubject                = 'Subject';
//   seTo_User                = '';
//   seBCC_User               = '';
//   seCCC_User               = '';
//   seReply_To               = '';
//   seTime_To_Send_Auto      = '';
//   sePiority                = '';
//   seTimeSend               = '';
//   seAttach_File_Directory  = '';
//   seAttach_Fix_File_Name   = '';
//   seBODY                   = '';
{ TFrmE006Main }

procedure TFrmE006Main.ADateChange(Sender: TObject);
begin
  inherited;
  if CheckDate(AStr.Text) and CheckDate(AEnd.Text) and ADateChk.Checked then
    begin
      _ASRDate := 'CQTCQD';
      _ADateF  := AStr.Date;
      _ADateT  := AEnd.Date;
    end
  else
    _ASRDate := '';
  DME006Main.Search(DME006Main.Alert,_ASendStatus,_ASRList,_ASRText,_ASRDate,_ADateF,_ADateT);
end;

procedure TFrmE006Main.ADateChkPropertiesChange(Sender: TObject);
begin
  inherited;
  AStr.Enabled := ADateChk.Checked;
  AEnd.Enabled := ADateChk.Checked;
  ADateChange(Sender);
end;

procedure TFrmE006Main.APreviewClick(Sender: TObject);
begin
  inherited;
  if DME006Main.Alert.FieldByName('CQTDNO').AsString <> '' then
    CreateReport(DME006Main.Receive.FieldByName('CQTDNO').AsString,True)
  else
    CreateReport('',True);
end;

procedure TFrmE006Main.ARefreshClick(Sender: TObject);
begin
  inherited;
  DME006Main.LoadAlert;
end;

procedure TFrmE006Main.ASeAllClick(Sender: TObject);
begin
  inherited;
  SELECT(DAlert.DataSet,'1','CHK');
end;

procedure TFrmE006Main.ASearchListPropertiesChange(Sender: TObject);
begin
  inherited;
  case ASearchList.SelectedItem of
    0 : _ASRList := 'CQTCSN';
    1 : _ASRList := 'CQTDLN';
    2 : _ASRList := 'CQTEMA';
  end;
  ASearchText.Text := '';
  _ASRText := Trim(ASearchText.Text);
  DME006Main.Search(DME006Main.Alert,_ASendStatus,_ASRList,_ASRText,_ASRDate,_ADateF,_ADateT);
end;

procedure TFrmE006Main.ASearchTextPropertiesChange(Sender: TObject);
begin
  inherited;
  _ASRText := Trim(ASearchText.Text);
  DME006Main.Search(DME006Main.Alert,_ASendStatus,_ASRList,_ASRText,_ASRDate,_ADateF,_ADateT);
end;

procedure TFrmE006Main.AStatusPropertiesChange(Sender: TObject);
begin
  inherited;
    _ASendStatus := AStatus.Properties.Items[AStatus.ItemIndex].Value;
  DME006Main.Search(DME006Main.Alert,_ASendStatus,_ASRList,_ASRText,_ASRDate,_ADateF,_ADateT);
  if AStatus.ItemIndex = 1 then
    begin
      ASent.Colors.Default := clRed;
      ASent.Caption := 'Re Send'
    end
  else
    begin
      ASent.Colors.Default := clDefault;
      ASent.Caption := 'Send'
    end;
end;

procedure TFrmE006Main.AUSeAllClick(Sender: TObject);
begin
  inherited;
  SELECT(DAlert.DataSet,'0','CHK');
end;

procedure TFrmE006Main.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
  Self.Close;
end;

function TFrmE006Main.CheckDate(SDate: string): Boolean;
begin
  try
    StrToDate(SDate);
    Result := True;
  except
    Result := False;
  end;
end;

procedure TFrmE006Main.ClickSent(Sender: TObject);
var CDS_Sent: TClientDataSet;
    CheckField,EMailField,DNOField,RNO:string;
    _Host,_Port,_User,_Pass,_Priority:string;
    _From,_To,_CC,_Subj,_Msg:string;
    _Authen:Integer;
    Prefix,ABR,CDE:string;
    NewDNO: Boolean;
    TB:string;
    CP,ER: Integer;
begin
  CP := 0;
  ER := 0;
  try
    if cxPageControl1.ActivePage = cxtReceive then
      begin
        if DME006Main.RSMTP.State in [dsInsert,dsEdit] then DME006Main.RSMTP.PostOk;
        _Host := RHost.Text;
        _Port := RPort.Text;
        _User := RUser.Text;
        _Pass := RPass.Text;
        _Priority := RPriority.Text;
        _From := RFrom.Text;
        //_To   := 'pimpakon@honda.th.com';//'theeraboy_new@hotmail.com';//RTo.Text; //
        _CC   := RCC.Text;
        _Subj := RSubj.Text;
        _Msg  := RMsg.Text;
        _Authen := RAuthen.ItemIndex;
        CDS_Sent   := DME006Main.Receive;
        EMailField := 'CQTEMA';
        DNOField   := 'CQTDNO';
        Prefix := 'RCV';
        ABR    := 'MRECEIVE';
        CDE    := 'MRECEIVE';
        TB     := 'CQDT001';
      end
    else if cxPageControl1.ActivePage = cxtAlert then
      begin
        if DME006Main.ASMTP.State in [dsInsert,dsEdit] then DME006Main.ASMTP.PostOk;          
        _Host := AHost.Text;
        _Port := APort.Text;
        _User := AUser.Text;
        _Pass := APass.Text;
        _Priority := APriority.Text;
        _From := AFrom.Text;
        //_To   := 'pimpakon@honda.th.com';//'theeraboy_new@hotmail.com';//ATo.Text;//
        _CC   := ACC.Text;
        _Subj := ASubj.Text;
        _Msg  := AMsg.Text;
        _Authen := AAuthen.ItemIndex;
        CDS_Sent   := DME006Main.Alert;
        EMailField := 'CQTEMA';
        DNOField   := 'CQTDNO';
        Prefix := 'ALT';
        ABR    := 'MALERT';
        CDE    := 'MALERT';
        TB     := 'CQDT003';
      end;
    CheckField := 'CHK';
    if CDS_Sent.State in [dsInsert,dsEdit] then CDS_Sent.Post;
    CDS_Sent.First ;
    while not CDS_Sent.Eof do
    begin
      if CDS_Sent.FieldByName(CheckField).AsInteger = 1 then
      begin
        if Trim(CDS_Sent.FieldByName(EMailField).AsString) <> ''  then
          BEGIN
            //ShowMessage(CDS_Sent.FieldByName('CQTDNO').AsString + ' / ' + CDS_Sent.FieldByName('CQTCSN').AsString);
            if CDS_Sent.FieldByName(DNOField).AsString <> '' then
              BEGIN
                RNO := CDS_Sent.FieldByName(DNOField).AsString;
                NewDNO := False;
              END
            else
              begin
               RNO := getRunning(DME006Main.SCE,Prefix,ABR,CDE,'');
               NewDNO := True;
               if cxPageControl1.ActivePage = cxtReceive then
                DME006Main.UpdateCQDT001(RNO)
               else
                DME006Main.AddCQDT003(RNO);
              end;
            CreateReport(RNO,False);
            //SentMaiL(_Host,_Port,_User,_Pass,_Priority,_From,_To,_CC,_Subj,_Msg,_Authen);
            SentMaiL(_Host,_Port,_User,_Pass,_Priority,_From,CDS_Sent.FieldByName(EMailField).AsString,_CC,_Subj,_Msg,_Authen);
            //Sleep(100);
            CDS_Sent.Edit;
            if CDS_Sent.FieldByName('CQTSTS').AsString = 'P' then
            begin
              CDS_Sent.FieldByName('CQTDNO').AsString := RNO;
              CDS_Sent.FieldByName('CQTSTS').AsString := 'T';
            end;
            CDS_Sent.FieldByName('CHK').AsInteger   := 0;
            CDS_Sent.FieldByName('CQTMTD').AsDateTime := getServerDateTime(DME006Main.SCE);
            CDS_Sent.Post;
            DME006Main.ResendUpdate(TB,RNO);
            Inc(CP);
          end
        else if Trim(CDS_Sent.FieldByName(EMailField).AsString) = ''  then
          begin
            Inc(ER);
          end;
      end;
      CDS_Sent.Next ;
    end;
    while CDS_Sent.Locate('CQTSTS','T',[]) do
    begin
        CDS_Sent.Edit;
        CDS_Sent.FieldByName('CQTSTS').AsString := 'C';
        CDS_Sent.Post;
    end;
    if (ER > 0) and (CP = 0)  then
      Application.MessageBox(PChar('Missing E-mail address ' + IntToStr(ER) + ' Item'),'Error', MB_OK + MB_ICONEXCLAMATION)
    else if (ER = 0) and (CP > 0)  then
      Application.MessageBox(PChar('Send Complete ' + IntToStr(CP) + ' Item'), 'Complete', MB_OK + MB_ICONINFORMATION)
    else if (ER > 0) and (CP > 0)  then
      Application.MessageBox(PChar('Missing E-mail address ' + IntToStr(ER) + ' Item' + #13 +
                                   'Send Complete ' + IntToStr(CP) + ' Item'), 'Warning', MB_OK + MB_ICONWARNING);

  except
    on ee:Exception do
    begin
      if NewDNO then
      begin
        if cxPageControl1.ActivePage = cxtReceive then
          DME006Main.RevertCQDT001(RNO)
        else
          DME006Main.RevertCQDT003(RNO);
        DME006Main.RevertGetRunning(ABR,CDE);
      end;
      ShowMessage(ee.message);
    end;
  end;
end;

procedure TFrmE006Main.CreateReport(RNO: string; Preview: Boolean);
var obj:array of TReportParam;
    NameReport,NameFile: string;
begin
  SetLength(obj,1);
  obj[0]:=TReportParam.Create;
  with DME006Main do
  begin
    if cxPageControl1.ActivePage = cxtReceive then
    begin
      obj[0].AddParam('CON',Receive.FieldByName('CQTCSN').AsString);
      obj[0].AddParam('DTE',FormatDateTime('MM/dd/yyyy',Receive.FieldByName('CQTRCD').AsDateTime));
      obj[0].AddParam('DNO',RNO);
      NameReport := 'M01';
      NameFile   := 'RecvCQ.pdf';
    end
    else if cxPageControl1.ActivePage = cxtAlert then
    begin
      obj[0].AddParam('CON',Alert.FieldByName('CQTCSN').AsString);
      obj[0].AddParam('DNAME',Alert.FieldByName('CQTONN').AsString);
      obj[0].AddParam('ADR',Alert.FieldByName('CQTADR').AsString);
      obj[0].AddParam('ITM',Alert.FieldByName('ITEMS').AsString);
      obj[0].AddParam('DUE',FormatDateTime('MM/dd/yyyy',Alert.FieldByName('DUE').AsDateTime));
      obj[0].AddParam('NDUE',Alert.FieldByName('AMT').AsString);
      obj[0].AddParam('CNAME',Alert.FieldByName('CQTDLN').AsString);
      NameReport := 'M02';
      NameFile   := 'AlertCQ.pdf';
    end;

    if Preview then
      ShowReport(SCE,NameReport,obj)
    else
    begin
      if not DirectoryExists('tmp') then CreateDir('tmp');
      exportReport(SCE,NameReport,obj,ExtractFilePath(Application.ExeName)+'tmp\' + NameFile);
      FilePath := ExtractFilePath(Application.ExeName)+'tmp\' + NameFile;
    end;
  end;
end;

procedure TFrmE006Main.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var i : Integer;
    DS : TDataSource;     
begin
  inherited;
//  if ACellViewInfo.Item.Index = 0 then
//  begin
//    if cxPageControl1.ActivePage = cxtReceive then DS := DReceive else DS := DAlert;
//    with DS.DataSet do
//    begin
//      DisableControls;
//      try
//        for i := 0 to  Sender.DataController.GetSelectedCount -1 do
//        begin
//          RecNo := Sender.DataController.GetSelectedRowIndex(i) + 1;
//          Edit;
//            if FieldByName('CHK').AsInteger = 0 then
//              FieldByName('CHK').AsInteger := 1
//            else
//              FieldByName('CHK').AsInteger := 0;
//          Post;
//        end;
//      finally
//        EnableControls;
//      end;
//    end;   
//  end;
end;

procedure TFrmE006Main.cxGrid1DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmE006Main.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmE006Main.cxtAlertShow(Sender: TObject);
begin
  inherited;
  if not DME006Main.Alert.Active then
  begin
    DME006Main.LoadAlert;
    AStatus.ItemIndex := 0;
  end;
end;

procedure TFrmE006Main.cxtReceiveShow(Sender: TObject);
begin
  inherited;
  if not DME006Main.Receive.Active then
  begin
    DME006Main.LoadReceive;
    RStatus.ItemIndex := 0;
  end;
end;

procedure TFrmE006Main.RDateChange(Sender: TObject);
begin
  inherited;
  if CheckDate(RStr.Text) and CheckDate(REnd.Text) and RDateChk.Checked then
    begin
      _RSRDate := 'CQTRCD';
      _RDateF  := RStr.Date;
      _RDateT  := REnd.Date;
    end
  else
    _RSRDate := '';
  DME006Main.Search(DME006Main.Receive,_RSendStatus,_RSRList,_RSRText,_RSRDate,_RDateF,_RDateT);
end;

procedure TFrmE006Main.RDateChkPropertiesChange(Sender: TObject);
begin
  inherited;
  RStr.Enabled := RDateChk.Checked;
  REnd.Enabled := RDateChk.Checked;
  RDateChange(Sender);
end;

procedure TFrmE006Main.MsgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    SendKeyPress(TWinControl(Sender),#13);
  end;
end;

procedure TFrmE006Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmE006Main.FormCreate(Sender: TObject);
begin
  inherited;
  FormClosed := false;                                                  
  cxPageControl1.ActivePage := cxtReceive;
end;

procedure TFrmE006Main.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_F2:begin
      if (not (tbSearch in Self.ToolbarVisible)) or (not (tbSearch in Self.ToolbarEnable)) then
        Exit;
      btnSearch.Click;
    end;

    VK_F3:begin
      //if (not (tbSave in Self.ToolbarVisible)) or (not (tbSave in Self.ToolbarEnable)) then
      if (not (tbNew in Self.ToolbarVisible)) or (not (tbNew in Self.ToolbarEnable)) then
        Exit;

        btnNew.Click;
    end;

    VK_F4:begin
      if (not (tbEdit in Self.ToolbarVisible)) or (not (tbEdit in Self.ToolbarEnable)) then
        Exit;

      btnEdit.Click;
    end;

    VK_F5:begin
      if (not (tbSave in Self.ToolbarVisible)) or (not (tbSave in Self.ToolbarEnable)) then
        Exit;

        btnSave.Click;
    end;

    VK_F6:begin
      if (not (tbCancel in Self.ToolbarVisible)) or (not (tbCancel in Self.ToolbarEnable)) then
        Exit;

      MessageDlg('F6 : Cancel',mtInformation,[mbOK],0);
    end;

    VK_F7:begin
      if (not (tbDelete in Self.ToolbarVisible)) or (not (tbDelete in Self.ToolbarEnable)) then
        Exit;
      MessageDlg('F7 : Delete',mtInformation,[mbOK],0);
    end;

    VK_F8:begin
      if (not (tbPrint in Self.ToolbarVisible)) or (not (tbPrint in Self.ToolbarEnable)) then
        Exit;

      btnPrint.Click;
    end;

    VK_F9:begin
      if (not (tbExport in Self.ToolbarVisible)) or (not (tbExport in Self.ToolbarEnable)) then
        Exit;

      btnExport.Click;
    end;

    VK_F11:begin
      if (not (tbClose in Self.ToolbarVisible)) or (not (tbClose in Self.ToolbarEnable)) then
        Exit;

      btnClose.Click;
    end;

  end;

  if Key = VK_TAB then
  begin
    SelectNext(ActiveControl, GetKeyState(VK_SHIFT) >= 0, True);
    // Move to the next control in the tab order
  end;
end;

procedure TFrmE006Main.FormShow(Sender: TObject);
begin
  inherited;
  lbMainCurrentDate.Caption:= 'Date: '+ FormatDateTime('dd/MM/yyyy',getServerDateTime(DME006Main.SCE));
end;

procedure TFrmE006Main.RPreviewClick(Sender: TObject);
begin
  inherited;
  if DME006Main.Receive.FieldByName('CQTDNO').AsString <> '' then
    CreateReport(DME006Main.Receive.FieldByName('CQTDNO').AsString,True)
  else
    CreateReport('',True);
end;

procedure TFrmE006Main.RRefreshClick(Sender: TObject);
begin
  inherited;
  DME006Main.LoadReceive;
end;

procedure TFrmE006Main.RSeAllClick(Sender: TObject);
begin
  inherited;
  SELECT(DReceive.DataSet,'1','CHK');
end;

procedure TFrmE006Main.RSearchListPropertiesChange(Sender: TObject);
begin
  inherited;
  case RSearchList.SelectedItem of
    0 : _RSRList := 'CQTCSN';
    1 : _RSRList := 'CQTDLN';
    2 : _RSRList := 'CQTEMA';
  end;
  RSearchText.Text := '';
  _RSRText := Trim(RSearchText.Text);
  DME006Main.Search(DME006Main.Receive,_RSendStatus,_RSRList,_RSRText,_RSRDate,_RDateF,_RDateT);
end;

procedure TFrmE006Main.RSearchTextPropertiesChange(Sender: TObject);
begin
  inherited;
  _RSRText := Trim(RSearchText.Text);
  DME006Main.Search(DME006Main.Receive,_RSendStatus,_RSRList,_RSRText,_RSRDate,_RDateF,_RDateT);
end;

procedure TFrmE006Main.RStatusPropertiesChange(Sender: TObject);
begin
  inherited;
  _RSendStatus := RStatus.Properties.Items[RStatus.ItemIndex].Value;
  DME006Main.Search(DME006Main.Receive,_RSendStatus,_RSRList,_RSRText,_RSRDate,_RDateF,_RDateT);
  if RStatus.ItemIndex = 1 then
    begin
      RSent.Colors.Default := clRed;
      RSent.Caption := 'Re Send';
    end
  else
    begin
      RSent.Colors.Default := clDefault;
      RSent.Caption := 'Send';
    end;
end;

procedure TFrmE006Main.RUSeAllClick(Sender: TObject);
begin
  inherited;
  SELECT(DReceive.DataSet,'0','CHK');
end;

procedure TFrmE006Main.SentMaiL(smServer, smPort, smUserName, smPassword, smPriority,smFrom, smTo, smCC, smSubject, smMsg: string; smAuthen:Integer);
Var aEmailHeader: TALEmailHeader;
    MultiPartMixedAttachments : TALMultiPartMixedContents;
    SmtpClient : TAlSmtpClient;
    aLst: TstringList;
    Str: string;
    i : integer;
begin
  aLst := TstringList.Create;
  aEmailHeader := TALEmailHeader.Create;
  MultiPartMixedAttachments := TALMultiPartMixedContents.Create;
  SmtpClient := TAlSmtpClient.Create;
  Try
    Str :=  smTo + #13#10 + smCC + #13#10 + '';
    Str := StringReplace(Str,',',#13#10,[rfReplaceAll]);
    Str := StringReplace(Str,';',#13#10,[RfReplaceall]);
    aLst.Text := Trim(Str);
    i := 0;
    While i <= aLst.Count - 1 do
      begin
        aLst[i] := trim(aLst[i]);
        If aLst[i] = '' then aLst.Delete(i)
        else inc(i);
      end;
    aEmailHeader.From := smFrom;
    aEmailHeader.SendTo := smTo;
    aEmailHeader.cc := smCC;
    aEmailHeader.Subject := smSubject;
    aEmailHeader.Priority := smPriority;
    aEmailHeader.ContentType := 'text/plain; charset="TIS-620"';
    If UpperCase(Trim(smPriority)) = UpperCase('urgent') then str := 'High'
    else If UpperCase(Trim(smPriority)) = UpperCase('normal') then str := 'Normal'
    else if UpperCase(Trim(smPriority))= UpperCase('non-urgent') then str := 'Low';
    aEmailHeader.CustomHeaders.Add('X-MSMail-Priority: ' + str);
    MultiPartMixedAttachments.Add.LoadDataFromFileAsAttachmentBase64Encode(FilePath);
    SmtpClient.SendMailMultipartMixed(smServer,
                                       StrToInt(smPort),
                                       smFrom,
                                       aLst,
                                       smUserName,
                                       smPassword,
                                       TAlSmtpClientAuthType(smAuthen),
                                       aEmailHeader,
                                       smMsg,
                                       'text/plain; charset="TIS-620"',
                                       MultiPartMixedAttachments);
    sleep(500);
  finally
    aEmailHeader.Free;
    aLst.free;
    MultiPartMixedAttachments.Free;
    SmtpClient.Free;
  end;
end;

procedure TFrmE006Main.SELECT(CDSSELECT:TDataSet; VALUES,FIELD: string);
VAR B:TBookmark;
begin
  inherited;
  B := CDSSELECT.GetBookmark;
  CDSSELECT.DisableControls;
  try
    CDSSELECT.First;
    while NOT CDSSELECT.Eof do
    begin
      CDSSELECT.Edit;
      CDSSELECT.FieldByName(FIELD).AsInteger := StrToInt(VALUES);
      CDSSELECT.Post;
      CDSSELECT.Next;
    end;
  finally
    CDSSELECT.GotoBookmark(B);
    CDSSELECT.FreeBookmark(B);
    CDSSELECT.EnableControls;
  end;
end;

end.
