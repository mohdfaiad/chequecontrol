unit E010UserFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, DSource,
  DBClient, RemCustomDS, RemDataSet, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLookAndFeels;

type
  TE010FrmUser = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    AddUser: TRemDataSet;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AddTo ;
  public
    { Public declarations }
    procedure LoadAddUser ;
  end;

var
  E010FrmUser: TE010FrmUser;

implementation

uses E010MainFrm, UIT_GLOBAL_LIB;

{$R *.dfm}

{ TE010FrmUser }

procedure TE010FrmUser.AddTo;
var X : Integer ;
begin
  with E010FrmMain do
    begin
        UserPermission.First ;
      for x := 1 to UserPermission.RecordCount do
        begin
          if  UserPermission['userid'] = NewUserMenu then
            begin
              Application.MessageBox('   This User is already in use.   ', 'Warning', MB_OK + MB_ICONWARNING);
              Exit ;
            end ;
            UserPermission.Next ;
        end;
        E010FrmMain.CreateSystemFrm ;
        Self.Close ;
        Exit ;
    end;
end;

procedure TE010FrmUser.cxButton1Click(Sender: TObject) ;
begin
  Self.AddTo ;
end;

procedure TE010FrmUser.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  NewUserMenu := AddUser['userid'] ;
end;

procedure TE010FrmUser.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  Self.AddTo ;
end;

procedure TE010FrmUser.FormShow(Sender: TObject);
begin
  Self .LoadAddUser ;
  NewUserMenu := AddUser['userid'] ;
end;

procedure TE010FrmUser.LoadAddUser;
begin
  AddUser .Command := 'select usersystem.Userid,[user].userid,[user].username from usersystem,[user] '+
                      ' where systemcode=9 and usersystem.Userid=[user].userid '+
                      'order by [user].userid' ;
end;

end.
