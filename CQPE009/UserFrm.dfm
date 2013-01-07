object FrmUser: TFrmUser
  Left = 0
  Top = 0
  Caption = 'FrmUser'
  ClientHeight = 497
  ClientWidth = 913
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 913
    Height = 497
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 35
      Width = 911
      Height = 461
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'Branch'
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'UserID'
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'UserName'
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          DataBinding.FieldName = 'DepartmentCode'
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          DataBinding.FieldName = 'SectionCode'
        end
        object cxGrid1DBTableView1Column6: TcxGridDBColumn
          DataBinding.FieldName = 'LevelCode'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 911
      Height = 34
      Align = alTop
      TabOrder = 1
      object edtSearchUser: TJvDBSearchEdit
        Left = 1
        Top = 1
        Width = 264
        Height = 32
        DataSource = DSource1
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 26
      end
      object Panel3: TPanel
        Left = 265
        Top = 1
        Width = 408
        Height = 32
        Align = alLeft
        TabOrder = 1
        object cxComboBox1: TcxComboBox
          Left = 16
          Top = 2
          TabOrder = 0
          OnClick = cxComboBox1Click
          Width = 201
        end
        object BtnAddToUserSystem: TcxButton
          Left = 220
          Top = 1
          Width = 187
          Height = 30
          Align = alRight
          Caption = 'ADD'
          TabOrder = 1
          OnClick = BtnAddToUserSystemClick
        end
      end
    end
  end
  object AllUser: TRemDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = FrmUserProfile.SockCon
    Mono = False
    FillNull = False
    AutoLink = False
    AutoDec = 0
    ProperCap = False
    AutoApply = False
    RefreshOnFailed = False
    ByPass = False
    TrimChar = False
    LimitSQLRec = 0
    Left = 144
    Top = 96
  end
  object DSource1: TDSource
    DataSet = AllUser
    AutoState = False
    DisableEventsOnLoading = False
    Left = 152
    Top = 144
  end
end
