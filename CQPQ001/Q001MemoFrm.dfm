object FrmMemo: TFrmMemo
  Left = 301
  Top = 122
  Caption = 'Memo Form'
  ClientHeight = 341
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    509
    341)
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton7: TcxButton
    Left = 138
    Top = 307
    Width = 75
    Height = 26
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Save'
    TabOrder = 0
    OnClick = saveClick
    LookAndFeel.Kind = lfStandard
  end
  object cxButton1: TcxButton
    Left = 266
    Top = 307
    Width = 75
    Height = 26
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Cancle'
    TabOrder = 1
    OnClick = Cancleclick
    LookAndFeel.Kind = lfStandard
  end
  object Memo1: TcxMemo
    Left = 8
    Top = 8
    Properties.WantTabs = True
    TabOrder = 2
    Height = 293
    Width = 493
  end
end
