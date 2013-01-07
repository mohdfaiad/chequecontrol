unit ManualReceiveFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
   cxContainer, cxEdit,
   cxTextEdit, cxLabel, DB, DBClient, MConnect,
  SConnect, SockCon, Menus, cxButtons, cxLookAndFeelPainters;

type
  TfrmManualReceive = class(TForm)
    Bevel1: TBevel;
    RadioGroup1: TRadioGroup;
    btnSeperate: TButton;
    btnHold: TButton;
    btnCancel: TButton;
    Label2: TLabel;
    Bevel2: TBevel;
    ckWT: TCheckBox;
    btnOK: TButton;
    edNetPay: TcxTextEdit;
    raShortOver: TRadioButton;
    raPartial: TRadioButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    lbChqAmount: TcxLabel;
    lbAmount: TcxLabel;
    lbWT: TcxLabel;
    lbNetAmt: TcxLabel;
    lbNetPay: TcxLabel;
    _cds: TClientDataSet;
    _cdsPAYTYPE: TStringField;
    _cdsNETPAY: TFloatField;
    _cdsWHT: TFloatField;
    _cdsIWHT: TStringField;
    SockCon: TSockCon;
    lbAmountA: TcxLabel;
    lbWTA: TcxLabel;
    lbNetAmountA: TcxLabel;
    cxLabel8: TcxLabel;
    lbVAT: TcxLabel;
    lbVatA: TcxLabel;
    _cdsCON: TStringField;
    _cdsVAT: TFloatField;
    _cdsGOODS: TFloatField;
    _cdsAMT: TFloatField;
    _cdsDIFF: TFloatField;
    btnInfo: TcxButton;
    cxLabel5: TcxLabel;
    lbOut: TcxLabel;
    cxLabel7: TcxLabel;
    lbAdvance: TcxLabel;
    lbNetPayment: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    lbDue: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOKClick(Sender: TObject);
    procedure raPartialClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnHoldClick(Sender: TObject);
    procedure btnSeperateClick(Sender: TObject);
    procedure edNetPayKeyPress(Sender: TObject; var Key: Char);
    procedure edNetPayPropertiesChange(Sender: TObject);
    procedure ckWTClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
  private
    { Private declarations }
    FContract:string;
    FChqNO:string;
    FChqAMT:double;
    FAns:Integer;

    _NetAmount,_NetPay,_WT,_Amount,_VAT:double;
    _NetAmountA,_WTA,_AmountA,_VATA,_NetAdvance,_NetOut:double;



    procedure initForm();
    procedure Calc();
  public
    { Public declarations }

  published
    property _Contract: string read FContract write Fcontract;
    property _ChqNo: string read FChqNO write FChqNO;
    property _ChqAMT: double read FChqAMT write FChqAMT;
    property _Ans: integer read FAns write FAns;


  end;

var
  frmManualReceive: TfrmManualReceive;

implementation

uses PaymentInfoFrm,UIT_UTILS_LIB;

{$R *.dfm}

procedure TfrmManualReceive.btnCancelClick(Sender: TObject);
begin
  _Ans:=mrCancel;
  self.close;
end;

procedure TfrmManualReceive.btnHoldClick(Sender: TObject);
begin
  _Ans:=mrIgnore;
  self.close;
end;

procedure TfrmManualReceive.btnInfoClick(Sender: TObject);
begin

  //frmPaymentInfo.SockCon.Connected:=true;
  frmPaymentInfo:= TfrmPaymentInfo.Create(self);
  initSockConn(frmPaymentInfo.SockCon);
  frmPaymentInfo.ShowModal;
end;

procedure TfrmManualReceive.btnOKClick(Sender: TObject);
begin
  with _cds do
  begin
    EmptyDataSet;

    Append;
    if raPartial.Checked then               { Patient }
    begin
      FieldByName('PAYTYPE').AsString:='PA';

      FieldByName('WHT').AsFloat:=_WTA;
      FieldByName('AMT').AsFloat:=_AmountA;
      FieldByName('NETPAY').AsFloat:=_NetAmountA;
      FieldByName('CON').AsString:=_Contract;
      FieldByName('VAT').AsFloat:=_VATA;

    end
    else if raShortOver.Checked then       { Short / Over Amount }
    begin
      FieldByName('PAYTYPE').AsString:='SO';
      FieldByName('WHT').AsFloat:=_WT;
      FieldByName('AMT').AsFloat:=_Amount;
      FieldByName('NETPAY').AsFloat:=_NetAmount;
      FieldByName('CON').AsString:=_Contract;
      FieldByName('VAT').AsFloat:=_VAT;
      FieldByName('DIFF').AsFloat:=_ChqAMT-_NetAmount;

    end;

    if ckWT.Checked then
      FieldByName('IWHT').AsString:='Y'
    else FieldByName('IWHT').AsString:='N';

    post;
  end;

  _Ans:=mrOk;
  self.close;
end;

procedure TfrmManualReceive.btnSeperateClick(Sender: TObject);
begin
  _Ans:=mrYes;
  self.close;
end;

procedure TfrmManualReceive.Calc;
begin

    if ckWT.Checked then
    _NetAmount:=(_Amount+_VAT)-_WT
    else
    _NetAmount:=_Amount+_VAT;

    //_ChqAMT:=StrToFloat(edNetPay.Text)  ;
    if ckWT.Checked then
    begin
      _AmountA:=(_ChqAMT/1.02);
      _VATA:=_AmountA*0.07;
      _WTA:=_AmountA*0.05;

      _NetAmountA:=(_AmountA+_VATA)-_WTA;
    end
    else
    begin
      _VATA:=(_ChqAMT*0.07);
      _WTA:=0;
      _AmountA:=_ChqAMT-_VATA;

      _NetAmountA:=(_AmountA+_VATA);
    end;

    // Advance - Patial
    if _NetOut<0 then
    begin
      //lbOut.Caption:=FormatCurr('#,##0.00',abs(_NetOut)-((_Amount+_VAT)-_WT));
      lbOut.Caption:=FormatCurr('#,##0.00',abs(_NetOut));
      //_NetPay:=_NetAmount+abs(_NetOut);
      _NetPay:=abs(_NetOut);
    end
    else if _NetOut>0 then
    begin
      //lbAdvance.Caption:=FormatCurr('#,##0.00',abs(_NetOut)-((_Amount+_VAT)-_WT));
      lbAdvance.Caption:=FormatCurr('#,##0.00',abs(_NetOut));
      _NetPay:=_NetAmount-abs(_NetOut);
    end else
     begin
        lbOut.Caption:=FormatCurr('#,##0.00',0);
        lbAdvance.Caption:=FormatCurr('#,##0.00',0);
        _NetPay:=0.00;
     end;

    lbNetPayment.Caption:=FormatCurr('#,##0.00',_NetPay);



    lbAmountA.Caption:=FormatCurr('#,##0.00',_AmountA);
    lbVatA.Caption:=FormatCurr('#,##0.00',_VATA);
    lbWTA.Caption:=FormatCurr('#,##0.00',_WTA);
    lbNetAmountA.Caption:=FormatCurr('#,##0.00',_NetAmountA);

    lbNetAmt.Caption:=FormatCurr('#,##0.00',_NetAmount);
    lbAmount.Caption:=FormatCurr('#,##0.00',_Amount);
    lbNetPay.Caption:=FormatCurr('#,##0.00',_ChqAMT);

    if ckWT.Checked then
      lbWT.Caption:=FormatCurr('#,##0.00',_WT)
    else
    lbWT.Caption:=FormatCurr('#,##0.00',0);

    lbVAT.Caption:=FormatCurr('#,##0.00',_VAT);

end;

procedure TfrmManualReceive.ckWTClick(Sender: TObject);
begin
  calc;
end;

procedure TfrmManualReceive.edNetPayKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key in ['a'..'z'] + ['A'..'Z'] then Key := #0;
end;

procedure TfrmManualReceive.edNetPayPropertiesChange(Sender: TObject);
begin
  if trim(edNetPay.Text)='' then edNetPay.Text:='0';
  

  _ChqAMT:=StrToFloat(edNetPay.Text)  ;
  Calc;
end;

procedure TfrmManualReceive.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
  VK_ESCAPE : self.close;
  VK_F5 : btnOKClick(sender);
 end;
end;

procedure TfrmManualReceive.FormShow(Sender: TObject);
begin
  self.Caption:='Manual Receive ['+_Contract+']';

  initForm;
  calc;

  // init chq amount
  lbChqAmount.Caption:=FormatCurr('#,###.00',_ChqAMT);
  edNetPay.Text:=FormatCurr('###.00',_ChqAMT);

end;

procedure TfrmManualReceive.initForm;
var cdsTemp:TClientDataSet;
begin
  if trim(_Contract)<>'' then
  begin
    cdsTemp:=TClientDataSet.Create(nil);
    cdsTemp.RemoteServer:=sockcon;
    with cdsTemp do
    begin
      TSockCon(cdsTemp.RemoteServer).AddProv('man_prov000', 'ALL');
      ProviderName:='man_prov000';
      close;
      CommandText:='select * from fn_GetChqPayment ('''+_Contract+''')';

      open;
        if recordcount>0 then
        begin

           Last;

           //_NetAmount:=abs(cdsTemp.FieldByName('INSNET').AsCurrency);
           //_Amount:=(_NetAmount/1.02);
           //_VAT:=(_Amount*0.07);

           //_WT:=_Amount*0.05;


           _WT:=cdsTemp.FieldByName('WHT').AsCurrency;
           _Amount:=cdsTemp.FieldByName('INSIAM').AsCurrency;
           _VAT:=cdsTemp.FieldByName('INSVAM').AsCurrency;
           _NetPay:=cdsTemp.FieldByName('NETPAY').AsCurrency;
           _NetAdvance:=cdsTemp.FieldByName('CQSADV').AsCurrency;
           _NetOut:=cdsTemp.FieldByName('OUTSTD').AsCurrency;

           lbDue.Caption:=FormatDateTime('dd/MM/yyyy', cdsTemp.FieldByName('INSDUE').AsDateTime);



           //lbNetAmt.Caption:=FormatCurr('#,###.00',_NetAmount);
           //lbAmount.Caption:=FormatCurr('#,###.00',_Amount);
           //lbVAT.Caption:=FormatCurr('#,###.00',_VAT);
           //lbWT.Caption:=FormatCurr('#,###.00',_WT);

        end;
    end;
  end;
end;

procedure TfrmManualReceive.raPartialClick(Sender: TObject);
begin
  edNetPay.Enabled:=raPartial.Checked;
end;

end.
