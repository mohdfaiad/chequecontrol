library CQPU007;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  WideStrings,
  FMTBcd,
  StdCtrls,
  Provider,
  DB,
  DBClient,
  SqlExpr,
  ADODB,
  MConnect,
  SConnect,
  UIT_GLOBAL_LIB in '..\LIB\UIT_GLOBAL_LIB.PAS',
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas' {/,},
  uCiaXml in '..\LIB\uCiaXml.pas',
  SetDealerGroupFrm in 'SetDealerGroupFrm.pas' {frmSetDealerGroup};

var
  DllApplication : TApplication = Nil;

{$R *.res}

function ShowProgramS(_MainApp: TApplication;AParent:TWinControl; _Parameter: TDLLParam;_DBConn:TSocketConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

  if not Assigned(frmSetDealerGroup) then
  begin
      frmSetDealerGroup := TfrmSetDealerGroup.Create(Application);

    //  frmSetDealerGroup.SocketConn.Connected:=false;
      {
      frmMainProgram.SocketConn.Address:=_DBConn.Address;
      frmMainProgram.SocketConn.Port:=_DBConn.Port;
      frmMainProgram.SocketConn.ServerName:=_DBConn.ServerName;

      frmMainProgram.SocketConn.Connected:=true;
      }
     // initSockConn(frmSetDealerGroup.SocketConn);

       {
      frmMainProgram.FormStyle := fsNormal;
      frmMainProgram.BorderStyle:=bsNone;
      frmMainProgram.KeyPreview:=true;
      frmMainProgram._Params:=_Parameter.Param1;


      Application.MainForm.OnKeyPress:= frmMainProgram.OnKeyPress;

      frmMainProgram.Width:=AParent.Width;
      frmMainProgram.Height:=AParent.Height;

      if UpperCase(trim(_Parameter.Param1))='KEYIN' then    
        Application.MainForm.Caption:=Application.Title+' - [ KEYIN ]'
      else
        Application.MainForm.Caption:=Application.Title+' - [ '+frmMainProgram.Caption+' ]';

      frmMainProgram.ToolbarVisible:=_Parameter.BtnVisible;
      frmMainProgram.ToolbarEnable:=_Parameter.BtnEnable;
      }
      frmSetDealerGroup.UserID:=_Parameter.UserID;
      frmSetDealerGroup.Branch:=_Parameter.Branch;
      frmSetDealerGroup.PDM:=_Parameter.PDM;
      frmSetDealerGroup.PDT:=_Parameter.PDT;
      frmSetDealerGroup.WorkStation:=_Parameter.WorkStation;






    frmSetDealerGroup.ShowModal();


     // Result:=frmSetDealerGroup;
    //  frmSetDealerGroup.Free;

    FreeAndNil(frmSetDealerGroup);
  end;

end;

procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;

end;

exports
    ShowProgramS;

begin
  DLLProc := @DLLUnloadProc;
end.
