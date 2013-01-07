unit Ex_take_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, Mask, DBCtrls,
  ExtCtrls, DB, DSource, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDBEdit;

type
  TForm_Ex_take = class(TForm)
    pa_ex_take: TPanel;
    Ex_thai: TDBEdit;
    Ex_English: TDBEdit;
    Cancel: TcxButton;
    dsrc1: TDSource;
    Save: TcxButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    Ex_Number: TcxDBMaskEdit;
    procedure SaveClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Ex_take: TForm_Ex_take;

implementation

uses Ex_Dm;

{$R *.dfm}

procedure TForm_Ex_take.CancelClick(Sender: TObject);
begin
if Dm_Explanation.dso_explana.State=dsInsert then
begin
  if Application.MessageBox('คุณจะเพิ่มสถานะหรือไม่', '', MB_YESNO +
  MB_ICONWARNING) = IDYES then
    begin
      Dm_Explanation.dso_explana.Cancel;
      Dm_Explanation.dso_explana.Append;
    end
    else
    begin
     Dm_Explanation.dso_explana.Cancel;
    Close;
    end;


  end
  else
  begin
  Dm_Explanation.dso_explana.Cancel;
  Close;
  end;


end;

procedure TForm_Ex_take.FormShow(Sender: TObject);
begin
Ex_Number.SetFocus;
end;

procedure TForm_Ex_take.SaveClick(Sender: TObject);
begin

if Dm_Explanation.dso_explana.State=dsInsert then
begin
  if Application.MessageBox('คุณจะเพิ่มสถานะหรือไม่', '', MB_YESNO +
    MB_ICONWARNING) = IDYES then
     begin
        Dm_Explanation.dso_explana.ApplyUpdates(0);
        Dm_Explanation.dso_explana.Append;
        Ex_Number.SetFocus;
     end
    else
    begin
     Dm_Explanation.dso_explana.ApplyUpdates(0);
      Close;
    end;
    
    end
  else
    begin
      Dm_Explanation.dso_explana.ApplyUpdates(0);
        Close;
     end;
end;


end.



