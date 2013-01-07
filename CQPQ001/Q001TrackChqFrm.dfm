object Q001FrmTrackChq: TQ001FrmTrackChq
  Left = 90
  Top = 75
  BorderIcons = [biSystemMenu]
  Caption = 'Tracking  Cheque'
  ClientHeight = 551
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    872
    551)
  PixelsPerInch = 96
  TextHeight = 18
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 872
    Height = 109
    Align = alTop
    Shape = bsFrame
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 98
    Top = 8
    DataBinding.DataSource = DTSTrackChq
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextColor = clBlue
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 122
  end
  object cxLabel13: TcxLabel
    Left = 15
    Top = 8
    Caption = 'Cheque No.'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxButton2: TcxButton
    Left = 783
    Top = 522
    Width = 81
    Height = 22
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 2
  end
  object cxLabel1: TcxLabel
    Left = 479
    Top = 107
    Caption = 'Bank Code'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Visible = False
  end
  object cxDBTextEdit6: TcxDBTextEdit
    Left = 555
    Top = 110
    DataBinding.DataSource = DTSTrackChq
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Visible = False
    Width = 161
  end
  object cxDBTextEdit7: TcxDBTextEdit
    Left = 98
    Top = 40
    DataBinding.DataSource = DTSTrackChq
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 161
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 39
    Caption = 'Bank Name'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxLabel3: TcxLabel
    Left = 257
    Top = 81
    Caption = 'Branch Code'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Visible = False
  end
  object cxDBTextEdit9: TcxDBTextEdit
    Left = 346
    Top = 83
    DataBinding.DataSource = DTSTrackChq
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 8
    Visible = False
    Width = 161
  end
  object cxDBTextEdit10: TcxDBTextEdit
    Left = 98
    Top = 72
    DataBinding.DataField = 'CQTEGN'
    DataBinding.DataSource = DTSTrackChq
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 9
    Width = 352
  end
  object cxLabel9: TcxLabel
    Left = 3
    Top = 72
    Caption = 'Branch Name'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxLabel10: TcxLabel
    Left = 499
    Top = 8
    Caption = 'Contract No.'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxDBTextEdit11: TcxDBTextEdit
    Left = 592
    Top = 8
    DataBinding.DataField = 'CQTEGN'
    DataBinding.DataSource = DTSTrackChq
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 12
    Width = 161
  end
  object btnCancel: TcxButton
    Left = 696
    Top = 522
    Width = 81
    Height = 22
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    TabOrder = 13
    OnClick = btnCancelClick
  end
  object CxGBank: TcxGrid
    Left = 0
    Top = 109
    Width = 872
    Height = 442
    Align = alClient
    TabOrder = 14
    object CxGBankDBTableView1: TcxGridDBTableView
      Tag = 1
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DTSTrackChq
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.MultiSelect = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object track_item: TcxGridDBColumn
        Caption = 'Item'
        OnGetDisplayText = track_itemGetDisplayText
        Width = 38
      end
      object Track_ChqNo: TcxGridDBColumn
        Caption = 'Chq No.'
        DataBinding.FieldName = 'CQTNO2'
        Width = 65
      end
      object Track_Date: TcxGridDBColumn
        Caption = 'Time'
        DataBinding.FieldName = 'CQTCRD'
        Width = 148
      end
      object Track_Active: TcxGridDBColumn
        Caption = 'Active'
        DataBinding.FieldName = 'CQTACT'
        Width = 45
      end
      object Track_Status: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'CQTSTS'
        Width = 45
      end
      object Track_bankName: TcxGridDBColumn
        Caption = 'Bank Name'
        DataBinding.FieldName = 'CQTEGN'
        Width = 74
      end
      object Track_BranckName: TcxGridDBColumn
        Caption = 'Branch Name'
        DataBinding.FieldName = 'CQTBRH'
        Width = 200
      end
      object Track_chqDate: TcxGridDBColumn
        Caption = 'Chq Date'
        DataBinding.FieldName = 'CQTDAT'
        Width = 85
      end
      object Track_Amt: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'CQTAMT'
        OnGetDisplayText = Track_AmtGetDisplayText
        Width = 80
      end
      object Track_DepDate: TcxGridDBColumn
        Caption = 'Deposit Date'
        DataBinding.FieldName = 'CQTTRD'
        Width = 85
      end
      object Track_Chqtype: TcxGridDBColumn
        Caption = 'Chq Type'
        DataBinding.FieldName = 'CQTCTY'
        Width = 55
      end
      object Track_RETreason: TcxGridDBColumn
        Caption = 'Return Reason'
        DataBinding.FieldName = 'CQMNAT'
        Width = 200
      end
      object Track_Who: TcxGridDBColumn
        Caption = 'Editor'
        DataBinding.FieldName = 'CQTCRU'
        Width = 150
      end
      object Track_devision: TcxGridDBColumn
        Caption = 'Division'
        DataBinding.FieldName = 'CQTCRW'
        Width = 150
      end
      object Track_Docu: TcxGridDBColumn
        Caption = 'Document No.'
        DataBinding.FieldName = 'CQTRFN'
        Width = 150
      end
    end
    object CxGBankLevel1: TcxGridLevel
      GridView = CxGBankDBTableView1
    end
  end
  object cxLabel4: TcxLabel
    Left = 497
    Top = 40
    Caption = 'Dealer Name'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 592
    Top = 40
    DataBinding.DataField = 'CQTEGN'
    DataBinding.DataSource = DTSTrackChq
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 16
    Width = 275
  end
  object cxLabel5: TcxLabel
    Left = 517
    Top = 73
    Caption = 'Car Model'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 592
    Top = 72
    DataBinding.DataField = 'CQTEGN'
    DataBinding.DataSource = DTSTrackChq
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 18
    Width = 276
  end
  object DTSTrackChq: TDataSource
    DataSet = Q001DMMain.TrackChq
    Left = 320
    Top = 40
  end
end
