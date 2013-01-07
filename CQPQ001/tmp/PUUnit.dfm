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
  object Button1: TButton
    Left = 352
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 16
    Width = 329
    Height = 169
    Lines.Strings = (
      '#1 Set show position'
      ' Position = poMainFormCenter')
    ReadOnly = True
    TabOrder = 1
  end
  object StringGrid1: TStringGrid
    Left = 17
    Top = 200
    Width = 676
    Height = 201
    TabOrder = 2
  end
end
