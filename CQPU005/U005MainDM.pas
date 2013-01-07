unit U005MainDM;

interface

uses
  SysUtils, Classes, DB, DBClient, RemCustomDS, RemDataSet, MConnect, SConnect,
  SockCon;

type
  TU005DmMain = class(TDataModule)
    SC_prefer: TSockCon;
    con_bro: TConnectionBroker;
    RD_Prefen: TClientDataSet;

  private


  public
    WHT_RARE,OV_DUE,PEN_RATE,DU_ALERT :string;
    procedure load_pre;
    procedure Save_pre;
  end;

var
  U005DmMain: TU005DmMain;

implementation

{$R *.dfm}

procedure TU005DmMain.load_pre;
begin
        RD_Prefen.Close;
        WHT_RARE:= '';
          RD_Prefen.CommandText :='select CQMCOD,CQMRS1 from CQDM004 where CQMABR = '+ QuotedStr('PREFERENCE')+'and CQMABG ='+ QuotedStr('PREFERENCE') ;
        RD_Prefen.Open;
          if RD_Prefen.RecordCount > 0 then
          begin
            RD_Prefen.First;
            while not RD_Prefen.Eof do
            begin
              if RD_Prefen['CQMCOD'] = 'WHT_RATE' then
                WHT_RARE:= RD_Prefen.FieldByName('CQMRS1').AsString
              else if RD_Prefen['CQMCOD'] = 'OV_DUE' then
                OV_DUE:= RD_Prefen.FieldByName('CQMRS1').AsString
              else if RD_Prefen['CQMCOD'] = 'PEN_RATE' then
                PEN_RATE:= RD_Prefen.FieldByName('CQMRS1').AsString
              else if RD_Prefen['CQMCOD'] = 'DU_ALERT' then
                DU_ALERT:= RD_Prefen.FieldByName('CQMRS1').AsString;
              RD_Prefen.Next;
            end;
          end;
end;



procedure TU005DmMain.Save_pre;
begin
 RD_Prefen.First;
      while not  RD_Prefen.Eof do
      begin
        RD_Prefen.Edit;
        if  RD_Prefen['CQMCOD'] = 'WHT_RATE' then
           RD_Prefen.FieldByName('CQMRS1').AsString:= WHT_RARE
        else if  RD_Prefen['CQMCOD'] = 'OV_DUE' then
          RD_Prefen.FieldByName('CQMRS1').AsString:=OV_DUE
        else if  RD_Prefen['CQMCOD'] = 'PEN_RATE' then
          RD_Prefen.FieldByName('CQMRS1').AsString:=PEN_RATE
        else if  RD_Prefen['CQMCOD'] = 'DU_ALERT' then
           RD_Prefen.FieldByName('CQMRS1').AsString:= DU_ALERT ;
        RD_Prefen.Next;
      end;
  RD_Prefen.ApplyUpdates(0);
end;


end.
