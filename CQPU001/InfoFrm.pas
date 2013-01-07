unit InfoFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, DBClient, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, MConnect, SConnect, SockCon,
  cxContainer, cxLabel;

type
  TfrmInfo = class(TForm)
    Bevel1: TBevel;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cdsInfo: TClientDataSet;
    dsInfo: TDataSource;
    SockCon1: TSockCon;
    cxGridDBTableView4INSCRN: TcxGridDBColumn;
    cxGridDBTableView4INSITM: TcxGridDBColumn;
    cxGridDBTableView4INSDUE: TcxGridDBColumn;
    cxGridDBTableView4INSIAM: TcxGridDBColumn;
    cxGridDBTableView4INSVAM: TcxGridDBColumn;
    cxGridDBTableView4INSIRA: TcxGridDBColumn;
    cxGridDBTableView4WHT: TcxGridDBColumn;
    lbDealerName: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel1: TcxLabel;
    lbModel: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView4CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    Fcontract: string;
    procedure Setcontract(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property contract :string read Fcontract write Setcontract;
  end;

var
  frmInfo: TfrmInfo;

implementation

uses MainProgramFrm, UIT_UTILS_LIB, CQPU001_UTILS;

{$R *.dfm}

procedure TfrmInfo.cxGridDBTableView4CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
    if AViewInfo.GridRecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('INSIRA').Index]>0 then
    //if AViewInfo.GridRecord.Values[5]>0 then
    begin
        ACanvas.Brush.Color := $00EEEEDD;
        ACanvas.Font.Color:=clWindowText;
        ACanvas.Font.Style:=[fsBold]
    end else
    begin
        ACanvas.Brush.Color := clInfoBk;
        ACanvas.Font.Color:=clWindowText;
    end;

end;

procedure TfrmInfo.FormShow(Sender: TObject);
begin

    lbDealerName.Caption:=getContractName(frmMainProgram.SocketConn,Fcontract);
    lbModel.Caption:=getModelName(frmMainProgram.SocketConn,Fcontract);



    with cdsInfo do
    begin
      close;
      frmMainProgram.SocketConn.AddProv('temp_infoprov001', 'ALL');
      ProviderName:='temp_infoprov001';
      CommandText:=
      (* '' +
      ' declare @dt as datetime  '+
      ' select @dt=MAX(INSDUE) from HPTINS00 where INSCRN='''+Fcontract+''' '+
      ' select * from fn_GetChqPayment('''+Fcontract+''',@dt) ';

      *)
      ' select   '+
      '  a.INSCRN,a.INSITM,a.INSDUE,a.INSIAM,a.INSVAM,a.INSIRA, '+
      '  case         '+
      '    when b.CONPER<=36 then        '+
      '   convert(decimal(18,2),(a.INSIAM*0.05))'+
      '   else 0 '+
      '  end as WHT '+
      ' , a.INSIRA,a.INSVLD '+
      ' from HPTINS00  a  '+
      ' left join HPMCON00 b on a.INSCRN=b.CONRUN  '+
      ' where   '+
      '  a.INSCRN='''+Fcontract+''' '+
      '  and a.INSITM>0   '+
      ' order by a.INSITM  ';


      open;

      if recordcount>0 then
      begin
       TFloatField(cdsInfo.FieldByName('INSIAM')).DisplayFormat := '#,##0.00';
       TFloatField(cdsInfo.FieldByName('INSIRA')).DisplayFormat := '#,##0.00';
       TFloatField(cdsInfo.FieldByName('INSVAM')).DisplayFormat := '#,##0.00';
      // TFloatField(cdsInfo.FieldByName('INSNET')).DisplayFormat := '#,##0.00';
       TFloatField(cdsInfo.FieldByName('WHT')).DisplayFormat := '#,##0.00';
       //TFloatField(cdsInfo.FieldByName('CQSADV')).DisplayFormat := '#,##0.00';

       cxGridDBTableView4INSVAM.Caption:='VAT('+inttostr(getTaxRate(frmMainProgram.SocketConn))+'%)';
       cxGridDBTableView4WHT.Caption:='WT('+inttostr(getWHTRate(frmMainProgram.SocketConn))+'%)';
      end;
    end;

   (*
   // info
   cdsInfo.close;
   TSockCon(cdsInfo.RemoteServer).AddProv('temp_infoprov001', 'ALL');
   cdsInfo.ProviderName:='temp_infoprov001';
   cdsInfo.CommandText:= '' +
   ' declare @dt as datetime  '+
   ' select @dt=MAX(INSDUE) from HPTINS00 where INSCRN='''+Fcontract+''' '+
   ' select * from fn_GetChqPayment('''+Fcontract+''',@dt) ';
   cdsInfo.Open;

   // set field format
   TFloatField(cdsInfo.FieldByName('INSIAM')).DisplayFormat := '#,##0.00';
   TFloatField(cdsInfo.FieldByName('INSIRA')).DisplayFormat := '#,##0.00';
   TFloatField(cdsInfo.FieldByName('INSVAM')).DisplayFormat := '#,##0.00';
   TFloatField(cdsInfo.FieldByName('INSNET')).DisplayFormat := '#,##0.00';
   TFloatField(cdsInfo.FieldByName('WHT')).DisplayFormat := '#,##0.00';
   TFloatField(cdsInfo.FieldByName('CQSADV')).DisplayFormat := '#,##0.00';

   cxGridDBTableView4INSVAM.Caption:='VAT('+inttostr(getTaxRate(frmMainProgram.SocketConn))+'%)';
   cxGridDBTableView4WHT.Caption:='WT('+inttostr(getWHTRate(frmMainProgram.SocketConn))+'%)';     *)
end;

procedure TfrmInfo.Setcontract(const Value: string);
begin
  Fcontract := Value;
end;

end.
