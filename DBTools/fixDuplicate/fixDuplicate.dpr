program fixDuplicate;

uses
  Forms,
  FixDuplicateRowFrm in 'FixDuplicateRowFrm.pas' {frmFixDuplicateRow};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmFixDuplicateRow, frmFixDuplicateRow);
  Application.Run;
end.
