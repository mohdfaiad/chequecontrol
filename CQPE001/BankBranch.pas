unit BankBranch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, StdCtrls, cxButtons,  ExtCtrls, cxLookAndFeelPainters,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, ADODB, DB, Provider,
  DBClient, JvComponentBase, JvgExportComponents, JvExStdCtrls, JvEdit,
  JvDBSearchEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxProgressBar, ComCtrls,BaseFrm, SConnect, SockCon,
  MConnect, ImgList, cxLabel, ToolWin, JvExExtCtrls, JvExtComponent,
  JvPanel, cxNavigator, cxDBNavigator, cxLookAndFeels, frxClass, frxDBSet,
  frxBarcode, frxDBXComponents, frxADOComponents, frxIBXComponents,
  frxBDEComponents, frxChart, frxDCtrl, frxExportHTML, frxExportCSV,
  frxExportPDF, frxExportXLS;

type
  TFormBank = class(TfrmBase)
    EpExcel: TJvgExportExcel;
    dsDsBank: TDataSource;
    Ds1: TDataSource;
    OPImport: TOpenDialog;
    SFD: TSaveDialog;
    pm1: TPopupMenu;
    MnuPop1: TMenuItem;
    ExcelExport1: TMenuItem;
    pnlPane: TPanel;
    mmoImBank1: TMemo;
    mmoImBank2: TMemo;
    Panel1: TPanel;
    edtSearchBank: TJvDBSearchEdit;
    BtImport: TcxButton;
    CxGBank: TcxGrid;
    CxGBankDBTableView1: TcxGridDBTableView;
    CxGBankLevel1: TcxGridLevel;
    CxGBankDBTableView1Column1: TcxGridDBColumn;
    CxGBankDBTableView1Column2: TcxGridDBColumn;
    CxGBankDBTableView1Column3: TcxGridDBColumn;
    CxGBankDBTableView1Column4: TcxGridDBColumn;
    CxGBankDBTableView1Column5: TcxGridDBColumn;
    NaviUserProFile: TcxDBNavigator;

//    procedure BtDelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtImportClick(Sender: TObject);
    procedure MnuPop1Click(Sender: TObject);
    procedure ExcelExport1Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
    procedure ImportBank ;
    procedure ExportCsv(Rem : TDataSet) ;
    procedure ParseDelimited(const sl : TStrings; const value : string; const delimiter : string) ;

  public
    { Public declarations }
  end;

var
  FormBank: TFormBank;


implementation

uses EditBank, BankDm, BankImport , UIT_GLOBAL_LIB;

{$R *.dfm}

procedure TFormBank.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
//  Self.Close;
  FreeAndNil(FormBank);
end;

procedure TFormBank.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox( 'Do You Want to Delete ' , 'Delete', MB_OKCANCEL+ MB_ICONQUESTION) = IDOK then
    begin
      try
        with DmBank do
          begin
            CdsBank.Delete ;
            CdsBank.ApplyUpdates(0);
          end;
      except end;
    end;
end;

procedure TFormBank.btnEditClick(Sender: TObject);
begin
  Chp := 'EditBank' ;
  FormBankEdit:=TFormBankEdit.Create(nil);
  FormBankEdit.ShowModal;
  FormBankEdit.Free ;
end;

procedure TFormBank.btnExportClick(Sender: TObject);
begin
  inherited;
  ExportCsv(DmBank .CdsBank) ;
end;

procedure TFormBank.btnNewClick(Sender: TObject);
begin
  inherited;
  Chp := 'AddBank' ;
  FormBankEdit:=TFormBankEdit.Create(nil);
  FormBankEdit.ShowModal;
  FormBankEdit.Free ;
end;

procedure TFormBank.btnSearchClick(Sender: TObject);
begin
  inherited;
  edtSearchBank.SetFocus ;  
end;

procedure TFormBank.BtImportClick(Sender: TObject);
begin
    ImportBank ;
end;

procedure TFormBank.FormShow(Sender: TObject);
begin
  DmBank.LoadBank ('') ;
  Self.ToolbarVisible :=[tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];
  Self.ToolbarEnable :=[tbClose,tbNew,tbEdit,tbDelete,tbSearch,tbPrint,tbExport];
end;

procedure TFormBank.ImportBank;
var x : Integer ;
begin
  if OPImport.Execute  then
    if  Trim(OPImport.FileName) <> '' then
      begin
        begin
          mmoImBank1.Lines.LoadFromFile(OPImport.FileName);
        end;
      for x := 0 to mmoImBank1.Lines.Count - 1 do
        begin

             ParseDelimited(mmoImBank2.Lines ,mmoImBank1.Lines [x],',')   ;
             with DmBank do
              begin
                CdsBank.Edit ;
                CdsBank ['CQMACT'] := 'A' ;
                CdsBank ['CQMSTS'] := '' ;
                CdsBank ['CQMBRN'] := '' ;
                CdsBank ['CQMPDM'] := '' ;
                CdsBank ['CQMPDT'] := '' ;

                CdsBank ['CQMBNK'] := mmoImBank2.Lines [0] ;
                CdsBank ['CQMEGN'] := mmoImBank2.Lines [1] ;
                CdsBank ['CQMBRC'] := mmoImBank2.Lines [2] ;
                CdsBank ['CQMBRH'] := mmoImBank2.Lines [3] ;
                CdsBank ['CQMLOC'] := mmoImBank2.Lines [4] ;

                CdsBank ['CQMETD'] := Now  ;
                CdsBank ['CQMETW'] := '' ;
                CdsBank ['CQMETU'] := '' ;
                
                CdsBank.ApplyUpdates(0) ;
                CdsBank.Append ;
              end;
             Application.ProcessMessages ;
        end;
        Application.MessageBox('Import Complete', 'Complete', MB_OK);
      end;
end;

procedure TFormBank.MnuPop1Click(Sender: TObject);
begin
  ExportCsv(DmBank.CdsBank) ;
end;

procedure TFormBank.ExcelExport1Click(Sender: TObject);
begin
  DmBank.Exp ;
  EpExcel.Execute ;
end;

procedure TFormBank.ExportCsv(Rem : TDataSet) ;
var
  Stream: TFileStream;
  i: Integer;
  OutLine: string;
  sTemp: string;
begin
  Rem.First ;
  if SFD.Execute() then
    begin
      if Trim(SFD.FileName) <> '' then
        begin
          Stream := TFileStream.Create(SFD.FileName + '.csv', fmCreate);
            try
              while not Rem.Eof do
                begin
                  OutLine := '';
                  for i := 0 to Rem.FieldCount - 1 do
                    begin
                      sTemp := Rem.Fields[i].AsString;
                      OutLine := OutLine + sTemp + ',';
                    end;
                  SetLength(OutLine, Length(OutLine) - 1);
                  Stream.Write(OutLine[1], Length(OutLine) * SizeOf(Char));
                  Stream.Write(sLineBreak, Length(sLineBreak));
                  DmBank.CdsBank.Next;
                end;
            finally
              Stream.Free;
            end;
        end;
    end;
end;

procedure TFormBank.ParseDelimited(const sl: TStrings; const value, delimiter: string);
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

procedure TFormBank.ToolButton1Click(Sender: TObject);
begin
  inherited;
//  ExportCsv(DmBank .CdsBank) ;
end;

end.
