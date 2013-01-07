unit UserFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DSource, DBClient, RemCustomDS,
  RemDataSet, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, JvExStdCtrls,
  JvEdit, JvDBSearchEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, UserProfileFrm ;

type
  TFrmUser = class(TForm)
    Panel1: TPanel;
    AllUser: TRemDataSet;
    DSource1: TDSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    Panel2: TPanel;
    edtSearchUser: TJvDBSearchEdit;
    Panel3: TPanel;
    cxComboBox1: TcxComboBox;
    BtnAddToUserSystem: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure BtnAddToUserSystemClick(Sender: TObject);
    procedure cxComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadAllUser ;
//    function GetComputerNetName: string;
  end;

var
  FrmUser: TFrmUser;

implementation



{$R *.dfm}

{ TFrmUser }

procedure TFrmUser.BtnAddToUserSystemClick(Sender: TObject);
var SizeS : Integer ;
begin
  if Application.MessageBox('Do You Want Add To Cheque Control','Add To Cheque Control', MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
    begin
      NewUser := AllUser['UserID'];
      ShowMessage(FrmUserProfile.GetComputerNetName);
      ShowMessage(NewUser);
      FrmUserProfile.UserSystem.Append ;
      FrmUserProfile.UserSystem ['branch']:= '01' ;
      FrmUserProfile.UserSystem ['Userid']:= NewUser ;
      FrmUserProfile.UserSystem ['systemcode']:= '9' ;
//      FrmUserProfile.UserSystem ['ModifyBy']:=  ;
      FrmUserProfile.UserSystem ['CreateDate']:= Now ;
      FrmUserProfile.UserSystem ['CreateWorkStation']:= FrmUserProfile.GetComputerNetName ;
      FrmUserProfile.UserSystem ['systemcode']:= '9' ;
      FrmUserProfile.UserSystem.ApplyUpdates (0) ;
      Close ;
    end;
end;

procedure TFrmUser.cxComboBox1Click(Sender: TObject);
var Dt : string ;
begin
  if cxComboBox1 .ItemIndex = 0 then
    begin Dt := 'Branch' end
  else if cxComboBox1 .ItemIndex = 1 then
    begin Dt := 'userid' end
  else if cxComboBox1 .ItemIndex = 2 then
    begin Dt := 'username' end ;
  edtSearchUser .DataField := Dt ;
end;

procedure TFrmUser.FormShow(Sender: TObject);
begin
  Self.LoadAllUser ;
  cxComboBox1 .Properties .Items .Add('Branch');
  cxComboBox1 .Properties .Items .Add('User Id');
  cxComboBox1 .Properties .Items .Add('User Name');
  cxComboBox1 .ItemIndex := 2;
end;

procedure TFrmUser.LoadAllUser;
begin
  AllUser.Command := 'select Branch,UserID,UserName,DepartmentCode,SectionCode,LevelCode from [user] order by username' ;
end;

end.
