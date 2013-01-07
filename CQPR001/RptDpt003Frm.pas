unit RptDpt003Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ReportBaseFrm, Menus, cxLookAndFeelPainters, DB, DBClient,
  MConnect, SConnect, SockCon, frxClass, frxDBSet, frxADOComponents,
  frxIBXComponents, frxBDEComponents, frxBarcode, frxDBXComponents,
  frxChart, frxExportHTML, frxDCtrl, frxExportPDF, frxExportXLS,
  frxExportCSV, StdCtrls, cxButtons, ExtCtrls, cxLabel, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmRptDpt003 = class(TfrmReportBase)
    DateF: TcxDateEdit;
    DateT: TcxDateEdit;
    cxLabel1: TcxLabel;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRptDpt003: TfrmRptDpt003;

implementation

{$R *.dfm}

procedure TfrmRptDpt003.btnOKClick(Sender: TObject);
var
obj,rpVariables:array of TReportParam;
begin
  inherited;
      SetLength(obj,1);
      obj[0]:=TReportParam.Create;
      obj[0].AddParam('DTF',FormatDateTime('MM/dd/yyyy',DateF.Date));
      obj[0].AddParam('ACT','A');
      obj[0].AddParam('TYP','Y');
      obj[0].AddParam('DTT',FormatDateTime('MM/dd/yyyy',DateT.Date));
      ShowReport(SockCon,Self._Params,obj);
      close;
end;

end.
