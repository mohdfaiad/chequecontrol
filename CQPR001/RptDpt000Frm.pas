unit RptDpt000Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ReportBaseFrm, Menus, cxLookAndFeelPainters, DB, DBClient,
  MConnect, SConnect, SockCon, frxClass, frxDBSet, frxADOComponents,
  frxIBXComponents, frxBDEComponents, frxBarcode, frxDBXComponents,
  frxChart, frxExportHTML, frxDCtrl, frxExportPDF, frxExportXLS,
  frxExportCSV, StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmRptDpt000 = class(TfrmReportBase)
    DateDe: TcxDateEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRptDpt000: TfrmRptDpt000;

implementation

{$R *.dfm}

procedure TfrmRptDpt000.btnCancelClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmRptDpt000.btnOKClick(Sender: TObject);
var
obj,rpVariables:array of TReportParam;
begin
  inherited;
      SetLength(obj,1);
      obj[0]:=TReportParam.Create;
      obj[0].AddParam('DT',FormatDateTime('MM/dd/yyyy',DateDe.Date));
      obj[0].AddParam('ACT','A');
      ShowReport(SockCon,Self._Params,obj);
      close;
end;
end.
