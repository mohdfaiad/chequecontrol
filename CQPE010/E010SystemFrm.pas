unit E010SystemFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLookAndFeels;

type
  TE010FrmSystem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AddTo ;
  public
    { Public declarations }
  end;

var
  E010FrmSystem: TE010FrmSystem;

implementation

uses E010MainFrm;

{$R *.dfm}

procedure TE010FrmSystem.AddTo;

begin
  with E010FrmMain do
    if Application.MessageBox('Do you want to add menu','Add', MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
      begin
        begin
          if ChkType = 'addmenu' then
            begin
              NewUserMenu := UserPermission['userid'] ;
            end ;
                        // มีปัญหาถ้าเมนูซ้ำกัน
           if UserPermission.Locate('menuname',UserAllMenu['menuname'],[])  then
             begin
               Application.MessageBox('This user can access the menu', 'Warning', MB_OK + MB_ICONWARNING);
             end
           else
            begin
                begin
                  UserPermission.Append ;
                  UserPermission['Branch']:= '01' ;
                  UserPermission['ProgramSystem']:= '9' ;
                  UserPermission['ProgramType']:= UserAllMenu['ProgramType'] ;
                  UserPermission['UserID']:= NewUserMenu ;
                  UserPermission['MenuName']:= UserAllMenu['MenuName'] ;
                  UserPermission['FlagMenu']:= 'N' ;
                  UserPermission['FlagInsert']:= 'N' ;
                  UserPermission['FlagModify']:= 'N' ;
                  UserPermission['FlagDelete']:= 'N' ;
                  UserPermission['FlagInquiry']:= 'N' ;
                  UserPermission['FlagReport']:= 'N' ;
                  UserPermission['RecordStatus']:= UserAllMenu['RecordStatus'] ;
                  UserPermission['ReserveStr1']:= UserAllMenu['MenuID'] ;
                  UserPermission['CreateDate']:= now ;
                  UserPermission['CreateBy']:= 'UnKnow' ;
                  UserPermission['CreateWorkStation']:= GetComputerNetName ;
                end;
            end;
        end;
      end;
end;
procedure TE010FrmSystem.cxButton1Click(Sender: TObject);
begin
  Self.Close ;
end;

procedure TE010FrmSystem.cxButton2Click(Sender: TObject);
//var NewUserMenu : string ;
//var L1,L2 : string ;
begin
  Self.AddTo ;
//  with E010FrmMain do
//    if Application.MessageBox('Do you want to add menu','Add', MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
//      begin
//        begin
//          if ChkType = 'addmenu' then
//            begin
//              NewUserMenu := UserPermission['userid'] ;
//            end ;
//                        // ????????????????????
//           if UserPermission.Locate('menuname',UserAllMenu['menuname'],[])  then
//             begin
//               Application.MessageBox('This user can access the menu', 'Warning', MB_OK + MB_ICONWARNING);
//             end
//           else
//            begin
//                begin
//                  UserPermission.Append ;
//                  UserPermission['Branch']:= '01' ;
//                  UserPermission['ProgramSystem']:= '9' ;
//                  UserPermission['ProgramType']:= UserAllMenu['ProgramType'] ;
//                  UserPermission['UserID']:= NewUserMenu ;
//                  UserPermission['MenuName']:= UserAllMenu['MenuName'] ;
//                  UserPermission['FlagMenu']:= 'N' ;
//                  UserPermission['FlagInsert']:= 'N' ;
//                  UserPermission['FlagModify']:= 'N' ;
//                  UserPermission['FlagDelete']:= 'N' ;
//                  UserPermission['FlagInquiry']:= 'N' ;
//                  UserPermission['FlagReport']:= 'N' ;
//                  UserPermission['RecordStatus']:= UserAllMenu['RecordStatus'] ;
//                  UserPermission['CreateDate']:= now ;
//                  UserPermission['CreateBy']:= 'UnKnow' ;
//                  UserPermission['CreateWorkStation']:= GetComputerNetName ;
//                end;
//            end;
//        end;
//      end;
end;

procedure TE010FrmSystem.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  Self.AddTo ;
end;

procedure TE010FrmSystem.FormShow(Sender: TObject);
begin
  E010FrmMain.LoadAllMenu ;
end;

end.
