unit myform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

  // To get a reference of your form's class
  TMyFormClass = class of TMyDllForm;
  // To be able to export the form class.
  function MyFormClass: TFormClass; stdcall; export;  

type
  TMyDllForm = class(TForm)


  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

end.
