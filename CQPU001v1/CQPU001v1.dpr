library CQPU001v1;

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
  UIT_GLOBAL_LIB in '..\LIB\UIT_GLOBAL_LIB.PAS',
  BaseFrm in '..\BaseFrom\BaseFrm.pas' {frmBase},
  UIT_UTILS_LIB in '..\LIB\UIT_UTILS_LIB.pas',
  MainProgramFrm in 'MainProgramFrm.pas' {FrmMainProgram};

type
  TShowWindowType = (swNone, swModal, swNormal);

var
  DllApplication : TApplication = Nil;
{$R *.res}
function Execute(_MainApp: TApplication;_Type: TShowWindowType; _Parameter: String): TForm; stdcall;
begin

  Result := TfrmMainProgram.Create(_MainApp);
  begin
    Result.FormStyle := fsNormal;
    Result.WindowState := wsNormal;

    Result.ShowModal();
   // FreeAndNil(Result);
  end;// else
end;


procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then
    if Assigned(DllApplication) then Application := DllApplication;
end;

exports
    Execute;

begin

  DLLProc := @DLLUnloadProc;
end.
