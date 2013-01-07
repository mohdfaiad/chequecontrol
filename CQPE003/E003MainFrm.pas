unit E003MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, Grids,
  DBGrids, JvExStdCtrls, JvEdit, JvDBSearchEdit, DB, JvComponentBase,
  JvgExportComponents,BaseFrm,UIT_GLOBAL_LIB, ImgList, Provider, ADODB,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel, ComCtrls, ToolWin,
  JvExExtCtrls, JvExtComponent, JvPanel, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DSource, SConnect, SockCon, DBClient, MConnect, cxLookAndFeels,
  frxClass, frxDBSet, frxBarcode, frxDBXComponents, frxADOComponents,
  frxIBXComponents, frxBDEComponents, frxChart, frxDCtrl, frxExportHTML,
  frxExportCSV, frxExportPDF, frxExportXLS;

type
  TE003FrmMain = class(TfrmBase)
    Export: TJvgExportExcel;
    pa_Explanation: TPanel;
    Search1: TJvDBSearchEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Ex_Number: TcxGridDBColumn;
    cxGrid1DBTableView1Ex_Thai: TcxGridDBColumn;
    cxGrid1DBTableView1Ex_English: TcxGridDBColumn;
    Pop: TPopupMenu;
    CsvExport: TMenuItem;
    ExcelExport1: TMenuItem;
    Ofd: TOpenDialog;
    Sfd: TSaveDialog;
    Label1: TLabel;
    dsReason: TDataSource;

    procedure Export1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
   procedure ex_export(dso_explana:TDataSet);
  public
   procedure btnopen(Tf:Boolean);
  end;

var
  E003FrmMain: TE003FrmMain;

implementation

uses E003MainDm, E003ExtakeFrm;

{$R *.dfm}





procedure TE003FrmMain.ex_export(dso_explana: TDataSet);

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
          while not dso_explana .Eof do
                begin
                  OutLine := '';
                    for i := 0 to dso_explana.FieldCount - 1 do
                  begin
                      sTemp := dso_explana.Fields[i].AsString;
                      OutLine := OutLine + sTemp + ',';
                  end;
                SetLength(OutLine, Length(OutLine) - 1);
                Stream.Write(OutLine[1], Length(OutLine) * SizeOf(Char));
                Stream.Write(sLineBreak, Length(sLineBreak));
                dso_explana.Next;
                end;
        finally
            Stream.Free;
        end;
     end;
   end;
    end;

procedure TE003FrmMain.btnCloseClick(Sender: TObject);
begin
  inherited;
Self.Close;
end;
procedure TE003FrmMain.btnNewClick(Sender: TObject);
begin
  inherited;
  btnopen(False);
  E003DmMain.dso_explana.Append;
  E003frmExtake:=TE003frmExtake.Create(nil);
  E003frmExtake.Caption := 'Add';
  Self.IsActive:=False;
  E003frmExtake.ShowModal;
  Self.IsActive:=True;
  E003frmExtake.Free;
end;
procedure TE003FrmMain.btnEditClick(Sender: TObject);
begin
  inherited;
  btnopen(False);
  E003DmMain.dso_explana.Edit;
  E003frmExtake:=TE003frmExtake.Create(nil);
  E003frmExtake.Caption:='Edit';
  Self.IsActive:=False;
  E003frmExtake.ShowModal;
  Self.IsActive:=True;
  E003frmExtake.Free;

end;
procedure TE003FrmMain.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Do you want delete?', 'Delete', MB_YESNO + 
    MB_ICONWARNING) = IDYES then
  begin
    E003DmMain.dso_explana.Delete;
    E003DmMain.dso_explana.ApplyUpdates(0);
  end;

end;
procedure TE003FrmMain.btnExportClick(Sender: TObject);
begin
  E003DmMain.dso_explana.First;
 ex_export(E003DmMain.dso_explana);

end;

procedure TE003FrmMain.btnopen(Tf: Boolean);
begin
{
btnNew.Enabled:=Tf;
btnEdit.Enabled:=Tf;
btnDelete.Enabled:=Tf;
btnPrint.Enabled:=Tf;
btnExport.Enabled:=Tf;
btnClose.Enabled:=Tf;
 }
end;

procedure TE003FrmMain.Export1Click(Sender: TObject);
begin
ex_export(E003DmMain.dso_explana);
end;

procedure TE003FrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  Self.ToolbarVisible:=[tbClose,tbNew,tbEdit,tbDelete,tbPrint,tbExport];
  Self.ToolbarEnable:=[tbClose,tbNew,tbEdit,tbDelete,tbPrint,tbExport];
end;

procedure TE003FrmMain.FormShow(Sender: TObject);
begin
  inherited;
  E003DmMain.LoadEX;
end;

end.
