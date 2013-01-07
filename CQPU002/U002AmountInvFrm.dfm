object FrmU002AmountInv: TFrmU002AmountInv
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Amount Invalid'
  ClientHeight = 145
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 310
    Height = 145
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object cxMemo1: TcxMemo
      Left = 10
      Top = 16
      Enabled = False
      Lines.Strings = (
        'Amount Invalid !'
        ''
        ''
        ''
        'Do you want to Seperate or Change Contract ?')
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      StyleDisabled.BorderStyle = ebsNone
      StyleDisabled.TextColor = clWindowText
      TabOrder = 0
      Height = 89
      Width = 289
    end
    object Other: TcxButton
      Left = 23
      Top = 111
      Width = 75
      Height = 25
      Caption = 'Seperate'
      TabOrder = 1
      OnClick = OtherClick
      LookAndFeel.Kind = lfFlat
    end
    object Contract: TcxButton
      Left = 104
      Top = 111
      Width = 98
      Height = 25
      Caption = 'Change Contract'
      TabOrder = 2
      OnClick = ContractClick
      LookAndFeel.Kind = lfFlat
    end
    object Exit: TcxButton
      Left = 208
      Top = 111
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 3
      OnClick = ExitClick
      LookAndFeel.Kind = lfFlat
    end
  end
end
