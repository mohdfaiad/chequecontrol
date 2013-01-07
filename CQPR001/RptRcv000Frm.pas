unit RptRcv000Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ReportBaseFrm, Menus, cxLookAndFeelPainters, DB, DBClient,
  MConnect, SConnect, SockCon, frxClass, frxDBSet, frxADOComponents,
  frxIBXComponents, frxBDEComponents, frxBarcode, frxDBXComponents,
  frxChart, frxExportHTML, frxDCtrl, frxExportPDF, frxExportXLS,
  frxExportCSV, StdCtrls, cxButtons, ExtCtrls, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmRptRcv000 = class(TfrmReportBase)
    dtFrom: TcxDateEdit;
    dtTo: TcxDateEdit;
    chqFrom: TcxTextEdit;
    chqTo: TcxTextEdit;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRptRcv000: TfrmRptRcv000;

implementation

{$R *.dfm}

procedure TfrmRptRcv000.btnCancelClick(Sender: TObject);
begin
  inherited;
 close;
end;

procedure TfrmRptRcv000.btnOKClick(Sender: TObject);
var
obj,rpVariables:array of TReportParam;
begin
  inherited;
      SetLength(obj,1);
      obj[0]:=TReportParam.Create;
      obj[0].AddParam('DNO','RC201201240093');
      obj[0].AddParam('ACT','A');
      ShowReport(SockCon,'RCV002',obj);
      close;
end;
end.
