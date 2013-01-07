unit Q001TrackingFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBClient,
  Q001MainDM, cxLabel, RemCustomDS, RemDataSet;

type
  TFrmQ001Tracking = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DTKG: TDataSource;
    cxGrid1DBTableView1CQTRNO: TcxGridDBColumn;
    cxGrid1DBTableView1CQTNO2: TcxGridDBColumn;
    cxGrid1DBTableView1CQTAMT: TcxGridDBColumn;
    cxGrid1DBTableView1CQTDAT: TcxGridDBColumn;
    cxGrid1DBTableView1CQTTRD: TcxGridDBColumn;
    cxGrid1DBTableView1CQTCTY: TcxGridDBColumn;
    cxGrid1DBTableView1CQMCSN: TcxGridDBColumn;
    cxGrid1DBTableView1MODEL: TcxGridDBColumn;
    cxGrid1DBTableView1DEA1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1CQMEGN: TcxGridDBColumn;
    cxGrid1DBTableView1CQMBRH: TcxGridDBColumn;
    cxGrid1DBTableView1CQMNAT: TcxGridDBColumn;
    TKG: TRemDataSet;
    cxGrid1DBTableView1STS: TcxGridDBColumn;
    cxGrid1DBTableView1CQTSTD: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure TKGAfterOpen(DataSet: TDataSet);
  private
    FDNO: STRING;
  public
    property DNO:STRING  read FDNO write FDNO;
  end;

var
  FrmQ001Tracking: TFrmQ001Tracking;

implementation

{$R *.dfm}

procedure TFrmQ001Tracking.FormShow(Sender: TObject);
begin
  with DMQ001Main do
  begin
      RQC.AddProv('TKG','ALL');
      TKG.ProviderName := 'TKG';
      TKG.RemoteServer := RQC;
      TKG.Close;
      TKG.CommandText := 'SELECT A.CQTRNO                                 ' + #13 +
                         '   , (A.CQTACT + A.CQTSTS) AS STS               ' + #13 +
                         '   , A.CQTSTD                                   ' + #13 +
                         '   , A.CQTDNO                                   ' + #13 +
                         '   , A.CQTNO2                                   ' + #13 +
                         '   , A.CQTAMT                                   ' + #13 +
                         '   , A.CQTDAT                                   ' + #13 +
                         '   , A.CQTTRD                                   ' + #13 +
                         '   , A.CQTCTY                                   ' + #13 +
                         '   , B.CQMCSN                                   ' + #13 +
                         '   , D.MODEL                                    ' + #13 +
                         '   , D.DEA1NAME                                 ' + #13 +
                         '   , E.CQMEGN                                   ' + #13 +
                         '   , E.CQMBRH                                   ' + #13 +
                         '   , F.CQMNAT                                   ' + #13 +
                         'FROM CQDT002 A ' + #13 +
                         'LEFT JOIN CQDM007 B ON A.CQTRFN=B.CQMDNO' + #13 +
                         'LEFT JOIN LHPPDTA.DBO.TMP_INFOCOLLECTION D ON D.FSYSTEM=''LS'' AND B.CQMCSN=D.CONRUN' + #13 +
                         'LEFT JOIN CQDM001 E ON A.CQTBNK=E.CQMBNK AND A.CQTBBR=E.CQMBRC ' + #13 +
                         'LEFT JOIN CQDM003 F ON CAST(A.CQTCCQ AS INT)=F.CQMCDE ' + #13 +
                         'WHERE CQTDNO=''' + FDNO + ''' ORDER BY CQTRNO';
      TKG.Open;
      DTKG.DataSet := TKG;
  end;

end;

procedure TFrmQ001Tracking.TKGAfterOpen(DataSet: TDataSet);
begin
  TFloatField(TKG.FieldByName('CQTAMT')).DisplayFormat := '#,##0.00';
  TFloatField(TKG.FieldByName('CQTDAT')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(TKG.FieldByName('CQTTRD')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(TKG.FieldByName('CQTSTD')).DisplayFormat := 'dd/MM/yyyy';
end;

end.
