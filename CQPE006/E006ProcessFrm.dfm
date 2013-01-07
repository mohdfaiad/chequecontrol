object E006FrmProcess: TE006FrmProcess
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 149
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 401
    Height = 149
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 64
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lbl1: TLabel
      Left = 52
      Top = 38
      Width = 159
      Height = 18
      Caption = 'Processing please wait...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object pb1: TProgressBar
      Left = 52
      Top = 62
      Width = 297
      Height = 25
      TabOrder = 0
    end
  end
end
