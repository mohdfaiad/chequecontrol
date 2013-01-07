object FrmQ001Remark: TFrmQ001Remark
  Left = 0
  Top = 0
  Caption = 'Remark'
  ClientHeight = 201
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 201
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -2
    ExplicitWidth = 457
    ExplicitHeight = 200
    object OK: TcxButton
      Left = 293
      Top = 167
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = OKClick
    end
    object Cancel: TcxButton
      Left = 374
      Top = 167
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = CancelClick
    end
    object RMK: TcxMemo
      Left = 8
      Top = 8
      Lines.Strings = (
        'RMK')
      Properties.ClearKey = 16430
      Properties.ScrollBars = ssVertical
      TabOrder = 2
      Height = 153
      Width = 441
    end
  end
end
