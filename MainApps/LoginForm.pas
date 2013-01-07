unit LoginForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxMaskEdit, cxDropDownEdit, cxLabel, cxControls, cxContainer, cxEdit,
  cxTextEdit,ExtCtrls,
  DB, DBClient, MConnect, SConnect, SockCon, jpeg, cxLookAndFeels,
  frxpngimage, Buttons;

type
  TFormLogin = class(TForm)
    Panel1: TPanel;
    SockCon1: TSockCon;
    cds1: TClientDataSet;
    Image1: TImage;
    cxLabel1: TcxLabel;
    edtUser: TcxTextEdit;
    edtPassword: TcxTextEdit;
    cxLabel2: TcxLabel;
    cbbSystem: TcxComboBox;
    btnLogin: TcxButton;
    cds2: TClientDataSet;
    Image2: TImage;
    btnConfig: TSpeedButton;
    procedure btnLoginClick(Sender: TObject);
    procedure edtPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtUserKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
  private
    { Private declarations }
    FIsLogin:boolean;
    FUserName: string;
    procedure getSystemList(userid:string);
    procedure SetUserName(const Value: string);
  public
    { Public declarations }
    property IsLogin : boolean read FIsLogin write FIsLogin;
    property UserName : string  read FUserName write SetUserName;
  end;

var
  FormLogin: TFormLogin;

implementation

uses ConfigurationFrm, UIT_UTILS_LIB;

{$R *.dfm}

procedure TFormLogin.btnConfigClick(Sender: TObject);
begin
  frmConfiguration:=TfrmConfiguration.Create(Application);
  frmConfiguration.ShowModal;
end;

procedure TFormLogin.btnLoginClick(Sender: TObject);
begin

  initSockConn(SockCon1);

  cds1.Close;
  cds1.CommandText:='select * from [User] where UserID='''+edtUser.Text+''' and UserPassword='''+edtPassword.Text+'''';
  cds1.Open;

  if cds1.RecordCount>0 then
  begin
    ModalResult := mrOk ;
     IsLogin:=true;
     FUserName:=edtUser.Text;
  end
  else
    Application.MessageBox(pchar('Invalid UserName or Password !!!'),pchar('Warnning'),MB_OK or MB_ICONWARNING);
end;

procedure TFormLogin.edtPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then
    getSystemList(edtUser.Text);
end;

procedure TFormLogin.edtUserKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then
    edtPassword.SetFocus;
end;

procedure TFormLogin.FormShow(Sender: TObject);
begin
  IsLogin:=false;
end;

procedure TFormLogin.getSystemList(userid: string);
begin
  if not SockCon1.Connected then initSockConn(SockCon1);

  cds2.Close;
  cds2.CommandText:='' +

' select '+
' 	usersystem.systemcode , '+
' 	[system].systemcode,[system].systemname '+
' 	,usersystem.userid,[user].userid '+

' from [system],usersystem,[user] '+
' where usersystem.systemcode=[system].systemcode '+
' and usersystem.userid = [user].userid '+
' and [user].userid = '''+userid+''' and usersystem.systemcode=''9'' ';


  cds2.Open;
  if cds2.RecordCount>0 then
  begin
    cbbSystem.Properties.Items.Clear;
    cds2.First;
    while not cds2.Eof do
    begin
      cbbSystem.Properties.Items.Add(cds2.FieldByName('systemname').AsString);
      cds2.Next;
    end;
     cbbSystem.ItemIndex := 0 ;

     IsLogin:=true;
    
  end;
  

end;

procedure TFormLogin.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

end.
