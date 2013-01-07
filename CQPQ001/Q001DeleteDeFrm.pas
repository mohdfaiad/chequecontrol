unit Q001DeleteDeFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Q001MainDM, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, DBClient,
  RemCustomDS, RemDataSet, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, UIT_UTILS_LIB, cxLabel;

type
  TFrmQ001DeleteDe = class(TForm)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    DDEL: TDataSource;
    DEL: TRemDataSet;
    cxGrid1DBTableView1CQSDNO: TcxGridDBColumn;
    cxGrid1DBTableView1CQSRNO: TcxGridDBColumn;
    cxGrid1DBTableView1CQSCQD: TcxGridDBColumn;
    cxGrid1DBTableView1CQSCQA: TcxGridDBColumn;
    cxGrid1DBTableView1CQSCQN: TcxGridDBColumn;
    cxGrid1DBTableView1CQSCQC: TcxGridDBColumn;
    cxGrid1DBTableView1CQSBKC: TcxGridDBColumn;
    cxGrid1DBTableView1CQSBRC: TcxGridDBColumn;
    cxGrid1DBTableView1CQSCQT: TcxGridDBColumn;
    cxGrid1DBTableView1CQSDED: TcxGridDBColumn;
    cxGrid1DBTableView1CQSDLC: TcxGridDBColumn;
    cxGrid1DBTableView1CQSBKN: TcxGridDBColumn;
    cxGrid1DBTableView1CQSBNN: TcxGridDBColumn;
    cxGrid1DBTableView1CQSREC: TcxGridDBColumn;
    cxGrid1DBTableView1CQSRED: TcxGridDBColumn;
    cxGrid1DBTableView1CQSPLO: TcxGridDBColumn;
    cxGrid1DBTableView1CQSECD: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure DELAfterOpen(DataSet: TDataSet);
  private
    FACD: string;
    { Private declarations }
  public
    property ACD:string  read FACD write FACD;
  end;

var
  FrmQ001DeleteDe: TFrmQ001DeleteDe;

implementation

{$R *.dfm}

procedure TFrmQ001DeleteDe.cxButton1Click(Sender: TObject);
var
  i : Integer;
begin
  with cxGrid1DBTableView1.DataController do
  begin
    DataSet.DisableControls;
      try
        for i := GetSelectedCount - 1 downto 0 do
        begin
          DataSet.RecNo := GetSelectedRowIndex(i)+1;
          //AddChequeEntry(DataSource1.DataSet);
          with DMQ001Main DO
          begin
            T004.Append;
            T004.FieldByName('CQTACT').AsString := 'A';
            T004.FieldByName('CQTSTS').AsString := 'P';
            T004.FieldByName('CQTBRN').AsString := Dll.Branch;
            T004.FieldByName('CQTPDM').AsString := Dll.PDM;
            T004.FieldByName('CQTPDT').AsString := Dll.PDT;
            T004.FieldByName('CQTDNO').AsString := '';
            T004.FieldByName('CQTMNO').AsString := '';
            T004.FieldByName('CQTSTN').AsString := '';
            T004.FieldByName('CQTBNK').AsString := DataSet.FieldByName('CQSBKC').AsString;
            T004.FieldByName('CQTEGN').AsString := DataSet.FieldByName('CQSBKC').AsString +' ' + DataSet.FieldByName('CQSBKN').AsString;
            T004.FieldByName('CQTBBR').AsString := DataSet.FieldByName('CQSBRC').AsString;
            T004.FieldByName('CQTBRH').AsString := DataSet.FieldByName('CQSBNN').AsString;
            //T004.FieldByName('CQTNO1').AsString := DMAS.DataSet.FieldByName('CQTNO1').AsString;
            T004.FieldByName('CQTNO2').AsString := DataSet.FieldByName('CQSCQN').AsString;
            //T004.FieldByName('CQTTYP').AsString := DMAS.DataSet.FieldByName('CQTTYP').AsString;
            T004.FieldByName('CQTCTY').AsString := IIF(DataSet.FieldByName('CQSCQT').AsString = '000','C','N');
            T004.FieldByName('CQTDAT').AsDateTime := DataSet.FieldByName('CQSCQD').AsDateTime;
            T004.FieldByName('CQTAMT').AsCurrency := DataSet.FieldByName('CQSCQA').AsCurrency;
            T004.FieldByName('CQTDUE').AsDateTime := DataSet.FieldByName('CQSECD').AsDateTime;
            //T004.FieldByName('CQTSTD').AsDateTime := DMAS.DataSet.FieldByName('CQTSTD').AsDateTime;
            //T004.FieldByName('CQTPAT').AsString := DMAS.DataSet.FieldByName('CQTPAT').AsString;
            T004.FieldByName('CQTTRD').AsDateTime := DataSet.FieldByName('CQSDED').AsDateTime;
            T004.FieldByName('CQTCCQ').AsString := DataSet.FieldByName('CQSREC').AsString;
            //T004.FieldByName('CQTCUS').AsString := DMAS.DataSet.FieldByName('CQTCUS').AsString;
            //T004.FieldByName('CQTVTP').AsString := DMAS.DataSet.FieldByName('CQTVTP').AsString;
            //T004.FieldByName('CQTGEN').AsString := DMAS.DataSet.FieldByName('CQTGEN').AsString;
            //T004.FieldByName('CQTVBR').AsString := DMAS.DataSet.FieldByName('CQTVBR').AsString;
            //T004.FieldByName('CQTVYY').AsString := DMAS.DataSet.FieldByName('CQTVYY').AsString;
            //T004.FieldByName('CQTRUN').AsString := DMAS.DataSet.FieldByName('CQTRUN').AsString;
            //T004.FieldByName('CQTITM').AsString := DMAS.DataSet.FieldByName('CQTITM').AsString;
            //T004.FieldByName('CQTPOS').AsString := DMAS.DataSet.FieldByName('CQTPOS').AsString;
            //T004.FieldByName('CQTRED').AsString := DMAS.DataSet.FieldByName('CQTRED').AsString;
            //T004.FieldByName('CQTRTD').AsString := DMAS.DataSet.FieldByName('CQTRTD').AsString;
            //T004.FieldByName('CQTEXC').AsString := DMAS.DataSet.FieldByName('CQTEXC').AsString;
            //T004.FieldByName('CQTDIV').AsString := DMAS.DataSet.FieldByName('CQTDIV').AsString;
            T004.FieldByName('CQTACC').AsString := DataSet.FieldByName('CQSCQC').AsString;
            //T004.FieldByName('CQTPID').AsDateTime := DMAS.DataSet.FieldByName('CQTPID').AsDateTime;
            //T004.FieldByName('CQTPIN').AsString := DMAS.DataSet.FieldByName('CQTPIN').AsString;
            //T004.FieldByName('CQTPBY').AsString := DMAS.DataSet.FieldByName('CQTPBY').AsString;
            //T004.FieldByName('CQTRFN').AsString := DMAS.DataSet.FieldByName('CQTRFN').AsString;
            //FieldByName('CQTMNS')
            //FieldByName('CQTMMO')
            T004.FieldByName('CQTNAT').AsString := DataSet.FieldByName('CQSRED').AsString;
            T004.FieldByName('CQTCON').AsString := DataSet.FieldByName('CQSDLC').AsString;
            //T004.FieldByName('CQTDEA').AsString := DMAS.DataSet.FieldByName('DEA1NAME').AsString;
            if CheckDate(FACD) then T004.FieldByName('CQTACD').AsDateTime := StrToDate(FACD);
            //T004.FieldByName('CQTMDL').AsString := DMAS.DataSet.FieldByName('MODEL').AsString;
            T004.FieldByName('CQTETD').AsDateTime := getServerDateTime(DMQ001Main.RQC);
            T004.FieldByName('CQTETU').AsString := Dll.UserID;
            T004.FieldByName('CQTETW').AsString := Dll.WorkStation;
            T004.FieldByName('CQTCRD').AsDateTime := getServerDateTime(DMQ001Main.RQC);
            T004.FieldByName('CQTCRU').AsString := Dll.UserID;
            T004.FieldByName('CQTCRW').AsString := Dll.WorkStation;
            T004.Post;
          end;
        end;
        ClearSelection;
        Close;
      finally
        DataSet.EnableControls;
      end;
  end;
end;

procedure TFrmQ001DeleteDe.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmQ001DeleteDe.DELAfterOpen(DataSet: TDataSet);
begin
  TFloatField(DEL.FieldByName('CQSCQA')).DisplayFormat := '#,##0.00';
  TFloatField(DEL.FieldByName('CQSCQD')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(DEL.FieldByName('CQSDED')).DisplayFormat := 'dd/MM/yyyy';
  TFloatField(DEL.FieldByName('CQSECD')).DisplayFormat := 'dd/MM/yyyy';
end;

procedure TFrmQ001DeleteDe.FormShow(Sender: TObject);
begin
  DMQ001Main.RQC.AddProv('DEL','ALL');
  DEL.ProviderName := 'DEL';
  DEL.RemoteServer := DMQ001Main.RQC;
  DEL.Command := 'SELECT * FROM CQDS001 WHERE CQSDEL=''T''';
end;

end.
