object frmConSearch: TfrmConSearch
  Left = 0
  Top = 0
  Caption = 'Search Contract'
  ClientHeight = 443
  ClientWidth = 873
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object bTop: TBevel
    Left = 0
    Top = 0
    Width = 873
    Height = 42
    Align = alTop
    Shape = bsFrame
  end
  object bBody: TBevel
    Left = 0
    Top = 42
    Width = 873
    Height = 401
    Align = alClient
    Shape = bsFrame
    ExplicitTop = 8
    ExplicitHeight = 49
  end
  object cmdSearchType: TcxComboBox
    Left = 8
    Top = 8
    Properties.Items.Strings = (
      'Dealers Name'
      'Account Number')
    Properties.OnChange = cmdSearchTypePropertiesChange
    TabOrder = 0
    Text = 'Dealers Name'
    Width = 121
  end
  object btnSearch: TcxButton
    Left = 590
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Search'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnSearchClick
    LookAndFeel.Kind = lfFlat
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 42
    Width = 873
    Height = 401
    Align = alClient
    TabOrder = 2
    object cxGrid2DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSearch
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      OnCustomDrawColumnHeader = cxGrid2DBTableView1CustomDrawColumnHeader
      object cxGrid2DBTableView1CQSCSN: TcxGridDBColumn
        Caption = 'Contract'
        DataBinding.FieldName = 'CSN'
        Width = 80
      end
      object cxGrid2DBTableView1NAME: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'NAME'
        Width = 161
      end
      object cxGrid2DBTableView1CARMDL: TcxGridDBColumn
        Caption = 'Model'
        DataBinding.FieldName = 'CARMDL'
        Width = 85
      end
      object cxGrid2DBTableView1INSIAM: TcxGridDBColumn
        Caption = 'Goods'
        DataBinding.FieldName = 'INSIAM'
        Width = 86
      end
      object cxGrid2DBTableView1INSVAM: TcxGridDBColumn
        Caption = 'Vat'
        DataBinding.FieldName = 'INSVAM'
        Width = 82
      end
      object cxGrid2DBTableView1WHT: TcxGridDBColumn
        Caption = 'WT'
        DataBinding.FieldName = 'WHT'
        Width = 88
      end
      object cxGrid2DBTableView1NET: TcxGridDBColumn
        Caption = 'Net'
        DataBinding.FieldName = 'NET'
        Width = 89
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object btnOK: TcxButton
    Left = 671
    Top = 6
    Width = 75
    Height = 25
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnOKClick
    LookAndFeel.Kind = lfFlat
  end
  object cmbSearch: TcxComboBox
    Left = 135
    Top = 8
    Properties.OnChange = cmbSearchPropertiesChange
    TabOrder = 4
    Text = 'cmbSearch'
    OnKeyDown = cmbSearchKeyDown
    Width = 449
  end
  object cdsSearch: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsSearch'
    RemoteServer = frmMainProgram.SocketConn
    Left = 672
    Top = 160
  end
  object dsSearch: TDataSource
    DataSet = cdsSearch
    Left = 608
    Top = 160
  end
end
