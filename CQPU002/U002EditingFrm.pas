unit U002EditingFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxAutoFields, cxDBEdit, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit, ExtCtrls, DB, DSource,
  cxMemo, cxRichEdit, cxDBRichEdit, Menus, cxLookAndFeelPainters, StdCtrls,
  LoadBank, cxButtons, cxSplitter, cxGraphics, cxLookAndFeels, cxButtonEdit,
  RemDataSet,Converse, cxDBLabel, UIT_GLOBAL_LIB, UIT_UTILS_LIB, 
  U002DelMemoFrm,StrUtils,PleaseWait;

type
  TFrmU002Editing = class(TForm)
    DCQDS001: TDataSource;
    CAF: TCxAutoFields;
    Panel1: TPanel;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    ECan: TcxButton;
    EOK: TcxButton;
    cxLabel14: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    CON: TcxLabel;
    CQD: TcxLabel;
    ECD: TcxLabel;
    DLC: TcxLabel;
    DED: TcxLabel;
    AMT: TcxLabel;
    Loca: TcxLabel;
    ACC: TcxLabel;
    CQType: TcxLabel;
    Bank: TcxLabel;
    Branch: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    CQSBKC: TcxLabel;
    CQSBRC: TcxLabel;
    CQSDLC: TcxDBComboBox;
    CQSCQC: TcxDBLabel;
    CQSECD: TcxDBLabel;
    CQSCQD: TcxDBLabel;
    CQSDED: TcxDBLabel;
    CQSCQN: TcxDBLabel;
    CQSCQA: TcxDBLabel;
    CQSPLO: TcxDBLabel;
    CQSCQT: TcxLabel;
    EDEL: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure EOKClick(Sender: TObject);
    procedure ECanClick(Sender: TObject);
    procedure CQSDLCPropertiesInitPopup(Sender: TObject);
    procedure EDELClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CQSDLCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure AddDLC;
  public
  end;

var
  FrmU002Editing: TFrmU002Editing;

implementation

{$R *.dfm}

uses U002MainDM;

procedure TFrmU002Editing.AddDLC;
var SearchCont : TRemDataSet;
begin
  SearchCont := TRemDataSet.Create(nil);
  DMU002Main.SC.AddProv('SearchCont','ALL');
  SearchCont.ProviderName := 'SearchCont';
  SearchCont.RemoteServer := DMU002Main.SC;
  SearchCont.Command := 'SELECT B.CQSCSN ' +
                        'FROM CQDM007 A ' +
                        'LEFT JOIN CQDS003 B ON A.CQMDNO=B.CQSDNO ' +
                        'WHERE A.CQMACC=' + QuotedStr(ACC.Caption) + ' ' +
                        'Group By B.CQSCSN';
  if SearchCont.RecordCount > 0 then
    begin
      CQSDLC.Properties.LookupItems.Clear;
      SearchCont.First;
      while not SearchCont.Eof do
      begin
        if SearchCont.FieldByName('CQSCSN').AsString <> '' then
          CQSDLC.Properties.Items.Add(SearchCont.FieldByName('CQSCSN').AsString);
        SearchCont.Next;
      end;
    end;
  SearchCont.Free;
end;

procedure TFrmU002Editing.CQSDLCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then EOK.SetFocus;  
end;

procedure TFrmU002Editing.CQSDLCPropertiesInitPopup(Sender: TObject);
begin
    AddDLC;
end;

procedure TFrmU002Editing.ECanClick(Sender: TObject);
begin
  DMU002Main.CQDS001.Cancel;
  Close;
end;

procedure TFrmU002Editing.EDELClick(Sender: TObject);
var Conf: Boolean;
begin
  FrmU002DelMemo := TFrmU002DelMemo.Create(Self);
  with FrmU002DelMemo do
  begin
    try
      ShowModal;
      Conf := Btn;
    finally
      Free;
    end;
  end;
  if Conf then Close;
end;

procedure TFrmU002Editing.EOKClick(Sender: TObject);
var Mark,ReMark: string;
begin
  if Application.MessageBox('Confirm to Edit Contract?', 'Edit Confirm',
    MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    //if Trim(CQSDLC.Text)<>Trim(DLC.Caption) then
    begin
      with DMU002Main do
      begin
        //CQDS001.Edit;
        if CQDS001.State in [dsEdit] then CQDS001.Post;

        ProcessBissType(CQDS001.FieldByName('CQSDLC').AsString,Mark,ReMark,HP,SC);

        CQDS001.Edit;
        CQDS001.FieldByName('CQS' + LeftStr(Mark,Length(Mark)-2) + 'TY').Value := RightStr(Mark,2);
        if CQDS001.FieldByName('CQSDEL').AsString = 'F' then CQDS001.FieldByName('CQSRMK').Value := ReMark;
        CQDS001.Post;

        if Trim(CQDS001.FieldByName('CQSBTY').AsString)<>'' then
        begin
          PleaseWaitBegin('Re-Check Deposit');
          PROCESSDEPOSIT(CQDM005,CQDS001,HP,SC,DLL,CQDS001.FieldByName('CQSBTY').AsString);
          PleaseWaitEnd;
        end;

        CQDS001.Edit;
        CQDS001['CQSEDD'] := 'T';
        CQDS001['CQSMTD'] := getServerDateTime(SC);
        CQDS001['CQSMTU'] := DLL.UserID;
        CQDS001['CQSMTW'] := DLL.WorkStation;
        CQDS001.Post;
      end;
    end;
    Close;
  end;
end;

procedure TFrmU002Editing.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  DMU002Main.CQDS001.Cancel;
end;

procedure TFrmU002Editing.FormShow(Sender: TObject);
var CQTName : string;
begin
  with DMU002Main.CQDS001 do
  begin
    DLC.Caption     := FieldByName('CQSDLC').AsString;
    DED.Caption     := FormatDateTime('dd/MM/yyyy',FieldByName('CQSDED').AsDateTime);
    ECD.Caption     := FormatDateTime('dd/MM/yyyy',FieldByName('CQSECD').AsDateTime);
    CON.Caption     := FieldByName('CQSCQN').AsString;
    CQD.Caption     := FormatDateTime('dd/MM/yyyy',FieldByName('CQSCQD').AsDateTime);
    AMT.Caption     := FormatFloat('#,##0.00',FieldByName('CQSCQA').AsFloat);
    Bank.Caption    := FieldByName('CQSBKC').AsString + ' ' + FieldByName('CQSBKN').AsString;
    Branch.Caption  := FieldByName('CQSBNN').AsString;
    if FieldByName('CQSCQT').AsString = '000' then
      CQTName := 'Bangkok'
    else if FieldByName('CQSCQT').AsString = '001' then
      CQTName := 'UPC Direct'
    else if FieldByName('CQSCQT').AsString = '002' then
      CQTName := 'UPC Indirect';
    CQType.Caption  := FieldByName('CQSCQT').AsString + ' ' + CQTName;
    Loca.Caption    := FieldByName('CQSPLO').AsString;
    ACC.Caption     := FieldByName('CQSCQC').AsString;
    CQSCQT.Caption  := CQType.Caption;
    CQSBKC.Caption  := Bank.Caption;
    CQSBRC.Caption  := Branch.Caption;
    Edit;
  end;
end;
end.
