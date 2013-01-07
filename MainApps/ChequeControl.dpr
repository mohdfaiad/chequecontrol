program ChequeControl;

uses
  Forms,
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Dialogs,
  MAINForm in 'MAINForm.pas' {FormMAIN},
  LoginForm in 'LoginForm.pas' {FormLogin},
  UIT_GLOBAL_LIB in '..\LIB\UIT_GLOBAL_LIB.pas',
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  uCiaXml in '..\LIB\uCiaXml.pas',
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas',
  ReportBaseFrm in '..\BaseFrom\ReportBaseFrm.pas' {frmReportBase},
  ApplicationVersionHelper in '..\LIB\ApplicationVersionHelper.pas',
  VersionInfo in '..\LIB\VersionInfo.pas',
  ConfigurationFrm in 'ConfigurationFrm.pas' {frmConfiguration};

{$R *.res}
var  xmlConn:TXMLConfig;
    _app_address,_app_hostname,_app_port,_system_code,_app_ipusing,_app_serverName,_version:string;


    isShowLogin:boolean;
    _CMP,_BRN,_PDM,_PDT,_USR:string;

const
  PredefinedStrings: array[0..11] of string =
    ('Comments', 'CompanyName', 'FileDescription', 'FileVersion',
    'InternalName', 'LegalCopyright', 'LegalTrademarks', 'OriginalFilename',
    'PrivateBuild', 'ProductName', 'ProductVersion', 'SpecialBuild');

begin
  isShowLogin:=true;
  Application.Initialize;
  //Application.MainFormOnTaskbar := True;
  xmlConn:=TXMLConfig.Create(ExtractFilePath(Application.ExeName)+_config_file);
  _version:=TVersionInfo.VersionToString(Application.Version.FileVersion);

    if (xmlConn.ReadString('AppConfig','ADDRESS','')='') then
    begin
      // mssql connection
      xmlConn.WriteString('AppConfig','ADDRESS','127.0.0.1');
      xmlConn.WriteString('AppConfig','HOSTNAME','delbox.dyndns.org');
      xmlConn.WriteString('AppConfig','PORT','19005');
      xmlConn.WriteString('AppConfig','SERVERNAME','SAM');  // SAM , PRODUCTION
      xmlConn.WriteString('AppConfig','SYSTEMCODE','9');
      xmlConn.WriteString('AppConfig','IPADDRESS_USING','TRUE');
      xmlConn.Save;
    end;

   _app_address:= xmlConn.ReadString('AppConfig','ADDRESS','');
   _app_hostname:= xmlConn.ReadString('AppConfig','HOSTNAME','');
   _app_port:= xmlConn.ReadString('AppConfig','PORT','');
   _system_code:=xmlConn.ReadString('AppConfig','SYSTEMCODE','');
   _app_ipusing:=xmlConn.ReadString('AppConfig','IPADDRESS_USING','');
   _app_serverName:=xmlConn.ReadString('AppConfig','SERVERNAME','SAM');


  Application.Title := 'Leasing Cheque Control System';

  if ParamCount>=5 then
  begin
    isShowLogin:=false;
    _CMP:=ParamStr(1);
    _BRN:=ParamStr(2);
    _PDM:=ParamStr(3);  // 9
    _PDT:=ParamStr(4);
    _USR:=ParamStr(5);
  end;

  

{
RNB , PDM ,   PDT , USR
01 , 9 , 01 , TL
}


  // create form Login
  //Application.CreateForm(TFormLogin, FormLogin);
  // FormLogin
  if isShowLogin then
  begin
    FormLogin:=TFormLogin.Create(Application);
    FormLogin.SockCon1.Connected:=false;
  end;
  //initSockConn(FormLogin.SockCon1);

  if _app_serverName='SAM' then
  begin
    if isShowLogin then
      FormLogin.Caption:='Login v'+_version+' [TEST SERVER] ';
    Application.Title:=Application.Title+' v'+_version+' [TEST SERVER] ';
    FormMAIN.Caption:=Application.Title+' v'+_version+' [TEST SERVER] ';
  end else
  if _app_serverName='REPORT' then
  begin
    if isShowLogin then
      FormLogin.Caption:='Login v'+_version+' [REPORT SERVER]';
    Application.Title:=Application.Title+' v'+_version+' [REPORT SERVER] ';
    FormMAIN.Caption:=Application.Title+' v'+_version+' [REPORT SERVER] ';
  end
  else
  begin
    if isShowLogin then
     FormLogin.Caption:='Login v'+_version;
    Application.Title:=Application.Title+' v'+_version;
    FormMAIN.Caption:=Application.Title+' v'+_version;
  end;
  if isShowLogin then
  FormLogin.ShowModal;



  if isShowLogin then
  begin
    if FormLogin.IsLogin then
    begin
      Application.CreateForm(TFormMAIN, FormMAIN);

      FormMAIN.Caption:=Application.Title;
      FormMAIN.SocketConn.Connected:=false;
      FormMAIN.UserID:=FormLogin.UserName;

      if UpperCase(_app_ipusing)='TRUE' then
        FormMAIN.SocketConn.Address:=_app_address
      else
        begin
          if _app_hostname<>'' then
          begin
            FormMAIN.SocketConn.address:='';
            FormMAIN.SocketConn.Host:=_app_hostname;
          end
          else if _app_address<>'' then
          begin
             FormMAIN.SocketConn.Address:=_app_address;
            // FormMAIN.SocketConn.Host:='';
          end;

        end;

      FormMAIN.SocketConn.Port:=strtoint(_app_port);
      initSockConn(FormMAIN.SocketConn);

      //Application.CreateForm(TfrmBase, frmBase);
      //Application.CreateForm(TfrmReportBase, frmReportBase);

    end;
  end else
  begin
    // auto login from honda
      if ((trim(_CMP)<>'') and (trim(_BRN)<>'') and (trim(_PDM)<>'') and (trim(_PDT)<>'') and (trim(_USR)<>'')) then
      begin
        Application.CreateForm(TFormMAIN, FormMAIN);

        FormMAIN._CMP:=_CMP;
        FormMAIN._Branch:=_BRN;
        FormMAIN._PDM:=_PDM;
        FormMAIN._PDT:=_PDT;
        FormMAIN.Userid:=_USR;

        ShowMessage('USERID='+_USR);


        FormMAIN.Caption:=Application.Title;
        FormMAIN.SocketConn.Connected:=false;

        if UpperCase(_app_ipusing)='TRUE' then
          FormMAIN.SocketConn.Address:=_app_address
        else
          begin
            if _app_hostname<>'' then
            begin
              FormMAIN.SocketConn.address:='';
              FormMAIN.SocketConn.Host:=_app_hostname;
            end
            else if _app_address<>'' then
            begin
               FormMAIN.SocketConn.Address:=_app_address;
              // FormMAIN.SocketConn.Host:='';
            end;

          end;

        FormMAIN.SocketConn.Port:=strtoint(_app_port);
        initSockConn(FormMAIN.SocketConn);
      end;
      //Application.CreateForm(TfrmBase, frmBase);
      //Application.CreateForm(TfrmReportBase, frmReportBase);
  end;


  Application.Run;
end.
