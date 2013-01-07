unit ConfigurationFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfrmConfiguration = class(TForm)
    btnReConnect: TButton;
    btnCancel: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    txtServerName: TEdit;
    Label4: TLabel;
    edPort: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edHostName: TEdit;
    ckUsingIP: TCheckBox;
    cmbServer: TComboBox;
    procedure btnReConnectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguration: TfrmConfiguration;

implementation

uses uCiaXml, UIT_GLOBAL_LIB;

{$R *.dfm}

procedure TfrmConfiguration.btnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConfiguration.btnReConnectClick(Sender: TObject);
var  xmlConn:TXMLConfig;
    _app_address,_app_hostname,_app_port,_system_code,_app_ipusing,_app_serverName,_version:string;
begin
  //Application.MainFormOnTaskbar := True;
  try
  xmlConn:=TXMLConfig.Create(ExtractFilePath(Application.ExeName)+_config_file);

  // mssql connection
  xmlConn.WriteString('AppConfig','ADDRESS',txtServerName.Text);
  xmlConn.WriteString('AppConfig','HOSTNAME',edHostName.Text);
  xmlConn.WriteString('AppConfig','PORT',edPort.Text);

  if cmbServer.ItemIndex=0 then
    xmlConn.WriteString('AppConfig','SERVERNAME','DEV')
  else if cmbServer.ItemIndex=1 then
    xmlConn.WriteString('AppConfig','SERVERNAME','SAM')
  else if cmbServer.ItemIndex=2 then
    xmlConn.WriteString('AppConfig','SERVERNAME','REPORT');


  xmlConn.WriteString('AppConfig','SYSTEMCODE','9');

  if ckUsingIP.Checked then
    xmlConn.WriteString('AppConfig','IPADDRESS_USING','TRUE')
  else
    xmlConn.WriteString('AppConfig','IPADDRESS_USING','FALSE');

  xmlConn.Save;

  ShowMessage('Save Success!!');
  close;

  except
    on ee:Exception do
      Application.MessageBox(pchar(ee.Message),pchar('Error'),MB_OK);
  end;
    {
   _app_address:= xmlConn.ReadString('AppConfig','ADDRESS','');
   _app_hostname:= xmlConn.ReadString('AppConfig','HOSTNAME','');
   _app_port:= xmlConn.ReadString('AppConfig','PORT','');
   _system_code:=xmlConn.ReadString('AppConfig','SYSTEMCODE','');
   _app_ipusing:=xmlConn.ReadString('AppConfig','IPADDRESS_USING','');
   _app_serverName:=xmlConn.ReadString('AppConfig','SERVERNAME','SAM');
   }

end;

procedure TfrmConfiguration.FormShow(Sender: TObject);
var  xmlConn:TXMLConfig;
    _app_address,_app_hostname,_app_port,_system_code,_app_ipusing,_app_serverName,_version:string;
begin

  xmlConn:=TXMLConfig.Create(ExtractFilePath(Application.ExeName)+_config_file);
  _app_address:= xmlConn.ReadString('AppConfig','ADDRESS','');
  _app_hostname:= xmlConn.ReadString('AppConfig','HOSTNAME','');
  _app_port:= xmlConn.ReadString('AppConfig','PORT','');
  _system_code:=xmlConn.ReadString('AppConfig','SYSTEMCODE','');
  _app_ipusing:=xmlConn.ReadString('AppConfig','IPADDRESS_USING','');
  _app_serverName:=xmlConn.ReadString('AppConfig','SERVERNAME','SAM');

  ckUsingIP.Checked:=UpperCase(trim(_app_ipusing))='TRUE';
  txtServerName.Text:=_app_address;
  edHostName.Text:=_app_hostname;
  edPort.Text:=_app_port;

  if _app_serverName='DEV' then
    cmbServer.ItemIndex:=0
  else if _app_serverName='SAM' then
        cmbServer.ItemIndex:=1
  else if _app_serverName='REPORT' then
        cmbServer.ItemIndex:=2;




end;

end.
