program ClearDB;

uses
  Forms,
  ClearDBFrm in 'ClearDBFrm.pas' {frmClearDB},
  UIT_GLOBAL_LIB in '..\..\LIB\UIT_GLOBAL_LIB.pas',
  UIT_UTILS_LIB in '..\..\LIB\UIT_UTILS_LIB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClearDB, frmClearDB);
  Application.Run;
end.
