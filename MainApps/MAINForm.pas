unit MAINForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvXPCore, JvXPBar, ExtCtrls, JvExExtCtrls,
  JvNetscapeSplitter, JvExtComponent, JvPanel, ComCtrls,ShellApi,
  UIT_GLOBAL_LIB, DB, ADODB, DBClient, MConnect, SConnect,
   AppEvnts, SockCon, xTabs;

type

  TProgramItemInfo = class
    ProgramName: String;
    ProcName:string;
    Description: String;
    ProgramId: String;
    Permissions:TToolbarBtns;
    Param1:string;
  end;



  TFormMAIN = class(TForm)
    JvNetscapeSplitter1: TJvNetscapeSplitter;
    StatusBar1: TStatusBar;
    MAINPANE: TJvPanel;
    ADOConn: TADOConnection;
    DCOM: TDCOMConnection;
    ApplicationEvents1: TApplicationEvents;
    cdsMnu: TClientDataSet;
    SocketConn: TSockCon;
    ScrollBox1: TScrollBox;
    MNUGRP1: TJvXPBar;
    JvXPBar1: TJvXPBar;
    MNUGRP3: TJvXPBar;
    MNUGRP4: TJvXPBar;
    MNUGRP2: TJvXPBar;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvXPBar1Items0Click(Sender: TObject);
    procedure JvXPBar1Items1Click(Sender: TObject);
    procedure MAINPANEResize(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure mnuItemClick(Sender:TObject);
  private
    FIsLogin: boolean;
    FUserID,FUserName: String;
    procedure SetLogin(const Value: boolean);
    procedure SetUser(const Value: String);
    procedure SetUserName(const Value: String);
    property IsLogin : boolean read FIsLogin write SetLogin;
    property UserName : String read FUserName write SetUserName;


    procedure rundll(dllname:string;Parent:TWinControl;showType:TShowWindowType;dbConn:TADOConnection;procname:string='Execute');
    procedure JumpTo(dllname:string;Parent:TWinControl;showType:TShowWindowType;dbConn:TADOConnection;procname:string='Execute');
    procedure JumpToA(dllname:string;Parent:TWinControl;showType:TShowWindowType;dbConn:TDCOMConnection;procname:string='Execute');
    procedure JumpToS(dllname:string;Parent:TWinControl;showType:TShowWindowType;dbConn:TSocketConnection;params:TDLLParam;procname:string='Execute');
    procedure GenMenu(_userid:string;MenuGroup:TJvXPBar);


    procedure resizeDLL();

  public
    { Public declarations }
    _CMP,_Branch,_PDM,_PDT:string;
    property UserID : String read FUserID write SetUser;


  end;

var
  FormMAIN: TFormMAIN;

  LoadChild :procedure(ParentApplication: TApplication;ShowType: TShowWindowType;Parameter:String;dbConn:TADOConnection);stdcall;
  resizeProc:procedure(w,h : Integer);stdcall;
  LoadToContainer  :procedure(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TADOConnection); stdcall;
  LoadToContainerA  :procedure(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TDCOMConnection); stdcall;
  LoadToContainerS  :procedure(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSocketConnection); stdcall;
  HandleMessageProc :function (Msg : TMsg):Boolean; stdcall;

  DLLHandle : HWND;


implementation

{$R *.dfm}

Uses LoginForm, UIT_UTILS_LIB, ApplicationVersionHelper, VersionInfo;


procedure GetFileVersion(const AFileName: String; var dwFileVersionMS,
  dwFileVersionLS: Cardinal);
var
  FileName: string;
  InfoSize, Wnd: DWORD;
  VerBuf: Pointer;
  FI: PVSFixedFileInfo;
  VerSize: DWORD;
begin
  FileName := AFileName;
  UniqueString(FileName);
  InfoSize := GetFileVersionInfoSize(PChar(FileName), Wnd);
  if (InfoSize <> 0) then
  begin
    GetMem(VerBuf, InfoSize);
    try
      if (GetFileVersionInfo(PChar(FileName), Wnd, InfoSize, VerBuf)) then
        if (VerQueryValue(VerBuf, '\', Pointer(FI), VerSize)) then
        begin
          dwFileVersionMS := FI.dwFileVersionMS;
          dwFileVersionLS := FI.dwFileVersionLS;
        end;
    finally
      FreeMem(VerBuf);
    end;
  end;
end;

function GetFileVerionString(const AFileName: String): String;
var
  HiVer, LoVer: Cardinal;
begin
  GetFileVersion(AFileName, HiVer, LoVer);

  Result :=
    Format('%d.%d.%d.%d',
      [HiWord(HiVer), LoWord(HiVer), HiWord(LoVer), LoWord(LoVer)]);
end;

function GetFileVerionStringEx(const AFileName: String): String;
var
  HiVer, LoVer: Cardinal;
  _Major, _Minor, _Release, _Build: String[5];
begin
  GetFileVersion(AFileName, HiVer, LoVer);

  _Major := Format('%u', [HiWord(HiVer)]);
  while (Length(_Major) < 5) do
    _Major := '0' + _Major;

  _Minor := Format('%u', [LoWord(HiVer)]);
  while (Length(_Minor) < 5) do
    _Minor := '0' + _Minor;

  _Release := Format('%u', [HiWord(LoVer)]);
  while (Length(_Release) < 5) do
    _Release := '0' + _Release;

  _Build:= Format('%u', [LoWord(LoVer)]);
  while (Length(_Build) < 5) do
    _Build := '0' + _Build;

  Result := Format('%s%s%s%s', [_Major, _Minor, _Release, _Build]);
end;



procedure TFormMAIN.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  Handled := False;
  if (Msg.Message <> WM_KEYDOWN) then
    Exit;

  if MAINPANE.Hint<>'' then
  begin
    DLLHandle := LoadLibrary(pchar(MAINPANE.Hint));
    HandleMessageProc := GetProcAddress(DLLHandle,pchar('HandleMessageFunc'));
    if Assigned(HandleMessageProc) then
    begin
        if (Msg.wParam = VK_TAB) or (Msg.wParam = VK_UP)
        or (Msg.wParam = VK_F2)
        or (Msg.wParam = VK_F3)
        or (Msg.wParam = VK_F4)
        or (Msg.wParam = VK_F5)
        or (Msg.wParam = VK_F6)
        or (Msg.wParam = VK_F7)
        or (Msg.wParam = VK_F8)
        or (Msg.wParam = VK_F9)
        or (Msg.wParam = VK_F11)
        or (Msg.wParam = VK_LEFT) or (Msg.wParam = VK_RIGHT)
        or (Msg.wParam = VK_DOWN) or (Msg.wParam = VK_RETURN) then
             Handled := HandleMessageProc(Msg);
    end;
  end;

{

    }

end;

procedure TFormMAIN.FormCreate(Sender: TObject);
begin
  FIsLogin := false;
end;


procedure TFormMAIN.GenMenu(_userid:string;MenuGroup: TJvXPBar);
var mnuitem:TJvXPBarItem;
begin

  MenuGroup.Items.Clear;

      with cdsMnu do
      begin
        close;
        //CommandText:='select 	a.*,b.*,b.MenuName as MenuTitle from UserMenu a  left join UserMenuProc b on a.MenuName=b.MenuID where a.UserID='''+_userid+''' and a.RecordStatus=''A'' and MenuGroup='+inttostr(MenuGroup.Tag)+' order by b.MenuGroup,b.MenuOrder';
        commandtext:='select 	a.*, b.MenuID,	b.MenuName as MenuTitle, 	b.ReserveStr1 as MenuStatus, 	b.ReserveStr3 as Method, 	b.ReserveStr4 as Program,b.ReserveStr5 as Params from UserMenu a  left join Menu b on a.ReserveStr1=b.MenuID where a.UserID='''+_userid+''' and a.ProgramSystem=9 and   MenuGroup='''+inttostr(MenuGroup.Tag)+''' order by b.MenuGroup,b.ReserveNum1 ';
        //InputBox('','',CommandText);
        open;
      end;


      if cdsMnu.RecordCount>0 then
      begin
        cdsMnu.First;

        while not cdsMnu.Eof do
        begin
          if UpperCase(cdsMnu.FieldByName('RecordStatus').AsString)='A' then
          begin
            mnuitem:=MenuGroup.Items.Add;
            mnuitem.Caption:=cdsMnu.FieldByName('MenuTitle').AsString;
            mnuitem.Data:=TProgramItemInfo.Create;

            TProgramItemInfo(mnuitem.Data).ProgramName:=cdsMnu.FieldByName('Program').AsString;
            TProgramItemInfo(mnuitem.Data).ProcName:=cdsMnu.FieldByName('Method').AsString;
            TProgramItemInfo(mnuitem.Data).Description:=cdsMnu.FieldByName('MenuTitle').AsString;
            TProgramItemInfo(mnuitem.Data).ProgramId:=cdsMnu.FieldByName('MenuID').AsString;
            TProgramItemInfo(mnuitem.Data).Param1:=cdsMnu.FieldByName('Params').AsString;
            TProgramItemInfo(mnuitem.Data).Permissions:=[tbClose];

             // permission
             //tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport
             if UpperCase(cdsMnu.FieldByName('FlagInsert').AsString)='Y' then
              TProgramItemInfo(mnuitem.Data).Permissions:=TProgramItemInfo(mnuitem.Data).Permissions+[tbNew,tbSave,tbCancel] ;
             if UpperCase(cdsMnu.FieldByName('FlagModify').AsString)='Y' then
              TProgramItemInfo(mnuitem.Data).Permissions:=TProgramItemInfo(mnuitem.Data).Permissions+[tbEdit,tbSave,tbCancel] ;
             if UpperCase(cdsMnu.FieldByName('FlagInquiry').AsString)='Y' then
              TProgramItemInfo(mnuitem.Data).Permissions:=TProgramItemInfo(mnuitem.Data).Permissions+[tbSearch] ;
             if UpperCase(cdsMnu.FieldByName('FlagReport').AsString)='Y' then
              TProgramItemInfo(mnuitem.Data).Permissions:=TProgramItemInfo(mnuitem.Data).Permissions+[tbPrint,tbExport] ;
             if UpperCase(cdsMnu.FieldByName('FlagDelete').AsString)='Y' then
              TProgramItemInfo(mnuitem.Data).Permissions:=TProgramItemInfo(mnuitem.Data).Permissions+[tbDelete] ;


              if UpperCase(cdsMnu.FieldByName('MenuStatus').AsString)='A' then
                mnuitem.OnClick:=mnuItemClick
              else if cdsMnu.FieldByName('MenuStatus').AsString='I' then
                mnuitem.Enabled:=false;
          end;

          cdsMnu.Next;
        end;
      end;
end;


procedure TFormMAIN.FormShow(Sender: TObject);

begin
  (*
  if not IsLogin then
  begin
    FormLogin.ShowModal;
    if FormLogin.ModalResult = mrOk then
    begin
      IsLogin := true;
      UserID := FormLogin.edtUser.Text;

       GenMenu(UserID,MNUGRP1);
       GenMenu(UserID,MNUGRP2);
       GenMenu(UserID,MNUGRP3);
       GenMenu(UserID,MNUGRP4);
    end
    else
      Application.Terminate;
  end;
  *)


//       UserID := FormLogin.edtUser.Text;


       GenMenu(UserID,MNUGRP1);
       GenMenu(UserID,MNUGRP2);
       GenMenu(UserID,MNUGRP3);
       GenMenu(UserID,MNUGRP4);

  
end;





procedure TFormMAIN.JvXPBar1Items0Click(Sender: TObject);
begin

if  MessageDlg('Exit Program?',mtConfirmation,mbOKCancel,0)=mrOk then Application.Terminate;


end;

procedure TFormMAIN.JvXPBar1Items1Click(Sender: TObject);
begin

     case Application.MessageBox('Do you want to exit program ?',
       'Warning', MB_YESNO + MB_ICONQUESTION) of
       IDYES:
         begin
           Self.Close;
         end;
       IDNO:
         begin

         end;
     end;

end;



procedure TFormMAIN.MAINPANEResize(Sender: TObject);
 var
   ii : Integer;
 begin
  resizeDLL;
  (* for ii := 0 to MAINPANE.ComponentCount-1 do
    if (MAINPANE.Components[ii] is TForm) then
      begin
           TForm(MAINPANE.Components[ii]).Width:=TForm(MAINPANE.Components[ii]).Parent.Width;
      end;
      *)
 end;

procedure TFormMAIN.mnuItemClick(Sender: TObject);
var dllParams:TDLLParam;
begin

  if ((trim(UserID)<>'') and (trim(_CMP)<>'') and (trim(_Branch)<>'') and (trim(_PDM)<>'') and (trim(_PDT)<>'')) then
  begin
    dllParams.UserID:=UserID;
    dllParams.Password:='';

    dllParams.WorkStation:=GetComputerNetName;
    dllParams.Branch:=_Branch;
    dllParams.PDM:=_PDM;
    dllParams.PDT:=_PDT;
  end else
  begin
    dllParams.UserID:=UserID;
    dllParams.Password:='';

    dllParams.WorkStation:=GetComputerNetName;
    dllParams.Branch:='01';
    dllParams.PDM:='9';
    dllParams.PDT:='01';
  end;


  dllParams.Param1:=TProgramItemInfo(TJvXPBarItem(Sender).Data).Param1;

//  dllParams.BtnVisible:=dllParams.BtnVisible+[tbClose];
  dllParams.BtnVisible:=[tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];
  dllParams.BtnEnable:=TToolbarBtns(TProgramItemInfo(TJvXPBarItem(Sender).Data).Permissions);//[tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];




  JumpToS(TProgramItemInfo(TJvXPBarItem(Sender).Data).ProgramName,MAINPANE,swNormal,SocketConn,dllParams,TProgramItemInfo(TJvXPBarItem(Sender).Data).ProcName);
end;

procedure TFormMAIN.resizeDLL();
begin
//  Screen.Cursor:=crHourGlass;

  if MAINPANE.Hint<>'' then
  begin
    DLLHandle := LoadLibrary(pchar(MAINPANE.Hint));
    resizeProc := GetProcAddress(DLLHandle,pchar('ResizeProgram'));
    if Assigned(resizeProc) then
      resizeProc(MAINPANE.Width,MAINPANE.Height)
  end;

end;



procedure TFormMAIN.rundll(dllname: string;Parent:TWinControl; showType: TShowWindowType;
  dbConn: TADOConnection; procname: string);

begin
try
 if Trim(procname)='' then procname:='Execute';

  Screen.Cursor:=crHourGlass;
  DLLHandle := LoadLibrary(pchar(dllname));
  LoadChild := GetProcAddress(DLLHandle,pchar(procname));
  if Assigned(LoadChild) then LoadChild(Application,swModal,'',dbConn);

finally
  Screen.Cursor:=crDefault;
end;
end;


procedure TFormMAIN.JumpTo(dllname: string;Parent:TWinControl; showType: TShowWindowType;
  dbConn: TADOConnection; procname: string);

begin
  try
   if Trim(procname)='' then procname:='ShowProgram';

    Screen.Cursor:=crHourGlass;
    DLLHandle := LoadLibrary(pchar(dllname));
    LoadToContainer := GetProcAddress(DLLHandle,pchar(procname));
    if Assigned(LoadToContainer) then
    LoadToContainer(Application,Parent,'',dbConn);

    Parent.Hint:=dllname;


  //  if Assigned(LoadChild) then LoadChild(Application,swModal,'',dbConn);

  finally
    Screen.Cursor:=crDefault;
  end;
end;



procedure TFormMAIN.JumpToA(dllname: string;Parent:TWinControl; showType: TShowWindowType;
  dbConn: TDCOMConnection; procname: string);

begin
  try
   if Trim(procname)='' then procname:='ShowProgramA';

    Screen.Cursor:=crHourGlass;
    DLLHandle := LoadLibrary(pchar(dllname));
    LoadToContainerA := GetProcAddress(DLLHandle,pchar(procname));
    if Assigned(LoadToContainerA) then LoadToContainerA(Application,Parent,'',dbConn);

    Parent.Hint:=dllname;


  //  if Assigned(LoadChild) then LoadChild(Application,swModal,'',dbConn);

  finally
    Screen.Cursor:=crDefault;
  end;
end;


procedure TFormMAIN.JumpToS(dllname: string; Parent: TWinControl;
  showType: TShowWindowType; dbConn: TSocketConnection;params:TDLLParam; procname: string);
type
  TProgramType = (ptEXE, ptDLL, ptBPL, ptUnknow);

  function GetPrgramType(_ProgramName: String): TProgramType;
  begin
    if (UpperCase(ExtractFileExt(_ProgramName)) = '.EXE') then
      Result := ptEXE
    else
    if (UpperCase(ExtractFileExt(_ProgramName)) = '.DLL') then
      Result := ptDLL
    else
    if (UpperCase(ExtractFileExt(_ProgramName)) = '.BPL') then
      Result := ptBPL
    else
      Result := ptUnknow;
  end;

var   _ProgramType: TProgramType;

begin
  try
   if Trim(procname)='' then procname:='ShowProgramS';

    Screen.Cursor:=crHourGlass;
  _ProgramType := GetPrgramType(dllname);
    case _ProgramType of
      //ptEXE: WinExec(PChar(dllname + ' ' +'EXE'), SW_SHOW);
      ptEXE: ShellExecute(Handle, 'open', pchar(dllname),pchar('EXE'), Pchar(ExtractFilePath(Application.ExeName)), SW_SHOWNORMAL) ;
//      ShellExecute(handle,'OPEN','ImportFormatPrg.exe','EXE',Pchar(ExtractFilePath(Application.ExeName)),SW_SHOWNORMAL);


      ptDLL, ptBPL:
      begin
        DLLHandle := LoadLibrary(pchar(dllname));
        LoadToContainerS := GetProcAddress(DLLHandle,pchar(procname));
        if Assigned(LoadToContainerS) then
        LoadToContainerS(Application,Parent,params,dbConn);
        Parent.Hint:=dllname;
      end;

      //  if Assigned(LoadChild) then LoadChild(Application,swModal,'',dbConn);
    end;


  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormMAIN.SetLogin(const Value: boolean);
begin
    if Value then
      JvXPBar1.Items[0].Caption := 'Log Off'
    else
      JvXPBar1.Items[0].Caption := 'Log In';

   FIsLogin := Value;
end;

procedure TFormMAIN.SetUser(const Value: String);
begin
  StatusBar1.Panels[0].Text := 'User : '+Value;
  FUserID := Value;
end;

procedure TFormMAIN.SetUserName(const Value: String);
begin
  //StatusBar1.Panels[0].Text := 'User : '+Value;
  FUserName := Value;
end;

end.
