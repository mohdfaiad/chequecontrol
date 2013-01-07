object FormPU: TFormPU
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FormPU'
  ClientHeight = 418
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 185
    Width = 701
    Height = 233
    Align = alClient
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 185
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 608
      Top = 81
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 585
      Height = 183
      Align = alLeft
      Lines.Strings = (
        '#1 Set show position'
        ' Position = poMainFormCenter')
      ReadOnly = True
      TabOrder = 1
    end
  end
end
