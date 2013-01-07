unit UserProfileFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, SConnect, SockCon, DB, DBClient, MConnect, ImgList,
  Provider, ADODB, cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel,
  ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel, ExtCtrls, DSource,
  RemCustomDS, RemDataSet, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxNavigator, cxDBNavigator, StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit,
  cxMaskEdit, cxDropDownEdit, cxGroupBox, cxDBEdit, Grids, DBGrids, Menus,
  cxLookAndFeelPainters, cxButtons, frxClass, frxDBSet;

type
  TFrmUserProfile = class(TfrmBase)
    UserProfile: TRemDataSet;
    Ds1: TDSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    NaviUserProFile: TcxDBNavigator;
    edtSearchUser: TJvDBSearchEdit;
    cxComboBox1: TcxComboBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel35: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    TxtUser: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    cxLabel9: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
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
    cxGridLevel1: TcxGridLevel;
    EditUser: TRemDataSet;
    DsEditUser: TDSource;
    SFD: TSaveDialog;
    cxButton1: TcxButton;
    UserSystem: TRemDataSet;
    DsSystem: TDSource;
    ConnectionBroker1: TConnectionBroker;
    procedure FormShow(Sender: TObject);
    procedure cxComboBox1Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure UserProfileAfterScroll(DataSet: TDataSet);
    procedure btnCancelClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure UserSystemNewRecord(DataSet: TDataSet);
    procedure btnSearchClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }

    procedure LoadEditUser(Str:string) ;       //Add or Edit User to Table [User]
    procedure ExportCsv(Rem : TDataSet) ;
    procedure LoadSystemUser(Str:string) ;              // Add User to Table UserSystem
  public
    { Public declarations }
    procedure LoadUserProFile ;                 // Load User Show
    function GetComputerNetName: string;
    function LockTxt (a : Boolean):Boolean  ;
//    procedure LoadMoUser ;
  end;

var
  FrmUserProfile: TFrmUserProfile;
  NewUser : string ;
implementation

uses UserFrm, UIT_GLOBAL_LIB ;

{$R *.dfm}

procedure TFrmUserProfile.btnCancelClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Cancel');
  EditUser.Cancel ;
  LoadEditUser('where userid ='+ QuotedStr( UserProfile['userid'])) ;
  Self.ToolbarEnable :=[tbClose,tbNew,tbEdit,tbDelete,tbSearch,tbPrint,tbExport];
  Self.LockTxt(False) ;
end;

procedure TFrmUserProfile.btnExportClick(Sender: TObject);
begin
  inherited;
  ExportCsv(UserProfile) ;
end;

procedure TFrmUserProfile.btnNewClick(Sender: TObject);
begin
  inherited;
  ShowMessage('New');
  Self.LoadEditUser('');
  EditUser.Append ;
  UserSystem.Append ;
  Self.ToolbarEnable :=[tbSave,tbCancel];
  Self.LockTxt(True) ;
end;

procedure TFrmUserProfile.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Do You Want Delete From ChequeControl','Delete From ChequeControl', MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
    begin
      UserSystem.Delete ;
      ShowMessage('delete');
      UserSystem.ApplyUpdates(0) ;
      Self.LoadUserProFile ;
      Self.LoadSystemUser('where systemcode='+QuotedStr ('9')) ;
    end;
end;

procedure TFrmUserProfile.btnEditClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Edit');
  EditUser.Edit ;
  Self.ToolbarEnable :=[tbSave,tbCancel];
  Self.LockTxt(True) ;
end;

procedure TFrmUserProfile.btnSaveClick(Sender: TObject);
begin
  inherited;
  ShowMessage('save');
  if EditUser.State = dsInsert then
    begin
      ShowMessage('Add user');
      EditUser['CreateDate']:= Now ;
      EditUser['CreateWorkStation']:= GetComputerNetName ;

      UserSystem ['Userid']:= TxtUser.Text ;

    end
  else if EditUser.State = dsEdit then
    begin
      ShowMessage('Edit user');
//      EditUser['ModifyBy']:=
      EditUser['ModifyDate']:= Now ;
      EditUser['ModifyWorkStation']:= GetComputerNetName
    end;

  UserSystem.ApplyUpdates (0) ;
  EditUser.ApplyUpdates (0) ;
  LoadUserProFile ;
  Self.ToolbarEnable :=[tbClose,tbNew,tbEdit,tbDelete,tbSearch,tbPrint,tbExport];
  Self.LockTxt(False) ;
end;

procedure TFrmUserProfile.btnSearchClick(Sender: TObject);
begin
  inherited;
  edtSearchUser.SetFocus ;
end;

procedure TFrmUserProfile.cxButton1Click(Sender: TObject);
begin
  inherited;
  FrmUser := TFrmUser.Create(nil);
  FrmUser .ShowModal ;
  FrmUser .Free ;
  Self.LoadUserProFile ;
end;

procedure TFrmUserProfile.cxComboBox1Click(Sender: TObject);
var Dt : string ;
begin
  inherited;
  if cxComboBox1 .ItemIndex = 0 then
    begin Dt := 'Branch' end
  else if cxComboBox1 .ItemIndex = 1 then
    begin Dt := 'userid' end
  else if cxComboBox1 .ItemIndex = 2 then
    begin Dt := 'username' end ;
  edtSearchUser .DataField := Dt ;
end;

procedure TFrmUserProfile.ExportCsv(Rem: TDataSet);
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

procedure TFrmUserProfile.FormShow(Sender: TObject);
begin
  inherited;
  Self.LoadUserProFile ;
  Self.LoadSystemUser('where systemcode='+QuotedStr ('9')) ;
  cxComboBox1 .Properties .Items .Add('Branch');
  cxComboBox1 .Properties .Items .Add('User Id');
  cxComboBox1 .Properties .Items .Add('User Name');
  cxComboBox1 .ItemIndex := 1;
  Self.ToolbarVisible :=[tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];
  Self.ToolbarEnable :=[tbClose,tbNew,tbEdit,tbDelete,tbSearch,tbPrint,tbExport];
  Self.LockTxt(False) ;
end;

function TFrmUserProfile.GetComputerNetName: string;
var buffer: array[0..255] of char;
size: dword;
begin
  size := 256;
    if GetComputerName(buffer, size) then
      Result := buffer
    else
  Result := ''
end;

procedure TFrmUserProfile.LoadEditUser(Str:string);
begin
  EditUser.Command := 'select * from [user] '+ str ;//where userid = '+QuotedStr (Str) ;
end;

procedure TFrmUserProfile.LoadSystemUser(Str:string);
begin
  UserSystem .Command := 'select * from usersystem ' + Str ; //where systemcode='+QuotedStr ('9') ;
end;

procedure TFrmUserProfile.LoadUserProFile;
begin
  UserProfile.Command := 'select usersystem.UserID,usersystem.systemcode,[user].Branch,'+
                         '[user].UserID,[user].UserName,[user].UserPassword,[user].DepartmentCode,' +
                         '[user].SectionCode,[user].LevelCode,[user].UserLock,[user].ChangePasswordDate,'+
                         '[user].ChangePasswordStatus,[user].Password1,[user].Password2,'+
                         '[user].Password3,[user].Password4,[user].Password5,[user].ReserveStr1,'+
                         '[user].ReserveStr2,[user].ReserveStr3,[user].ReserveStr4,'+
                         '[user].ReserveStr5,[user].ReserveNum1,[user].ReserveNum2,'+
                         '[user].ReserveNum3,[user].ReserveNum4,[user].ReserveNum5,'+
                         '[user].RecordStatus,usersystem.CreateDate,usersystem.CreateBy,'+
                         'usersystem.CreateWorkStation,[user].ModifyDate,[user].ModifyBy,'+
                         '[user].ModifyWorkStation from usersystem,[user] '+
                         'where usersystem.userid=[user].userid and systemcode='+QuotedStr ('9') ;
end;

function TFrmUserProfile.LockTxt(a: Boolean): Boolean;
begin
  cxGroupBox1 .Enabled := a ;
  cxGroupBox2 .Enabled := a ;
  cxGroupBox3 .Enabled := a ;
end;

procedure TFrmUserProfile.UserProfileAfterScroll(DataSet: TDataSet);
begin
  inherited;
  LoadEditUser('where userid ='+ QuotedStr( UserProfile['userid'])) ;
end;

procedure TFrmUserProfile.UserSystemNewRecord(DataSet: TDataSet);
begin
  inherited;
  UserSystem ['branch']:= '01' ;
  UserSystem ['CreateDate']:= Now ;
  UserSystem ['CreateWorkStation']:= FrmUserProfile.GetComputerNetName ;
  UserSystem ['systemcode']:= '9' ;
end;

end.
