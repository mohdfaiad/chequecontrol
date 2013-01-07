program Cheque;

uses
  Forms,
  MainAppFrm in 'MainAppFrm.pas' {frmMainApplication},
  UIT_GLOBAL_LIB in '..\LIB\UIT_GLOBAL_LIB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainApplication, frmMainApplication);
  Application.Run;
end.
