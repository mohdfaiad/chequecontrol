object E009FrmUser: TE009FrmUser
  Left = 0
  Top = 0
  Caption = 'E009FrmUser'
  ClientHeight = 615
  ClientWidth = 691
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
    Width = 691
    Height = 615
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 35
      Width = 689
      Height = 579
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsAllUser
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'Branch'
          Options.Editing = False
          Width = 60
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'UserID'
          Options.Editing = False
          Width = 100
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'UserName'
          Options.Editing = False
          Width = 200
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          DataBinding.FieldName = 'DepartmentCode'
          Options.Editing = False
          Width = 125
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          DataBinding.FieldName = 'SectionCode'
          Options.Editing = False
          Width = 95
        end
        object cxGrid1DBTableView1Column6: TcxGridDBColumn
          DataBinding.FieldName = 'LevelCode'
          Options.Editing = False
          Width = 85
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 689
      Height = 34
      Align = alTop
      TabOrder = 1
      object edtSearchUser: TJvDBSearchEdit
        Left = 1
        Top = 1
        Width = 264
        Height = 32
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
    RemoteServer = E009FrmMain.ConnectionBroker1
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
  object dsAllUser: TDataSource
    DataSet = AllUser
    Left = 272
    Top = 168
  end
end
