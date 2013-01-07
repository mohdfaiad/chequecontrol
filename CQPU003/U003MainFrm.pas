unit U003MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, BaseFrm, SConnect, SockCon, DB, DBClient, MConnect,
  ImgList, Provider, ADODB, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxLabel, ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel, ExtCtrls,
  Menus, cxLookAndFeelPainters, Grids, cxButtons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, DSource, cxAutoFields,
  ExtDlgs, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxGroupBox,
  cxRadioGroup, cxDBEdit, cxDBLabel, cxCheckBox, frxClass, frxDBSet,
  UIT_UTILS_LIB, Converse, frxBarcode, frxDBXComponents, frxADOComponents,
  frxIBXComponents, frxBDEComponents, frxChart, frxDCtrl, frxExportHTML,
  frxExportCSV, frxExportPDF, frxExportXLS;

type
  TFrmU003Main = class(TfrmBase)
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    RslCat: TcxRadioGroup;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    OTFRes: TOpenTextFileDialog;
    CAFRsl: TCxAutoFields;
    DCorr: TDSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1LadRunNo: TcxGridDBColumn;
    cxGrid1DBTableView1LadBssType: TcxGridDBColumn;
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
    cxGrid1DBTableView1LadReaCode: TcxGridDBColumn;
    cxGrid1DBTableView1LadReaDetail: TcxGridDBColumn;
    cxGrid1DBTableView1LadPicLocation: TcxGridDBColumn;
    cxGrid1DBTableView1LadExpDate: TcxGridDBColumn;
    cxGrid1DBTableView1LadTrnNo: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    CQMFNA: TcxDBLabel;
    CQMBSD: TcxDBTextEdit;
    CQMCTN: TcxDBTextEdit;
    CQMACC: TcxDBTextEdit;
    SDRsl: TSaveDialog;
    DNotCorr: TDSource;
    DCQDM006: TDSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure RslCatPropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnPrintClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    Corr: TClientDataSet;
    NotCorr: TClientDataSet;
  public
  end;

var
  FrmU003Main: TFrmU003Main;

implementation

{$R *.dfm}

Uses PleaseWait, UIT_GLOBAL_LIB, LoadBank, U003MainDM;


procedure TFrmU003Main.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
  Self.Close;
end;

procedure TFrmU003Main.btnExportClick(Sender: TObject);
begin
  inherited;
  ExPortCSV(DMU003Main.CQDS002,SDRsl);
end;

procedure TFrmU003Main.btnNewClick(Sender: TObject);
var Duplicate: Boolean;
begin
  inherited;
  if OTFRes.Execute then
  begin
    with DMU003Main do
    begin
      if not CQDM006.IsEmpty  then begin CQDM006.CancelUpdates; CQDS002.CancelUpdates; end;
      CQDS002.IndexFieldNames := '';
      Update;
      Duplicate := True;
      if ReadTextFile(OTFRes.FileName,RslCat.Properties.Items[RslCat.ItemIndex].Value
                     ,RslCat.Properties.Items[RslCat.ItemIndex].Caption,CQDM006
                     ,CQDS002,HP,RSL,Duplicate,DLL) then
      begin
        //if Corr = nil then
        Corr := TClientDataSet.Create(Self);// else Corr.EmptyDataSet;
        //if NotCorr = nil then
        NotCorr := TClientDataSet.Create(Self);// else NotCorr.EmptyDataSet;
        ShowResult(CQDS002,Corr,NotCorr);
        DCorr.DataSet    := Corr;
        DNotCorr.DataSet := NotCorr;
        if (Duplicate = True) AND (DCorr.DataSet.IsEmpty) then
          begin
            ShowMessage('§ÿ≥‚À≈¥ ' + RslCat.Properties.Items[RslCat.ItemIndex].Caption + ' ´È”');
            ToolbarEnable  :=  [tbClose,tbNew,tbPrint,tbExport];
          end
        else ToolbarEnable := [tbClose,tbNew,tbSave,tbPrint,tbExport];
      end;
    end;
  end;

end;

procedure TFrmU003Main.btnPrintClick(Sender: TObject);
var obj:array of TReportParam;
begin
  inherited;
  DMU003Main.CQDM006.PostOk;
  DMU003Main.CQDS002.PostOk;
  SetLength(obj,1);
    obj[0]:=TReportParam.Create;
    obj[0].AddParam('DNO',DMU003Main.CQDM006.FieldByName('CQMDNO').AsString);
    obj[0].AddParam('ACT',DMU003Main.CQDM006.FieldByName('CQMACT').AsString);
    obj[0].AddParam('TYP',RslCat.Properties.Items[RslCat.ItemIndex].Value);
  ShowReport(DMU003Main.RSL,'L02',obj);
end;

procedure TFrmU003Main.btnSaveClick(Sender: TObject);
begin
  inherited;
  DMU003Main.RSL.StartTran;
  try
    PleaseWaitBegin('Save ' + RslCat.Properties.Items[RslCat.ItemIndex].Caption);
    try
      with DMU003Main do
      begin
        UpdateCheque(Corr,RslCat.Properties.Items[RslCat.ItemIndex].Value);
        CQDM006.PostOk;
        CQDS002.PostOk;
        GenDNO('CQDM006','CQDS002',CQDM006.FieldByName('CQMDNO').AsString,getRunning(RSL,'RS','DOCLAD','LOAD_RESULT',''),RSL);
        LoadCQDM006;
      end;
      Corr.Free;
      NotCorr.Free;
      ToolbarEnable  := [tbClose,tbNew];
      PleaseWaitEnd;
      DMU003Main.RSL.Commit;
      ShowMessage('Save ' + RslCat.Properties.Items[RslCat.ItemIndex].Caption + ' Completed');
    finally
      PleaseWaitEnd;
    end;
  except
    on ee:Exception do
    begin
      DMU003Main.RSL.Rollback;
      Application.MessageBox(pchar(ee.Message),pchar('Warning'),MB_OK or MB_ICONWARNING);
      exit;
    end;
  end;
end;

procedure TFrmU003Main.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if not AViewInfo.Selected then
  begin
    if SameText(AViewInfo.GridRecord.DisplayTexts[1],'LS') then
      ACanvas.Brush.Color := clGradientInactiveCaption;
  end;
end;

procedure TFrmU003Main.cxGrid1DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmU003Main.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmU003Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmU003Main.FormCreate(Sender: TObject);
begin
  inherited;
  FormClosed := false;
  ToolbarVisible := [tbClose,tbNew,tbSave,tbPrint,tbExport];
  ToolbarEnable  := [tbClose,tbNew];
end;

procedure TFrmU003Main.FormKeyDown(Sender: TObject; var Key: Word;
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
      if (not (tbSave in Self.ToolbarVisible)) or (not (tbSave in Self.ToolbarEnable)) then
      if (tbNew in Self.ToolbarVisible) or (tbNew in Self.ToolbarEnable) then
        Exit;

      btnNew.Click;
    end;

    VK_F4:begin
      if (not (tbEdit in Self.ToolbarVisible)) or (not (tbEdit in Self.ToolbarEnable)) then
        Exit;

      MessageDlg('F4 : Edit',mtInformation,[mbOK],0);
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

end;

procedure TFrmU003Main.FormShow(Sender: TObject);
begin
  inherited;
  DMU003Main.LoadCQDM006;
  lbMainCurrentDate.Caption:= 'Date: '+ FormatDateTime('dd/MM/yyyy',getServerDateTime(DMU003Main.RSL));
end;

procedure TFrmU003Main.RslCatPropertiesChange(Sender: TObject);
begin
  inherited;
  with DMU003Main do
  begin
    if not CQDM006.IsEmpty then
    begin
      Corr.Free;
      NotCorr.Free;
      CQDM006.CancelUpdates;
      CQDS002.CancelUpdates;
    end;
  end;
end;

end.
