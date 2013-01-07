unit Q001TrackChqFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxTextEdit, cxDBEdit, cxControls, cxContainer, cxEdit, cxLabel, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLookAndFeels;

type
  TQ001FrmTrackChq = class(TForm)
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    Bevel1: TBevel;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    btnCancel: TcxButton;
    CxGBank: TcxGrid;
    CxGBankDBTableView1: TcxGridDBTableView;
    Track_DepDate: TcxGridDBColumn;
    Track_bankName: TcxGridDBColumn;
    Track_Chqtype: TcxGridDBColumn;
    Track_BranckName: TcxGridDBColumn;
    Track_ChqNo: TcxGridDBColumn;
    CxGBankLevel1: TcxGridLevel;
    cxLabel4: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Track_chqDate: TcxGridDBColumn;
    Track_Amt: TcxGridDBColumn;
    Track_Active: TcxGridDBColumn;
    Track_Status: TcxGridDBColumn;
    Track_RETreason: TcxGridDBColumn;
    DTSTrackChq: TDataSource;
    track_item: TcxGridDBColumn;
    Track_Date: TcxGridDBColumn;
    Track_Who: TcxGridDBColumn;
    Track_devision: TcxGridDBColumn;
    Track_Docu: TcxGridDBColumn;
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Track_AmtGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure track_itemGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
  private
    { Private declarations }
  public
     FChqno :string;
    { Public declarations }
  end;

var
  Q001FrmTrackChq: TQ001FrmTrackChq;

implementation

uses  Q001MainDM;
{$R *.dfm}

procedure TQ001FrmTrackChq.btnCancelClick(Sender: TObject);
begin
 close;
end;
{
procedure TQ001FrmTrackChq.DrillDownCheque
begin
  with Q001DMMain.TrackChq do
    begin
     Close;
     CommandText := '';
     CommandText := ' SELECT A.* ,B.CQMNAT , '+
                   ' C.CQTEGN,C.CQTCON,C.CQTDEA,C.CQTMDL, C.CQTBRH  '+
                   ' FROM LLSPDTA.dbo.CQDT002 A '+
                   ' LEFT JOIN LLSPDTA.dbo.CQDM003 B  ON A.CQTCCQ=B.CQMCDE' +
                   ' LEFT JOIN LLSPDTA.dbo.CQDT003 C  ON A.CQTNO2=C.CQTNO2' +
                   ' where a.CQTNO2 = '''+FChqNo+'''    ' +
                   ' ORDER BY A.CQTCRD';
    end;

end;
}
procedure TQ001FrmTrackChq.FormShow(Sender: TObject);
var  Fvariable :string;
begin
//  Fvariable:= Q001DMMain.CDSMAN.FieldByName('CQTNo2').AsString;

  with Q001DMMain.TrackChq do
  begin
     Close;
     CommandText := '';
     CommandText := ' SELECT A.* ,B.CQMNAT , '+
                   ' C.CQTEGN,C.CQTCON,C.CQTDEA,C.CQTMDL, C.CQTBRH  '+
                   ' FROM LLSPDTA.dbo.CQDT002 A '+
                   ' LEFT JOIN LLSPDTA.dbo.CQDM003 B  ON A.CQTCCQ=B.CQMCDE' +
                   ' LEFT JOIN LLSPDTA.dbo.CQDT004 C  ON A.CQTNO2=C.CQTNO2' +
                   ' where a.CQTNO2 = '''+FChqno+'''    ' +
                   ' ORDER BY A.CQTCRD';
    if not Active then  Open;

    cxDBTextEdit1.DataBinding.DataField   := 'CQTNO2';
//    cxDBTextEdit6.DataBinding.DataField   := 'CQTBNK';
    cxDBTextEdit7.DataBinding.DataField   := 'CQTEGN';
//    ShowMessage(Q001DMMain.TrackChq.FieldByName('CQTEGN').AsString);
//    cxDBTextEdit9.DataBinding.DataField   := 'CQTBBR';
    cxDBTextEdit10.DataBinding.DataField  := 'CQTBRH';
    cxDBTextEdit11.DataBinding.DataField  := 'CQTCON';
    cxDBTextEdit2.DataBinding.DataField   := 'CQTDEA';
    cxDBTextEdit3.DataBinding.DataField   := 'CQTMDL';

  end;


end;

procedure TQ001FrmTrackChq.Track_AmtGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
    AText := formatfloat('#,##0.00',StrToFloat(AText));
end;

procedure TQ001FrmTrackChq.track_itemGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
  var
  Row: Integer;
begin
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;

end.
