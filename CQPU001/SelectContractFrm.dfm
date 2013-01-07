object frmSelectContract: TfrmSelectContract
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Select Contract'
  ClientHeight = 433
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    763
    433)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 763
    Height = 433
    Align = alClient
    ExplicitLeft = -6
    ExplicitWidth = 897
    ExplicitHeight = 487
  end
  object cxLabel2: TcxLabel
    Left = 14
    Top = 9
    Caption = 'Search'
  end
  object cxDBTextEdit6: TcxDBTextEdit
    Left = 55
    Top = 8
    TabOrder = 1
    Width = 290
  end
  object cxButton2: TcxButton
    Left = 571
    Top = 400
    Width = 78
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Add'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object btnCancel: TcxButton
    Left = 490
    Top = 400
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnCancelClick
  end
  object cxButton3: TcxButton
    Left = 680
    Top = 400
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Replace All'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object cxLabel1: TcxLabel
    Left = 30
    Top = 359
    Anchors = [akLeft, akBottom]
    Caption = 'Chq. Amount'
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 103
    Top = 358
    Anchors = [akLeft, akBottom]
    TabOrder = 6
    Width = 130
  end
  object cxLabel3: TcxLabel
    Left = 12
    Top = 383
    Anchors = [akLeft, akBottom]
    Caption = 'Selected Amount'
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 103
    Top = 382
    Anchors = [akLeft, akBottom]
    TabOrder = 8
    Width = 130
  end
  object cxLabel4: TcxLabel
    Left = 31
    Top = 407
    Anchors = [akLeft, akBottom]
    Caption = 'Net Payment'
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 103
    Top = 406
    Anchors = [akLeft, akBottom]
    TabOrder = 10
    Width = 130
  end
  object cxLabel5: TcxLabel
    Left = 30
    Top = 336
    Anchors = [akLeft, akBottom]
    Caption = 'Total Select  3 Counts.'
  end
end
