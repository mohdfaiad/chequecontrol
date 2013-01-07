unit GenerateChqFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles,  
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  Menus, cxContainer, ExtCtrls, DBCtrls, cxLabel, cxTextEdit, StdCtrls,
  cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ComCtrls,
  DBClient, MConnect, SConnect, SockCon, cxCheckBox;

type
  TfrmGenerateChq = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    gridSeperate: TcxGrid;
    gridSeperateDBTableView1: TcxGridDBTableView;
    gridSeperateLevel1: TcxGridLevel;
    btnSeOK: TcxButton;
    btnSeCancel: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxLabel5: TcxLabel;
    DBNavigator1: TDBNavigator;
    TabSheet2: TTabSheet;
    Bevel2: TBevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btnHisOK: TcxButton;
    btnHisCancel: TcxButton;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    SockCon: TSockCon;
    connBroker: TConnectionBroker;
    cdsGenerateChq: TClientDataSet;
    dsGenerateChq: TDataSource;
    cdsHpIns: TClientDataSet;
    dsHpIns: TDataSource;
    btnReGenerate: TcxButton;
    cdsGenerateChqCQMACT: TStringField;
    cdsGenerateChqCQMSTS: TStringField;
    cdsGenerateChqCQMBRN: TStringField;
    cdsGenerateChqCQMPDM: TStringField;
    cdsGenerateChqCQMPDT: TStringField;
    cdsGenerateChqCQMDNO: TStringField;
    cdsGenerateChqCQMBNK: TStringField;
    cdsGenerateChqCQMBBR: TStringField;
    cdsGenerateChqCQMLET: TStringField;
    cdsGenerateChqCQMCNO: TStringField;
    cdsGenerateChqCQMTYP: TStringField;
    cdsGenerateChqCQMCTY: TStringField;
    cdsGenerateChqCQMDTE: TSQLTimeStampField;
    cdsGenerateChqCQMITM: TIntegerField;
    cdsGenerateChqCQMAMT: TFMTBCDField;
    cdsGenerateChqCQMDUE: TSQLTimeStampField;
    cdsGenerateChqCQMCSN: TStringField;
    cdsGenerateChqCQMRMK: TStringField;
    cdsGenerateChqCQMRS1: TStringField;
    cdsGenerateChqCQMRS2: TStringField;
    cdsGenerateChqCQMRS3: TStringField;
    cdsGenerateChqCQMRS4: TStringField;
    cdsGenerateChqCQMRS5: TStringField;
    cdsGenerateChqCQMRN1: TFMTBCDField;
    cdsGenerateChqCQMRN2: TFMTBCDField;
    cdsGenerateChqCQMRN3: TFMTBCDField;
    cdsGenerateChqCQMRN4: TFMTBCDField;
    cdsGenerateChqCQMRN5: TFMTBCDField;
    cdsGenerateChqCQMETD: TSQLTimeStampField;
    cdsGenerateChqCQMETW: TStringField;
    cdsGenerateChqCQMETU: TStringField;
    cdsGenerateChqCQMMTD: TSQLTimeStampField;
    cdsGenerateChqCQMMTU: TStringField;
    cdsGenerateChqCQMMTW: TStringField;
    cdsGenerateChqCQMIAM: TFMTBCDField;
    cdsGenerateChqCQMCHK: TIntegerField;
    gridSeperateDBTableView1CQMLET: TcxGridDBColumn;
    gridSeperateDBTableView1CQMTYP: TcxGridDBColumn;
    gridSeperateDBTableView1CQMCTY: TcxGridDBColumn;
    gridSeperateDBTableView1CQMDTE: TcxGridDBColumn;
    gridSeperateDBTableView1CQMITM: TcxGridDBColumn;
    gridSeperateDBTableView1CQMAMT: TcxGridDBColumn;
    gridSeperateDBTableView1CQMDUE: TcxGridDBColumn;
    gridSeperateDBTableView1CQMCSN: TcxGridDBColumn;
    gridSeperateDBTableView1CQMIAM: TcxGridDBColumn;
    gridSeperateDBTableView1CQMCHK: TcxGridDBColumn;
    procedure btnReGenerateClick(Sender: TObject);
    procedure btnHisCancelClick(Sender: TObject);
    procedure btnHisOKClick(Sender: TObject);
    procedure btnSeOKClick(Sender: TObject);
    procedure btnSeCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenerateChq: TfrmGenerateChq;

implementation

{$R *.dfm}

procedure TfrmGenerateChq.btnHisCancelClick(Sender: TObject);
begin
  self.close;
end;

procedure TfrmGenerateChq.btnHisOKClick(Sender: TObject);
begin
  self.close;
end;

procedure TfrmGenerateChq.btnReGenerateClick(Sender: TObject);
begin
  with cdsHpIns do
  begin
    close;
    CommandText:='select * from HPTINS00 where INSCRN=''8100250'' and INSF11=3 order by INSITM';
    open;

    if recordcount>0 then
    begin
      //
    end;
  end;
end;

procedure TfrmGenerateChq.btnSeCancelClick(Sender: TObject);
begin
  self.close;
end;

procedure TfrmGenerateChq.btnSeOKClick(Sender: TObject);
begin
 self.close;
end;

end.
