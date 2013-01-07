library CQPU001;

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
  SqlExpr,
  ADODB,
  UIT_GLOBAL_LIB in '..\LIB\UIT_GLOBAL_LIB.PAS',
  MainFrm in 'MainFrm.pas' {frmMain},
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  ReceiveFrm in 'ReceiveFrm.pas' {frmReceive},
  JvPanel,
  PluginBaseFrm in '..\BaseFrom\PluginBaseFrm.pas' {frmPluginBase},
  AFromBase in '..\BaseFrom\AFromBase.pas';

var
  DllApplication : TApplication = Nil;

{$R *.res}




function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String;_DBConn:TADOConnection):TForm; export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;

  if (_Type = swModal) then
  begin
    Result := TfrmMain.Create(Application);
    TfrmMain(Result).ADODataSet.Connection := _DBConn;
    Result.FormStyle := fsNormal;
    Result.WindowState := wsNormal;
    Result.ShowModal();
    FreeAndNil(Result);
  end else
  begin
    Result := TfrmMain.Create(Application.MainForm);
    TfrmMain(Result).ADODataSet.Connection := _DBConn;
    Result.FormStyle := fsMDIChild;
    Result.WindowState:=wsMaximized;
    Result.Show();
  end;

  

end;


function ExecuteToContainer(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TADOConnection): TForm;export; stdcall;
begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;
    Result := TfrmMain.CreateParented(AParent.Handle);
    TfrmMain(Result).ADODataSet.Connection := _DBConn;
    Result.FormStyle := fsNormal;
    Result.BorderStyle:=bsNone;
    Result.Align:=alClient;

    Application.MainForm.OnKeyPress:= TfrmMain(Result).OnKeyPress;
    Result.Show();



end;





function ExecuteToContainerA(_MainApp: TApplication;AParent:TWinControl; _Parameter: String;_DBConn:TADOConnection): TForm;export; stdcall;

begin
 if DllApplication=nil then
 begin
   DllApplication:=Application;
   Application:=_MainApp;
 end;



    Application.CreateForm(TfrmBase, frmBase);
    Application.CreateForm(TfrmPluginBase, frmPluginBase);


    Result := TfrmReceive.CreateParented(AParent.Handle);
    //Result := TfrmReceive.Create(Application);
    //TfrmReceive(Result).MASTERPANE.Parent:=AParent;

    //TfrmReceive(Result).ADODataSet.Connection := _DBConn;



    Result.FormStyle := fsNormal;
    Result.BorderStyle:=bsNone;

    Application.MainForm.OnKeyPress:= TfrmMain(Result).OnKeyPress;
    Result.Width:=AParent.Width;
    Result.Height:=AParent.Height;
    //Result.Align:=alClient;

    Result.Show();

  

end;



procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;
end;

exports
    Execute,ExecuteToContainerA,ExecuteToContainer;


begin
  DLLProc := @DLLUnloadProc;


end.
