unit SetDealerGroupFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, MConnect, SConnect, SockCon, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, ExtCtrls, DBCtrls, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxTextEdit, cxDBEdit, cxContainer, cxLabel, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, WideStrings, SqlExpr, FMTBcd,
  Provider, cxDropDownEdit, ImgList,Buttons;

type
THackDBNavigator = class(TDBNavigator);
  TfrmSetDealerGroup = class(TForm)
    grid: TcxGrid;
    gridDBTableView1: TcxGridDBTableView;
    gridLevel1: TcxGridLevel;
    dsDealerGroup: TDataSource;
    SocketConn: TSockCon;
    cdsDealerGroup: TClientDataSet;
    connBroker: TConnectionBroker;
    gridDBTableView1CQMGRP: TcxGridDBColumn;
    gridDBTableView1CQMDEA: TcxGridDBColumn;
    gridDBTableView1CQMNME: TcxGridDBColumn;
    gridDBTableView1CQMDES: TcxGridDBColumn;
    cdsDealer: TClientDataSet;
    rcTemp: TClientDataSet;
    SatinImg16: TImageList;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure cdsDealerGroupBeforePost(DataSet: TDataSet);
    procedure cdsDealerGroupReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    FPDT: string;
    FUserID: string;
    FPDM: string;
    FBranch: string;
    FWorkStation: string;
    procedure SetBranch(const Value: string);
    procedure SetPDM(const Value: string);
    procedure SetPDT(const Value: string);
    procedure SetUserID(const Value: string);
    procedure SetWorkStation(const Value: string);

    procedure SetupHackedNavigator(const Navigator : TDBNavigator;const Glyphs : TImageList);
    procedure HackNavMouseUp(Sender:TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);


    { Private declarations }
  public
    { Public declarations }

    property UserID:string read FUserID write SetUserID;
    property Branch:string read FBranch write SetBranch;
    property PDM:string read FPDM write SetPDM;
    property PDT:string read FPDT write SetPDT;
    property WorkStation:string read FWorkStation write SetWorkStation;
  end;

var
  frmSetDealerGroup: TfrmSetDealerGroup;

implementation

uses UIT_UTILS_LIB, UIT_GLOBAL_LIB;

{$R *.dfm}

procedure TfrmSetDealerGroup.btnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSetDealerGroup.btnSaveClick(Sender: TObject);
begin
  try
  cdsDealerGroup.ApplyUpdates(0);
  ShowMessage('save sucessfull.');
  except
   on ee:Exception do
   begin
     Application.MessageBox(pchar(ee.Message),pchar('Error'),MB_OK or MB_ICONERROR);
   end;

  end;
end;

procedure TfrmSetDealerGroup.cdsDealerGroupBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('CQMBRN').AsString:=FBranch;
  DataSet.FieldByName('CQMPDM').AsString:=FPDM;
  DataSet.FieldByName('CQMPDT').AsString:=FPDT;
  DataSet.FieldByName('CQMETW').AsString:=FWorkStation;
  DataSet.FieldByName('CQMETU').AsString:=FUserID;
  DataSet.FieldByName('CQMACT').AsString:='A';
  DataSet.FieldByName('CQMSTS').AsString:='A';


  if DataSet.State in [dsInsert] then  begin
     DataSet.FieldByName('CQMMTW').AsString:=FWorkStation;
     DataSet.FieldByName('CQMMTU').AsString:=FUserID;
  end;



    with rcTemp do
    begin
     // TSockCon(rcTemp.RemoteServer).AddProv('prov_'+rcTemp.Name, 'ALL');
     // ProviderName:='prov_'+rcTemp.Name;
      close;

      CommandText:='' +
      ' select b.CONDEA,d.[DLR Name] as DEANAME,b.CONCUS '+
      '	from DBMADR00 a '+
      '	left join HPMCON00 b on a.ADRCON=b.CONRUN '+
      '	left join DEALER d on b.CONDEA= d.Code '+
      ' where  b.CONDEA='''+DataSet.FieldByName('CQMDEA').AsString+''''+
      ' group by '+
      '	b.CONDEA,b.CONCUS,d.[DLR Name] ';
      open;

      if recordcount>0 then
      begin
        DataSet.FieldByName('CQMNME').AsString:=FieldByName('DEANAME').AsString;
      end;
    end;





end;

procedure TfrmSetDealerGroup.cdsDealerGroupReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Application.MessageBox(pchar(E.Message),pchar('Error'),MB_OK or MB_ICONERROR);
end;

procedure TfrmSetDealerGroup.FormCreate(Sender: TObject);
begin
//  cdsDealerGroup.close;
//  cdsDealerGroup.CommandText:='select * from CQDM014  where CQMGRP='''+DataSet.FieldByName('CQMGRP').AsString+'''';
 // cdsDealerGroup.CommandText:='select * from CQDM014 ';
 // cdsDealerGroup.Open;
  SetupHackedNavigator(DBNavigator1, SatinImg16);
end;






procedure TfrmSetDealerGroup.FormShow(Sender: TObject);
var i:integer;
begin

  cdsDealer.Close;
  cdsDealer.CommandText:='' +
' select b.CONDEA,d.[DLR Name] as DEANAME,b.CONCUS '+
'	from DBMADR00 a '+
'	left join HPMCON00 b on a.ADRCON=b.CONRUN '+
'	left join DEALER d on b.CONDEA= d.Code '+
' group by '+
'	b.CONDEA,b.CONCUS,d.[DLR Name] ';
  cdsDealer.open;



  cdsDealerGroup.close;
  cdsDealerGroup.Open;


    with rcTemp do
    begin
     // TSockCon(rcTemp.RemoteServer).AddProv('prov_'+rcTemp.Name, 'ALL');
     // ProviderName:='prov_'+rcTemp.Name;
      close;

      CommandText:='' +
' select b.CONDEA,d.[DLR Name] as DEANAME,b.CONCUS '+
'	from DBMADR00 a '+
'	left join HPMCON00 b on a.ADRCON=b.CONRUN '+
'	left join DEALER d on b.CONDEA= d.Code '+
' group by '+
'	b.CONDEA,b.CONCUS,d.[DLR Name] ';
      open;

      if recordcount>0 then
      begin
        TcxComboBoxProperties(gridDBTableView1CQMDEA.Properties).Items.clear;

        for i := 0 to recordcount - 1 do
        begin
         TcxComboBoxProperties(gridDBTableView1CQMDEA.Properties).Items.Add(FieldByName('CONDEA').AsString);
         if not eof then next;

        end;
      end;
    end;



  //TcxComboBox(gridDBTableView1CQMDEA).Properties.Items.Add('aa');
  //TcxComboBox(gridDBTableView1CQMDEA).Properties.Items.Add('aa');
  //TcxComboBox(gridDBTableView1CQMDEA).Properties.Items.Add('aa');








end;

procedure TfrmSetDealerGroup.HackNavMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const MoveBy : integer = 5;
begin
 if NOT (Sender is TNavButton) then Exit;

 case TNavButton(Sender).Index of
   nbPrior:
     if (ssCtrl in Shift) then
       TDBNavigator(TNavButton(Sender).Parent).
         DataSource.DataSet.MoveBy(-MoveBy);
   nbNext:
     if (ssCtrl in Shift) then
       TDBNavigator(TNavButton(Sender).Parent).
         DataSource.DataSet.MoveBy(MoveBy);
  end;
end;

procedure TfrmSetDealerGroup.SetBranch(const Value: string);
begin
  FBranch := Value;
end;

procedure TfrmSetDealerGroup.SetPDM(const Value: string);
begin
  FPDM := Value;
end;

procedure TfrmSetDealerGroup.SetPDT(const Value: string);
begin
  FPDT := Value;
end;

procedure TfrmSetDealerGroup.SetupHackedNavigator(
  const Navigator: TDBNavigator; const Glyphs: TImageList);
const
  Captions : array[TNavigateBtn] of string = ('First', 'Previous', 'Next', 'Last', 'Add','Erase', 'Edit', 'OK', 'Cancel', 'Revive');
(*
  Captions : array[TNavigateBtn] of string =
      ('First', 'Prior', 'Next', 'Last', 'Insert',
       'Delete', 'Edit', 'Post', 'Cancel', 'Refresh');

  in Croatia (localized):
  Captions : array[TNavigateBtn] of string =
      ('Prvi', 'Prethodni', 'Slijedeci', 'Zadnji', 'Dodaj',
       'Obrisi', 'Promjeni', 'Spremi', 'Odustani', 'Osvjezi');
*)
var
  btn : TNavigateBtn;
begin
  for btn := Low(TNavigateBtn) to High(TNavigateBtn) do
  with THackDBNavigator(Navigator).Buttons[btn] do
  begin
    //from the Captions const array
    Caption := Captions[btn];

    Transparent:=true;
    //the number of images in the Glyph property
    NumGlyphs := 1;
    // Remove the old glyph.
    Glyph := nil;
    // Assign the custom one
    case Integer(btn) of
      0:Glyphs.GetBitmap(63,Glyph);
      1:Glyphs.GetBitmap(5,Glyph);
      2:Glyphs.GetBitmap(26,Glyph);
      3:Glyphs.GetBitmap(64,Glyph);
      4:Glyphs.GetBitmap(1,Glyph);
      5:Glyphs.GetBitmap(16,Glyph);
      6:Glyphs.GetBitmap(19,Glyph);
      7:Glyphs.GetBitmap(61,Glyph);
      8:Glyphs.GetBitmap(8,Glyph);
      9:Glyphs.GetBitmap(57,Glyph);
    end;


    //Glyphs.GetBitmap(Integer(btn),Glyph);
    Layout:=blGlyphTop;


    Flat:=true;
    //OnMouseUp := HackNavMouseUp;
  end;
end;

procedure TfrmSetDealerGroup.SetUserID(const Value: string);
begin
  FUserID := Value;
end;

procedure TfrmSetDealerGroup.SetWorkStation(const Value: string);
begin
  FWorkStation := Value;
end;

end.
