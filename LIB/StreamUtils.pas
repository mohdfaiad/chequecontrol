unit StreamUtils;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,
  TypInfo;



procedure LoadFromStream(const Stream: TStream) ;
procedure LoadFromFile(const FileName: string) ;
procedure SaveToStream(const Stream: TStream) ;

implementation


procedure LoadFromFile(const FileName: string) ;
 var
   Stream: TStream;
 begin
   Stream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite) ;
   try
     LoadFromStream(Stream) ;
   finally
     Stream.Free;
   end;
 end;
 
 procedure LoadFromStream(const Stream: TStream) ;
 var
   Reader: TReader;
   PropName, PropValue: string;
 begin
   Reader := TReader.Create(Stream, $FFF) ;
   Stream.Position := 0;
   Reader.ReadListBegin;
 
   while not Reader.EndOfList do
   begin
     PropName := Reader.ReadString;
     PropValue := Reader.ReadString;
    // SetPropValue(Self, PropName, PropValue) ;
   end;

   FreeAndNil(Reader) ;
 end;
 
 procedure SaveToFile(const FileName: string) ;
 var
   Stream: TStream;
 begin
   Stream := TFileStream.Create(FileName, fmCreate) ;
   try
     SaveToStream(Stream) ;
   finally
     Stream.Free;
   end;
 end;
 
 procedure SaveToStream(const Stream: TStream) ;
 var
   PropName, PropValue: string;
   cnt: Integer;
   lPropInfo: PPropInfo;
   lPropCount: Integer;
   lPropList: PPropList;
   lPropType: PPTypeInfo;
   Writer: TWriter;
 begin
   lPropCount := GetPropList(PTypeInfo(ClassInfo), lPropList) ;
   Writer := TWriter.Create(Stream, $FFF) ;
   Stream.Size := 0;
   Writer.WriteListBegin;
   for cnt := 0 to lPropCount - 1 do
   begin
     lPropInfo := lPropList^[cnt];
     lPropType := lPropInfo^.PropType;
     if lPropType^.Kind = tkMethod then Continue;
 
     PropName := lPropInfo.Name;
     PropValue := GetPropValue(Self, lPropInfo) ;
     Writer.WriteString(PropName) ;
     Writer.WriteString(PropValue) ;
   end;
 
   Writer.WriteListEnd;
   FreeAndNil(Writer) ;
 end;

end.
