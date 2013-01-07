object frmCreateDocument: TfrmCreateDocument
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Create Document'
  ClientHeight = 472
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    807
    472)
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 807
    Height = 472
    Align = alClient
    Shape = bsFrame
    ExplicitLeft = -8
    ExplicitTop = 32
    ExplicitWidth = 596
    ExplicitHeight = 284
  end
  object cxLabel4: TcxLabel
    Left = 12
    Top = 179
    Caption = 'Prepare By'
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 83
    Top = 87
    TabOrder = 1
    Width = 95
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 83
    Top = 179
    TabOrder = 2
    Width = 95
  end
  object cxLabel5: TcxLabel
    Left = 20
    Top = 157
    Caption = 'Doc Type'
  end
  object cxLabel6: TcxLabel
    Left = 42
    Top = 136
    Caption = 'Date'
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 83
    Top = 156
    TabOrder = 5
    Width = 95
  end
  object cxLabel7: TcxLabel
    Left = 45
    Top = 115
    Caption = 'Title'
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 83
    Top = 133
    TabOrder = 7
    Width = 95
  end
  object cxLabel8: TcxLabel
    Left = 31
    Top = 94
    Caption = 'Doc No'
  end
  object cxDBTextEdit5: TcxDBTextEdit
    Left = 83
    Top = 110
    TabOrder = 9
    Width = 161
  end
  object cxDBTextEdit8: TcxDBTextEdit
    Left = 313
    Top = 177
    TabOrder = 10
    Width = 161
  end
  object cxLabel13: TcxLabel
    Left = 272
    Top = 178
    Caption = 'Status'
  end
  object cxButton2: TcxButton
    Left = 718
    Top = 443
    Width = 81
    Height = 22
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 12
  end
  object cxLabel1: TcxLabel
    Left = 42
    Top = 9
    Caption = 'Bank'
  end
  object cxDBTextEdit6: TcxDBTextEdit
    Left = 83
    Top = 8
    TabOrder = 14
    Width = 161
  end
  object cxDBTextEdit7: TcxDBTextEdit
    Left = 83
    Top = 31
    TabOrder = 15
    Width = 161
  end
  object cxLabel2: TcxLabel
    Left = 32
    Top = 30
    Caption = 'Branch'
  end
  object cxLabel3: TcxLabel
    Left = 22
    Top = 51
    Caption = 'Chq. No.'
  end
  object cxDBTextEdit9: TcxDBTextEdit
    Left = 83
    Top = 54
    TabOrder = 18
    Width = 161
  end
  object cxDBTextEdit10: TcxDBTextEdit
    Left = 313
    Top = 8
    TabOrder = 19
    Width = 161
  end
  object cxLabel9: TcxLabel
    Left = 250
    Top = 10
    Caption = 'Chq. Date.'
  end
  object cxLabel10: TcxLabel
    Left = 250
    Top = 31
    Caption = 'Amount'
  end
  object cxDBTextEdit11: TcxDBTextEdit
    Left = 313
    Top = 31
    TabOrder = 22
    Width = 161
  end
  object cxGrid2: TcxGrid
    Left = 4
    Top = 204
    Width = 797
    Height = 236
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 23
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object btnCancel: TcxButton
    Left = 631
    Top = 443
    Width = 81
    Height = 22
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    TabOrder = 24
    OnClick = btnCancelClick
  end
end
