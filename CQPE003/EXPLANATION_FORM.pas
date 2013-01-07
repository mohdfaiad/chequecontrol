unit EXPLANATION_FORM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, Grids,
  DBGrids, JvExStdCtrls, JvEdit, JvDBSearchEdit, DB, JvComponentBase,
  JvgExportComponents,BaseFrm,UIT_GLOBAL_LIB, ImgList, Provider, ADODB,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel, ComCtrls, ToolWin,
  JvExExtCtrls, JvExtComponent, JvPanel, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DSource;

type
  TForm_Explanation = class(TfrmBase)
    Export: TJvgExportExcel;
    pa_Explanation: TPanel;
    Add: TcxButton;
    Edit: TcxButton;
    delete: TcxButton;
    Search1: TJvDBSearchEdit;
    Export1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DSource1: TDSource;
    cxGrid1DBTableView1Ex_Number: TcxGridDBColumn;
    cxGrid1DBTableView1Ex_Thai: TcxGridDBColumn;
    cxGrid1DBTableView1Ex_English: TcxGridDBColumn;
    procedure AddClick(Sender: TObject);
    procedure EditClick(Sender: TObject);
    procedure deleteClick(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Explanation: TForm_Explanation;

implementation

uses Ex_Dm, Ex_take_Form;

{$R *.dfm}

procedure TForm_Explanation.AddClick(Sender: TObject);
begin

  //Ck:='ADD';
  Dm_Explanation.dso_explana.Append;
  Form_Ex_take:=TForm_Ex_take.Create(nil);
  Form_Ex_take.ShowModal;
  Form_Ex_take.Free;
end;

procedure TForm_Explanation.deleteClick(Sender: TObject);
begin
Dm_Explanation.dso_explana.Delete;
Dm_Explanation.dso_explana.ApplyUpdates(0);
end;

procedure TForm_Explanation.EditClick(Sender: TObject);
begin
  Dm_Explanation.dso_explana.Edit;
  Form_Ex_take:=TForm_Ex_take.Create(nil);
 Form_Ex_take.ShowModal;
 Form_Ex_take.Free;
end;

procedure TForm_Explanation.Export1Click(Sender: TObject);
begin

Export.Execute;
end;

procedure TForm_Explanation.FormShow(Sender: TObject);
begin
  inherited;
  Dm_Explanation.LoadEX;
end;

end.
