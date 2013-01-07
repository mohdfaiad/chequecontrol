unit E010MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, SConnect, SockCon, DB, DBClient, MConnect, ImgList,
  Provider, ADODB, cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel,
  ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel, ExtCtrls,
  cxGraphics, cxNavigator, cxDBNavigator, StdCtrls, JvExStdCtrls, JvEdit,
  JvDBSearchEdit, cxMaskEdit, cxDropDownEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  cxCheckBox, cxDBEdit, DSource, RemCustomDS, RemDataSet, Menus,
  cxLookAndFeelPainters, cxButtons, Grids, DBGrids, ClientDat, cxCheckGroup,
  cxLookAndFeels, frxClass, frxDBSet, frxBarcode, frxDBXComponents,
  frxADOComponents, frxIBXComponents, frxBDEComponents, frxChart, frxDCtrl,
  frxExportHTML, frxExportCSV, frxExportPDF, frxExportXLS;

type
  TE010FrmMain = class(TfrmBase)
    Panel1: TPanel;
    NaviUserProFile: TcxDBNavigator;
    ConnectionBroker1: TConnectionBroker;
    Txtsearch: TcxTextEdit;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    cxGrid2DBTableView1Column7: TcxGridDBColumn;
    cxGrid2DBTableView1Column8: TcxGridDBColumn;
    cxGrid2DBTableView1Column9: TcxGridDBColumn;
    cxGrid2DBTableView1Column10: TcxGridDBColumn;
    cxGrid2DBTableView1Column11: TcxGridDBColumn;
    cxGrid2DBTableView1Column12: TcxGridDBColumn;
    cxGrid2DBTableView1Column13: TcxGridDBColumn;
    cxGrid2DBTableView1Column14: TcxGridDBColumn;
    cxGrid2DBTableView1Column15: TcxGridDBColumn;
    cxGrid2DBTableView1Column16: TcxGridDBColumn;
    SFD: TSaveDialog;
    UserAllMenu: TRemDataSet;
    UserPermission: TRemDataSet;
    BtnNewUser: TcxButton;
    DSPermission: TDataSource;
    dsAllMenu: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure TxtsearchPropertiesChange(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure BtnNewUserClick(Sender: TObject);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure UserPermissionReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
    procedure LoadPermission(Str:string) ;
    procedure ExportCsv(Rem : TDataSet) ;
    function LockChk (a : Boolean):Boolean  ;

  public
    { Public declarations }
    procedure LoadAllMenu ;
    procedure CreateSystemFrm ;
    procedure CreateUserFrm ;
    function GetComputerNetName: string;
  end;

var
  E010FrmMain: TE010FrmMain;
  ChkType:string ;
  NewUserMenu : string ;

implementation

uses E010SystemFrm, UIT_GLOBAL_LIB, E010UserFrm;

{$R *.dfm}

{ TFrmUserPermission }




procedure TE010FrmMain.btnCancelClick(Sender: TObject);
begin
  inherited;
  Self.ToolbarEnable :=[tbClose,tbNew,tbEdit,tbDelete,tbSearch,tbPrint,tbExport];
  UserPermission.Cancel ;
  LockChk(True) ;
end;

procedure TE010FrmMain.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Do You Want Delete ','Delete', MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
    begin
      UserPermission.Delete ;
      UserPermission.ApplyUpdates(-1) ;
    end;  
end;

procedure TE010FrmMain.btnEditClick(Sender: TObject);
begin
  inherited;
  Self.ToolbarEnable :=[tbSave,tbCancel];
  UserPermission.Edit ;
  LockChk(False) ;
end;

procedure TE010FrmMain.btnExportClick(Sender: TObject);
begin
  inherited;
  ExportCsv(UserPermission);
end;

procedure TE010FrmMain.btnNewClick(Sender: TObject);
begin
  inherited;
  ChkType:= 'addmenu'  ;
  if Txtsearch.Text <> '' then
    begin
      Self.ToolbarEnable :=[tbSave,tbCancel];
      CreateSystemFrm ;
    end
  else
    begin
      Application.MessageBox('Please enter your UserID.', 'Warning', MB_OK + MB_ICONWARNING);
      Txtsearch.SetFocus ;
    end;  
end;

procedure TE010FrmMain.BtnNewUserClick(Sender: TObject);
begin
  inherited;
  ChkType := 'newuser' ;
  Self.CreateUserFrm ;
//  Self.CreateSystemFrm ;
end;

procedure TE010FrmMain.btnSaveClick(Sender: TObject) ;
begin
  inherited;
  UserPermission['ModifyDate']:= Now ;
  UserPermission['ModifyBy']:= '' ;
  UserPermission['ModifyWorkStation']:= Self.GetComputerNetName ;
  UserPermission.ApplyUpdates(0) ;
  Self.ToolbarEnable :=[tbClose,tbNew,tbEdit,tbDelete,tbSearch,tbPrint,tbExport];
  LockChk(True) ;
end;

procedure TE010FrmMain.CreateSystemFrm;
begin
  E010FrmSystem := TE010FrmSystem.Create(nil);
  E010FrmSystem .ShowModal ;
  E010FrmSystem .Free ;
end;

procedure TE010FrmMain.CreateUserFrm;
begin
  Self.ToolbarEnable :=[tbSave,tbCancel];
  E010FrmUser := TE010FrmUser.Create(nil);
  E010FrmUser .ShowModal ;
  E010FrmUser .Free ;
end;

procedure TE010FrmMain.cxGrid2DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  try
    Txtsearch.Text := UserPermission['userid'];
    Txtsearch.SetFocus ;
  except end;
end;

procedure TE010FrmMain.ExportCsv(Rem: TDataSet);
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
                  Rem.Next;
                end;
            finally
              Stream.Free;
            end;
        end;
    end;
end;

procedure TE010FrmMain.FormShow(Sender: TObject);
begin
  inherited;
  Txtsearch.SetFocus ;
  Txtsearch.Text := ' ';
  Txtsearch.Text := '';
  LoadPermission('') ;
  Self.ToolbarVisible :=[tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];
  Self.ToolbarEnable :=[tbNew,tbEdit,tbDelete,tbSearch,tbPrint,tbExport];
  LockChk(True) ;
end;

function TE010FrmMain.GetComputerNetName: string;
var buffer: array[0..255] of char;
size: dword;
begin
  size := 256;
    if GetComputerName(buffer, size) then
      Result := buffer
    else
  Result := ''
end;

procedure TE010FrmMain.LoadPermission(Str:string);
begin
  UserPermission.Command := 'select Branch,ProgramSystem,ProgramType,userid,MenuName,'+
                            'FlagMenu ,FlagDelete ,FlagInquiry ,FlagInsert ,FlagModify ,FlagReport'+
                            ',ReserveStr1,RecordStatus ,CreateDate ,CreateBy ,CreateWorkStation ,ModifyDate ,ModifyBy ,'+
                            'ModifyWorkStation from usermenu where userid like '+
                             QuotedStr( '%' + Str + '%')+
                            ' and ProgramSystem ='+QuotedStr('9')+' order by userid' ;
end;

function TE010FrmMain.LockChk(a: Boolean): Boolean;
begin
  cxGrid2DBTableView1Column1.Properties.ReadOnly:= a ;
  cxGrid2DBTableView1Column5.Properties.ReadOnly:= a ;
  cxGrid2DBTableView1Column6.Properties.ReadOnly:= a ;
  cxGrid2DBTableView1Column7.Properties.ReadOnly:= a ;
  cxGrid2DBTableView1Column8.Properties.ReadOnly:= a ;
  cxGrid2DBTableView1Column9.Properties.ReadOnly:= a ;
end;

procedure TE010FrmMain.LoadAllMenu;
begin
  UserAllMenu.Command := 'select * from [menu] where programsystem=' + QuotedStr('9');

end;

procedure TE010FrmMain.TxtsearchPropertiesChange(Sender: TObject);
begin
  inherited;
  LoadPermission(Txtsearch.Text) ;
//  LoadAllMenu ;
  cxGrid2DBTableView1.DataController .DataSource := DSPermission  ;
end;

procedure TE010FrmMain.UserPermissionReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

end.
