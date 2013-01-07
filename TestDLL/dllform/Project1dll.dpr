library Project1dll;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  View-Project Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the DELPHIMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using DELPHIMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  Controls,
  Forms,
  DllForm in 'DllForm.pas' {frmDllForm};


procedure ShowDllForm;stdcall;
begin
  frmDllForm :=TfrmDllForm.Create(nil);
  frmDllForm.Show;
end;

procedure ShowDllFormParent(p : TWinControl);stdcall;
begin

  frmDllForm :=TfrmDllForm.CreateParented(p.Handle);
  frmDllForm.BorderStyle := bsNone;
  frmDllForm.Top := 0;
  frmDllForm.Left := 0;
  frmDllForm.Show;

end;

function ShowDllFormModal:integer;stdcall;
begin
  frmDllForm :=TfrmDllForm.Create(nil);
  Result := frmDllForm.ShowModal;
end;

Exports
    ShowDllForm,
    ShowDllFormModal,
    ShowDllFormParent;

begin




end.
