unit LoadDataBank;

interface

uses
  SysUtils,
  Windows,
  Forms,
  Classes,
  DB,
  DBClient,
  Converse,
  StrUtils,
  Dialogs,
  ClientDat,
  RemDataSet,
  RemCollect,
  PleaseWait;

  function AddToGrid(RemM,RemS:TDataSet;TextRec:string):Boolean;
  function ChangDate(TextDate:string):TDateTime;
  function DatetimeToDate(DT:TDateTime):TDateTime;
  procedure CheckDataBankDE(RC:TRemCollect;ConBrokor:TConnectionBroker;RemDS:TDataSet);
  function CheckFileDuplicate(FieldNameLoad,TableNameLoad,FileNameLoad:string;RC:TRemCollect):Boolean;
  procedure SUMDE(RemM,RemS:TDataSet);
  procedure TextToDataSet(Path,SC:string;RemM,RemS:TClientDataSet;ConBrokor:TConnectionBroker;RC:TRemCollect);
  procedure FieldsFormate(RemM,RemS:TDataSet);
  procedure CheckDataBankRE(RC:TRemCollect;ConBrokor:TConnectionBroker;RemDS:TDataSet);
  procedure ExPortCSV(Rem: TDataSet;SFD:TSaveDialog);

implementation

function AddToGrid(RemM,RemS:TDataSet;TextRec:string):Boolean;
var TF:Boolean;
  procedure AddData(FieldNameA,TypeA:string;StartA,countA:Integer);
  begin
    with RemS do
    begin
      if Length(Trim(Copy(TextRec,StartA,countA))) > 0 then
      begin
        if TypeA = 'N' then
          Fields.FieldByName(FieldNameA).Value := IntToStr(StrToInt64(Trim(Copy(TextRec,StartA,countA))))
        else if TypeA = 'C' then
          Fields.FieldByName(FieldNameA).Value := Trim(Copy(TextRec,StartA,countA))
        else if TypeA = 'D' then
          Fields.FieldByName(FieldNameA).Value := ChangDate(Copy(TextRec,StartA,countA))
        else if TypeA = 'A' then
          begin
          Fields.FieldByName(FieldNameA).Value := StrToFloat(Trim(Copy(TextRec,StartA,countA-2)) + '.' + Trim(Copy(TextRec,StartA + ((countA-2)),2)));
          end;
      end;
    end;
  end;
begin
  if Length(TextRec) = 211 then
    begin
        AddData('CQSWSO','N',1,2);
        AddData('CQSCNO','N',3,14);
        AddData('CQSRTY','N',17,1);
        AddData('CQSCQD','D',18,8);
        AddData('CQSCQA','A',26,20);
        AddData('CQSCQN','N',46,10);
        AddData('CQSCQC','C',56,20);
        AddData('CQSBKC','N',76,3);
        AddData('CQSBRC','N',79,4);
        AddData('CQSCQT','C',83,3);
        AddData('CQSDED','D',86,8);
        AddData('CQSDLC','N',94,10);
        AddData('CQSBKN','C',104,4);
        AddData('CQSBNN','C',108,40);
        AddData('CQSCQS','C',148,1);
        AddData('CQSREC','N',149,2);
        AddData('CQSRED','C',151,40);
        AddData('CQSPLO','C',191,7);
        AddData('CQSECD','D',198,8);
        AddData('CQSTNO','N',206,6);
      TF := True;
    end
  else
    begin
      TF := False;
    end;
  Result := TF;
end;

function ChangDate(TextDate:string):TDateTime;
begin
  Result := StrToDate(Copy(TextDate,1,2) + '/' + Copy(TextDate,3,2) + '/' + Copy(TextDate,5,4));
end;  

function DatetimeToDate(DT:TDateTime):TDateTime;
begin
  Result := StrToDate(DateToStr(DT));
end;

procedure CheckDataBankDE(RC:TRemCollect;ConBrokor:TConnectionBroker;RemDS:TDataSet);
var Mark:string;
    DC,NP,LS:TRemDataSet;
    HP:TClientDataSet;
  function CheckDC:Boolean;
  begin
    DC := RC['DC'];
    DC.ProviderName := 'sqlDsp';
    DC.Command := 'Select * From CQMCHQ00' +
                 ' Where ChqDate=' + QuotedStr(FormatDateTime('MM/dd/yyyy',RemDS.Fields.FieldByName('CQSCQD').AsDateTime)) +
                 ' And ChqAmount=' + RemDS.Fields.FieldByName('CQSCQA').AsString +
                 ' And ChqNo=' + RemDS.Fields.FieldByName('CQSCQN').AsString +
                 ' And ChqBnkcode=' + RemDS.Fields.FieldByName('CQSBKC').AsString +
                 ' And ChqBnkBranch=' + RemDS.Fields.FieldByName('CQSBRC').AsString;
    Result := not DC.IsEmpty
  end;
  function CheckNP:Boolean;
  begin
    NP := rc['NP'];
    NP.ProviderName := 'sqlDsp';
    NP.Command := 'Select * From CQDM007' +
                 ' Where CQMDTE=' + QuotedStr(FormatDateTime('MM/dd/yyyy',RemDS.Fields.FieldByName('CQSCQD').AsDateTime)) +
                 ' And CQMAMT='+ RemDS.Fields.FieldByName('CQSCQA').AsString +
                 ' And CQMCNO=' + QuotedStr(RemDS['CQSCQN']) +
                 ' And CQMBNK=' + QuotedStr(RemDS['CQSBKC']) +
                 ' And CQMBBR=' + QuotedStr(RemDS['CQSBRC']);
    Result := NP.IsEmpty;
  end;
  function CheckHPLS(Code,HL:string;CDS:TDataSet): Boolean;
  begin
    if HL = 'L' then
      begin
        TRemDataSet(CDS) := RC['LS'];
        TRemDataSet(CDS).Command := 'Select CONRUN From HPMCON00 Where CONRUN=' + '''' + Code + '''';
      end
    else
      begin
        TClientDataSet(CDS) := TClientDataSet.Create(nil);
        TClientDataSet(CDS).RemoteServer := ConBrokor;
        TClientDataSet(CDS).ProviderName := 'DSP1';
        TClientDataSet(CDS).Close;
        TClientDataSet(CDS).CommandText := 'Select CONRUN From HPMCON00 Where CONRUN=' + '''' + Code + '''';
        TClientDataSet(CDS).Open;
      end;  
    Result := not CDS.IsEmpty;
  end;
begin
  //Cvert.ShowDebug(RemDS);
  Mark := '';
  if CheckDC then
    begin
      Mark := 'EDC';
    end
  else if CheckNP then
    begin
      Mark := 'ENP';
    end
  else
    begin
      if CheckHPLS(Trim(RemDS.Fields.FieldByName('CQSDLC').AsString),'L',LS) then
        Mark := 'BLS'
      else if CheckHPLS(Trim(RemDS.Fields.FieldByName('CQSDLC').AsString),'H',HP) then
        Mark := 'BHP'
      else
        Mark := 'EER';
    end;
  RemDS['CQS' + LeftStr(Mark,Length(Mark)-2) + 'TY'] := RightStr(Mark,2);
end;

function CheckFileDuplicate(FieldNameLoad,TableNameLoad,FileNameLoad:string;RC:TRemCollect):Boolean;
var CFN:TRemDataSet;
begin
  CFN := RC['CFN'];
//  CFN.ByPass := True;
  CFN.ProviderName := 'sqlDsp';
  CFN.Command := 'Select ' + FieldNameLoad + ' From ' + TableNameLoad + ' Where ' + FieldNameLoad + '=' + '''' + FileNameLoad + '''';
  Result := not CFN.IsEmpty;
end;

procedure TextToDataSet(Path,SC:string;RemM,RemS:TClientDataSet;ConBrokor:TConnectionBroker;RC:TRemCollect);
var DeText : TStringList;
    I , U : Integer;
    Head : Boolean;
    CDS : TClientDat;
begin
  try
    DeText := TStringList.Create;
    DeText.LoadFromFile(Path);
    PleaseWaitBegin('Load File Deposit');
    if RemM.Active  then 
    for I := DeText.Count -1 downto 0 do
    begin
      if Trim(DeText.Strings[I]) <> '' then
      begin
        if Copy(DeText.Strings[I],1,3) = 'EOF'  then
        begin
          Head := False;
          RemM.DisableControls;
          RemS.DisableControls;
          for U := 0 to I - 1 do
          begin
            if not Head then
              begin
                if Trim(DeText.Strings[U]) <> '' then
                begin
                  if Length(DeText.Strings[U]) = 58 then
                    begin
                      with RemM do
                      begin
                        Append;
                        Fields.FieldByName('CQMACT').Value := 'X';
                        Fields.FieldByName('CQMSTS').Value := 'X';
                        Fields.FieldByName('CQMBRN').Value := 'X';
                        Fields.FieldByName('CQMPDM').Value := 'X';
                        Fields.FieldByName('CQMPDT').Value := 'X';
                        Fields.FieldByName('CQMBSD').Value := ChangDate(Copy(DeText.Strings[U],1,8));
                        Fields.FieldByName('CQMCTN').Value := Trim(Copy(DeText.Strings[U],9,40));
                        Fields.FieldByName('CQMACC').Value := Trim(Copy(DeText.Strings[U],49,10));
                        Fields.FieldByName('CQMFNA').Value := ExtractFileName(Path);
                        Fields.FieldByName('CQMETD').Value := StrToDate(DateToStr(Now));
                        Fields.FieldByName('CQMETU').Value := 'Boy';
                        Fields.FieldByName('CQMETW').Value := 'UIT';
                        Post;
                      end;
                      Head := True;
                    end
                  else
                    begin
                      ShowMessage('Error ‰ø≈Ï‰¡Ë ¡∫Ÿ√≥Ï');
                      Exit;
                    end;
                end;
              end
            else
              begin
                if (Trim(DeText.Strings[U]) <> '') and (Trim(Copy(DeText.Strings[U],17,1)) = '2') and (Trim(Copy(DeText.Strings[U],148,1)) = SC) then
                begin
                  with RemS do
                  begin
                    Append;
                    Fields.FieldByName('CQSACT').Value := 'A';
                    Fields.FieldByName('CQSSTS').Value := '';
                    FieldS.FieldByName('CQSBRN').Value := RemM.FieldByName('CQMBRN').Value;
                    Fields.FieldByName('CQSPDM').Value := RemM.FieldByName('CQMPDM').Value;
                    FieldS.FieldByName('CQSPDT').Value := RemM.FieldByName('CQMPDT').Value;
                    Fields.FieldByName('CQSDNO').Value := RemM.FieldByName('CQMDNO').Value;
                    Fields.FieldByName('CQSRNO').Value := RemS.RecordCount + 1;
                    if AddToGrid(RemM,RemS,DeText.Strings[U]) then
                      begin
                        if SC = '' then
                          CheckDataBankDE(RC,ConBrokor,RemS)
                        else
                          CheckDataBankRE(RC,ConBrokor,RemS);
                      end
                    else
                      begin
                        FieldByName('CQSETY').Value := 'RE';
                      end;
                    //Edit;
                    Fields.FieldByName('CQSEDD').Value := 'F';
                    Fields.FieldByName('CQSETD').Value := StrToDate(DateToStr(Now));
                    Fields.FieldByName('CQSETU').Value := 'Boy';
                    Fields.FieldByName('CQSETW').Value := 'UIT';
                    Post;
                  end;
                end
                else begin ShowMessage('§ÿ≥‚À≈¥¢ÈÕ¡Ÿ≈º‘¥'); Exit; end;
              end;
          end;
          if SC = '' then
            SUMDE(RemM,RemS);
          RemS.First;
        end
        else
          begin
            ShowMessage('Error ‰ø≈Ï‰¡Ë ¡∫Ÿ√≥Ï');
          end;
        Exit;
      end;
    end;
  finally
    DeText.Free;
    PleaseWaitEnd;
    RemM.EnableControls;
    RemS.EnableControls;
    CDS := TClientDat.Create(nil);
    CDS.LoadFrom(RemS);
    CDS.Filter := 'CQSETY=' + '''RE''';
    CDS.Filtered := True;
    if CDS.RecordCount > 0 then ShowMessage('Read Error ' + IntToStr(CDS.RecordCount) + ' Record');
    CDS.Free;
  end;
end;

procedure SUMDE(RemM,RemS:TDataSet);
var CDS : TClientDat;
begin
  CDS := TClientDat.Create(nil);
  CDS.LoadFrom(RemS);
  RemM.Edit;
  RemM['CQMITS'] := CDS.RecordCount;
  RemM['CQMITA'] := CDS.SumField('CQSCQA');
  CDS.Filter := 'CQSBTY=' + '''LS''';
  CDS.Filtered := True;
  RemM['CQMLSS'] := CDS.RecordCount;
  RemM['CQMLSA'] := CDS.SumField('CQSCQA');
  CDS.Filter := 'CQSBTY=' + '''HP''';
  RemM['CQMHPS'] := CDS.RecordCount;
  RemM['CQMHPA'] := CDS.SumField('CQSCQA');
  CDS.Filter := 'CQSETY=' + '''ER''' + ' OR CQSETY=' + '''DC''' + ' OR CQSETY=' + '''NP''' + ' OR CQSETY=' + '''RE''';
  RemM['CQMERR'] := CDS.RecordCount;
  RemM['CQMERA'] := CDS.SumField('CQSCQA');
  CDS.Filtered := False;
  CDS.Free;
  RemM.Post;
end;

procedure FieldsFormate(RemM,RemS:TDataSet);
begin
  with RemM do
  begin
    TFloatField(FieldByName('CQMITA')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQMLSA')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQMHPA')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQMERA')).DisplayFormat := '#,##0.00';
  end;
  with RemS do
  begin
    TFloatField(FieldByName('CQSCQA')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQSCQD')).DisplayFormat := 'dd/MM/yyyy';
    TFloatField(FieldByName('CQSDED')).DisplayFormat := 'dd/MM/yyyy';
    TFloatField(FieldByName('CQSECD')).DisplayFormat := 'dd/MM/yyyy';
  end;
end;

procedure CheckDataBankRE(RC:TRemCollect;ConBrokor:TConnectionBroker;RemDS:TDataSet);
var Mark:string;
    DC,NC:TRemDataSet;
  function CheckDC:Boolean;
  begin
    DC := RC['DC'];
    DC.ProviderName := 'sqlDsp';
    DC.Command := 'Select * From CQDS002' +
                 ' Where CQSCQD=' + QuotedStr(FormatDateTime('MM/dd/yyyy',RemDS.Fields.FieldByName('CQSCQD').AsDateTime)) +
                 ' And CQSCQA=' + RemDS.Fields.FieldByName('CQSCQA').AsString +
                 ' And CQSCQN=' + RemDS.Fields.FieldByName('CQSCQN').AsString +
                 ' And CQSBKC=' + RemDS.Fields.FieldByName('CQSBKC').AsString +
                 ' And CQSBRC=' + RemDS.Fields.FieldByName('CQSBRC').AsString;
    Result := not DC.IsEmpty;
  end;
//  function CheckNP:Boolean;
//  begin
//    NP := RC['NP'];
//    NP.Command := 'Select * From CQMPMT00' +
//                  ' Where PmtDate=' + QuotedStr(FormatDateTime('MM/dd/yyyy',RemDS.Fields.FieldByName('LadChkDate').AsDateTime)) +
//                  ' And PmtAmount='+ RemDS.Fields.FieldByName('LadChkAmt').AsString +
//                  ' And PmtNo=' + QuotedStr(RemDS['LadChkNo']) +
//                  ' And PmtBnkcode=' + QuotedStr(RemDS['LadBnkCode']) +
//                  ' And PmtBnkBranch=' + QuotedStr(RemDS['LadBrnCode']);
//    Result := NP.IsEmpty;
//  end;
//  function CheckHPLS(Code: string;CDS:TDataSet): Boolean;
//  begin
//    if CDS.Name = 'LS' then
//    begin
//      TRemDataSet(CDS).Command := 'Select CONRUN From HPMCON00 Where CONRUN=' + '''' + Code + '''';
//    end
//    else if CDS.Name = 'HP' then
//    begin
//      TClientDataSet(CDS).Close;
//      TClientDataSet(CDS).CommandText := 'Select CONRUN From HPMCON00 Where CONRUN=' + '''' + Code + '''';
//      TClientDataSet(CDS).Open;
//    end;
//    Result := not CDS.IsEmpty;
//  end;
  function CheckNoCheque:Boolean;
  begin
    NC := RC['NC'];
    NC.ProviderName := 'sqlDsp';
    NC.Command :=  'Select * From CQMCHQ00' +
                  ' Where ChqDate=' + QuotedStr(FormatDateTime('MM/dd/yyyy',RemDS.Fields.FieldByName('CQSCQD').AsDateTime)) +
                  ' And ChqAmount=' + RemDS.Fields.FieldByName('CQSCQA').AsString +
                  ' And ChqNo=' + RemDS.Fields.FieldByName('CQSCQN').AsString +
                  ' And ChqBnkcode=' + RemDS.Fields.FieldByName('CQSBKC').AsString +
                  //' And ChqCustomerNo=' + RemDS.Fields.FieldByName('RslDeaCode').AsString +
                  ' And ChqBnkBranch=' + RemDS.Fields.FieldByName('CQSBRC').AsString;
    Result := not NC.IsEmpty;
  end;
begin
  //Cvert.ShowDebug(RemDS);
  if CheckDC then
    begin
      Mark := 'DC';
    end
  else if CheckNoCheque then
    begin
      Mark := 'CR';
    end
  else
    begin
      Mark := 'ER';
    end;
  RemDS['CQSETY'] := Mark;
end;

procedure ExPortCSV(Rem: TDataSet;SFD:TSaveDialog);
var
  Stream: TFileStream;
  i,u: Integer;
  OutLine: string;
  sTemp: string;
  HD : Boolean;
  B : TBookmark;
begin
  B := Rem.GetBookmark;
  Rem.DisableControls;
  PleaseWaitBegin('ExportCSV');
  try
  Rem.First ;
  if SFD.Execute() then
    begin
      if Trim(SFD.FileName) <> '' then
        begin
          Stream := TFileStream.Create(SFD.FileName + '.csv', fmCreate);
            try
              HD := False;
              while not Rem.Eof do
                begin
                  OutLine := '';
                  if not HD then
                  begin
                    for u := 0 to Rem.FieldCount - 1 do
                      OutLine := OutLine + Rem.Fields[U].FieldName + ',';
                    HD := True;
                    SetLength(OutLine, Length(OutLine) - 1);
                    Stream.Write(OutLine[1], Length(OutLine) * SizeOf(Char));
                    Stream.Write(sLineBreak, Length(sLineBreak));
                    OutLine := '';
                  end;
                  for i := 0 to Rem.FieldCount - 1 do
                    begin
                      sTemp := Rem.Fields[i].AsString;
                      OutLine := OutLine + sTemp + ',';
                    end;
                  SetLength(OutLine, Length(OutLine) - 1);
                  Stream.Write(OutLine[1], Length(OutLine) * SizeOf(Char));
                  Stream.Write(sLineBreak, Length(sLineBreak));
                  Rem.Next;
                end;
            finally
              Stream.Free;
            end;
        end;
    end;
  finally
    Rem.EnableControls;
    Rem.GotoBookmark(B);
    Rem.FreeBookmark(B);
    PleaseWaitEnd;
  end;
end;

end.
