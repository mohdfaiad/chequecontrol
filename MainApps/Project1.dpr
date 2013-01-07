program Project1;

uses
  Forms,
  MAINForm in 'MAINForm.pas' {FormMAIN},
  LoginForm in 'LoginForm.pas' {FormLogin},
  ReceiveFrm in 'ReceiveFrm.pas' {frmReceive};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMAIN, FormMAIN);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TfrmReceive, frmReceive);
  Application.Run;
end.
