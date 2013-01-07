object frmGenerateChq: TfrmGenerateChq
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Generate Cheque'
  ClientHeight = 485
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 18
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 904
    Height = 485
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Seperate'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        896
        454)
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 896
        Height = 454
        Align = alClient
        Shape = bsFrame
        ExplicitLeft = 240
        ExplicitTop = 152
        ExplicitWidth = 50
        ExplicitHeight = 50
      end
      object gridSeperate: TcxGrid
        Left = 3
        Top = 31
        Width = 890
        Height = 388
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object gridSeperateDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsGenerateChq
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object gridSeperateDBTableView1CQMCHK: TcxGridDBColumn
            DataBinding.FieldName = 'CQMCHK'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            IsCaptionAssigned = True
          end
          object gridSeperateDBTableView1CQMCSN: TcxGridDBColumn
            Caption = 'CNO'
            DataBinding.FieldName = 'CQMCSN'
          end
          object gridSeperateDBTableView1CQMAMT: TcxGridDBColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'CQMAMT'
          end
          object gridSeperateDBTableView1CQMIAM: TcxGridDBColumn
            Caption = 'Ins Amount'
            DataBinding.FieldName = 'CQMIAM'
          end
          object gridSeperateDBTableView1CQMLET: TcxGridDBColumn
            Caption = 'Chq Letter'
            DataBinding.FieldName = 'CQMLET'
          end
          object gridSeperateDBTableView1CQMTYP: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'CQMTYP'
          end
          object gridSeperateDBTableView1CQMCTY: TcxGridDBColumn
            Caption = 'CType'
            DataBinding.FieldName = 'CQMCTY'
          end
          object gridSeperateDBTableView1CQMDTE: TcxGridDBColumn
            Caption = 'Chq Date'
            DataBinding.FieldName = 'CQMDTE'
          end
          object gridSeperateDBTableView1CQMDUE: TcxGridDBColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'CQMDUE'
          end
          object gridSeperateDBTableView1CQMITM: TcxGridDBColumn
            Caption = 'Item'
            DataBinding.FieldName = 'CQMITM'
          end
        end
        object gridSeperateLevel1: TcxGridLevel
          GridView = gridSeperateDBTableView1
        end
      end
      object btnSeOK: TcxButton
        Left = 737
        Top = 426
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
        TabOrder = 1
        OnClick = btnSeOKClick
        LookAndFeel.Kind = lfFlat
      end
      object btnSeCancel: TcxButton
        Left = 818
        Top = 426
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
        TabOrder = 2
        OnClick = btnSeCancelClick
        LookAndFeel.Kind = lfFlat
      end
      object cxTextEdit1: TcxTextEdit
        Left = 100
        Top = 423
        Anchors = [akLeft, akBottom]
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 3
        Text = '1,000,000.00'
        Width = 189
      end
      object cxLabel1: TcxLabel
        Left = 16
        Top = 425
        Anchors = [akLeft, akBottom]
        Caption = 'Total Amount'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel3: TcxLabel
        Left = 295
        Top = 425
        Anchors = [akLeft, akBottom]
        Caption = 'THB'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel4: TcxLabel
        Left = 16
        Top = 6
        Caption = 'Cheque No.'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit3: TcxTextEdit
        Left = 100
        Top = 6
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 7
        Text = '100001'
        Width = 117
      end
      object cxTextEdit4: TcxTextEdit
        Left = 268
        Top = 5
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 8
        Text = '100010'
        Width = 117
      end
      object cxLabel5: TcxLabel
        Left = 231
        Top = 5
        Caption = 'To'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object DBNavigator1: TDBNavigator
        Left = 653
        Top = 3
        Width = 240
        Height = 25
        Anchors = [akTop, akRight]
        TabOrder = 10
      end
      object btnReGenerate: TcxButton
        Left = 559
        Top = 3
        Width = 88
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Re Generate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = btnReGenerateClick
        LookAndFeel.Kind = lfFlat
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'History'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        896
        454)
      object Bevel2: TBevel
        Left = 0
        Top = 0
        Width = 896
        Height = 454
        Align = alClient
        Anchors = [akLeft, akBottom]
        Shape = bsFrame
        ExplicitLeft = 240
        ExplicitTop = 152
        ExplicitWidth = 50
        ExplicitHeight = 50
      end
      object cxGrid2: TcxGrid
        Left = 3
        Top = 32
        Width = 890
        Height = 388
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object btnHisOK: TcxButton
        Left = 737
        Top = 426
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
        TabOrder = 1
        OnClick = btnHisOKClick
        LookAndFeel.Kind = lfFlat
      end
      object btnHisCancel: TcxButton
        Left = 818
        Top = 426
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
        TabOrder = 2
        OnClick = btnHisCancelClick
        LookAndFeel.Kind = lfFlat
      end
      object cxLabel2: TcxLabel
        Left = 16
        Top = 427
        Anchors = [akLeft, akBottom]
        Caption = 'Total Amount'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit2: TcxTextEdit
        Left = 100
        Top = 425
        Anchors = [akLeft, akBottom]
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 4
        Text = '1,000,000.00'
        Width = 189
      end
      object cxLabel6: TcxLabel
        Left = 295
        Top = 427
        Anchors = [akLeft, akBottom]
        Caption = 'THB'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel7: TcxLabel
        Left = 16
        Top = 6
        Caption = 'Contract '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit5: TcxTextEdit
        Left = 78
        Top = 5
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 7
        Text = '100001'
        Width = 139
      end
      object cxLabel8: TcxLabel
        Left = 231
        Top = 6
        Caption = 'Bank'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit6: TcxTextEdit
        Left = 269
        Top = 5
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 9
        Text = '100010'
        Width = 117
      end
      object cxLabel9: TcxLabel
        Left = 399
        Top = 5
        Caption = 'Bank Brach'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit7: TcxTextEdit
        Left = 472
        Top = 5
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 11
        Text = '100010'
        Width = 117
      end
    end
  end
  object SockCon: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '192.168.1.211'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = False
    AutoConnect = False
    Deploy = False
    Left = 24
    Top = 144
  end
  object connBroker: TConnectionBroker
    Connection = SockCon
    Left = 40
    Top = 184
  end
  object cdsGenerateChq: TClientDataSet
    Tag = 99
    Aggregates = <>
    CommandText = 'select * ,1000000.01 as CQMIAM,0 as CQMCHK from CQDM007'
    Params = <>
    ProviderName = 'cdsGenerateChq'
    RemoteServer = connBroker
    Left = 136
    Top = 144
    object cdsGenerateChqCQMACT: TStringField
      FieldName = 'CQMACT'
      Size = 1
    end
    object cdsGenerateChqCQMSTS: TStringField
      FieldName = 'CQMSTS'
      Size = 1
    end
    object cdsGenerateChqCQMBRN: TStringField
      FieldName = 'CQMBRN'
      Size = 3
    end
    object cdsGenerateChqCQMPDM: TStringField
      FieldName = 'CQMPDM'
      Size = 4
    end
    object cdsGenerateChqCQMPDT: TStringField
      FieldName = 'CQMPDT'
      Size = 3
    end
    object cdsGenerateChqCQMDNO: TStringField
      FieldName = 'CQMDNO'
      Size = 15
    end
    object cdsGenerateChqCQMBNK: TStringField
      FieldName = 'CQMBNK'
      FixedChar = True
      Size = 4
    end
    object cdsGenerateChqCQMBBR: TStringField
      FieldName = 'CQMBBR'
      FixedChar = True
      Size = 10
    end
    object cdsGenerateChqCQMLET: TStringField
      FieldName = 'CQMLET'
      FixedChar = True
      Size = 1
    end
    object cdsGenerateChqCQMCNO: TStringField
      FieldName = 'CQMCNO'
      FixedChar = True
      Size = 10
    end
    object cdsGenerateChqCQMTYP: TStringField
      FieldName = 'CQMTYP'
      FixedChar = True
      Size = 1
    end
    object cdsGenerateChqCQMCTY: TStringField
      FieldName = 'CQMCTY'
      FixedChar = True
      Size = 7
    end
    object cdsGenerateChqCQMDTE: TSQLTimeStampField
      FieldName = 'CQMDTE'
    end
    object cdsGenerateChqCQMITM: TIntegerField
      FieldName = 'CQMITM'
    end
    object cdsGenerateChqCQMAMT: TFMTBCDField
      FieldName = 'CQMAMT'
      Precision = 18
      Size = 2
    end
    object cdsGenerateChqCQMDUE: TSQLTimeStampField
      FieldName = 'CQMDUE'
    end
    object cdsGenerateChqCQMCSN: TStringField
      FieldName = 'CQMCSN'
      Size = 7
    end
    object cdsGenerateChqCQMRMK: TStringField
      FieldName = 'CQMRMK'
      Size = 200
    end
    object cdsGenerateChqCQMRS1: TStringField
      FieldName = 'CQMRS1'
      Size = 50
    end
    object cdsGenerateChqCQMRS2: TStringField
      FieldName = 'CQMRS2'
      Size = 50
    end
    object cdsGenerateChqCQMRS3: TStringField
      FieldName = 'CQMRS3'
      Size = 50
    end
    object cdsGenerateChqCQMRS4: TStringField
      FieldName = 'CQMRS4'
      Size = 50
    end
    object cdsGenerateChqCQMRS5: TStringField
      FieldName = 'CQMRS5'
      Size = 50
    end
    object cdsGenerateChqCQMRN1: TFMTBCDField
      FieldName = 'CQMRN1'
      Precision = 18
      Size = 2
    end
    object cdsGenerateChqCQMRN2: TFMTBCDField
      FieldName = 'CQMRN2'
      Precision = 18
      Size = 2
    end
    object cdsGenerateChqCQMRN3: TFMTBCDField
      FieldName = 'CQMRN3'
      Precision = 18
      Size = 2
    end
    object cdsGenerateChqCQMRN4: TFMTBCDField
      FieldName = 'CQMRN4'
      Precision = 18
      Size = 2
    end
    object cdsGenerateChqCQMRN5: TFMTBCDField
      FieldName = 'CQMRN5'
      Precision = 18
      Size = 2
    end
    object cdsGenerateChqCQMETD: TSQLTimeStampField
      FieldName = 'CQMETD'
    end
    object cdsGenerateChqCQMETW: TStringField
      FieldName = 'CQMETW'
      Size = 60
    end
    object cdsGenerateChqCQMETU: TStringField
      FieldName = 'CQMETU'
    end
    object cdsGenerateChqCQMMTD: TSQLTimeStampField
      FieldName = 'CQMMTD'
    end
    object cdsGenerateChqCQMMTU: TStringField
      FieldName = 'CQMMTU'
    end
    object cdsGenerateChqCQMMTW: TStringField
      FieldName = 'CQMMTW'
      Size = 60
    end
    object cdsGenerateChqCQMIAM: TFMTBCDField
      FieldName = 'CQMIAM'
      Precision = 9
      Size = 2
    end
    object cdsGenerateChqCQMCHK: TIntegerField
      FieldName = 'CQMCHK'
    end
  end
  object dsGenerateChq: TDataSource
    DataSet = cdsGenerateChq
    Left = 264
    Top = 120
  end
  object cdsHpIns: TClientDataSet
    Tag = 99
    Aggregates = <>
    CommandText = 
      'select INSCRN,INSF11,* from HPTINS00 where INSCRN='#39'8100250'#39' and ' +
      'INSF11=3 order by INSITM'
    Params = <>
    ProviderName = 'cdsHpIns'
    RemoteServer = connBroker
    Left = 208
    Top = 268
  end
  object dsHpIns: TDataSource
    DataSet = cdsHpIns
    Left = 304
    Top = 280
  end
end
