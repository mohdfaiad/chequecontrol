unit UIT_UTILS_LIB;

interface

uses
  SysUtils,Controls,StdCtrls,
  Windows,
  Forms,
  Classes,
  DB,
  DBClient,
  RemCollect,
  Converse,SConnect,
  SockCon,  MConnect,cxDropDownEdit,
  Dialogs,uCiaXml,Graphics;

  procedure ExecSQL(cds:TClientDataSet;strsql:string);
  procedure initCdsConn(cds:TClientDataSet;conn:TSockCon;tmpDspName:string);overload;
  procedure initCdsConn(cds:TClientDataSet;conn:TConnectionBroker);overload;
  procedure initSockConn(_sockcon:TSockCon);


  function getRunning(_sock:TSockCon;_prefix,abr,cde,value_fieldname:string):string;
  function getCde(_sock:TSockCon;abr,grp,cde,value_fieldname:string):string;
  function getServerDateTime(_sock:TSockCon):TDateTime;
  function getServerDate(_sock:TSockCon):TDateTime;
  function getTaxRate(_sock:TSockCon):integer;
  function getWHTRate(_sock:TSockCon):integer;
  procedure execSQLA(_sock:TSockCon;strsql:string);
  function getContractName(sockcon:TSockCon;contract: string): string;
  function getModelName(sockcon:TSockCon;contract: string): string;


  function GetComputerNetName: string;
  function CheckNumber(str: string): boolean;
  function IsChqNo(chqNo: string): boolean;
  function IsConnErr(sockcon:TSockCon;contract: string): boolean;
  function CheckReal(str: string): boolean;

  function AppendCds(cdsSource:TClientDataSet;cdsTarget:TClientDataSet):boolean;
  function copyCdsA(cdsSource:TClientDataSet;cdsTarget:TClientDataSet):boolean;
  function copyCds(cdsSource:TClientDataSet;cdsTarget:TClientDataSet):boolean;
  function Rounder(var Value: Currency; Decimals: Integer): Currency;

  procedure loadComboListA(_cmb:TcxComboBox;conn:TSockCon;_keyField,_listField:string;_sqlcommand:string;tmpName:string);overload;



  function MessageDlgCustom(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; ToCaptions: array of string;
    msgFont: TFont;btnFont: TFont) : integer;
  procedure ModifyDialog(var frm: TForm; ToCaptions : array of string;customMsgFont : TFont = nil;customBtnFont : TFont = nil);


implementation

uses UIT_GLOBAL_LIB ;

(*
function copyCds(SourceSQL:string;cdsSource:TSQLQuery;cdsTarget:TClientDataSet):boolean;
var i:integer;
begin
  cdsSource.Close;
  cdsSource.SQL.Text:=SourceSQL;
try
  Result := False;
    cdsTarget.EmptyDataSet;
    cdsSource.Open();
    cdsSource.First();
    while (not cdsSource.Eof) do
    begin
      cdsTarget.Append();
      for i := 0 to (cdsSource.FieldCount - 1) do
        cdsTarget.FieldByName(cdsSource.Fields[i].FieldName).Value :=
          cdsSource.FieldByName(cdsSource.Fields[i].FieldName).Value;
      try
      cdsTarget.Post();
      except
      end;
      cdsSource.Next();
    end;
  finally
    cdsTarget.First;
    if (cdsSource.Active) then
      cdsSource.Close();
    result := True;
  end;
end;  *)

function Rounder(var Value: Currency; Decimals: Integer): Currency;
var
  j: Integer; 
  A: Currency; 
begin

  A := 1;
 // case Decimals of
 //   0: A := 1;
 //   1: A := 10;
 //   else
      for j := 1 to Decimals do
        A := A * 10;
  //end;
  Result := Int((Value * A)) / A;



 {
  A := 1;
  case Decimals of
    0: A := 1;
    1: A := 10;
    else
      for j := 1 to Decimals do
        A := A * 10;
  end;
  Result := Int((Value * A) + 0.5) / A;

  }

end;




  procedure  loadComboListA(_cmb:TcxComboBox;conn:TSockCon;_keyField,_listField:string;_sqlcommand:string;tmpName:string);
  var _Value:TString;
      rcTemp:TClientDataSet;
  begin
    rcTemp:=TClientDataSet.Create(Application);
    rcTemp.RemoteServer:=conn;


    _cmb.Properties.Items.Clear;

    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv(tmpName, 'ALL');
      ProviderName:=tmpName;
      close;

      CommandText:=_sqlcommand;
      open;
      if recordcount>0 then
      begin
        rcTemp.First;
        while not rcTemp.Eof do
        begin
           _Value := TString.Create(trim(rcTemp.FieldByName(_keyField).AsString));
          _cmb.Properties.Items.AddObject(trim(rcTemp.FieldByName(_listField).AsString),_Value);
          rcTemp.Next;
        end;

        _cmb.ItemIndex:=0;
      end;
    end;


  end;


function copyCds(cdsSource:TClientDataSet;cdsTarget:TClientDataSet):boolean;
var i:integer;
begin
try
  Result := False;

    cdsTarget.Close;
    cdsTarget.ProviderName:='';
    cdsTarget.RemoteServer:=nil;
    cdsTarget.FieldDefs.Clear;

    for i := 0 to (cdsSource.FieldDefs.Count - 1)  do
            cdsTarget.FieldDefs.Add(cdsSource.FieldDefList.FieldDefs[i].Name,cdsSource.FieldDefList.FieldDefs[i].DataType,cdsSource.FieldDefList.FieldDefs[i].Size);

    cdsTarget.CreateDataSet;
    cdsTarget.Data:=cdsSource.Data;
  finally
    cdsTarget.First;
    result := True;
  end;
end;


function GetTextWidth(s: string; fnt: TFont; HWND: THandle): integer;
var
  canvas: TCanvas;
begin
  canvas := TCanvas.Create;
  try
    canvas.Handle := GetWindowDC(HWND);
    canvas.Font := fnt;
    Result := canvas.TextWidth(s);
  finally
    ReleaseDC(HWND,canvas.Handle);
    FreeAndNil(canvas);
  end;  //try-finally
end;

function GetTextHeight(s: string; fnt: TFont; HWND: THandle): integer;
var
  canvas: TCanvas;
begin
  canvas := TCanvas.Create;
  try
    canvas.Handle := GetWindowDC(HWND);
    canvas.Font := fnt;
    Result := canvas.TextHeight(s);
  finally
    ReleaseDC(HWND,canvas.Handle);
    FreeAndNil(canvas);
  end;  //try-finally
end;

// Usage  NewColor:= Blend(Color1, Color2, blending level 0 to 100);
function Blend(Color1, Color2: TColor; A: Byte): TColor;
var
  c1, c2: LongInt;
  r, g, b, v1, v2: byte;
begin
  A:= Round(2.55 * A);
  c1 := ColorToRGB(Color1);
  c2 := ColorToRGB(Color2);
  v1:= Byte(c1);
  v2:= Byte(c2);
  r:= A * (v1 - v2) shr 8 + v2;
  v1:= Byte(c1 shr 8);
  v2:= Byte(c2 shr 8);
  g:= A * (v1 - v2) shr 8 + v2;
  v1:= Byte(c1 shr 16);
  v2:= Byte(c2 shr 16);
  b:= A * (v1 - v2) shr 8 + v2;
  Result := (b shl 16) + (g shl 8) + r;
end;


function MessageDlgCustom(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; ToCaptions: array of string;
  msgFont: TFont;btnFont: TFont): integer;
var
  dialog : TForm;
begin
  try
    dialog := CreateMessageDialog(Msg, DlgType, Buttons);
//    dialog.Color:=$005B5BFF;
//    dialog.Color:=Blend(clSilver, clWhite,65);//$009B9BFF;//clWhite;
    dialog.Color:=Blend(clRed, clSilver,70);//$009B9BFF;//clWhite;
    dialog.Position := poScreenCenter;
    ModifyDialog(dialog,ToCaptions,msgFont,btnFont);
    Result := dialog.ShowModal;
  finally
    dialog.Release;
  end;  //try-finally
end;

procedure ModifyDialog(var frm: TForm; ToCaptions: array of string;customMsgFont : TFont = nil;customBtnFont : TFont = nil);
const
  c_BtnMargin = 10;  //margin of button around caption text
var
  i,oldButtonWidth,newButtonWidth,btnCnt,lbWidth,lbHeight : integer;
begin
  oldButtonWidth := 0;
  newButtonWidth := 0;
  btnCnt := 0;
  lbWidth:=0;
  lbHeight:=0;

  for i := 0 to frm.ComponentCount - 1 do begin
    //if they asked for a custom font, assign it here
    if customMsgFont <> nil then
      if frm.Components[i] is TLabel then begin
        TLabel(frm.Components[i]).AutoSize:=true;
        TLabel(frm.Components[i]).Font := customMsgFont;
        TLabel(frm.Components[i]).Width:=GetTextWidth(TLabel(frm.Components[i]).Caption,TLabel(frm.Components[i]).Font,frm.Handle);
        TLabel(frm.Components[i]).Height:=GetTextHeight(TLabel(frm.Components[i]).Caption,TLabel(frm.Components[i]).Font,frm.Handle);
        lbWidth:=TLabel(frm.Components[i]).Width;
        lbHeight:=TLabel(frm.Components[i]).Height;
      end;


    if customBtnFont<> nil then
      if frm.Components[i] is TButton then begin
        TButton(frm.Components[i]).Font := customBtnFont;
      end;

    if frm.Components[i] is TButton then begin
      //check buttons for a match with a "from" (default) string
      //if found, replace with a "to" (custom) string
      Inc(btnCnt);

      TButton(frm.Components[i]).Anchors:=[akLeft,akBottom];

      //record the button width *before* we changed the caption
      oldButtonWidth := oldButtonWidth + TButton(frm.Components[i]).Width;

      //change the caption
      TButton(frm.Components[i]).Caption := ToCaptions[btnCnt - 1];

      //auto-size the button for the new caption
      TButton(frm.Components[i]).Width :=
        GetTextWidth(TButton(frm.Components[i]).Caption,
          TButton(frm.Components[i]).Font,frm.Handle) + c_BtnMargin+20;

      TButton(frm.Components[i]).Height:=TButton(frm.Components[i]).Height+5;          



      //the first button can stay where it is.
      //all other buttons need to slide over to the right of the one b4.
      if (1 < btnCnt) and (0 < i) then begin
        TButton(frm.Components[i]).Left :=
          TButton(frm.Components[i-1]).Left +
          TButton(frm.Components[i-1]).Width + c_BtnMargin;
      end;

      //record the button width *after* changing the caption
      newButtonWidth := newButtonWidth + TButton(frm.Components[i]).Width;
    end;  //if TButton
  end;  //for i

  //whatever we changed the buttons by, widen / shrink the form accordingly
  frm.Width := Round(frm.Width + (newButtonWidth - oldButtonWidth) +     (c_BtnMargin * btnCnt)+((lbWidth*70)/100));
  frm.Height := round(frm.Height+lbHeight);
end;

function getModelName(sockcon:TSockCon;contract: string): string;
var rcTemp:TClientDataSet;
    rep:string;
begin
    rep:='';
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=sockcon;
    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('runnung_prov004', 'ALL');
      ProviderName:='runnung_prov004';
      close;
      CommandText:=''+

            ' select e.CARMDL  from   '+
            ' DBMCOA03 d '+
            ' left join DBMCAR00 e on d.CARNUM=e.CARNUM   '+
            ' where d.COARUN='''+contract+''' ';



      open;
        if recordcount>0 then
        begin
          rep:=rcTemp.FieldByName('CARMDL').AsString;
        end;
    end;

    result:=rep;

end;


function getContractName(sockcon:TSockCon;contract: string): string;
  var rcTemp:TClientDataSet;
      rep:string;
  begin

    rep:='';
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=sockcon;
    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('runnung_prov004', 'ALL');
      ProviderName:='runnung_prov004';
      close;
      CommandText:=''+
           ' select '+
           ' a.CONDEA,b.[DLR Name] as DAEName '+
           ' from HPMCON00 a '+
           ' left join DEALER b on a.CONDEA=b.Code '+
           ' where a.CONRUN='''+contract+''' ';
      open;
        if recordcount>0 then
        begin
          rep:=rcTemp.FieldByName('CONDEA').AsString+'-'+rcTemp.FieldByName('DAEName').AsString;
        end;
    end;

    result:=rep;

  end;


function IsConnErr(sockcon:TSockCon;contract: string): boolean;
  var rcTemp:TClientDataSet;
      rep:boolean;
  begin

    rep:=false;
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=sockcon;
    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('runnung_prov005', 'ALL');
      ProviderName:='runnung_prov005';
      close;
      CommandText:='select * from HPMCON00 where CONRUN='''+contract+''' and CONACT=''A''';
      open;
        if recordcount>1 then
        begin
          rep:=true;
        end;
    end;

    result:=rep;

  end;





function AppendCds(cdsSource:TClientDataSet;cdsTarget:TClientDataSet):boolean;
var i:integer;
begin
try
  Result := False;

    cdsSource.First();
    while (not cdsSource.Eof) do
    begin
      cdsTarget.Append();
      for i := 0 to (cdsSource.FieldCount - 1) do
        cdsTarget.FieldByName(cdsSource.Fields[i].FieldName).Value :=
          cdsSource.FieldByName(cdsSource.Fields[i].FieldName).Value;
      try
      cdsTarget.Post();
      except
      end;
      cdsSource.Next();
    end;

    finally
    result := True;
  end;
end;


function copyCdsA(cdsSource:TClientDataSet;cdsTarget:TClientDataSet):boolean;    // for targer field
var i,k:integer;
     str:string;
begin
try
  Result := False;

    cdsSource.First();
    while (not cdsSource.Eof) do
    begin
      cdsTarget.Append();
      for i := 0 to (cdsTarget.FieldCount - 1) do
      begin
        for k := 0 to (cdsSource.FieldCount - 1) do
           if  cdsTarget.Fields[i].FieldName=cdsSource.Fields[k].FieldName then
           begin
                    //InputBox('','',cdsSource.Fields[k].FieldName);
                    str:=str+cdsTarget.Fields[i].FieldName+ '='+cdsSource.FieldByName(cdsSource.Fields[k].FieldName).AsString+#10#13;
                    cdsTarget.FieldByName(cdsTarget.Fields[i].FieldName).Value :=
                      cdsSource.FieldByName(cdsSource.Fields[k].FieldName).Value;
                     // exit;
           end;
      end;


      try
      cdsTarget.Post();
      except
      end;
      cdsSource.Next();
    end;


    //ShowMessage(str);
    finally
    result := True;
  end;
end;


  function CheckNumber(str: string): boolean;
  var dummy:integer;
  begin
    try
      begin
        dummy:=strtoint(str);
        result:=true;
        end;
    except
      result:=false;
    end;
  end;


{
  function IsChqNo(chqNo: integer): boolean;
  begin
    try
      begin
        result:=Length(inttostr(chqNo))>=7;
        end;
    except
      result:=false;
    end;
  end;

  }

  function IsChqNo(chqNo: string): boolean;
  begin
    try
      begin
        result:=Length(chqNo)>=7;
        end;
    except
      result:=false;
    end;
  end;





  function CheckReal(str: string): boolean;
  var dummy:Real;
  begin
    try
      begin
        dummy:=StrToFloat(str);
        result:=true;
        end;
    except
      result:=false;
    end;
  end;


  function GetComputerNetName: string;
  var buffer: array[0..255] of char;
  size: dword;
  begin
    size := 256;
      if GetComputerName(buffer, size) then
        Result := buffer
      else
    Result := ''
  end;


  function getServerDateTime(_sock:TSockCon):TDateTime;
  var rcTemp:TClientDataSet;
      curr_date:TDateTime;
  begin
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=_sock;

    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('temp_prov001', 'ALL');
      ProviderName:='temp_prov001';
//      CommandText:='SELECT {fn curdate()} curr_date';
      CommandText:='SELECT CONVERT(DATETIME, {fn NOW()}) curr_date';
      open;

      if recordcount>0 then
      begin
        curr_date:=FieldByName('curr_date').AsDateTime;
      end;

      Result:=curr_date;
    end;

  end;

  function getTaxRate(_sock:TSockCon):integer;
  var rcTemp:TClientDataSet;
      rep:Integer;
  begin
  rep:=0;
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=_sock;

    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('temp_prov001', 'ALL');
      ProviderName:='temp_prov001';
//      CommandText:='SELECT {fn curdate()} curr_date';
      CommandText:='select CQMVA1 from CQDM008 where CQMCDE=''VAT_RATE''';
      open;

      if recordcount>0 then
      begin
        rep:=FieldByName('CQMVA1').AsInteger;
      end;

      Result:=rep;
    end;

  end;

  function getWHTRate(_sock:TSockCon):integer;
  var rcTemp:TClientDataSet;
      rep:Integer;
  begin
  rep:=0;
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=_sock;

    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('temp_prov001', 'ALL');
      ProviderName:='temp_prov001';
//      CommandText:='SELECT {fn curdate()} curr_date';
      CommandText:='select CQMVA1 from CQDM008 where CQMCDE=''WHT_RATE''';
      open;

      if recordcount>0 then
      begin
        rep:=FieldByName('CQMVA1').AsInteger;
      end;

      Result:=rep;
    end;

  end;

  procedure execSQLA(_sock:TSockCon;strsql:string);
  var rcTemp:TClientDataSet;

  begin

    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=_sock;

    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('temp_prov0001', 'ALL');
      ProviderName:='temp_prov0001';
//      CommandText:='SELECT {fn curdate()} curr_date';
      CommandText:=strsql;
      Execute;
    end;

  end;

  function getServerDate(_sock:TSockCon):TDateTime;
  var rcTemp:TClientDataSet;
      curr_date:TDateTime;
  begin
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=_sock;

    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('temp_prov001', 'ALL');
      ProviderName:='temp_prov001';
      CommandText:='SELECT CONVERT(DATETIME, {fn CURDATE()}) curr_date';
      open;

      if recordcount>0 then
      begin
        curr_date:=FieldByName('curr_date').AsDateTime;
      end;

      Result:=curr_date;
    end;

  end;

  //=================================================================================
  // GET Master Code
  //=================================================================================
  function getCde(_sock:TSockCon;abr,grp,cde,value_fieldname:string):string;
  var rcTemp:TClientDataSet;
      rep:string;
  begin

    rep:='';
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=_sock;
    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('runnung_prov002', 'ALL');
      ProviderName:='runnung_prov002';
      close;
      CommandText:='select * from CQDM008 where CQMABR='''+abr+''' and CQMGRP='''+grp+''' and CQMCDE='''+cde+''' ';
      open;
        if recordcount>0 then
        begin
          rep:=rcTemp.FieldByName(value_fieldname).AsString;
        end;
    end;

    result:=rep;

  end;

  //=================================================================================
  // GET Running From CQDM008  update (20-Jun-2012)
  //=================================================================================

  function getRunning(_sock:TSockCon;_prefix,abr,cde,value_fieldname:string):string;
  var rcTemp,rcTemp2:TClientDataSet;
      currDate:TDateTime;
      NewDocNo,prefix:string;
      Running:integer;
      CanGen:boolean;

      aYYYY,aMM,aDD,bYYYY,bMM,bDD:word;
      diff : Double;

  begin

    CanGen:=true;
    NewDocNo:='';
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=_sock;
    rcTemp2:=TClientDataSet.Create(nil);
    rcTemp2.RemoteServer:=_sock;

    currDate:=getServerDate(_sock);



    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('runnung_prov000', 'ALL');
      ProviderName:='runnung_prov000';

      if  ((abr='DOCNO') and (cde='PAYMENT')) then   {receive docno}
      begin
        close;
        CommandText:='select max(CQMETD) as CQMETD from CQDM007';
        open;
        if recordcount>0 then
        begin
          if not FieldByName('CQMETD').IsNull then
              begin
                DecodeDate(FieldByName('CQMETD').AsDateTime,aYYYY,aMM,aDD);  // lastest document date
                DecodeDate(currDate,bYYYY,bMM,bDD);

                if ((bYYYY>=aYYYY) and (bMM<=aMM) and (bDD<aDD)) then
                begin
                  Application.MessageBox(pchar('Error Generate DocNo'),pchar('Warning'),MB_OK or MB_ICONWARNING) ;
                  CanGen:=false;
                end else
                if ((bYYYY<=aYYYY) and (bMM<aMM)) then
                begin
                  Application.MessageBox(pchar('Error Generate DocNo'),pchar('Warning'),MB_OK or MB_ICONWARNING) ;
                  CanGen:=false;
                end
                else
                if (bYYYY<aYYYY)  then
                begin
                  Application.MessageBox(pchar('Error Generate DocNo'),pchar('Warning'),MB_OK or MB_ICONWARNING) ;
                  CanGen:=false;
                end;

                {
                diff:=currDate-FieldByName('CQMETD').AsDateTime;
                //ShowMessage(FloatToStr(diff));

                if diff<0 then
                begin
                  Application.MessageBox(pchar('Error Generate DocNo'),pchar('Warning'),MB_OK or MB_ICONWARNING) ;
                  CanGen:=false;
                end;
                }

              end;
       end;
        
      end;


      if CanGen then
      begin
        close;
        {select CQMNM1,CQMVA1 from CQDM008 where CQMABR='DOCNO' and CQMGRP='RUNNING' and CQMCDE='PAYMENT' }
        CommandText:='select CQMNM1,CQMVA1,CQMVA3 from CQDM008 where CQMABR='''+abr+''' and CQMGRP=''RUNNING'' and CQMCDE='''+cde+''' ';
        open;

          if recordcount>0 then
          begin
             Running:=FieldByName('CQMNM1').AsInteger+1;
             prefix:=trim(FieldByName('CQMVA3').AsString);

              if Trim(prefix)<>'' then _prefix:=prefix;
              
              if (FieldByName('CQMVA1').AsString=FormatDateTime('yyyyMM',currDate)) then
              begin
                  // A Day
                  NewDocNo:= _prefix+FormatDateTime('yyMM',currDate)+FormatCurr('0000#',Running);
              end else
              begin
                  // New Day
                  Running:=1;
                  NewDocNo:= _prefix+FormatDateTime('yyMM',currDate)+FormatCurr('0000#',1);
              end;


              // update running
              TSockCon(rcTemp2.RemoteServer).AddProv('runnung_prov001', 'ALL');
              rcTemp2.ProviderName:='runnung_prov001';

              rcTemp2.Close;
              rcTemp2.CommandText:='UPDATE  CQDM008 set  CQMNM1='+inttostr(Running)+',CQMVA1='''+FormatDateTime('yyyyMM',currDate)+'''   where CQMABR='''+abr+''' and CQMGRP=''RUNNING'' and CQMCDE='''+cde+''' ';
              //InputBox('','',rcTemp2.CommandText);
              rcTemp2.Execute;

          end;
      end;
    end;

    result:=NewDocNo;
  end;

  (*
  function getRunning(_sock:TSockCon;_prefix,abr,cde,value_fieldname:string):string;
  var rcTemp,rcTemp2:TClientDataSet;
      currDate:TDateTime;
      NewDocNo:string;
      Running:integer;
      CanGen:boolean;

      aYYYY,aMM,aDD,bYYYY,bMM,bDD:word;
      diff : Double;

  begin

    CanGen:=true;
    NewDocNo:='';
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=_sock;
    rcTemp2:=TClientDataSet.Create(nil);
    rcTemp2.RemoteServer:=_sock;

    currDate:=getServerDate(_sock);



    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('runnung_prov000', 'ALL');
      ProviderName:='runnung_prov000';

      if  ((abr='DOCNO') and (cde='PAYMENT')) then   {receive docno}
      begin
        close;
        CommandText:='select max(CQMETD) as CQMETD from CQDM007';
        open;
        if recordcount>0 then
        begin
          if not FieldByName('CQMETD').IsNull then
              begin
                DecodeDate(FieldByName('CQMETD').AsDateTime,aYYYY,aMM,aDD);  // lastest document date
                DecodeDate(currDate,bYYYY,bMM,bDD);

                if ((bYYYY>=aYYYY) and (bMM<=aMM) and (bDD<aDD)) then
                begin
                  Application.MessageBox(pchar('Error Generate DocNo'),pchar('Warning'),MB_OK or MB_ICONWARNING) ;
                  CanGen:=false;
                end else
                if ((bYYYY<=aYYYY) and (bMM<aMM)) then
                begin
                  Application.MessageBox(pchar('Error Generate DocNo'),pchar('Warning'),MB_OK or MB_ICONWARNING) ;
                  CanGen:=false;
                end
                else
                if (bYYYY<aYYYY)  then
                begin
                  Application.MessageBox(pchar('Error Generate DocNo'),pchar('Warning'),MB_OK or MB_ICONWARNING) ;
                  CanGen:=false;
                end;

                {
                diff:=currDate-FieldByName('CQMETD').AsDateTime;
                //ShowMessage(FloatToStr(diff));

                if diff<0 then
                begin
                  Application.MessageBox(pchar('Error Generate DocNo'),pchar('Warning'),MB_OK or MB_ICONWARNING) ;
                  CanGen:=false;
                end;
                }

              end;
       end;
        
      end;


      if CanGen then
      begin
        close;
        {select CQMNM1,CQMVA1 from CQDM008 where CQMABR='DOCNO' and CQMGRP='RUNNING' and CQMCDE='PAYMENT' }
        CommandText:='select CQMNM1,CQMVA1 from CQDM008 where CQMABR='''+abr+''' and CQMGRP=''RUNNING'' and CQMCDE='''+cde+''' ';
        open;

          if recordcount>0 then
          begin
             Running:=FieldByName('CQMNM1').AsInteger+1;
              if (FieldByName('CQMVA1').AsString=FormatDateTime('yyyyMMdd',currDate)) then
              begin
                 // A Day
                 NewDocNo:= _prefix+FormatDateTime('yyyyMMdd',currDate)+FormatCurr('000#',Running);
              end else
              begin
                 // New Day
                   Running:=1;
                   NewDocNo:= _prefix+FormatDateTime('yyyyMMdd',currDate)+FormatCurr('000#',1);
              end;


              // update running
              TSockCon(rcTemp2.RemoteServer).AddProv('runnung_prov001', 'ALL');
              rcTemp2.ProviderName:='runnung_prov001';

              rcTemp2.Close;
              rcTemp2.CommandText:='UPDATE  CQDM008 set  CQMNM1='+inttostr(Running)+',CQMVA1='''+FormatDateTime('yyyyMMdd',currDate)+'''   where CQMABR='''+abr+''' and CQMGRP=''RUNNING'' and CQMCDE='''+cde+''' ';
              //InputBox('','',rcTemp2.CommandText);
              rcTemp2.Execute;

          end;
      end;
    end;

    result:=NewDocNo;
  end;

  *)



  procedure ExecSQL(cds:TClientDataSet;strsql:string);
  begin
    cds.Close;
    cds.CommandText:=strsql;
    cds.Open;
  end;

  procedure initCdsConn(cds:TClientDataSet;conn:TSockCon;tmpDspName:string);
  begin
    cds.close;
    cds.RemoteServer:=conn;
    TSockCon(cds.RemoteServer).AddProv(tmpDspName, 'ALL');
    cds.ProviderName:=tmpDspName;
  end;

  procedure initCdsConn(cds:TClientDataSet;conn:TConnectionBroker);
  begin
    cds.close;
    cds.RemoteServer:=conn;
    cds.ProviderName:=_provider_mssql;
  end;


  procedure initSockConn(_sockcon:TSockCon);
  var  xmlConn:TXMLConfig;
      _app_address,_app_hostname,_app_port,_system_code,_app_ipusing,_app_serverName:string;
  begin
    xmlConn:=TXMLConfig.Create(ExtractFilePath(Application.ExeName)+_config_file);

      if (xmlConn.ReadString('AppConfig','ADDRESS','')='') then
      begin
        // mssql connection
        xmlConn.WriteString('AppConfig','ADDRESS','127.0.0.1');
        xmlConn.WriteString('AppConfig','HOSTNAME','delbox.dyndns.org');
        xmlConn.WriteString('AppConfig','PORT','19005');
        xmlConn.WriteString('AppConfig','SERVERNAME','SAM');  // SAM , PRODUCTION
        xmlConn.WriteString('AppConfig','SYSTEMCODE','9');
        xmlConn.WriteString('AppConfig','IPADDRESS_USING','TRUE');
        xmlConn.Save;
      end;

     _app_address:= xmlConn.ReadString('AppConfig','ADDRESS','');
     _app_hostname:= xmlConn.ReadString('AppConfig','HOSTNAME','');
     _app_port:= xmlConn.ReadString('AppConfig','PORT','');
     _system_code:=xmlConn.ReadString('AppConfig','SYSTEMCODE','');
     _app_ipusing:=xmlConn.ReadString('AppConfig','IPADDRESS_USING','');
     _app_serverName:=xmlConn.ReadString('AppConfig','SERVERNAME','SAM');

     _sockcon.Connected:=false;

    if UpperCase(_app_ipusing)='TRUE' then
      _sockcon.Address:=_app_address
    else
    begin
      if _app_hostname<>'' then
      begin
        _sockcon.Address:='';
        _sockcon.Host:=_app_hostname;
      end
      else if _app_address<>'' then
      begin
         _sockcon.Address:=_app_address;
      end;

    end;

    _sockcon.Port:=strtoint(_app_port);
    _sockcon.AutoConnect:=false;
    _sockcon.AutoProv:=true;
    _sockcon.Deploy:=false;
    _sockcon.Encoded:=false;
    _sockcon.Housed:=true;
    _sockcon.LoginID:=_app_login_id;
    if UpperCase(_app_serverName)='SAM' then
      _sockcon.ServerName:=_app_Server_NameSAM
    else
    if UpperCase(_app_serverName)='REPORT' then
      _sockcon.ServerName:=_app_Server_NameREP
    else
      _sockcon.ServerName:=_app_Server_Name;

    _sockcon.Connected:=true;
  end;

end.
