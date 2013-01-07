unit U002MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, BaseFrm, SConnect, SockCon, DB, DBClient, MConnect,
  ImgList, Provider, ADODB, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxLabel, ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel, ExtCtrls,
  Menus, cxLookAndFeelPainters, Grids, cxButtons, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDBLabel, cxMaskEdit, cxDropDownEdit, JvExStdCtrls,
  JvEdit, JvDBSearchEdit, cxGroupBox, cxRadioGroup, cxPC, cxAutoFields, ExtDlgs,
  JvComponentBase, JvgExportComponents, DSource,Converse, cxLookAndFeels,frxClass,
  frxDBSet,U002EditingFrm, U002ViewHisFrm,PleaseWait, UIT_GLOBAL_LIB, U002MainDM,
  LoadBank, U002SimilarReceiveFrm, RemDataSet, UIT_UTILS_LIB, U002ConFullFrm,
  frxBarcode, frxDBXComponents, frxADOComponents, frxIBXComponents,
  frxBDEComponents, frxChart, frxDCtrl, frxExportHTML, frxExportCSV,
  frxExportPDF, frxExportXLS, DBGrids, U002AmountInvFrm
  ;

type
  TFrmU002Main = class(TfrmBase)
    DCQDS001: TDataSource;
    OTF: TOpenTextFileDialog;
    CAF: TCxAutoFields;
    DHis: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    BY10: TcxLabel;
    Panel2: TPanel;
    BY1: TcxLabel;
    BY2: TcxLabel;
    BY3: TcxLabel;
    BY4: TcxLabel;
    BY11: TcxLabel;
    BY7: TcxLabel;
    BY12: TcxLabel;
    BY13: TcxLabel;
    BY5: TcxLabel;
    BY6: TcxLabel;
    BY8: TcxLabel;
    BY9: TcxLabel;
    CQMITS: TcxDBLabel;
    CQMLSS: TcxDBLabel;
    CQMERR: TcxDBLabel;
    CQMHPS: TcxDBLabel;
    CQMITA: TcxDBLabel;
    CQMLSA: TcxDBLabel;
    CQMHPA: TcxDBLabel;
    CQMERA: TcxDBLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1LadRunNo: TcxGridDBColumn;
    cxGrid1DBTableView1LadErType: TcxGridDBColumn;
    cxGrid1DBTableView1LadBssType: TcxGridDBColumn;
    cxGrid1DBTableView1LadReMark: TcxGridDBColumn;
    cxGrid1DBTableView1LadCollNo: TcxGridDBColumn;
    cxGrid1DBTableView1LadChkDate: TcxGridDBColumn;
    cxGrid1DBTableView1LadChkAmt: TcxGridDBColumn;
    cxGrid1DBTableView1LadChkNo: TcxGridDBColumn;
    cxGrid1DBTableView1LadChkACNo: TcxGridDBColumn;
    cxGrid1DBTableView1LadBnkCode: TcxGridDBColumn;
    cxGrid1DBTableView1LadBrnCode: TcxGridDBColumn;
    cxGrid1DBTableView1LadChkType: TcxGridDBColumn;
    cxGrid1DBTableView1LadDepDate: TcxGridDBColumn;
    cxGrid1DBTableView1LadDeaCode: TcxGridDBColumn;
    cxGrid1DBTableView1LadBnkName: TcxGridDBColumn;
    cxGrid1DBTableView1LadBrnName: TcxGridDBColumn;
    cxGrid1DBTableView1LadChkStatus: TcxGridDBColumn;
    cxGrid1DBTableView1LadPicLocation: TcxGridDBColumn;
    cxGrid1DBTableView1LadExpDate: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    LadFileName: TcxDBLabel;
    cxTabSheet2: TcxTabSheet;
    view: TcxButton;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1CQMDNO: TcxGridDBColumn;
    cxGrid2DBTableView1CQMBSD: TcxGridDBColumn;
    cxGrid2DBTableView1CQMCTN: TcxGridDBColumn;
    cxGrid2DBTableView1CQMACC: TcxGridDBColumn;
    cxGrid2DBTableView1CQMFNA: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    SDDe: TSaveDialog;
    Category: TcxRadioGroup;
    DCQDM005: TDataSource;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure CategoryPropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure viewClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnPrintClick(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    FLoadedForm: TForm;
    FLibHandle: Cardinal;
    procedure FormEdit;
    procedure ShowEditing;
    procedure ShowSeperateChq(_contract,ChqNo: string; ChqAmount: Currency);
  public

  end;

var
  FrmU002Main: TFrmU002Main;

implementation

{$R *.dfm}

//   Self.ToolbarEnable :=  [tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];
//   Self.ToolbarVisible :=  [tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];
procedure TFrmU002Main.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
  Self.Close;
end;

procedure TFrmU002Main.btnEditClick(Sender: TObject);
begin
  inherited;
  ShowEditing;
end;

procedure TFrmU002Main.btnExportClick(Sender: TObject);
begin
  inherited;
  ExPortCSV(DMU002Main.CQDS001,SDDe);
end;

procedure TFrmU002Main.btnNewClick(Sender: TObject);
var Duplicate: Boolean;
begin
  inherited;

  if OTF.Execute then
  begin
    Category.ItemIndex := 0;
    DMU002Main.CQDS001.Filter := 'CQSDEL=''F''';
    DMU002Main.CQDS001.Filtered := True;
    with DMU002Main do
    begin
      if not CQDM005.IsEmpty  then begin CQDM005.CancelUpdates; CQDS001.CancelUpdates; end;
      CQDS001.IndexFieldNames := '';
      Update;
      Duplicate := True;
        if ReadTextFile(OTF.FileName,'','Deposit',CQDM005,CQDS001,HP,SC,Duplicate,DLL,cxGrid1) then
        begin
          if Duplicate = True then
            begin
              ShowMessage('คุณโหลด Deposit ซ้ำ');
              ToolbarEnable  :=  [tbClose,tbNew];
            end
          else if not CQDS001.IsEmpty then               
            ToolbarEnable  :=  [tbClose,tbNew,tbEdit,tbSave,tbDelete,tbPrint,tbExport];
        end;
    end;
  end;
end;

procedure TFrmU002Main.btnPrintClick(Sender: TObject);
var obj:array of TReportParam;
    DNO:string;
begin
  inherited;
  DMU002Main.CQDS001.Filtered := False;
  DNO :=  DMU002Main.CQDM005.FieldByName('CQMDNO').AsString;
  DMU002Main.CQDM005.PostOk;
  DMU002Main.CQDS001.PostOk;
  DMU002Main.LoadCQDM005(DNO);
  DMU002Main.CQDS001.Filtered := True;
  SetLength(obj,1);
    obj[0]:=TReportParam.Create;
    obj[0].AddParam('DNO',DMU002Main.CQDM005.FieldByName('CQMDNO').AsString);
    obj[0].AddParam('ACT',DMU002Main.CQDM005.FieldByName('CQMACT').AsString);
  ShowReport(DMU002Main.sc,'DEP005',obj);
end;

procedure TFrmU002Main.btnSaveClick(Sender: TObject);
var Error,DNO:string;
begin
  inherited;
  Error := 'Data errors !' + #13 + #13 +
           'Please correct the data is a valid.';
  Category.ItemIndex := 0;
  if DMU002Main.CQDS001.Locate('CQSETY','SR',[]) then
    begin
      ShowMessage(Error);
    end
  else if DMU002Main.CQDS001.Locate('CQSETY','AI',[]) then
    begin
      ShowMessage(Error);
    end
  else if DMU002Main.CQDS001.Locate('CQSETY','CA',[]) then
    begin
      ShowMessage(Error);
    end
  else if DMU002Main.CQDS001.Locate('CQSETY','NI',[]) then
    begin
      ShowMessage(Error);
    end
  else if DMU002Main.CQDS001.Locate('CQSETY','FU',[]) then
    begin
      ShowMessage(Error);
    end
  else if DMU002Main.CQDS001.Locate('CQSETY','UN',[]) then
    begin
      ShowMessage(Error);
    end
  else if DMU002Main.CQDS001.Locate('CQSETY','CE',[]) then
    begin
      ShowMessage(Error);
    end
  else
    begin
      DMU002Main.SC.StartTran;
      try
        cxGrid1.Enabled := False;
        PleaseWaitBegin('Save Deposit');
        try
          with DMU002Main do
          begin
            CQDS001.Filtered := False;
            AddCheque;
            CQDM005.PostOk;
            CQDS001.PostOk;
            DNO := getRunning(SC,'DS','DOCLAD','LOAD_DEPOSIT','');
            GenDNO('CQDM005','CQDS001',CQDM005.FieldByName('CQMDNO').AsString,DNO,SC);
            AddMail(DNO);
            LoadCQDM005;
            ClearReceiveFlag(SC,'ALL');
          end;
          ToolbarEnable  :=  [tbClose,tbNew];
          PleaseWaitEnd;
          cxGrid1.Enabled := True;
          DMU002Main.SC.Commit;
          ShowMessage('Save Deposit Completed');
        finally
          PleaseWaitEnd;
          cxGrid1.Enabled := True;
          DMU002Main.CQDS001.Filtered := True;
        end;
      Except
        on ee:Exception do
        begin
          DMU002Main.SC.Rollback;
          cxGrid1.Enabled := True;
          //ShowMessage(DMU002Main.CQDS001.FieldByName('CQSRNO').AsString + ' ' + DMU002Main.CQDS001.FieldByName('CQSRFN').AsString);
          Application.MessageBox(pchar(ee.Message),pchar('Warning'),MB_OK or MB_ICONWARNING);
          exit;
        end;
      end;
    end;
end;

procedure TFrmU002Main.CategoryPropertiesChange(Sender: TObject);
begin
  inherited;
  with DMU002Main.CQDS001 do
  begin
    if Category.ItemIndex <> 0 then
    begin
      Filter := Category.Properties.Items[Category.ItemIndex].Value + ' AND CQSDEL=''F''';
      Filtered := True;
    end
    else
    begin
      Filter := 'CQSDEL=''F''';
      Filtered := True;
    end;
  end;
end;

procedure TFrmU002Main.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if not AViewInfo.Selected then
  begin
    if SameText(AViewInfo.GridRecord.DisplayTexts[2],'LS') then
      ACanvas.Brush.Color := clGradientInactiveCaption;

    if AViewInfo.Item.Index in [3,4] then
      begin
        if Pos('RECEIVED(',UpperCase(AViewInfo.GridRecord.DisplayTexts[4])) > 0 then
          begin
          ACanvas.Font.Color := clWindowText;
          ACanvas.Font.Style := [fsItalic];
          end
        else
          ACanvas.Font.Color := clBlue;
      end
    else if AViewInfo.Item.Index = 5 then
      ACanvas.Font.Color := clGreen;
  end;
end;

procedure TFrmU002Main.cxGrid1DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Index in [3,4] then
    ACanvas.Brush.Color := clSkyBlue
  else if AViewInfo.Index = 5 then
    ACanvas.Brush.Color := clMoneyGreen
  else begin
    ACanvas.Canvas.Brush.Color:=GridBgColor;
    ACanvas.Canvas.Font.Color:=0;
  end;
end;

procedure TFrmU002Main.cxGrid1DBTableView1DblClick(Sender: TObject);
var Key   : Word;
begin
  inherited;
  Key   := 115;
  KeyDown(Key,[]);
end;

procedure TFrmU002Main.cxGrid2DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmU002Main.cxTabSheet1Show(Sender: TObject);
begin
  inherited;
  if DMU002Main.CQDM005.IsEmpty then
    ToolbarEnable  :=  [tbClose,tbNew]
  else
    ToolbarEnable  :=  [tbClose,tbNew,tbEdit,tbSave,tbDelete,tbPrint,tbExport];
end;

procedure TFrmU002Main.cxTabSheet2Show(Sender: TObject);
begin
  inherited;
  DMU002Main.LoadHis;
  ToolbarEnable  :=  [tbClose]
end;

procedure TFrmU002Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmU002Main.FormCreate(Sender: TObject);
begin
  inherited;
  FormClosed := false;
  cxPageControl1.ActivePage := cxTabSheet1;
  ToolbarVisible :=  [tbClose,tbNew,tbEdit,tbSave,tbDelete,tbPrint,tbExport];
end;

procedure TFrmU002Main.FormEdit;
begin
  FrmU002Editing := TFrmU002Editing.Create(Self);
  Self.IsActive := False;
  try
    FrmU002Editing.ShowModal;
  finally
    Self.IsActive := True;
    FrmU002Editing.Free;
  end;
end;

procedure TFrmU002Main.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  case Key of
    VK_F2:begin
      if (not (tbSearch in Self.ToolbarVisible)) or (not (tbSearch in Self.ToolbarEnable)) then
        Exit;

      MessageDlg('F2 : Search',mtInformation,[mbOK],0);


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

procedure TFrmU002Main.FormShow(Sender: TObject);
begin
  inherited;
  DMU002Main.LoadCQDM005;
  ToolbarVisible :=  [tbClose,tbNew,tbEdit,tbSave,tbDelete,tbPrint,tbExport];
  lbMainCurrentDate.Caption:= 'Date: '+ FormatDateTime('dd/MM/yyyy',getServerDateTime(DMU002Main.SC));
end;

procedure TFrmU002Main.ShowEditing;
var MSG: string;
begin
  with DMU002Main.CQDS001 do
  begin
    if (FieldByName('CQSETY').AsString = 'AI')
    or (FieldByName('CQSETY').AsString = 'CA') then
      begin
        FrmU002AmountInv := TFrmU002AmountInv.Create(Self);
        with FrmU002AmountInv do
        begin
          try
            Self.IsActive := False;
            ShowModal;
          finally
            if SameText(SelectBtn,'SEPERATE') then
              begin
                Free;
                ShowSeperateChq(FieldByName('CQSDLC').AsString,FieldByName('CQSCQN').AsString,FieldByName('CQSCQA').AsCurrency);
              end
            else if SameText(SelectBtn,'CONTRACT') then
              begin
                Free;
                FormEdit;
              end
            else
              begin
                Free;
              end;
            Self.IsActive := True;
          end;
        end;
      end
    else if (FieldByName('CQSETY').AsString = 'UN')
         or (FieldByName('CQSETY').AsString = 'CE') then
      begin
        FormEdit;
      end
    else if FieldByName('CQSETY').AsString = 'SR' then
      begin
        FrmU002SimilarReceive := TFrmU002SimilarReceive.Create(Self);
        with FrmU002SimilarReceive do
        begin
          try
            Self.IsActive := False;
            ShowModal;
          finally
            if SameText(StatusSR,'Seperate') then
              begin
                Free;
                ShowSeperateChq(FieldByName('CQSDLC').AsString,FieldByName('CQSCQN').AsString,FieldByName('CQSCQA').AsCurrency);
              end
            else if SameText(StatusSR,'Edit') then
              begin
                Free;
                FormEdit;
              end
            else
              begin
                Free;
              end;
            Self.IsActive := True;
          end;
        end;
      end
    else if FieldByName('CQSETY').AsString = 'FU' then
      begin
        FrmU002ConFull := TFrmU002ConFull.Create(Self);
        with FrmU002ConFull do
        begin
          try
            Self.IsActive := False;
            ShowModal;
          finally
            if SameText(SelectBtn,'OTHER') then
              begin
                Free;
                ShowSeperateChq(FieldByName('CQSDLC').AsString,FieldByName('CQSCQN').AsString,FieldByName('CQSCQA').AsCurrency);
              end
            else if SameText(SelectBtn,'CONTRACT') then
              begin
                Free;
                FormEdit;
              end
            else
              begin
                Free;
              end;
            Self.IsActive := True;
          end;
        end;
      end
    else if FieldByName('CQSETY').AsString = 'NI' then
      begin
        Self.IsActive := False;
        if MessageDlg('Please contact your administrator.' + #13#10#13#10
          + 'If you want to re-check ,press button "Yes"',
          mtWarning, [mbYes, mbNo], 0) = mrYes then
        begin
          PleaseWaitBegin('Re-Check Deposit');
          cxGrid1.Enabled := False;
          ProcessDeposit(DMU002Main.CQDM005,DMU002Main.CQDS001,DMU002Main.HP,DMU002Main.SC,DMU002Main.DLL,'LS');
          cxGrid1.Enabled := True;
          PleaseWaitEnd;
        end;
        Self.IsActive := True;
      end;
  end;
end;

procedure TFrmU002Main.ShowSeperateChq(_contract,ChqNo: string; ChqAmount: Currency);
var p:TPluginParams;
type
  TMyFormClass = function: TFormClass; stdcall;
  TPluginInitParams= procedure (params:TPluginParams);stdcall;
  TExeCutePlugIn = procedure (cds:TClientDataSet;_MainApp:TApplication;Params:TPluginParams);stdcall;

var
  lMyFormClass: TMyFormClass;
  PluginInitParams:TPluginInitParams;
  _params:TPluginParams;
  ExeCutePlugin:TExeCutePlugIn;
  _NUMROW:integer;

var
   AComponent: TComponent;
   I : integer;
   _sock:TSockCon;
   _cds:TClientDataSet;
   cdsH,cdsD,_cdsSeperateTmp: TClientDataSet;
begin
  inherited;
  if FLibHandle=0 then
    FLibHandle := LoadLibrary('CQPU006.dll');     // seperate cheque module
  ExeCutePlugin := GetProcAddress(FLibHandle, 'ExeCute');
  Self.IsActive := false;
  Screen.Cursor:=crHourGlass;

  p.param1:=_contract;
  p.param2:=ChqNo;

  p.param6:=1;
  p.param11:=ChqAmount;
  _cdsSeperateTmp := TClientDataSet.Create(Self);
  try
    DMU002Main.SC.AddProv('_cdsSeperateTmp','ALL');
    _cdsSeperateTmp.ProviderName := '_cdsSeperateTmp';
    _cdsSeperateTmp.RemoteServer := DMU002Main.SC;
    ExeCutePlugin(_cdsSeperateTmp,Application,p);;
    Self.IsActive := true;
    Screen.Cursor:=crDefault;

    _NUMROW:=0;
  (******************************************************************)
    if _cdsSeperateTmp.Active then
      if _cdsSeperateTmp.RecordCount>0 then
      begin
        cdsH := TClientDataSet.Create(nil);
        cdsD := TClientDataSet.Create(nil);
        try
          with DMU002Main do
          begin
            SC.AddProv('cdsH,cdsD','ALL');
            cdsH.ProviderName := 'cdsH';
            cdsD.ProviderName := 'cdsD';
            cdsH.RemoteServer := SC;
            cdsD.RemoteServer := SC;
            cdsH.close;
            cdsH.CommandText:='select * from CQDM007 where CQMACT=''Z''';
            cdsH.open;
            cdsH.Append;
            cdsH.FieldByName('CQMACT').Value := 'A';
            cdsH.FieldByName('CQMSTS').Value := 'D';
            cdsH.FieldByName('CQMDFG').Value := 'R';
            cdsH.FieldByName('CQMBRN').Value := DLL.Branch;
            cdsH.FieldByName('CQMPDM').Value := DLL.PDM;
            cdsH.FieldByName('CQMPDT').Value := DLL.PDT;
            cdsH.FieldByName('CQMDNO').Value := '*' + GeneratePWDSecurityString(10);
            cdsH.FieldByName('CQMACC').Value := CQDS001.FieldByName('CQSCQC').AsString;
            cdsH.FieldByName('CQMBNK').Value := CQDS001.FieldByName('CQSBKC').AsString;
            cdsH.FieldByName('CQMBBR').Value := CQDS001.FieldByName('CQSBRC').AsString;
            cdsH.FieldByName('CQMCNO').Value := CQDS001.FieldByName('CQSCQN').AsString;
            cdsH.FieldByName('CQMCTY').Value := IIF(CQDS001.FieldByName('CQSCQT').AsString='000','C','N');
            cdsH.FieldByName('CQMDTE').Value := CQDS001.FieldByName('CQSCQD').AsDateTime;
            cdsH.FieldByName('CQMITM').Value := 1;
            cdsH.FieldByName('CQMAMT').Value := CQDS001.FieldByName('CQSCQA').AsFloat;
            cdsH.FieldByName('CQMCSN').Value := _contract;
            cdsH.FieldByName('CQMETD').Value := getServerDate(DMU002Main.SC);
            cdsH.FieldByName('CQMETW').Value := DLL.WorkStation;
            cdsH.FieldByName('CQMETU').Value := DLL.UserID;
            cdsH.Post;
            cdsD.close;
            cdsD.CommandText:='select * from CQDS003 where CQSACT=''Z''';
            cdsD.open;
            inc(_NUMROW);
            _cdsSeperateTmp.First;
             while not _cdsSeperateTmp.Eof do
             begin
              //ShowMessage(_cdsSeperateTmp.FieldByName('NETPAY').AsString);
                if  (_cdsSeperateTmp.FieldByName('AMT').AsCurrency<>0)
                and (_cdsSeperateTmp.FieldByName('NET').AsCurrency<>0) then
                begin
                  if cdsD.Active then
                  begin
                    cdsD.Append;
                    cdsD.FieldByName('CQSACT').AsString:='A';
                    cdsD.FieldByName('CQSSTS').AsString:='Y';
                    cdsD.FieldByName('CQSBRN').AsString:=DLL.Branch;
                    cdsD.FieldByName('CQSPDM').AsString:=DLL.PDM;
                    cdsD.FieldByName('CQSPDT').AsString:=DLL.PDT;
                    cdsD.FieldByName('CQSSEQ').AsInteger:=_NUMROW;
                    cdsD.FieldByName('CQSDNO').AsString:=cdsH.FieldByName('CQMDNO').AsString;
                    cdsD.FieldByName('CQSRCT').AsString:=_cdsSeperateTmp.FieldByName('RCT').AsString;
                    cdsD.FieldByName('CQSCSN').AsString:=_cdsSeperateTmp.FieldByName('CON').AsString; // contract no
                    cdsD.FieldByName('CQSAMT').AsCurrency:=_cdsSeperateTmp.FieldByName('AMT').AsCurrency;//StrToCurr(edChqAmount.Text);
                    cdsD.FieldByName('CQSVAT').AsCurrency:=_cdsSeperateTmp.FieldByName('VAT').AsCurrency;//StrToCurr(edChqAmount.Text);
                    cdsD.FieldByName('CQSWHT').AsCurrency:=_cdsSeperateTmp.FieldByName('WHT').AsCurrency;//StrToCurr(edChqAmount.Text);
                    //cdsD.FieldByName('CQSNET').AsCurrency:=_cdsSeperateTmp.FieldByName('NET').AsCurrency;
                    cdsD.FieldByName('CQSNET').AsCurrency:=(_cdsSeperateTmp.FieldByName('AMT').AsCurrency
                      +_cdsSeperateTmp.FieldByName('VAT').AsCurrency)-_cdsSeperateTmp.FieldByName('WHT').AsCurrency;

                    cdsD.FieldByName('CQSWFA').AsString:=_cdsSeperateTmp.FieldByName('IWHT').AsString;      // Include WT (Y/N)
                    cdsD.FieldByName('CQSADF').AsCurrency:=Abs(_cdsSeperateTmp.FieldByName('DIFF').AsCurrency);      // Diff
                    if _cdsSeperateTmp.FieldByName('DIFF').AsCurrency>0 then
                      cdsD.FieldByName('CQSCFA').AsCurrency:=1
                    else if _cdsSeperateTmp.FieldByName('DIFF').AsCurrency<0 then
                      cdsD.FieldByName('CQSCFA').AsCurrency:=-1;      // Diff

                    if _cdsSeperateTmp.FieldByName('PFA').AsString='SO' then
                      cdsD.FieldByName('CQSPFA').AsString:='Y'
                    else
                      cdsD.FieldByName('CQSPFA').AsString:='N';

                      // other payment
                    if _cdsSeperateTmp.FieldByName('RCT').AsString='O' then
                    begin
                      cdsD.FieldByName('CQSRS1').AsString:=_cdsSeperateTmp.FieldByName('CDE').AsString;
                      cdsD.FieldByName('CQSRS2').AsString:=_cdsSeperateTmp.FieldByName('DES').AsString;
                    end
                    else if _cdsSeperateTmp.FieldByName('RCT').AsString='N' then
                    begin
                      cdsD.FieldByName('CQSRS1').AsString:= '013';
                      cdsD.FieldByName('CQSRS2').AsString:= 'ค่าเช่า';
                    end;
                    cdsD.FieldByName('CQSETD').AsDateTime:=getServerDate(DMU002Main.SC);
                    cdsD.FieldByName('CQSETW').AsString:=DLL.WorkStation;
                    cdsD.FieldByName('CQSETU').AsString:=DLL.UserID;
                    cdsD.post;
                  end;
                  inc(_NUMROW);
                end;
                _cdsSeperateTmp.Next;
             end;
          end;

          if cdsD.RecordCount>0 then
          try
            cdsH.ApplyUpdates(0);
            cdsD.ApplyUpdates(0);
            PleaseWaitBegin('Re-Check Deposit');
            cxGrid1.Enabled := False;
            ProcessDeposit(DMU002Main.CQDM005,DMU002Main.CQDS001,DMU002Main.HP,DMU002Main.SC,DMU002Main.DLL,'LS');
            cxGrid1.Enabled := True;
            PleaseWaitEnd;
          except
            on ee:Exception do
            begin
              Application.MessageBox(pchar(ee.Message),pchar('Warning'),MB_OK or MB_ICONWARNING);
              exit;
            end;
          end;
        finally
          cdsH.Free;
          cdsD.Free;
        end;
      end;
  finally
    //DataSource1.DataSet := _cdsSeperateTmp;
    _cdsSeperateTmp.Free;
  end;
  (******************************************************************)
end;

procedure TFrmU002Main.viewClick(Sender: TObject);
begin
  inherited;
  FrmU002ViewHis := TFrmU002ViewHis.Create(Self);
  try
    FrmU002ViewHis.ShowModal;
  finally
    FrmU002ViewHis.Free;
  end;
end;

end.




