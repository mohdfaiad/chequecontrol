unit E002MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, Grids, DBGrids,
  ExtCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, DB, DSource, JvComponentBase,
  JvgExportComponents,BaseFrm,UIT_GLOBAL_LIB, ImgList, Provider, ADODB,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel, ComCtrls, ToolWin,
  JvExExtCtrls, JvExtComponent, JvPanel, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, SConnect, SockCon, DBClient, MConnect, frxClass, frxDBSet,
  frxBarcode, frxDBXComponents, frxADOComponents, frxIBXComponents,
  frxBDEComponents, frxChart, frxDCtrl, frxExportHTML, frxExportCSV,
  frxExportPDF, frxExportXLS;

type
  TE002FrmMain = class(TfrmBase)
    Export1: TJvgExportExcel;
    pa_Cheque: TPanel;
    Search1: TJvDBSearchEdit;
    Ofd: TOpenDialog;
    Sfd: TSaveDialog;
    Popup: TPopupMenu;
    CsvExport: TMenuItem;
    ExcelExprot1: TMenuItem;
    dsStatus: TDataSource;
    cxgrd1: TcxGrid;
    cxgrd1DBTableView1: TcxGridDBTableView;
    cxgrd1DBTableView1Column1: TcxGridDBColumn;
    cxgrd1DBTableView1Column2: TcxGridDBColumn;
    cxgrd1DBTableView1Column3: TcxGridDBColumn;
    cxgrd1Level1: TcxGridLevel;
   
    procedure EditClick(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxgrd1DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);

  private
    procedure ch_export(ds1:TDataSet);

  public
    { Public declarations }
      procedure BTNOPEN(TF:Boolean) ;

  end;

var
  E002FrmMain: TE002FrmMain;


implementation

uses E002MainDm,E002TakeFrm;

{$R *.dfm}
procedure TE002FrmMain.btnNewClick(Sender: TObject);
begin
  inherited;
BTNOPEN(False);
E002DmMain.dsatus.Append;
E002FrmTake := TE002FrmTake.Create(nil);
E002FrmTake.Caption := 'Add';
Self.IsActive:=False;
E002FrmTake.ShowModal;
Self.IsActive:=True;
E002FrmTake.Free ;

end;

procedure TE002FrmMain.btnEditClick(Sender: TObject);
begin
  inherited;
  
BTNOPEN(False);
E002DmMain.dsatus.Edit;
E002FrmTake := TE002FrmTake.Create(nil);
E002FrmTake.Caption:='Edit';
Self.IsActive:=False;
E002FrmTake.ShowModal;
Self.IsActive:=True;
E002FrmTake.Free ;
end;

procedure TE002FrmMain.btnCloseClick(Sender: TObject);
begin
  inherited;
Self.Close;
end;
procedure TE002FrmMain.btnExportClick(Sender: TObject);

begin
   ch_export(E002DmMain.dsatus);

end;

procedure TE002FrmMain.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Do you want delete?', 'Delete', MB_YESNO +
         MB_ICONWARNING) = IDYES then
      begin
      E002DmMain.dsatus.Delete;
      E002DmMain.dsatus.ApplyUpdates(0);
      end;
end;

procedure TE002FrmMain.BTNOPEN(TF: Boolean);
begin
 {
    btnNew.Enabled:=tf;
    btnEdit.Enabled:=tf;
    btnDelete.Enabled:=tf;
    btnPrint.Enabled:=tf;
    btnExport.Enabled:=tf;
    btnClose.Enabled:=tf;
 }
    
end;

procedure TE002FrmMain.ch_export(ds1: TDataSet);
var
  Stream: TFileStream;
  i: Integer;
  OutLine: string;
  sTemp: string;
begin

  if sfd .Execute() then
      begin
          if Trim(SFD .FileName) <> '' then

            begin
              Stream := TFileStream.Create(SFD .FileName + '.csv', fmCreate);
              try
               while not ds1 .Eof do
                  begin
                      OutLine := '';
                        for i := 0 to ds1.FieldCount - 1 do
                      begin
                          sTemp := ds1.Fields[i].AsString;
                          OutLine := OutLine + sTemp + ',';
                      end;
                    SetLength(OutLine, Length(OutLine) - 1);
                    Stream.Write(OutLine[1], Length(OutLine) * SizeOf(Char));
                    Stream.Write(sLineBreak, Length(sLineBreak));
                    ds1.Next;
                end;
                    finally
                    Stream.Free;
               end;
           end;
     end;

   end;


procedure TE002FrmMain.cxgrd1DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TE002FrmMain.DeleteClick(Sender: TObject);
begin
E002DmMain.dsatus.Delete;
E002DmMain.dsatus.ApplyUpdates(0);
end;

procedure TE002FrmMain.EditClick(Sender: TObject);
begin
E002DmMain.dsatus.Edit;
E002FrmMain := TE002FrmMain.Create(nil);
E002FrmMain.Caption:='Edit';
E002FrmMain.ShowModal;
E002FrmMain.Free ;
end;
procedure TE002FrmMain.FormShow(Sender: TObject);
begin
  inherited;
  E002DmMain.LoadCq;

end;

end.
