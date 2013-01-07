object frmDocuments: TfrmDocuments
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Select Documents'
  ClientHeight = 585
  ClientWidth = 935
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    935
    585)
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel2: TcxLabel
    Left = 14
    Top = 9
    Caption = 'Document Number'
  end
  object cxDBTextEdit6: TcxDBTextEdit
    Left = 122
    Top = 7
    TabOrder = 1
    Width = 270
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 64
    Width = 927
    Height = 241
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object btnCancel: TcxButton
    Left = 775
    Top = 552
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
    ExplicitLeft = 557
    ExplicitTop = 345
  end
  object cxButton2: TcxButton
    Left = 692
    Top = 552
    Width = 78
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Delete'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    ExplicitLeft = 474
    ExplicitTop = 345
  end
  object btnSelect: TcxButton
    Left = 856
    Top = 552
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Select'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnSelectClick
    ExplicitLeft = 638
    ExplicitTop = 345
  end
  object cxLabel1: TcxLabel
    Left = 14
    Top = 35
    Caption = 'Document Date From :'
  end
  object cxLabel3: TcxLabel
    Left = 246
    Top = 35
    Caption = 'To:'
  end
  object cxButton1: TcxButton
    Left = 410
    Top = 8
    Width = 75
    Height = 44
    Caption = 'Search'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object cxDateEdit1: TcxDateEdit
    Left = 271
    Top = 34
    TabOrder = 9
    Width = 121
  end
  object cxDateEdit2: TcxDateEdit
    Left = 126
    Top = 34
    TabOrder = 10
    Width = 121
  end
  object cxPageControl1: TcxPageControl
    Left = 8
    Top = 311
    Width = 923
    Height = 226
    ActivePage = cxTabSheet1
    Style = 5
    TabOrder = 11
    ClientRectBottom = 226
    ClientRectRight = 923
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Detail'
      ImageIndex = 0
      ExplicitWidth = 289
      ExplicitHeight = 169
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 923
        Height = 202
        Align = alClient
        ExplicitLeft = 30
        ExplicitTop = -32
      end
      object cxLabel4: TcxLabel
        Left = 26
        Top = 123
        Caption = 'Prepare By'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 152
        Top = 27
        TabOrder = 1
        Width = 95
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 152
        Top = 123
        TabOrder = 2
        Width = 95
      end
      object cxLabel5: TcxLabel
        Left = 26
        Top = 97
        Caption = 'Doc Type'
      end
      object cxLabel6: TcxLabel
        Left = 26
        Top = 72
        Caption = 'Date'
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 152
        Top = 99
        TabOrder = 5
        Width = 95
      end
      object cxLabel7: TcxLabel
        Left = 26
        Top = 47
        Caption = 'Title'
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 152
        Top = 75
        TabOrder = 7
        Width = 95
      end
      object cxLabel8: TcxLabel
        Left = 26
        Top = 22
        Caption = 'Doc No'
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 152
        Top = 51
        TabOrder = 9
        Width = 95
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 428
        Top = 18
        TabOrder = 10
        Width = 95
      end
      object cxLabel13: TcxLabel
        Left = 330
        Top = 22
        Caption = 'Status'
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Items'
      ImageIndex = 1
      ExplicitWidth = 289
      ExplicitHeight = 169
      DesignSize = (
        923
        202)
      object cxGrid2: TcxGrid
        Left = 3
        Top = 3
        Width = 918
        Height = 196
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
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
    end
  end
end
