unit MPForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, BaseFrm, SConnect, SockCon, DB, DBClient, MConnect,
  ImgList, Provider, ADODB, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxLabel, ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel, ExtCtrls,
  Menus, cxLookAndFeelPainters, Grids, cxButtons, cxGraphics,
  cxLookAndFeels;

type
  TFormMP = class(TfrmBase)
    Memo1: TMemo;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Popup: TButton;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure PopupClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    FFormClosed: boolean;
    { Private declarations }
  public
    property FormClosed : boolean read FFormClosed write FFormClosed;
  end;

var
  FormMP: TFormMP;

implementation

{$R *.dfm}

Uses PUForm, PleaseWait, UIT_GLOBAL_LIB;


procedure TFormMP.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
  Self.Close;
end;

procedure TFormMP.Button1Click(Sender: TObject);
begin
  inherited;
  PleaseWaitBegin('Load File Deposit');
  Sleep(5000);
  PleaseWaitEnd;
end;

procedure TFormMP.Button3Click(Sender: TObject);
begin
  inherited;
  if Self.ToolbarEnable = [tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport] then
   Self.ToolbarEnable :=  [tbClose,tbNew,tbEdit,tbCancel,tbDelete,tbSearch,tbPrint,tbExport]
  else
   Self.ToolbarEnable :=  [tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];
end;

procedure TFormMP.Button4Click(Sender: TObject);
begin
  inherited;
  if Self.ToolbarVisible = [tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport] then
   Self.ToolbarVisible :=  [tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint]
  else
   Self.ToolbarVisible :=  [tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];
end;

procedure TFormMP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormMP.FormCreate(Sender: TObject);
begin
  inherited;
  FormClosed := false;
end;

procedure TFormMP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_F2:begin
      if (not (tbSearch in Self.ToolbarVisible)) and (not (tbSearch in Self.ToolbarEnable)) then
        Exit;

      MessageDlg('F2 : Search',mtInformation,[mbOK],0);
    end;

    VK_F3:begin
      if (not (tbSave in Self.ToolbarVisible)) and (not (tbSave in Self.ToolbarEnable)) then
      if (tbNew in Self.ToolbarVisible) or (tbNew in Self.ToolbarEnable) then
        Exit;

      MessageDlg('F3 : New or Open',mtInformation,[mbOK],0);
    end;

    VK_F4:begin
      if (not (tbEdit in Self.ToolbarVisible)) and (not (tbEdit in Self.ToolbarEnable)) then
        Exit;

      MessageDlg('F4 : Edit',mtInformation,[mbOK],0);
    end;

    VK_F5:begin
      if (not (tbSave in Self.ToolbarVisible)) and (not (tbSave in Self.ToolbarEnable)) then
        Exit;

      MessageDlg('F5 : Save',mtInformation,[mbOK],0);
    end;

    VK_F6:begin
      if (not (tbCancel in Self.ToolbarVisible)) and (not (tbCancel in Self.ToolbarEnable)) then
        Exit;

      MessageDlg('F6 : Cancel',mtInformation,[mbOK],0);
    end;

    VK_F7:begin
      if (not (tbDelete in Self.ToolbarVisible)) and (not (tbDelete in Self.ToolbarEnable)) then
        Exit;
      MessageDlg('F7 : Delete',mtInformation,[mbOK],0);
    end;

    VK_F8:begin
      if (not (tbPrint in Self.ToolbarVisible)) and (not (tbPrint in Self.ToolbarEnable)) then
        Exit;
      MessageDlg('F8 : Print',mtInformation,[mbOK],0);
    end;

    VK_F9:begin
      if (not (tbExport in Self.ToolbarVisible)) and (not (tbExport in Self.ToolbarEnable)) then
        Exit;
      MessageDlg('F9 : Export',mtInformation,[mbOK],0);
    end;

    VK_F11:begin
      if (not (tbClose in Self.ToolbarVisible)) and (not (tbClose in Self.ToolbarEnable)) then
        Exit;

      MessageDlg('F11 : Exit',mtInformation,[mbOK],0);
    end;


  end;

end;

procedure TFormMP.PopupClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
  FormPU := TFormPU.Create(Self);
  try
    FormPU.ShowModal;

    if FormPU.ModalResult = mrOk then
    begin
      MessageDlg('OK',mtInformation,[mbOK], 0);
    end
    else
    begin
      MessageDlg('Cancel',mtInformation,[mbOK], 0);
    end;

  finally
   FormPU.Free;
  end;

end;

end.
