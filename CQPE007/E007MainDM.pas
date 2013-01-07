unit E007MainDM;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, SConnect, SockCon;

type
  TE007DMMain = class(TDataModule)
    SMTP: TClientDataSet;
    SockCon1: TSockCon;
    CdsSet: TClientDataSet;
    conBro: TConnectionBroker;
    procedure CdsSetAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure  loadSMTP;
    procedure LoadSet ;
  end;

var
  E007DMMain: TE007DMMain;  server,UserName,Password,port,authen : string ;

implementation

uses BaseFrm;

{$R *.dfm}

procedure TE007DMMain.CdsSetAfterPost(DataSet: TDataSet);
begin
E007DMMain .loadSMTP ;
end;

procedure TE007DMMain.LoadSet;
begin
CdsSet .Close ;
CdsSet .CommandText := 'select * from CQDM004 where CQMABR=' + QuotedStr ('EMAIL') +'order by CQMABR' ;
CdsSet .Open ;
end;

procedure TE007DMMain.loadSMTP;


begin
          server:='';
          port:='';
          username:='';
          Password:='';
          authen:='';

          SMTP.Close ;
          SMTP.CommandText:='select CQMCOD, CQMRS1 from CQDM004 where CQMACT = '+ QuotedStr('A')+'and CQMABR ='+ QuotedStr('EMAIL') + 'and CQMABG ='+ QuotedStr('SMTP');
          SMTP.Open ;
          if SMTP.RecordCount >0 then
            begin
               SMTP.First ;
               while not smtp.Eof do
                begin
                  if SMTP['CQMCOD']='SMTP_SERVER' then
                    begin
                       server:= SMTP.FieldByName('CQMRS1').AsString;
                    end;
                  if SMTP['CQMCOD']='SMTP_PORT'then
                    begin
                      port:=SMTP.FieldByName('CQMRS1').AsString;
                    end;
                  if SMTP['CQMCOD']='SMTP_USERNAME' then
                    begin
                      UserName :=SMTP.FieldByName('CQMRS1').AsString;
                    end;
                  if SMTP['CQMCOD']='SMTP_PASSWORD' then
                    begin
                      Password :=SMTP.FieldByName('CQMRS1').AsString ;
                    end;
                  if smtp['CQMCOD']='SMTP_AUTHEN' then
                    begin
                      authen :=SMTP.FieldByName('CQMRS1').AsString ;
                    end;
                   SMTP.Next;
                end;
            end;

end;

end.
