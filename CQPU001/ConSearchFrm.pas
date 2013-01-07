unit ConSearchFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, StdCtrls, cxButtons,
  cxMaskEdit, cxDropDownEdit, cxTextEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, cxAccessibility;

type 
  tcxAccessProperties = Class(TcxCustomEditProperties);
  TfrmConSearch = class(TForm)
    bTop: TBevel;
    bBody: TBevel;
    cmdSearchType: TcxComboBox;
    btnSearch: TcxButton;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    btnOK: TcxButton;
    cmbSearch: TcxComboBox;
    cdsSearch: TClientDataSet;
    dsSearch: TDataSource;
    cxGrid2DBTableView1CQSCSN: TcxGridDBColumn;
    cxGrid2DBTableView1NAME: TcxGridDBColumn;
    cxGrid2DBTableView1CARMDL: TcxGridDBColumn;
    cxGrid2DBTableView1INSIAM: TcxGridDBColumn;
    cxGrid2DBTableView1INSVAM: TcxGridDBColumn;
    cxGrid2DBTableView1WHT: TcxGridDBColumn;
    cxGrid2DBTableView1NET: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchClick(Sender: TObject);
    procedure cmdSearchTypePropertiesChange(Sender: TObject);
    procedure cmbSearchPropertiesChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    FContact: string;
    procedure SRDealersName;
    procedure SRAccountNumber;
  public
    property Contact : string read FContact write FContact;
  end;

var
  frmConSearch: TfrmConSearch;

implementation

uses UIT_UTILS_LIB,CQPU001_UTILS,MainProgramFrm,UIT_GLOBAL_LIB;

{$R *.dfm}

procedure TfrmConSearch.btnOKClick(Sender: TObject);
begin
  FContact := cdsSearch.FieldByName('CSN').AsString;
  Close;
end;

procedure TfrmConSearch.btnSearchClick(Sender: TObject);
var strsql: string;
    cmbValues:string;
begin
  if cmbSearch.ItemIndex = -1 then
    cmbValues := ''
  else
    cmbValues := TString(cmbSearch.Properties.Items.Objects[cmbSearch.ItemIndex]).Str;
    
  if SameText(cmdSearchType.Text,'DEALERS NAME') then
    strsql := 'EXEC SP_SEARCHDEALERSCODE '  + '''' + cmbValues + ''''
  else if SameText(cmdSearchType.Text,'ACCOUNT NUMBER') then
    strsql := 'EXEC SP_SEARCHACCOUNTNUMBER ' + '''' + cmbValues + '''';

  cdsSearch.Close;
  cdsSearch.CommandText := strsql;
  cdsSearch.Open;
end;

procedure TfrmConSearch.cmbSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
    btnSearch.Click;
end;

procedure TfrmConSearch.cmbSearchPropertiesChange(Sender: TObject);
begin
  btnSearch.Click;
end;

procedure TfrmConSearch.cmdSearchTypePropertiesChange(Sender: TObject);
begin
  IF SameText(cmdSearchType.Text,'DEALERS NAME') then
    SRDealersName
  else if SameText(cmdSearchType.Text,'ACCOUNT NUMBER') then
    SRAccountNumber;
end;

procedure TfrmConSearch.cxGrid2DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Color:=GridBgColor;
  ACanvas.Canvas.Font.Color:=0;
end;

procedure TfrmConSearch.FormCreate(Sender: TObject);
begin
  TcxEditButton(TcxAccessProperties(cmbSearch.Properties).Buttons[0]).Visible:=false;
  frmMainProgram.SocketConn.AddProv('cdsSearch','ALL');
  cdsSearch.ProviderName := 'cdsSearch';
end;

procedure TfrmConSearch.FormShow(Sender: TObject);
begin


   cxGrid2DBTableView1INSVAM.Caption:='VAT('+inttostr(getTaxRate(frmMainProgram.SocketConn))+'%)';
   cxGrid2DBTableView1WHT.Caption:='WT('+inttostr(getWHTRate(frmMainProgram.SocketConn))+'%)';

  SRDealersName;

   // set field format
   TFloatField(cdsSearch.FieldByName('INSIAM')).DisplayFormat := '#,##0.00';
   TFloatField(cdsSearch.FieldByName('WHT')).DisplayFormat := '#,##0.00';
   TFloatField(cdsSearch.FieldByName('INSVAM')).DisplayFormat := '#,##0.00';
   TFloatField(cdsSearch.FieldByName('NET')).DisplayFormat := '#,##0.00';     

end;

procedure TfrmConSearch.SRAccountNumber;
var strsql:string;
    rcSearch:TClientDataSet;
begin
  strsql:='SELECT CQMACC FROM CQDM007 ' +
  'WHERE CQMACC IS NOT NULL AND CQMACC<>'''' ' +
  'GROUP BY CQMACC ' +
  'ORDER BY CQMACC';
  rcSearch:=TClientDataSet.Create(self);
  rcSearch.RemoteServer:=frmMainProgram.SocketConn;
  loadComboList(cmbSearch ,frmMainProgram.connBroker,'CQMACC','CQMACC',strsql,rcSearch,'rcSearch');
  cmbSearch.ItemIndex := -1;
  rcSearch.Free;
end;

procedure TfrmConSearch.SRDealersName;
var strsql:string;
    rcSearch:TClientDataSet;
begin
  strsql:='SELECT Code,[DLR Name] AS NAME ' +
          'FROM [DEALER] ' +
          'WHERE Code IS NOT NULL AND Code<>'''' ' +
          //'AND NAME IS NOT NULL AND NAME<>'''' ' +
          'ORDER BY NAME';
  rcSearch:=TClientDataSet.Create(self);
  rcSearch.RemoteServer:=frmMainProgram.SocketConn;
  loadComboList(cmbSearch ,frmMainProgram.connBroker,'Code','NAME',strsql,rcSearch,'rcSearch');
  cmbSearch.ItemIndex := -1;
  rcSearch.Free;
end;

end.
