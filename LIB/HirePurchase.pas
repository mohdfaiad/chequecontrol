unit HirePurchase;

interface

uses
  SysUtils,
  StrUtils,
  DB,
  DBClient,
  SockCon,
  UIT_UTILS_LIB,
  UIT_GLOBAL_LIB;

  const chLines = ' ' + #13;

  function IIF(bool: boolean; var1, var2: Variant): Variant;
  function GetDataCDS(sc: TSockCon; Command: string; RetunField: string; ReturnNull: Variant{; iBase: integer = 0}): Variant;
  procedure ProcessCheck(HP:TClientDataSet;T_Sub:TDataSet;CQStatus:string;var Mark,ReMark : string);
  procedure SaveCAMCHQ00(Status: string; Sock: TSockCon; HP: TClientDataSet; T_Sub: TDataSet; CaseReturn: Boolean = False);
  procedure SaveCATCHQ00(Status: string; Sock: TSockCon; HP: TClientDataSet; T_Sub: TDataSet; CaseReturn: Boolean = False);
  procedure SaveCATRSL00(Status: string; Sock: TSockCon; HP: TClientDataSet);
  procedure SaveCATFEE00(Status: string; Amount: Double; Sock: TSockCon; HP: TClientDataSet);
  procedure ProcessSave_PayIn(Sock: TSockCon; HP: TClientDataSet; T_Sub: TDataSet);
  procedure ProcessSave_Pass(Sock: TSockCon; HP: TClientDataSet; T_Sub: TDataSet);
  procedure ProcessSave_Return(Sock: TSockCon; HP: TClientDataSet; T_Sub: TDataSet);
  procedure ProcessSave(HP: TClientDataSet; T_Sub: TDataSet; CQStatus: string; Sock: TSockCon);

implementation

function IIF(bool: boolean; var1, var2: Variant): Variant;
begin
  if bool then Result := var1
  else Result := var2; 
end;

function GetDataCDS(sc: TSockCon; Command: string; RetunField: string; ReturnNull: Variant{; iBase: integer = 0}): Variant;
// iBase : 0 is Default, 1 is AS400, 2 is MSSQL
var
  CDS: TClientDataSet;
begin
  try
    CDS := TClientDataSet.Create(nil);
    {case iBase of
      1 : begin
            CDS.RemoteServer := dmHLTCForm.ConnectionAS400;
            CDS.ProviderName := ProviderConnection;
          end;
      2 : begin
            CDS.RemoteServer := dmHLTCForm.ConnectionMSSQL;
            CDS.ProviderName := ProviderConnection;
          end;
      else begin
            CDS.RemoteServer := dmHLTCForm.ConnectionMSSQL;
            CDS.ProviderName := ProviderConnection;
      end;
    end;}
    CDS.RemoteServer := sc;
    CDS.ProviderName := 'DSP2';
    //
    CDS.Close;
    CDS.CommandText := Command;
    CDS.Open;
    if CDS.RecordCount = 0 then
      Result := ReturnNull
    else
      Result := CDS.FieldByName(RetunField).Value;
  finally
    CDS.Free;
  end;
end;

procedure ProcessCheck(HP:TClientDataSet;T_Sub:TDataSet;CQStatus:string;var Mark,ReMark : string);
begin
    HP.Close;
    HP.CommandText := 'select CHQACT, CHQSTS' + chLines +
                             '     , CQCTYP' + chLines + // L10040510 CQCTYP C : Clearing, N : Non-Clearing
                             '  from CHQPDTA.CAMCHQ00' + chLines +
                             ' where CHQCBR = ' + QuotedStr(T_Sub.FieldByName('CQSBRN').AsString) + chLines +
                             '   and CHQBNK = ' + QuotedStr(T_Sub.FieldByName('CQSBKC').AsString) + chLines +
                             '   and CHQBRN = ' + QuotedStr(T_Sub.FieldByName('CQSBRC').AsString) + chLines +
                             '   and CHQNO2 = ' + QuotedStr(T_Sub.FieldByName('CQSCQN').AsString) + chLines +
                             '   and CHQDAT = ' + FormatDateTime('yyyyMMdd',T_Sub.FieldByName('CQSCQD').AsDateTime) + chLines +
                             '   and CHQAMT = ' + T_Sub.FieldByName('CQSCQA').AsString +
                             '';
    HP.Open;
    if HP.RecordCount > 0 then
    begin
      if (((CQStatus='N') and (HP.FieldByName('CHQACT').AsString = 'A') and (HP.FieldByName('CHQSTS').AsString = 'A')) or
          ((CQStatus='P') and (HP.FieldByName('CHQACT').AsString = 'A') and (HP.FieldByName('CHQSTS').AsString = 'N')) or
          ((CQStatus='P') and (HP.FieldByName('CHQACT').AsString = 'A') and (HP.FieldByName('CHQSTS').AsString = 'R')) or
          ((CQStatus='Y') and (HP.FieldByName('CHQACT').AsString = 'A') and (HP.FieldByName('CHQSTS').AsString = 'N')// and
//           (T_Sub.FieldByName('CQSREC').AsString <> ReturnSpecial1) and
//           (T_Sub.FieldByName('CQSREC').AsString <> ReturnSpecial2) and
//           (T_Sub.FieldByName('CQSREC').AsString <> ReturnSpecial3) and
//           (T_Sub.FieldByName('CQSREC').AsString <> ReturnSpecial4) and
//           (T_Sub.FieldByName('CQSREC').AsString <> ReturnSpecial5) and
//           (T_Sub.FieldByName('CQSREC').AsString <> ReturnSpecial6) and
//           (T_Sub.FieldByName('CQSREC').AsString <> ReturnSpecial7) and
//           (T_Sub.FieldByName('CQSREC').AsString <> ReturnSpecial8) and
//           (T_Sub.FieldByName('CQSREC').AsString <> ReturnSpecial9)
          ))
          and (IIF(T_Sub.FieldByName('CQSCQT').AsString = '000','C','N') = HP.FieldByName('CQCTYP').AsString) // L10040510
      then
        begin
          Mark   := 'E  ';
          ReMark := '';
        end
      else
        begin
          Mark   := 'EFI';
          ReMark := 'Format Invalid';
        end;
    end
    else
      begin
        Mark     := 'ECF';
        ReMark   := 'Cheque Not Found';
      end;
    T_Sub.FieldByName('CQS' + LeftStr(Mark,Length(Mark)-2) + 'TY').Value := Trim(RightStr(Mark,2));
    T_Sub.FieldByName('CQSRMK').Value := ReMark;
end;

{==================================================}

procedure SaveCAMCHQ00(Status: string; Sock: TSockCon; HP: TClientDataSet; T_Sub: TDataSet; CaseReturn: Boolean = False);
var CDSSave : TClientDataSet;
begin
  CDSSave := TClientDataSet(nil);
  CDSSave.ProviderName := 'DSP3';
  CDSSave.RemoteServer := Sock;
  CDSSave.Close;
  CDSSave.CommandText := 'update CHQPDTA.CAMCHQ00' + chLines +
                         {'   set CHQACT = :CHQACT' + chLines +}
                         '   set CHQSTS = :CHQSTS' + chLines +
                         '     , CHQSTD = :CHQSTD' + chLines +
                         '     , CHQPDT = :CHQPDT' + chLines +
                         '     , CHQPAT = :CHQPAT' + chLines +
                         IIF(CaseReturn
                        ,'     , CHQCCQ = ' + QuotedStr(T_Sub.FieldByName('CQSREC').AsString) + chLines
                        ,'') +
                         ' where CHQCBR = :CHQCBR' + chLines +
                         '   and CHQBNK = :CHQBNK' + chLines +
                         '   and CHQBRN = :CHQBRN' + chLines +
                         '   and CHQNO2 = :CHQNO2' + chLines +
                         '   and CHQDAT = :CHQDAT' + chLines +
                         '   and CHQAMT = :CHQAMT' + chLines +
                         '';
  {CDSSave.Params.ParamByName('CHQACT').Value := IIF(Status = 'Y', StatusInActive, CDSSearch.FieldByName('CHQACT').Value);;}
  CDSSave.Params.ParamByName('CHQSTS').Value := Status;
  CDSSave.Params.ParamByName('CHQSTD').Value := FormatDateTime('yyyyMMdd',getServerDate(Sock));
  CDSSave.Params.ParamByName('CHQPDT').Value := FormatDateTime('yyyyMMdd',getServerDate(Sock));
  CDSSave.Params.ParamByName('CHQPAT').Value := 8;
  CDSSave.Params.ParamByName('CHQCBR').Value := HP.FieldByName('CHQCBR').Value;
  CDSSave.Params.ParamByName('CHQBNK').Value := HP.FieldByName('CHQBNK').Value;
  CDSSave.Params.ParamByName('CHQBRN').Value := HP.FieldByName('CHQBRN').Value;
  CDSSave.Params.ParamByName('CHQNO2').Value := HP.FieldByName('CHQNO2').Value;
  CDSSave.Params.ParamByName('CHQDAT').Value := HP.FieldByName('CHQDAT').Value;
  CDSSave.Params.ParamByName('CHQAMT').Value := HP.FieldByName('CHQAMT').Value;
  CDSSave.Execute;
end;

procedure SaveCATCHQ00(Status: string; Sock: TSockCon; HP: TClientDataSet; T_Sub: TDataSet; CaseReturn: Boolean = False);
var CDSSave : TClientDataSet;
    Dll : TDLLParam;
begin
  CDSSave := TClientDataSet(nil);
  CDSSave.ProviderName := 'DSP3';
  CDSSave.RemoteServer := Sock;
  CDSSave.Close;
  CDSSave.CommandText := 'insert into CHQPDTA.CATCHQ00 (CQTACT, CQTSTS, CQTCBR, CQTBNK, CQTBRN' + chLines +
                         '                            , CQTNO1, CQTNO2, CQTTYP, CQTCTP, CQTDAT' + chLines +
                         '                            , CQTAMT, CQTDUE, CQTSTD, CQTPAT, CQTTRD' + chLines +
                         '                            , CQTCCQ, CQTCUS, CQTVTP, CQTGEN, CQTVBR' + chLines +
                         '                            , CQTVYY, CQTRUN, CQTITM, CQTPOS, CQTRED' + chLines +
                         '                            , CQTRTN, CQTEXC, CQTDIV, CQTACC, CQTPDT' + chLines +
                         '                            , CQTPIN, CQTPBY, CQTETT, CQTETU)' + chLines +
                         '                     values (:CQTACT,:CQTSTS,:CQTCBR,:CQTBNK,:CQTBRN' + chLines +
                         '                            ,:CQTNO1,:CQTNO2,:CQTTYP,:CQTCTP,:CQTDAT' + chLines +
                         '                            ,:CQTAMT,:CQTDUE,:CQTSTD,:CQTPAT,:CQTTRD' + chLines +
                         '                            ,:CQTCCQ,:CQTCUS,:CQTVTP,:CQTGEN,:CQTVBR' + chLines +
                         '                            ,:CQTVYY,:CQTRUN,:CQTITM,:CQTPOS,:CQTRED' + chLines +
                         '                            ,:CQTRTN,:CQTEXC,:CQTDIV,:CQTACC,:CQTPDT' + chLines +
                         '                            ,:CQTPIN,:CQTPBY,:CQTETT,:CQTETU)' + chLines +
                         '';
  CDSSave.Params.ParamByName('CQTACT').Value := 'A'; {IIF(Status = 'Y', StatusActive, CDSSearch.FieldByName('CHQACT').Value);}
  CDSSave.Params.ParamByName('CQTSTS').Value := Status;
  CDSSave.Params.ParamByName('CQTCBR').Value := HP.FieldByName('CHQCBR').Value;
  CDSSave.Params.ParamByName('CQTBNK').Value := HP.FieldByName('CHQBNK').Value;
  CDSSave.Params.ParamByName('CQTBRN').Value := HP.FieldByName('CHQBRN').Value;
  CDSSave.Params.ParamByName('CQTNO1').Value := HP.FieldByName('CHQNO1').Value;
  CDSSave.Params.ParamByName('CQTNO2').Value := HP.FieldByName('CHQNO2').Value;
  CDSSave.Params.ParamByName('CQTTYP').Value := HP.FieldByName('CHQTYP').Value;
  CDSSave.Params.ParamByName('CQTCTP').Value := HP.FieldByName('CQCTYP').Value;
  CDSSave.Params.ParamByName('CQTDAT').Value := HP.FieldByName('CHQDAT').Value;
  CDSSave.Params.ParamByName('CQTAMT').Value := HP.FieldByName('CHQAMT').Value;
  CDSSave.Params.ParamByName('CQTDUE').Value := HP.FieldByName('CHQDUE').Value;
  CDSSave.Params.ParamByName('CQTSTD').Value := FormatDateTime('yyyyMMdd',getServerDate(Sock)); {CDSSearch.FieldByName('CHQSTD').Value;}
  CDSSave.Params.ParamByName('CQTPAT').Value := 8; // CDSSearch.FieldByName('CHQPAT').Value;
  CDSSave.Params.ParamByName('CQTTRD').Value := HP.FieldByName('CHQTRD').Value;
  if CaseReturn then
       CDSSave.Params.ParamByName('CQTCCQ').Value := T_Sub.FieldByName('CQSREC').AsString
  else CDSSave.Params.ParamByName('CQTCCQ').Value := HP.FieldByName('CHQCCQ').Value;
  CDSSave.Params.ParamByName('CQTCUS').Value := HP.FieldByName('CHQCUS').Value;
  CDSSave.Params.ParamByName('CQTVTP').Value := HP.FieldByName('CHQVTP').Value;
  CDSSave.Params.ParamByName('CQTGEN').Value := HP.FieldByName('CHQGEN').Value;
  CDSSave.Params.ParamByName('CQTVBR').Value := HP.FieldByName('CHQVBR').Value;
  CDSSave.Params.ParamByName('CQTVYY').Value := HP.FieldByName('CHQVYY').Value;
  CDSSave.Params.ParamByName('CQTRUN').Value := HP.FieldByName('CHQRUN').Value;
  CDSSave.Params.ParamByName('CQTITM').Value := HP.FieldByName('CHQITM').Value;
  CDSSave.Params.ParamByName('CQTPOS').Value := HP.FieldByName('CHQPOS').Value;
  CDSSave.Params.ParamByName('CQTRED').Value := HP.FieldByName('CHQRED').Value;
  CDSSave.Params.ParamByName('CQTRTN').Value := HP.FieldByName('CHQRTN').Value;
  CDSSave.Params.ParamByName('CQTEXC').Value := HP.FieldByName('CHQEXC').Value;
  CDSSave.Params.ParamByName('CQTDIV').Value := HP.FieldByName('CHQDIV').Value;
  CDSSave.Params.ParamByName('CQTACC').Value := HP.FieldByName('CHQACC').Value;
  CDSSave.Params.ParamByName('CQTPDT').Value := FormatDateTime('yyyyMMdd',getServerDate(Sock)); {CDSSearch.FieldByName('CHQPDT').Value;}
  CDSSave.Params.ParamByName('CQTPIN').Value := HP.FieldByName('CHQPIN').Value;
  CDSSave.Params.ParamByName('CQTPBY').Value := HP.FieldByName('CHQPBY').Value;
  CDSSave.Params.ParamByName('CQTETT').Value := FormatDateTime('hhmmss',getServerDateTime(Sock));
  CDSSave.Params.ParamByName('CQTETU').Value := Dll.UserID;
  CDSSave.Execute;
end;

procedure SaveCATRSL00(Status: string; Sock: TSockCon; HP: TClientDataSet);
var CDSSave : TClientDataSet;
    Dll : TDLLParam;
begin
  CDSSave := TClientDataSet(nil);
  CDSSave.ProviderName := 'DSP3';
  CDSSave.RemoteServer := Sock;
  CDSSave.Close;
  CDSSave.CommandText := 'insert into CHQPDTA.CATRSL00 (RSLACT, RSLSTS, RSLCBR, RSLPMA, RSLPTY' + chLines +
                         '                            , RSLCTY, RSLPAT, RSLDTE, RSLBNK, RSLBRN' + chLines +
                         '                            , RSLNO1, RSLNO2, RSLPDT, RSLCAU, RSLPRT' + chLines +
                         '                            , RSLETD, RSLETT, RSLETU, RSLMTD, RSLMTT' + chLines +
                         '                            , RSLMTU)' + chLines +
                         '                     values (:RSLACT,:RSLSTS,:RSLCBR,:RSLPMA,:RSLPTY' + chLines +
                         '                            ,:RSLCTY,:RSLPAT,:RSLDTE,:RSLBNK,:RSLBRN' + chLines +
                         '                            ,:RSLNO1,:RSLNO2,:RSLPDT,:RSLCAU,:RSLPRT' + chLines +
                         '                            ,:RSLETD,:RSLETT,:RSLETU,:RSLMTD,:RSLMTT' + chLines +
                         '                            ,:RSLMTU)' + chLines +
                         '';
  CDSSave.Params.ParamByName('RSLACT').Value := 'A'; {IIF(Status = 'Y', StatusActive, CDSSearch.FieldByName('CHQACT').Value);}
  CDSSave.Params.ParamByName('RSLSTS').Value := Status;
  CDSSave.Params.ParamByName('RSLCBR').Value := HP.FieldByName('CHQCBR').Value;
  CDSSave.Params.ParamByName('RSLPMA').Value := Dll.PDM;
  CDSSave.Params.ParamByName('RSLPTY').Value := Dll.PDT;
  CDSSave.Params.ParamByName('RSLCTY').Value := HP.FieldByName('CQCTYP').Value;
  CDSSave.Params.ParamByName('RSLPAT').Value := 8; //CDSSearch.FieldByName('CHQPAT').Value;
  CDSSave.Params.ParamByName('RSLDTE').Value := FormatDateTime('yyyyMMdd',getServerDate(Sock)); {CDSSearch.FieldByName('CHQSTD').Value;}
  CDSSave.Params.ParamByName('RSLBNK').Value := HP.FieldByName('CHQBNK').Value;
  CDSSave.Params.ParamByName('RSLBRN').Value := HP.FieldByName('CHQBRN').Value;
  CDSSave.Params.ParamByName('RSLNO1').Value := HP.FieldByName('CHQNO1').Value;
  CDSSave.Params.ParamByName('RSLNO2').Value := HP.FieldByName('CHQNO2').Value;
  CDSSave.Params.ParamByName('RSLPDT').Value := HP.FieldByName('CHQSTD').Value;
  CDSSave.Params.ParamByName('RSLCAU').Value := '';
  CDSSave.Params.ParamByName('RSLPRT').Value := '00';
  CDSSave.Params.ParamByName('RSLETD').Value := FormatDateTime('yyyyMMdd',getServerDate(Sock));
  CDSSave.Params.ParamByName('RSLETT').Value := FormatDateTime('hhmmss',getServerDateTime(Sock));
  CDSSave.Params.ParamByName('RSLETU').Value := Dll.UserID;
  CDSSave.Params.ParamByName('RSLMTD').Value := 0;
  CDSSave.Params.ParamByName('RSLMTT').Value := 0;
  CDSSave.Params.ParamByName('RSLMTU').Value := '';
  CDSSave.Execute;
end;

procedure SaveCATFEE00(Status: string; Amount: Double; Sock: TSockCon; HP: TClientDataSet);
var CDSSave : TClientDataSet;
    Dll : TDLLParam;
begin
  CDSSave := TClientDataSet(nil);
  CDSSave.ProviderName := 'DSP3';
  CDSSave.RemoteServer := Sock;
  CDSSave.Close;
  CDSSave.CommandText := 'insert into CHQPDTA.CATFEE00 (FEEBRN, FEEPDM, FEEPDT, FEEBNK, FEEBBR' + chLines +
                         '                            , FEENO1, FEENO2, FEESTS, FEETYP, FEEFET' + chLines +
                         '                            , FEEAMT, FEEENT, FEEETT, FEEENU)' + chLines +
                         '                     values (:FEEBRN,:FEEPDM,:FEEPDT,:FEEBNK,:FEEBBR' + chLines +
                         '                            ,:FEENO1,:FEENO2,:FEESTS,:FEETYP,:FEEFET' + chLines +
                         '                            ,:FEEAMT,:FEEENT,:FEEETT,:FEEENU)' + chLines +
                         ''; 
  CDSSave.Params.ParamByName('FEEBRN').Value := HP.FieldByName('CHQCBR').Value;
  CDSSave.Params.ParamByName('FEEPDM').Value := Dll.PDM;
  CDSSave.Params.ParamByName('FEEPDT').Value := Dll.PDT;
  CDSSave.Params.ParamByName('FEEBNK').Value := HP.FieldByName('CHQBNK').Value;
  CDSSave.Params.ParamByName('FEEBBR').Value := HP.FieldByName('CHQBRN').Value;
  CDSSave.Params.ParamByName('FEENO1').Value := HP.FieldByName('CHQNO1').Value;
  CDSSave.Params.ParamByName('FEENO2').Value := HP.FieldByName('CHQNO2').Value;
  CDSSave.Params.ParamByName('FEESTS').Value := Status;
  CDSSave.Params.ParamByName('FEETYP').Value := HP.FieldByName('CQCTYP').Value;
  CDSSave.Params.ParamByName('FEEFET').Value := '2'; // Company Charge : CDSCorrect.FieldByName('F16').AsString;
  CDSSave.Params.ParamByName('FEEAMT').Value := Amount;
  CDSSave.Params.ParamByName('FEEENT').Value := FormatDateTime('yyyyMMdd',getServerDate(Sock));
  CDSSave.Params.ParamByName('FEEETT').Value := FormatDateTime('hhmmss',getServerDateTime(Sock));
  CDSSave.Params.ParamByName('FEEENU').Value := Dll.UserID;
  CDSSave.Execute;
end;

{==================================================}

procedure ProcessSave_PayIn(Sock: TSockCon; HP: TClientDataSet; T_Sub: TDataSet);
begin
  SaveCAMCHQ00('N',Sock,HP,T_Sub);
  SaveCATCHQ00('N',Sock,HP,T_Sub);
end;

procedure ProcessSave_Pass(Sock: TSockCon; HP: TClientDataSet; T_Sub: TDataSet);
begin
  SaveCAMCHQ00('P',Sock,HP,T_Sub);
  SaveCATCHQ00('P',Sock,HP,T_Sub);
  SaveCATRSL00('P',Sock,HP)
end;

procedure ProcessSave_Return(Sock: TSockCon; HP: TClientDataSet; T_Sub: TDataSet);
begin
  SaveCAMCHQ00('Y',Sock,HP,T_Sub,True);
  SaveCATCHQ00('Y',Sock,HP,T_Sub,True);
  SaveCATRSL00('Y',Sock,HP);
  SaveCATFEE00('Y',0,Sock,HP);
  if GetDataCDS(Sock,'select case when THDFG2 = '''' then ''Y'' else THDFG2 end as "ResultField"' + chLines +
                     '  from DBPDTA.DBMTHD00' + chLines +
                     ' where THDTB1 = ''CHQVAL''' + chLines +
                     '   and THDTB2 = ''NOCHART''' + chLines +
                     ''
                    ,'ResultField'
                    ,'Y')
     = 'Y' then SaveCATFEE00('Y',(1 * HP.FieldByName('CHQAMT').Value) /100,Sock,HP); //ChargeRate
end;

{==================================================}

procedure ProcessSave(HP: TClientDataSet; T_Sub: TDataSet; CQStatus: string; Sock: TSockCon);
begin
    HP.Close;
    HP.CommandText := 'select *' + chLines +
                      '  from CHQPDTA.CAMCHQ00' + chLines +
                      ' where CHQCBR = ' + QuotedStr(T_Sub.FieldByName('CQSBRN').AsString) + chLines +
                      '   and CHQBNK = ' + QuotedStr(T_Sub.FieldByName('CQSBKC').AsString) + chLines +
                      '   and CHQBRN = ' + QuotedStr(T_Sub.FieldByName('CQSBRC').AsString) + chLines +
                      '   and CHQNO2 = ' + QuotedStr(T_Sub.FieldByName('CQSCQN').AsString) + chLines +
                      '   and CHQDAT = ' + FormatDateTime('yyyyMMdd',T_Sub.FieldByName('CQSCQD').AsDateTime) + chLines +
                      '   and CHQAMT = ' + T_Sub.FieldByName('CQSCQA').AsString +
                      '';
    HP.Open;
    if CQStatus='N' then ProcessSave_PayIn(Sock,HP,T_Sub)
    else if CQStatus='P' then ProcessSave_Pass(Sock,HP,T_Sub)
    else if CQStatus='Y' then ProcessSave_Return(Sock,HP,T_Sub);
    T_Sub.Next;
end;

{==================================================}
end.
