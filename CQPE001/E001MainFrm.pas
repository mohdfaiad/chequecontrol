unit E001MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, Menus, cxLookAndFeelPainters, frxBarcode, frxDBXComponents,
  frxADOComponents, frxIBXComponents, frxClass, frxBDEComponents, frxChart,
  frxDCtrl, frxExportHTML, frxExportCSV, frxExportPDF, frxExportXLS, DBClient,
  frxDBSet, SConnect, SockCon, DB, MConnect, ImgList, Provider, ADODB,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel, StdCtrls, cxButtons,
  ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel, ExtCtrls,UIT_GLOBAL_LIB,
  UIT_UTILS_LIB,E001MainDM, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, DSource, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxDBEdit, RemDataSet, LoadBank;

type
  TFrmE001Main = class(TfrmBase)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DBNK: TDSource;
    cxGrid1DBTableView1CQMBNK: TcxGridDBColumn;
    cxGrid1DBTableView1CQMEGN: TcxGridDBColumn;
    cxGrid1DBTableView1CQMBRC: TcxGridDBColumn;
    cxGrid1DBTableView1CQMBRH: TcxGridDBColumn;
    cxGrid1DBTableView1CQMLOC: TcxGridDBColumn;
    cxGrid1DBTableView1CQMETD: TcxGridDBColumn;
    cxGrid1DBTableView1CQMETW: TcxGridDBColumn;
    cxGrid1DBTableView1CQMETU: TcxGridDBColumn;
    cxGrid1DBTableView1CQMMTD: TcxGridDBColumn;
    cxGrid1DBTableView1CQMMTU: TcxGridDBColumn;
    cxGrid1DBTableView1CQMMTW: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    CQMBNK: TcxDBTextEdit;
    CQMBRC: TcxDBTextEdit;
    CQMEGN: TcxDBTextEdit;
    CQMBRH: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    CQMLOC: TcxDBTextEdit;
    Import: TcxButton;
    SaveDialog1: TSaveDialog;
    OPImport: TOpenDialog;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure ImportClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    procedure ParseDelimited(const sl: TStrings; const value,
      delimiter: string);
  public
    { Public declarations }
  end;

var
  FrmE001Main: TFrmE001Main;

implementation

{$R *.dfm}

procedure TFrmE001Main.btnCancelClick(Sender: TObject);
begin
  inherited;
  DBNK.DataSet.Cancel;
end;

procedure TFrmE001Main.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
  Self.Close;
end;

procedure TFrmE001Main.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if DBNK.DataSet.RecordCount > 0 then
    if Application.MessageBox( 'Do You Want to Delete ' , 'Delete', MB_OKCANCEL+ MB_ICONQUESTION) = IDOK then
      TRemDataSet(DBNK.DataSet).DeleteOk;
end;

procedure TFrmE001Main.btnEditClick(Sender: TObject);
begin
  inherited;
  DBNK.DataSet.Edit;
  CQMBNK.SetFocus;
end;

procedure TFrmE001Main.btnExportClick(Sender: TObject);
begin
  inherited;
  ExPortCSV(DBNK.DataSet,SaveDialog1);
end;

procedure TFrmE001Main.btnNewClick(Sender: TObject);
begin
  inherited;
  DBNK.DataSet.Append;
  CQMBNK.SetFocus;
end;

procedure TFrmE001Main.btnSaveClick(Sender: TObject);
begin
  inherited;
  TRemDataSet(DBNK.DataSet).PostOk;
end;

procedure TFrmE001Main.cxGrid1DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TFrmE001Main.ImportClick(Sender: TObject);
var x : Integer ;
    mmoImBank1,mmoImBank2 :TMemo;
begin
  inherited;
  if OPImport.Execute  then
    if  Trim(OPImport.FileName) <> '' then
      begin
        begin
          mmoImBank1.Lines.LoadFromFile(OPImport.FileName);
        end;
      for x := 0 to mmoImBank1.Lines.Count - 1 do
        begin

             ParseDelimited(mmoImBank2.Lines ,mmoImBank1.Lines [x],',')   ;
             with DME001Main.BNK do
              begin
                Append;
                FieldByName('CQMBNK').Value := mmoImBank2.Lines [0] ;
                FieldByName('CQMEGN').Value := mmoImBank2.Lines [1] ;
                FieldByName('CQMBRC').Value := mmoImBank2.Lines [2] ;
                FieldByName('CQMBRH').Value := mmoImBank2.Lines [3] ;
                FieldByName('CQMLOC').Value := mmoImBank2.Lines [4] ;
                PostOk;
              end;
             Application.ProcessMessages ;
        end;
        Application.MessageBox('Import Complete', 'Complete', MB_OK);
      end;
end;

procedure TFrmE001Main.ParseDelimited(const sl: TStrings; const value, delimiter: string);
 var
    dx : integer;
    ns : string;
    txt : string;
    delta : integer;
 begin
    delta := Length(delimiter) ;
    txt := value + delimiter;
    sl.BeginUpdate;
    sl.Clear;
    try
      while Length(txt) > 0 do
      begin
        dx := Pos(delimiter, txt) ;
        ns := Copy(txt,0,dx-1) ;
        sl.Add(ns) ;
        txt := Copy(txt,dx+delta,MaxInt) ;
      end;
    finally
      sl.EndUpdate;
    end;
 end;

procedure TFrmE001Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmE001Main.FormCreate(Sender: TObject);
begin
  inherited;
  FormClosed := false;
end;

procedure TFrmE001Main.FormKeyDown(Sender: TObject; var Key: Word;
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
      btnCancel.Click;
    end;

    VK_F7:begin
      if (not (tbDelete in Self.ToolbarVisible)) or (not (tbDelete in Self.ToolbarEnable)) then
        Exit;
      btnDelete.Click;
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

procedure TFrmE001Main.FormShow(Sender: TObject);
begin
  inherited;
  lbMainCurrentDate.Caption:= 'Date: '+ FormatDateTime('dd/MM/yyyy',getServerDateTime(DME001Main.SC));
  DME001Main.LoadBank;
end;

end.
