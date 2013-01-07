object frmConfirmation: TfrmConfirmation
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Receive Cheque Confirmation'
  ClientHeight = 487
  ClientWidth = 897
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    897
    487)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 897
    Height = 487
    Align = alClient
    ExplicitLeft = 40
    ExplicitTop = 128
    ExplicitWidth = 50
    ExplicitHeight = 50
  end
  object btnSelectContract: TcxButton
    Left = 627
    Top = 456
    Width = 103
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Select contract'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnSelectContractClick
  end
  object btnCancel: TcxButton
    Left = 736
    Top = 456
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
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object cxButton3: TcxButton
    Left = 817
    Top = 456
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object cxLabel1: TcxLabel
    Left = 57
    Top = 3
    Caption = 'Receive Chq'
  end
  object cxLabel3: TcxLabel
    Left = 13
    Top = 27
    Caption = 'Cheque Number From'
  end
  object cxLabel2: TcxLabel
    Left = 94
    Top = 54
    Caption = 'Bank'
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 127
    Top = 3
    TabOrder = 6
    Width = 94
  end
  object cxDBComboBox1: TcxDBComboBox
    Left = 127
    Top = 28
    TabOrder = 7
    Width = 189
  end
  object cxDBTextEdit6: TcxDBTextEdit
    Left = 127
    Top = 54
    TabOrder = 8
    Width = 94
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 391
    Top = 3
    TabOrder = 9
    Width = 169
  end
  object cxDBComboBox2: TcxDBComboBox
    Left = 391
    Top = 30
    TabOrder = 10
    Width = 169
  end
  object cxGrid2: TcxGrid
    Left = 4
    Top = 81
    Width = 890
    Height = 370
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 11
    object cxGrid2DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
end
