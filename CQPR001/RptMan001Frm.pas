unit RptMan001Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ReportBaseFrm, Menus, cxLookAndFeelPainters, DB, DBClient,
  MConnect, SConnect, SockCon, frxClass, frxDBSet, frxADOComponents,
  frxIBXComponents, frxBDEComponents, frxBarcode, frxDBXComponents,
  frxChart, frxExportHTML, frxDCtrl, frxExportPDF, frxExportXLS,
  frxExportCSV, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmRptMan001 = class(TfrmReportBase)
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRptMan001: TfrmRptMan001;

implementation

{$R *.dfm}

procedure TfrmRptMan001.btnOKClick(Sender: TObject);
var
obj,rpVariables:array of TReportParam;
begin
  inherited;
      SetLength(obj,1);
      obj[0]:=TReportParam.Create;
      obj[0].AddParam('DT','B');
      obj[0].AddParam('RN','R');
      obj[0].AddParam('UI','U');
      obj[0].AddParam('DD','D');
      obj[0].AddParam('TT','T');
      obj[0].AddParam('T','O');
      obj[0].AddParam('WD','W');
      ShowReport(SockCon,Self._Params,obj);
      close;
end;

end.
