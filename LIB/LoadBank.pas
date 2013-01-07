unit LoadBank;

interface

uses
  SysUtils,
  Windows,
  Forms,
  Classes,
  DB,
  DBClient,
  Controls,
  Converse,
  StrUtils,
  Dialogs,
  RemDataSet,
  cxGrid,
  SockCon,
  ComObj,
  ShellAPI,
  PleaseWait,
  DateUtils,
  UIT_UTILS_LIB,
  UIT_GLOBAL_LIB;

  {------------------FUNCTION------------------}
  function IIF(Condition: Boolean; T,F:Variant):Variant;
  function ConvertTextToDate(TextDate:string):TDateTime;
  function GetHeader(RecStr,PathFile,CQStatus: string; Main: TRemDataSet; var Head: Boolean;
                     var Header: string; Sock:TSockCon; DLL:TDLLParam):Boolean;
  function GetDetail(RecStr,CQStatus,TypeLoad: string; Main,Sub: TRemDataSet;
                     var Detail: string; Sock:TSockCon; DLL:TDLLParam):Boolean;
  function ReadTextFile(PathFile: string; CQStatus: string; TypeLoad: string;
                        Main: TRemDataSet; Sub: TRemDataSet; HP:TClientDataSet;
                        Sock: TSockCon; var Duplicate: Boolean; DLL:TDLLParam; Grid:TcxGrid = nil):Boolean;

  {------------------PROCEDURE-----------------}

  procedure ProcessBissType(Contract: string; var Mark,ReMark: string;
                            HP: TClientDataSet; Sock: TSockCon);
  procedure ProcessDeposit(Main,Sub: TRemDataSet; HP: TClientDataSet; Sock: TSockCon; DLL:TDLLParam; CheckData:string);
  procedure ProcessResult(Main,Sub: TRemDataSet; HP: TClientDataSet; Sock: TSockCon; CQStatus:string);
  procedure ExPortCSV(Rem: TDataSet;SFD:TSaveDialog);
  procedure FieldsFormate(Main,Sub:TRemDataSet);
  procedure ClearReceiveFlag(Sock:TSockCon;Flag:string = '');
  procedure GenDNO(TBM,TBS,OldDNO,NewDNO:string;Sock:TSockCon);
  procedure ClearLoadFlag(TBM,TBS:string;Sock:TSockCon);


implementation

function IIF(Condition: Boolean; T,F:Variant):Variant;
begin
  if Condition  then Result := T else Result := F;
end;

function SearchFileDuplicate(HD: string; MS: TRemDataSet; Sock: TSockCon):Boolean;
var DC: TRemDataSet;
begin
  DC := TRemDataSet.Create(nil);
  Sock.AddProv('DC','ALL');
  DC.ProviderName := 'DC';
  DC.RemoteServer := Sock;
  IF SameText(HD,'H') then
       DC.Command := 'SELECT * FROM ' + MS.Name + ' ' +
                     'WHERE CQMBSD=''' + FormatDateTime('MM/dd/yyyy',MS.FieldByName('CQMBSD').AsDateTime) + '''' +
                     '  AND CQMCTN=''' + MS.FieldByName('CQMCTN').AsString + '''' +
                     '  AND CQMACC=''' + MS.FieldByName('CQMACC').AsString + ''''
  else
       DC.Command := 'SELECT * FROM ' + MS.Name + ' ' +
                     'WHERE CQSRTY=''' + MS.FieldByName('CQSRTY').AsString + '''' +
                     '  AND CQSCQD=''' + FormatDateTime('MM/dd/yyyy',MS.FieldByName('CQSCQD').AsDateTime) + '''' +
                     '  AND CQSCQA=' + MS.FieldByName('CQSCQA').AsString +
                     '  AND CQSCQN=''' + MS.FieldByName('CQSCQN').AsString + '''' +
                     '  AND CQSCQC=''' + MS.FieldByName('CQSCQC').AsString + '''' +
                     '  AND CQSBKC=''' + MS.FieldByName('CQSBKC').AsString + '''' +
                     '  AND CQSBRC=''' + MS.FieldByName('CQSBRC').AsString + '''' +
                     '  AND CQSCQT=''' + MS.FieldByName('CQSCQT').AsString + '''' +
                     '  AND CQSDED=''' + FormatDateTime('MM/dd/yyyy',MS.FieldByName('CQSDED').AsDateTime) + '''' +
                     '  AND CQSCQS=''' + MS.FieldByName('CQSCQS').AsString + '''' +
                     '  AND CQSREC=''' + MS.FieldByName('CQSREC').AsString + '''' +
                     '  AND CQSCNO=''' + MS.FieldByName('CQSCNO').AsString + ''''
                    ;

  Result := (DC.RecordCount > 0)
end;  

function ConvertTextToDate(TextDate:string):TDateTime;
begin
  Result := StrToDate(Copy(TextDate,1,2) + '/' + Copy(TextDate,3,2) + '/' + Copy(TextDate,5,4));
end;

function GetHeader(RecStr,PathFile,CQStatus: string; Main: TRemDataSet; var Head: Boolean;
                   var Header: string;Sock:TSockCon; DLL:TDLLParam):Boolean;
begin
  Result := False;
  if Length(RecStr) = 58 then
  begin
    try
      with Main do
      begin
        Append;
        FieldByName('CQMACT').Value := 'A';
        FieldByName('CQMSTS').Value := 'A';
        FieldByName('CQMBRN').Value := DLL.Branch;
        FieldByName('CQMPDM').Value := DLL.PDM;
        FieldByName('CQMPDT').Value := DLL.PDT;
        FieldByName('CQMBSD').Value := ConvertTextToDate(Copy(RecStr,1,8));
//        if CQStatus = '' then
//          FieldByName('CQMDNO').Value := getRunning(Sock,'DS','DOCLAD','LOAD_DEPOSIT','')
//        else
//          FieldByName('CQMDNO').Value := getRunning(Sock,'RS','DOCLAD','LOAD_RESULT','');
        FieldByName('CQMDNO').Value := '#' + GeneratePWDSecurityString(14);
        FieldByName('CQMCTN').Value := Trim(Copy(RecStr,9,40));
        FieldByName('CQMACC').Value := Trim(Copy(RecStr,49,10));
        FieldByName('CQMFNA').Value := ExtractFileName(PathFile);
        FieldByName('CQMETD').Value := getServerDateTime(Sock);
        FieldByName('CQMETU').Value := DLL.UserID;
        FieldByName('CQMETW').Value := DLL.WorkStation;
        FieldByName('CQMCRD').Value := getServerDateTime(Sock);
        FieldByName('CQMCRU').Value := DLL.UserID;
        FieldByName('CQMCRW').Value := DLL.WorkStation;
        Post;
      end;
      Head   := True;
      Result := True;
    except
      on ee:Exception do
      begin
        Header := 'File not Correct !' + #13 + #13 + ee.Message + #13 +'Please contact the bank';
        exit;
      end;
    end;
  end
  else Header := 'File not Correct !' + #13 + #13 +
                 'Header :' + #13 +
                 'Number of character does not equal to 58' + #13 +
                 'Please contact the bank';
end;

function GetDetail(RecStr,CQStatus,TypeLoad: string; Main,Sub: TRemDataSet;
                   var Detail: string; Sock:TSockCon; DLL:TDLLParam):Boolean;
  procedure AddData(FieldNameA,TypeA:string;StartA,countA:Integer);
  var N:string;
  begin
    with Sub do
    begin
      if Length(Trim(Copy(RecStr,StartA,countA))) > 0 then
      begin
        if TypeA = 'N' then
          begin
            if FieldNameA='CQSCQN' then
              FieldByName(FieldNameA).Value := IIF((IntToStr(StrToInt64(Trim(Copy(RecStr,StartA,countA)))) = '0'),'0000000',FormatFloat('0000000',StrToInt64(Trim(Copy(RecStr,StartA,countA)))))
            else
              FieldByName(FieldNameA).Value := IIF((IntToStr(StrToInt64(Trim(Copy(RecStr,StartA,countA)))) = '0'),'',IntToStr(StrToInt64(Trim(Copy(RecStr,StartA,countA)))));
          end
        else if TypeA = 'C' then
          FieldByName(FieldNameA).Value := Trim(Copy(RecStr,StartA,countA))
        else if TypeA = 'D' then
          FieldByName(FieldNameA).Value := ConvertTextToDate(Copy(RecStr,StartA,countA))
        else if TypeA = 'A' then
          FieldByName(FieldNameA).Value := StrToFloat(Trim(Copy(RecStr,StartA,countA-2)) +
                                           '.' + Trim(Copy(RecStr,StartA + ((countA-2)),2)));
      end;
    end;
  end;
begin
  Result := False;
  if (Trim(RecStr) <> '') then
  begin
    if (Trim(Copy(RecStr,17,1)) = '2') then
    begin
      if (Trim(Copy(RecStr,148,1)) = CQStatus) then
      begin
        if Length(RecStr) = 211 then
        begin
          try
            with Sub do
            begin
              Append;
              FieldByName('CQSACT').Value := 'A';
              FieldByName('CQSSTS').Value := CQStatus;
              FieldByName('CQSCQS').Value := CQStatus;
              FieldByName('CQSBRN').Value := Main.FieldByName('CQMBRN').Value;
              FieldByName('CQSPDM').Value := Main.FieldByName('CQMPDM').Value;
              FieldByName('CQSPDT').Value := Main.FieldByName('CQMPDT').Value;
              FieldByName('CQSDNO').Value := Main.FieldByName('CQMDNO').Value;
              FieldByName('CQSRNO').Value := RecordCount + 1;
              AddData('CQSWSO','N',1,2);
              AddData('CQSCNO','C',3,14);
              AddData('CQSRTY','N',17,1);
              AddData('CQSCQD','D',18,8);
              AddData('CQSCQA','A',26,20);
              AddData('CQSCQN','N',46,10);
              AddData('CQSCQC','C',56,20);
              AddData('CQSBKC','C',76,3);
              AddData('CQSBRC','C',79,4);
              AddData('CQSCQT','C',83,3);
              AddData('CQSDED','D',86,8);
              AddData('CQSDLC','N',94,10);
              AddData('CQSBKN','C',104,4);
              AddData('CQSBNN','C',108,40);
              AddData('CQSREC','C',149,2);
              AddData('CQSRED','C',151,40);
              AddData('CQSPLO','C',191,7);
              AddData('CQSECD','D',198,8);
              AddData('CQSTNO','N',206,6);
              if CQStatus = '' then
              begin
                FieldByName('CQSEDD').Value := 'F';
                FieldByName('CQSDEL').Value := 'F';
                FieldByName('CQSLDF').Value := 'F'
              end;
              FieldByName('CQSETD').Value := getServerDateTime(Sock);
              FieldByName('CQSETU').Value := DLL.UserID;
              FieldByName('CQSETW').Value := DLL.WorkStation;
              FieldByName('CQSCRD').Value := getServerDateTime(Sock);
              FieldByName('CQSCRU').Value := DLL.UserID;
              FieldByName('CQSCRW').Value := DLL.WorkStation;
              Post;
            end;
            Result := True;
          except
            on ee:Exception do
            begin
              Detail := 'File not Correct !' + #13 + #13 + ee.Message + #13 +'Please contact the bank';
              exit;
            end;
          end;
        end
        else Detail := 'File not Correct !' + #13 + #13 +
                       'Detail :' + #13 +
                       'Number of character does not equal to 211' + #13 +
                       'Please contact the bank';
      end
      else Detail :='File not Correct !' + #13 + #13 + 'File Type not match with ' + TypeLoad;
    end
    else Detail := 'File not Correct !' + #13 + #13 + 'Please Check Record Type';
  end
  else Detail := 'File not Correct !' + #13 + #13 + 'Please Check Format';

end;

function ReadTextFile(PathFile: string; CQStatus: string; TypeLoad: string;
                        Main: TRemDataSet; Sub: TRemDataSet; HP:TClientDataSet;
                        Sock: TSockCon; var Duplicate: Boolean; DLL:TDLLParam; Grid:TcxGrid = nil):Boolean;
var ListText   : TStringList;
    I , U      : Integer;
    Head       : Boolean;
    RecStr,Header,Detail,ErrorMsg: string;

begin
  Result := True;
  ListText := TStringList.Create;
  ListText.LoadFromFile(PathFile);
  PleaseWaitBegin('Load File ' + TypeLoad);
  if Grid <> nil then Grid.Enabled := False;
  Main.DisableControls;
  Sub.DisableControls;
  ErrorMsg := '';
  try
    ClearLoadFlag(Main.Name,Sub.Name,Sock);
    if Main.Active and Sub.Active then
      if ListText.Count > 0 then
      begin
      for I := ListText.Count -1 downto 0 do
      begin
        RecStr :=  ListText.Strings[I];
        if Trim(RecStr) <> '' then
        begin
          if Copy(RecStr,1,3) = 'EOF'  then
          begin
            Head := False;
            for U := 0 to I - 1 do
            begin
              RecStr := ListText.Strings[U];
              if not Head then
                begin
                  if Trim(RecStr) <> '' then
                  begin
                    if not GetHeader(RecStr,PathFile,CQStatus,Main,Head,ErrorMsg,Sock,DLL) then
                    begin
                      //ErrorMsg := Header;
                      Break;
                    end;
                  end;
                  if Duplicate then Duplicate := SearchFileDuplicate('H',Main,Sock);
                end
              else
                begin
                  if not GetDetail(RecStr,CQStatus,TypeLoad,Main,Sub,ErrorMsg,Sock,DLL) then
                  begin
                    //ErrorMsg := Detail;
                    Break;
                  end;
                  if Duplicate then Duplicate := SearchFileDuplicate('D',Sub,Sock);
                end;
              Application.ProcessMessages;
            end;
            if ErrorMsg = '' then
            begin
              ClearReceiveFlag(Sock,'ALL');
              if (CQStatus = '') and not Main.IsEmpty then
                PROCESSDEPOSIT(Main,Sub,HP,Sock,DLL,'ALL')
              else if not Main.IsEmpty then
                PROCESSRESULT(Main,Sub,HP,Sock,CQStatus);
              Sub.First;
            end;
          end
          else
            begin
              ErrorMsg := 'File not Correct !' + #13 + #13 + 'No Trailer Record';
              Break;
            end;
          Break;
        end;
      end;
      end
      else
      begin
        ErrorMsg := 'File not Correct !' + #13 + #13 + 'Blank File';//'Please Check Format';
        Duplicate := False;
      end;
    if ErrorMsg <> '' then
    begin
      Main.CancelUpdates;
      Sub.CancelUpdates;
      PleaseWaitEnd;
      MessageDlg(ErrorMsg,  mtError, [mbOK], 0);
      Result := False;
    end;
  finally
    ListText.Free;
    PleaseWaitEnd;
    Main.EnableControls;
    Sub.EnableControls;
    if Grid <> nil then Grid.Enabled := True;
  end;
end;

procedure ProcessBissType(Contract: string; var Mark,ReMark: string;
                          HP: TClientDataSet; Sock: TSockCon);

  function CheckHPLS(Code,HL:string;CDS:TDataSet;Sock:TSockCon=nil): Boolean;
  begin
    if HL = 'L' then
      begin
        TRemDataSet(CDS) := TRemDataSet.Create(nil);
        Sock.AddProv('CDS','ALL');
        TRemDataSet(CDS).ProviderName := 'CDS';
        TRemDataSet(CDS).RemoteServer := Sock;
        TRemDataSet(CDS).Command := 'Select CONRUN From HPMCON00 Where CONRUN=' + '''' + Code + '''';
      end
    else
      begin
        TClientDataSet(CDS).Close;
        TClientDataSet(CDS).ProviderName:='DSP1';
        TClientDataSet(CDS).CommandText := 'Select CONRUN From HPPDTA.HPMCON00 Where CONRUN=' + '''' + Code + '''';
        TClientDataSet(CDS).Open;
//        TRemDataSet(CDS) := TRemDataSet.Create(nil);
//        Sock.AddProv('CDS','ALL');
//        TRemDataSet(CDS).ProviderName := 'CDS';
//        TRemDataSet(CDS).RemoteServer := Sock;
//        TRemDataSet(CDS).Command := 'Select CONRUN From AS400.S659577E.HPPDTA.HPMCON00 Where CONRUN=''' + Code + '''';
      end;
    Result := not CDS.IsEmpty;
  end;
var LS : TRemDataSet;
begin
  Mark    := '';
  ReMark  := '';
  Contract := Trim(Contract);
  if Contract = '' then
    begin
      Mark    := 'ECE';
      ReMark  := 'CONTRACT EMPTY';
    end
  else if CheckHPLS(Trim(Contract),'L',LS,Sock) then
    begin
      Mark    := 'BLS';
      ReMark  := '';
    end
  else if CheckHPLS(Trim(Contract),'H',HP,Sock) then
    begin
      Mark    := 'BHP';
      ReMark  := '';
    end
  else
    begin
      Mark    := 'EUN';
      ReMark  := 'NOT LS AND NOT HP';
    end;
end;

procedure ProcessDeposit(Main,Sub: TRemDataSet; HP: TClientDataSet; Sock: TSockCon; DLL:TDLLParam; CheckData:string);
var Mark,ReMark,CQA,CQD,CQN,BRC,BKC: string;
    LSS,HPS,ERR : Integer;
    LSA,HPA,ERA : Extended;
    BK : string;
    FT : Boolean;
    Dep: TClientDataSet;
begin
  LSS := 0;HPS := 0;ERR := 0;
  LSA := 0;HPA := 0;ERA := 0;
  BK := Sub.FieldByName('CQSRNO').AsString;
  FT := Sub.Filtered;
  Sub.Filtered := False;
  Sub.IndexFieldNames := 'CQSDLC;CQSCQD';
  Dep := TClientDataSet.Create(nil);
  try
    Sock.AddProv('Dep','ALL');
    Dep.ProviderName := 'Dep';
    Dep.RemoteServer := Sock;
    if (Trim(UpperCase(CheckData)) = 'ALL') or (Trim(UpperCase(CheckData)) = 'LS') then  ClearReceiveFlag(Sock);
    with Sub do
    begin
      First;
      while not Sub.Eof do
      begin
        Application.ProcessMessages;
        Edit;
        if Trim(UpperCase(CheckData)) = 'ALL' then
        begin
          ProcessBissType(FieldByName('CQSDLC').AsString,Mark,ReMark,HP,Sock);
          FieldByName('CQS' + LeftStr(Mark,Length(Mark)-2) + 'TY').Value := RightStr(Mark,2);
          if FieldByName('CQSDEL').AsString = 'F' then FieldByName('CQSRMK').Value := ReMark;
        end;
        Mark   := '';
        ReMark := '';
        if (FieldByName('CQSBTY').AsString = 'LS') and ((Trim(UpperCase(CheckData)) = 'ALL') or (Trim(UpperCase(CheckData)) = 'LS')) then
          begin
            Dep.Close;
            Dep.CommandText := 'EXEC SP_PROCESSDEPOSIT ''' + FieldByName('CQSDLC').AsString + '''' +
                                                       ',' + FieldByName('CQSCQA').AsString +
                                                       ',''' + FormatDateTime('MM/dd/yyyy',FieldByName('CQSCQD').AsDateTime) + '''' +
                                                       ',''' + FieldByName('CQSCQN').AsString + '''' +
                                                       ',''' + FieldByName('CQSBKC').AsString + '''' +
                                                       ',''' + FieldByName('CQSBRC').AsString + '''' +
                                                       ',''' + FieldByName('CQSCNO').AsString + '''' +
                                                       '';
            Dep.Open;
            Mark   := IIF((Length(Dep.FieldByName('ETY').AsString)<3),Dep.FieldByName('ETY').AsString + '  ',Dep.FieldByName('ETY').AsString);
            ReMark := Dep.FieldByName('RMK').AsString;
            FieldByName('DUE').Value := FormatDateTime('dd/mm/yyyy',Dep.FieldByName('DUE').AsDateTime);
            if (FieldByName('CQSLDF').Value = 'T') and (Mark = 'EOD') then Mark := 'E  ';
            if Mark = 'EDC' then
              begin
                FieldByName('CQSSTS').Value :=RightStr(Dep.FieldByName('CST').AsString,1);
                FieldByName('STS').Value := Dep.FieldByName('CST').AsString;
                FieldByName('CQSRFN').Value := Dep.FieldByName('RFN').AsString;
              end
            else if Pos('RECEIVED(',UpperCase(ReMark)) > 0 then
              FieldByName('CQSRFN').Value := Dep.FieldByName('RFN').AsString
            else if Mark = 'E  ' then
              begin
                FieldByName('CQSRFN').Value :='#' + GeneratePWDSecurityString(10);
                FieldByName('GOD').Value := Dep.FieldByName('GOODS').AsFloat;
                FieldByName('VAT').Value := Dep.FieldByName('VAT').AsFloat;
                FieldByName('WHT').Value := Dep.FieldByName('WT').AsFloat;
              end;
            if Mark = 'E  ' then
              begin
                Dep.Close;
                Dep.CommandText := 'EXEC SP_UPDATERECEIVE ''' + FieldByName('CQSCQN').AsString + '''' +
                                                        ',''' + FormatDateTime('MM/dd/yyyy',FieldByName('CQSCQD').AsDateTime) + '''' +
                                                        ','   + FieldByName('CQSCQA').AsString +
                                                        ',''' + IIF((FieldByName('CQSCQT').AsString = '000'),'C','N') + '''' +
                                                        ',''' + FieldByName('CQSCQC').AsString + '''' +
                                                        ',''' + FieldByName('CQSBKC').AsString + '''' +
                                                        ',''' + FieldByName('CQSBRC').AsString + '''' +
                                                        ',''' + FieldByName('CQSRFN').AsString + '''' +
                                                        ',''' + FieldByName('CQSDLC').AsString + '''' +
                                                        ',''' + DLL.Branch + '''' +
                                                        ',''' + DLL.PDM + '''' +
                                                        ',''' + DLL.PDT + '''' +
                                                        ',''' + DLL.WorkStation + '''' +
                                                        ',''' + DLL.UserID + '''' +
                                                        ','   + FormatFloat('0.00',FieldByName('GOD').AsFloat) +
                                                        ','   + FormatFloat('0.00',FieldByName('VAT').AsFloat) +
                                                        ','   + FormatFloat('0.00',FieldByName('WHT').AsFloat) +
                                                        ',''' + FormatDateTime('MM/dd/yyyy',FieldByName('CQSECD').AsDateTime) + '''' +
                                                        ',''' + Main.FieldByName('CQMACC').AsString + '''' +
                                                        '';
                Dep.Execute;
              end;

            FieldByName('CQS' + LeftStr(Mark,Length(Mark)-2) + 'TY').Value := RightStr(Mark,2);
            FieldByName('CQSRMK').Value := ReMark;
          end
        else if (FieldByName('CQSBTY').AsString = 'HP') and ((Trim(UpperCase(CheckData)) = 'ALL') or (Trim(UpperCase(CheckData)) = 'HP')) then
          begin
            CQA := FieldByName('CQSCQA').AsString;
            CQD := FormatDateTime('yyyyMMdd',FieldByName('CQSCQD').AsDateTime);
            CQN := FieldByName('CQSCQN').AsString;
            BRC := RightStr(FieldByName('CQSBRC').AsString,3);
            BKC := RightStr(FieldByName('CQSBKC').AsString,2);
            HP.Close;
            HP.ProviderName := 'DSP1';
            HP.CommandText := 'SELECT RCHDOC ' +
                              'FROM HPPDTA.HPTRCH00 ' +
                              'WHERE RCHBBN=''' + BKC + '''' +
                              '  AND RCHBBR=''' + BRC + '''' +
                              '  AND RCHRFN=''' + CQN + '''' +
                              '  AND RCHRFD=' + CQD +
                              '  AND RCHAMT=' + CQA;
            HP.Open;
            if HP.RecordCount > 0 then
              begin
                Mark   := 'EEX';
                ReMark := 'DOC ' + HP.FieldByName('RCHDOC').AsString;
              end
            else
              begin
                HP.Close;
                HP.ProviderName := 'DSP1';
                HP.CommandText := 'SELECT * FROM HPPDTA.HPTBTR00 ' +
                                  'WHERE BTRCQB=''' + BKC + '''' +
                                  '  AND BTRCQR=''' + BRC + '''' +
                                  '  AND BTRCQN=' + CQN +
                                  '  AND BTRCQD=' + CQD +
                                  '  AND BTRAMT=' + CQA ;
                HP.Open;
                if HP.RecordCount > 0 then
                begin
                  Mark   := 'EEX';
                  ReMark := 'DOC ' + HP.FieldByName('BTRDOC').AsString;
                end
                else
                begin
                  HP.Close;
                  HP.ProviderName := 'DSP1';
                  HP.CommandText := 'SELECT * FROM HPPDTA.HPTBTR00 ' +
                                    'WHERE ((BTRAMT=' + CQA + ' AND BTRCQD=' + CQD + ')' +
                                    '   OR  (BTRAMT=' + CQA + ' AND BTRCQN=' + CQN + ')' +
                                    '   OR  (BTRAMT=' + CQA + ' AND BTRCQR=''' + BRC + ''')' +
                                    '   OR  (BTRAMT=' + CQA + ' AND BTRCQB=''' + BKC + '''))' +
                                    '  AND BTRSTS<>''0''' +
                                    '  AND BTRDTE > ''' + FormatDateTime('yyyyMMdd',IncYear(NOW,-1)) + '''' +
                                    '  AND BTRTYP=''3''';
                  HP.Open;
                  if HP.RecordCount > 0 then
                  begin
                    Mark   := 'ESR';
                    ReMark := 'SIMILAR RECEIVED';
                  end
                  else
                  begin
                    Mark   := 'E  ';
                    ReMark := '';
                  end;
                end;
              end;
            if FieldByName('CQSLDF').AsString = 'T'then
            begin
              Mark   := 'E  ';
              ReMark := '';
            end;
            FieldByName('CQS' + LeftStr(Mark,Length(Mark)-2) + 'TY').Value := RightStr(Mark,2);
            FieldByName('CQSRMK').Value := ReMark;
          end;
        Post;
        if FieldByName('CQSDEL').AsString = 'F' then
        begin
          if SameText(FieldByName('CQSBTY').AsString,'LS')
          and SameText(FieldByName('CQSETY').AsString,'') then
            begin
              LSS := LSS + 1;
              LSA := LSA + FieldByName('CQSCQA').AsFloat;
            end
          else if SameText(FieldByName('CQSBTY').AsString,'HP')
          and SameText(FieldByName('CQSETY').AsString,'') then
            begin
              HPS := HPS + 1;
              HPA := HPA + FieldByName('CQSCQA').AsFloat;
            end
          else
            begin
              ERR := ERR + 1;
              ERA := ERA + FieldByName('CQSCQA').AsFloat;
            end;
        end;
        Next;
      end;
    end;

    with Main do
    begin
      Edit;
      FieldByName('CQMITS').Value := LSS + HPS + ERR;
      FieldByName('CQMLSS').Value := LSS;
      FieldByName('CQMHPS').Value := HPS;
      FieldByName('CQMERR').Value := ERR;
      FieldByName('CQMITA').Value := LSA + HPA + ERA;
      FieldByName('CQMLSA').Value := LSA;
      FieldByName('CQMHPA').Value := HPA;
      FieldByName('CQMERA').Value := ERA;
      Post;
    end;
  finally
    Sub.Filtered := FT;
    Sub.Locate('CQSRNO',BK,[]);
    Dep.Free;
  end;
end;

procedure ProcessResult(Main,Sub: TRemDataSet; HP: TClientDataSet; Sock: TSockCon; CQStatus:string);
var Mark,ReMark,CQS: string;
    LSS,HPS,ERR : Integer;
    LSA,HPA,ERA : Extended;
    Res: TClientDataSet;
begin
  LSS := 0;HPS := 0;ERR := 0;
  LSA := 0;HPA := 0;ERA := 0;
  with Sub do
  begin
    First;
    while not Sub.Eof do
    begin
      Application.ProcessMessages;
      Edit;
      ProcessBissType(FieldByName('CQSDLC').AsString,Mark,ReMark,HP,Sock);
      FieldByName('CQS' + LeftStr(Mark,Length(Mark)-2) + 'TY').Value := RightStr(Mark,2);
      FieldByName('CQSRMK').Value := ReMark;
      Mark   := '';
      ReMark := '';
      if (FieldByName('CQSBTY').AsString = 'LS')
      or (FieldByName('CQSBTY').AsString = '') then
      begin
        if CQStatus = 'C' then
          CQS  := 'N'
        else if CQStatus = 'P' then
          CQS  := 'P'
        else if CQStatus = 'R' then
          CQS  := 'Y';
        Res := TClientDataSet.Create(nil);
        Sock.AddProv('Res','ALL');
        Res.ProviderName := 'Res';
        Res.RemoteServer := Sock;
        Res.Close;
        Res.CommandText := 'EXEC SP_PROCESSRESULT ''' + FormatDateTime('MM/dd/yyyy',FieldByName('CQSCQD').AsDateTime) + '''' +
                                                  ',' + FieldByName('CQSCQA').AsString +
                                                  ',''' + FieldByName('CQSCQN').AsString + '''' +
                                                  ',''' + FieldByName('CQSBKC').AsString + '''' +
                                                  ',''' + FieldByName('CQSBRC').AsString + '''' +
                                                  ',''' + CQS + '''' +
                                                  ',''' + IIF((FieldByName('CQSCQT').AsString = '000'),'C','N') + '''' +
                                                  ',''' + FieldByName('CQSREC').AsString + '''' +
                                                  ',''' + FieldByName('CQSDLC').AsString + '''' +
                                                  ',''' + FieldByName('CQSCNO').AsString + '''';
        Res.Open;
        Mark   := IIF((Length(Res.FieldByName('ETY').AsString)<3),Res.FieldByName('ETY').AsString + '  ',Res.FieldByName('ETY').AsString);
        ReMark := Res.FieldByName('RMK').AsString;
        if Mark = 'EFI' then FieldByName('CQSSTS').Value := RightStr(Res.FieldByName('CST').AsString,1);
        if Mark = 'E  ' then
        begin
          FieldByName('CQSRFN').Value := Res.FieldByName('RFN').AsString;
          if (FieldByName('CQSBTY').AsString = '') then
          begin
            FieldByName('CQSBTY').AsString := 'LS';
            FieldByName('CQSDLC').AsString := Res.FieldByName('CON').AsString;
          end;
        end;
        FieldByName('STS').Value := Res.FieldByName('CST').AsString;
        FieldByName('CQS' + LeftStr(Mark,Length(Mark)-2) + 'TY').Value := RightStr(Mark,2);
        FieldByName('CQSRMK').Value := ReMark;
        Res.Free;
      end;
      Post;
          if SameText(FieldByName('CQSBTY').AsString,'LS')
          and SameText(FieldByName('CQSETY').AsString,'') then
            begin
              LSS := LSS + 1;
              LSA := LSA + FieldByName('CQSCQA').AsFloat;
            end
          else if SameText(FieldByName('CQSBTY').AsString,'HP')
          and SameText(FieldByName('CQSETY').AsString,'') then
            begin
              HPS := HPS + 1;
              HPA := HPA + FieldByName('CQSCQA').AsFloat;
            end
          else
            begin
              ERR := ERR + 1;
              ERA := ERA + FieldByName('CQSCQA').AsFloat;
            end;
      Next;
    end;
    with Main do
    begin
      Edit;
      FieldByName('CQMITS').Value := LSS + HPS + ERR;
      FieldByName('CQMLSS').Value := LSS;
      FieldByName('CQMHPS').Value := HPS;
      FieldByName('CQMERR').Value := ERR;
      FieldByName('CQMITA').Value := LSA + HPA + ERA;
      FieldByName('CQMLSA').Value := LSA;
      FieldByName('CQMHPA').Value := HPA;
      FieldByName('CQMERA').Value := ERA;
      Post;
    end;

    IndexFieldNames := 'CQSDLC;CQSCQD';
  end;
end;

procedure ExPortCSV(Rem: TDataSet;SFD:TSaveDialog);
var
  Stream: TFileStream;
  i,u: Integer;
  OutLine: string;
  sTemp,FName: string;
  HD : Boolean;
  B : TBookmark;
  
  function FindWindowByTitle(WindowTitle: string): Hwnd;
  var
    NextHandle: Hwnd;
    NextTitle: array[0..260] of char;
  begin
    // Get the first window
    NextHandle := GetWindow(Application.Handle, GW_HWNDFIRST);
    while NextHandle > 0 do
    begin
      // retrieve its text
      GetWindowText(NextHandle, NextTitle, 255);
      if Pos(WindowTitle, StrPas(NextTitle)) <> 0 then
      begin
        Result := NextHandle;
        Exit;
      end
      else
        // Get the next window
        NextHandle := GetWindow(NextHandle, GW_HWNDNEXT);
    end;
    Result := 0;
  end;

  procedure startExcel;
  var
    oE:Variant;
    hWordWindow: HWND;
  begin
    try
      oE := GetActiveOleObject('Excel.Application');
    except
      oE := CreateOleObject('Excel.Application');
    end;
    oE.Workbooks.Open(FName, false, false);
    oE.Visible := True;
    hWordWindow := FindWindowByTitle('Excel');
    if hWordWindow <> 0 then // if we found notepad
      begin
        //ShowMessage('');
        ShowWindow(hWordWindow, SW_SHOW);
      end
    else
      ShowMessage('not found.');
  end;

begin
  B := Rem.GetBookmark;
  Rem.DisableControls;
  try
  Rem.First ;
  if SFD.Execute() then
    begin
      PleaseWaitBegin('ExportCSV');
      if Trim(SFD.FileName) <> '' then
        begin
          FName := IIF(Pos('.CSV',SFD.FileName)>0,SFD.FileName,SFD.FileName + '.CSV');
          Stream := TFileStream.Create(FName, fmCreate);
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
        startExcel;
    end;
  finally
    Rem.EnableControls;
    Rem.GotoBookmark(B);
    Rem.FreeBookmark(B);
    PleaseWaitEnd;
  end;
end;

procedure FieldsFormate(Main,Sub:TRemDataSet);
begin
  with Main do
  begin
    TFloatField(FieldByName('CQMITA')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQMLSA')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQMHPA')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQMERA')).DisplayFormat := '#,##0.00';
  end;
  with Sub do
  begin
    TFloatField(FieldByName('CQSCQA')).DisplayFormat := '#,##0.00';
    TFloatField(FieldByName('CQSCQD')).DisplayFormat := 'dd/MM/yyyy';
    TFloatField(FieldByName('CQSDED')).DisplayFormat := 'dd/MM/yyyy';
    TFloatField(FieldByName('CQSECD')).DisplayFormat := 'dd/MM/yyyy';
  end;
end;

procedure ClearReceiveFlag(Sock:TSockCon;Flag:string = '');
var CRF: TClientDataSet;
    ALL: string;
begin
  ALL := '';
  CRF := TClientDataSet.Create(nil);
  TRY
  Sock.AddProv('CRF','ALL');
  CRF.ProviderName := 'CRF';
  CRF.RemoteServer := Sock;
  CRF.Close;
  if Flag = 'ALL' then ALL := 'DELETE CQDM007 WHERE LEFT(CQMDNO,1)=''*''' +
                              'DELETE CQDS003 WHERE LEFT(CQSDNO,1)=''*''';

  CRF.CommandText := 'DELETE CQDM007 WHERE LEFT(CQMDNO,1)=''#''' +
                     'DELETE CQDS003 WHERE LEFT(CQSDNO,1)=''#''' +
                     ALL + '';
  CRF.Execute;
  CRF.Close;
  CRF.CommandText := 'EXEC SP_RESTORERECEIVE';
  CRF.Execute;
  FINALLY
    CRF.Free;
  END;
end;

procedure GenDNO(TBM,TBS,OldDNO,NewDNO:string;Sock:TSockCon);
var DNO: TClientDataSet;
begin
  DNO:= TClientDataSet.Create(nil);
  try
    Sock.AddProv('DNO','ALL');
    DNO.ProviderName := 'DNO';
    DNO.RemoteServer := Sock;
    DNO.Close;
    DNO.CommandText := 'UPDATE ' + TBM + ' SET CQMDNO=''' + NewDNO + ''' WHERE CQMDNO=''' + OldDNO + '''' + #13 +
                       'UPDATE ' + TBS + ' SET CQSDNO=''' + NewDNO + ''' WHERE CQSDNO=''' + OldDNO + '''';
    DNO.Execute;
  finally
    DNO.Free;
  end;
end;

procedure ClearLoadFlag(TBM,TBS:string;Sock:TSockCon);
var CDNO: TClientDataSet;
begin
  CDNO:= TClientDataSet.Create(nil);
  try

    Sock.AddProv('CDNO','ALL');
    CDNO.ProviderName := 'CDNO';
    CDNO.RemoteServer := Sock;
    CDNO.Close;
    CDNO.CommandText := 'DELETE ' + TBM + ' WHERE LEFT(CQMDNO,1)=''#''' +
                        'DELETE ' + TBS + ' WHERE LEFT(CQSDNO,1)=''#''';
    CDNO.Execute;
  finally
    CDNO.Free;
  end;
end;
end.
