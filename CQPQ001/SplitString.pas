unit SplitString;

interface

uses
  Windows; //Needed for Steve's function

type
  TStringArray = array of string;

  function SplitStr(sInput:string; Delimiter1,Delimiter2:string):TStringArray;
  function FStrSQL(sInput:string; Delimiter:array of string):TStringArray;
  function Split(Expression:string; Delimiter:string):TStringArray;





implementation



function SplitStr(sInput:string; Delimiter1,Delimiter2:string):TStringArray;
 {By Viotto - http://viotto-security.net
 Based off Steve10120's Split function, code has been improved,
 making it working better; more infos on website.}
 var
  DelimPos1,DelimPos2:     Cardinal;
  LastDelimPos: Cardinal;
  StartIndex:   Cardinal;
  ElemCount:    Cardinal;
  sTemp,FInput:        string;
begin
  StartIndex := 1;
  ElemCount := 0;
  FInput:= sInput;
  repeat
    sTemp := Copy(FInput, StartIndex, Length(FInput));
    DelimPos1 := Pos(Delimiter1, sTemp);
    if DelimPos1 < 1 then Exit;

    DelimPos2 := Pos(Delimiter2, sTemp);
    FInput :=Copy(sTemp, DelimPos2+1, (Length(sTemp)- DelimPos2) );
    sTemp := Copy(sTemp, DelimPos1+1, ((DelimPos2-DelimPos1)-1) );
    SetLength(Result, Length(Result) + 1);
    Result[ElemCount] := sTemp;
    ElemCount := ElemCount + 1;
  until DelimPos1 = 0;

end;

function FStrSQL(sInput:string; Delimiter:array of string):TStringArray;
 var
  DelimPos,i:     Cardinal;
  LastDelimPos: Cardinal;
  StartIndex:   Cardinal;
  ElemCount:    Cardinal;
  sTemp,FChe:        string;
begin
//  ElemCount := 0;
  for I := 0 to High(Delimiter) do
  begin
    DelimPos := Pos(Delimiter[i], sInput);
    if DelimPos < 1 then Exit;

//    FInput :=Copy(sTemp, DelimPos2+1, (Length(sTemp)- DelimPos2) );
    FChe := Copy(sInput, DelimPos-1, 1 );
    if FChe='[' then
       sTemp := Copy(sInput, DelimPos-3, 2 )
    else  sTemp := Copy(sInput, DelimPos-2, 2 );
    SetLength(Result, Length(Result) + 1);
    Result[i] := sTemp;
  end ;
end;

function Split(Expression:string; Delimiter:string):TStringArray;
 // Original function by Steve10120
 var
  dLength:    DWORD;
  StartIndex: DWORD;
  ResCount:   DWORD;
  sTemp:      string;
begin
  dLength := Length(Expression);
  StartIndex := 1;
  ResCount := 0;
  repeat
    sTemp := Copy(Expression, StartIndex, Pos(Delimiter, Copy(Expression, StartIndex, Length(Expression))) - 1);
    SetLength(Result, Length(Result) + 1);
    SetLength(Result[ResCount], Length(sTemp));
    Result[ResCount] := sTemp;
    StartIndex := StartIndex + Length(sTemp) + Length(Delimiter);
    ResCount := ResCount + 1;
  until StartIndex > dLength;

end;


end.

 