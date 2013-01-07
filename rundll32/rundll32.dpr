program rundll32;

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  UIT_GLOBAL_LIB in '..\LIB\UIT_GLOBAL_LIB.PAS',
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas',
  uCiaXml in '..\LIB\uCiaXml.pas',
  IniFiles;

{$R *.res}

type
  TShowWindowType = (swNone, swModal, swNomal);
  TExecuteProgram = function(_MainApp: Pointer;_Type: TShowWindowType; _Parameter: String): Pointer; stdcall;
var
  _Handle: THandle;
  _ExecuteProgram: TExecuteProgram;

  xmlConn:TXMLConfig;
  _app_address,_app_port:string;

begin
  //if (ParamCount <> 3) then
  //  Exit;
  Application.Initialize;
  Application.CreateForm(TfrmBase, frmBase);

  xmlConn:=TXMLConfig.Create(ExtractFilePath(Application.ExeName)+_config_file);

    if (xmlConn.ReadString('AppConfig','ADDRESS','')='') then
    begin
      // mssql connection
      xmlConn.WriteString('AppConfig','ADDRESS','127.0.0.1');
      xmlConn.WriteString('AppConfig','PORT','19005');
      xmlConn.Save;
    end;

   _app_address:= xmlConn.ReadString('AppConfig','ADDRESS','');
   _app_port:= xmlConn.ReadString('AppConfig','PORT','');


  _Handle := LoadLibrary(PChar(ParamStr(1)));
  if (_Handle <> 0) then
  begin
    _ExecuteProgram := GetProcAddress(_Handle, 'Execute');
    try
      if(Assigned(_ExecuteProgram)) then
      begin
        try
          _ExecuteProgram(nil, swModal, _app_address);
        finally
        end;
      end;
    finally
      FreeLibrary(_Handle);
    end;
  end;

end.
