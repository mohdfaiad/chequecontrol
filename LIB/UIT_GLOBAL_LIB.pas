unit UIT_GLOBAL_LIB;



interface

uses Classes;

Const
 ASDB1 = 'HPPDTA';
 ASDB2 = 'CHQPDTA';
 PCDB1 = 'LLSPDTA';
 PCDB2 = 'HTLC_APP';
 GridBgColor=$00D9C1BB;
 GridBgColor2=$00D2A4A4;

type

  TShowWindowType = (swNone, swModal, swNormal);
  TToolBarBtn = (tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport);
  TToolbarBtns = set of TToolBarBtn;
  TExecuteProgram = function(_MainApp: Pointer;_Type: TShowWindowType; _Parameter: String): Pointer; stdcall;


type
   TString = class(TObject)
   private
     fStr: String;
   public
     constructor Create(const AStr: String) ;
     property Str: String read FStr write FStr;
   end;

  

  TDLLParam = record
    UserID : String;
    WorkStation:String;
    Branch:String;
    PDM:String;
    PDT:String;
    Password : String;
    BtnVisible : TToolbarBtns;
    BtnEnable : TToolbarBtns;
    Param1:string;
  end;

  TGenParamType = (rpDate,rpString,rpStringList);

  TGenParam = class
    rpType:TGenParamType;
    rpDesc:string;
    rpCode:string;
    rpValue:string;
  //  rpList:TStrings;
  end;


  TSQLGenParam = record
    sqlParamNo:integer;
    sqlParams: array of TGenParam;
  end;

  TSQLGenParamClass = class
    public
      _params : array of TSQLGenParam;
    constructor create;
    procedure addParam(pNo:integer;Value:array of TGenParam);
  end;


  TPluginParams = record
    param1 : String;
    param2 : String;
    param3 : String;
    param4 : String;
    param5 : String;
    param6 : Integer;
    param7 : Integer;
    param8 : Integer;
    param9 : Integer;
    param10 : Integer;
    param11 : Real;
    param12 : Real;
    param13 : Real;
    param14 : Real;
    param15 : Real;
    param16 : Boolean;
    param17 : Boolean;
    param18 : Boolean;
    param19 : Boolean;                       
    param20 : Boolean;
    UserID  :string;
    Branch :string;
    PDM :string;
    PDT:string;
    WorkStation:string;

  end;




const
   CQMenu : array[0..1] of string = ('CQPE000','CQPE001');

const
  _config_file='_config.xml';       // application configuration file
  _provider_mssql='sqlDsp';
  _app_login_id='HLTCAPP';
  _app_Server_Name='HLTCSrvr.RemoteHLTCSrvr';
  _app_Server_NameSAM='HLTCSrvr.RemoteHLTCSrvrSAM';
  _app_Server_NameREP='HLTCSrvr.RemoteHLTCSrvrREP';

function IndexOfArray(const Value: String; Items: array of String): Integer;

implementation

Uses SysUtils;


constructor TString.Create(const AStr: String) ;
begin
   inherited Create;
   FStr := AStr;
end;


function IndexOfArray(const Value: String; Items: array of String): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := Low(Items) to High(Items) do
  begin
    if AnsiSameText(Value, Items[i]) then
    begin
      Result := i;
      Break;
    end; // if
  end; // for
end; // IndexOfArray





{ TSQLGenParamClass }

procedure TSQLGenParamClass.addParam(pNo: integer;
  Value: array of TGenParam);
var NewCount,i:integer;
begin
  NewCount := Length(_params)+1;
  SetLength(_params, NewCount);
  _params[High(_params)].sqlParamNo:=pNo;

  SetLength(_params[High(_params)].sqlParams,High(Value));
  for i := 0 to High(Value)-1 do
  begin
    _params[High(_params)].sqlParams[i]:=TGenParam.Create;
    _params[High(_params)].sqlParams[i].rpType:=Value[i].rpType;
    _params[High(_params)].sqlParams[i].rpDesc:=Value[i].rpDesc;
    _params[High(_params)].sqlParams[i].rpCode:=Value[i].rpCode;
    _params[High(_params)].sqlParams[i].rpValue:=Value[i].rpValue;
//    _params[High(_params)].sqlParams[i].rpList:=Value[i].rpList;
  end;
end;

constructor TSQLGenParamClass.create;
begin
     inherited Create;
    _params:=nil;
end;

end.
