unit Pre_DM;

interface

uses
  SysUtils, Classes, DB, DBClient, RemCustomDS, RemDataSet, MConnect, SConnect,
  SockCon;

type
  TDM_Pre = class(TDataModule)
    SC_prefer: TSockCon;
    RD_Prefen: TRemDataSet;

  private


  public
    WHT_RARE,OV_DUE,PEN_RATE,DU_ALERT :string;
    procedure load_pre;
    procedure Save_pre;
  end;

var
  DM_Pre: TDM_Pre;

implementation

{$R *.dfm}

procedure TDM_Pre.load_pre;
begin
        WHT_RARE:= '';
          RD_Prefen.Command :='select CODE,VAL1 from CQMCDE00 where ABBR = '+ QuotedStr('PREFERENCE')+'and ABBRGROUP ='+ QuotedStr('PREFERENCE') ;
          if RD_Prefen.RecordCount > 0 then
          begin
            RD_Prefen.First;
            while not RD_Prefen.Eof do
            begin
              if RD_Prefen['CODE'] = 'WHT_RATE' then
                WHT_RARE:= RD_Prefen.FieldByName('VAL1').AsString
              else if RD_Prefen['CODE'] = 'OV_DUE' then
                OV_DUE:= RD_Prefen.FieldByName('VAL1').AsString
              else if RD_Prefen['CODE'] = 'PEN_RATE' then
                PEN_RATE:= RD_Prefen.FieldByName('VAL1').AsString
              else if RD_Prefen['CODE'] = 'DU_ALERT' then
                DU_ALERT:= RD_Prefen.FieldByName('VAL1').AsString;
              RD_Prefen.Next;
            end;
          end;
end;



procedure TDM_Pre.Save_pre;
begin
  RD_Prefen.First;
      while not  RD_Prefen.Eof do
      begin
        RD_Prefen.Edit;
        if       RD_Prefen['CODE'] = 'WHT_RATE' then
          RD_Prefen.Field['VAL1']:= WHT_RARE
        else if  RD_Prefen['CODE'] = 'OV_DUE' then
          RD_Prefen.Field['VAL1']:=OV_DUE
        else if  RD_Prefen['CODE'] = 'PEN_RATE' then
          RD_Prefen.Field['VAL1']:=PEN_RATE
        else if  RD_Prefen['CODE'] = 'DU_ALERT' then
          RD_Prefen.Field['VAL1']:= DU_ALERT ;
        RD_Prefen.Next;
      end;
  RD_Prefen.PostOk;
end;


end.
