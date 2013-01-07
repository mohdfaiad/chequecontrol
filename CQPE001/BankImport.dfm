object FormImportBank: TFormImportBank
  Left = 0
  Top = 0
  Caption = 'FormImportBank'
  ClientHeight = 346
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 346
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 216
    ExplicitTop = 184
    ExplicitWidth = 185
    ExplicitHeight = 41
    object mmoImBank1: TMemo
      Left = 40
      Top = 25
      Width = 601
      Height = 161
      Lines.Strings = (
        'mmoImBank1')
      TabOrder = 0
    end
    object mmoImBank2: TMemo
      Left = 72
      Top = 192
      Width = 553
      Height = 105
      Lines.Strings = (
        'mmoImBank2')
      TabOrder = 1
    end
    object BtnImBank: TcxButton
      Left = 472
      Top = 296
      Width = 75
      Height = 25
      Caption = 'Import'
      TabOrder = 2
      OnClick = BtnImBankClick
    end
  end
end
