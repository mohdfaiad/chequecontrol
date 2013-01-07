object FrmQ001Tracking: TFrmQ001Tracking
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Tracking'
  ClientHeight = 504
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 714
    Height = 504
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DTKG
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1CQTAMT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1CQTRNO: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'CQTRNO'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 38
      end
      object cxGrid1DBTableView1STS: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STS'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 48
      end
      object cxGrid1DBTableView1CQTSTD: TcxGridDBColumn
        Caption = 'Status Date'
        DataBinding.FieldName = 'CQTSTD'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 93
      end
      object cxGrid1DBTableView1CQMEGN: TcxGridDBColumn
        Caption = 'Bank Name'
        DataBinding.FieldName = 'CQMEGN'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 81
      end
      object cxGrid1DBTableView1CQMBRH: TcxGridDBColumn
        Caption = 'Branch Name'
        DataBinding.FieldName = 'CQMBRH'
        PropertiesClassName = 'TcxLabelProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 274
      end
      object cxGrid1DBTableView1CQTNO2: TcxGridDBColumn
        Caption = 'Chq. No.'
        DataBinding.FieldName = 'CQTNO2'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
      end
      object cxGrid1DBTableView1CQTDAT: TcxGridDBColumn
        Caption = 'Chq. Date'
        DataBinding.FieldName = 'CQTDAT'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 83
      end
      object cxGrid1DBTableView1CQTAMT: TcxGridDBColumn
        Caption = 'Chq. Amount'
        DataBinding.FieldName = 'CQTAMT'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 142
      end
      object cxGrid1DBTableView1CQTTRD: TcxGridDBColumn
        Caption = 'Deposit Date'
        DataBinding.FieldName = 'CQTTRD'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 89
      end
      object cxGrid1DBTableView1CQTCTY: TcxGridDBColumn
        Caption = 'Chq. Type'
        DataBinding.FieldName = 'CQTCTY'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 91
      end
      object cxGrid1DBTableView1CQMCSN: TcxGridDBColumn
        Caption = 'Contract No.'
        DataBinding.FieldName = 'CQMCSN'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 105
      end
      object cxGrid1DBTableView1MODEL: TcxGridDBColumn
        Caption = 'Car Model'
        DataBinding.FieldName = 'MODEL'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 83
      end
      object cxGrid1DBTableView1DEA1NAME: TcxGridDBColumn
        Caption = 'Dealers'
        DataBinding.FieldName = 'DEA1NAME'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 331
      end
      object cxGrid1DBTableView1CQMNAT: TcxGridDBColumn
        Caption = 'Return Reason'
        DataBinding.FieldName = 'CQMNAT'
        PropertiesClassName = 'TcxLabelProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 359
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object DTKG: TDataSource
    DataSet = TKG
    Left = 592
    Top = 184
  end
  object TKG: TRemDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DMQ001Main.RQC
    AfterOpen = TKGAfterOpen
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
    Left = 592
    Top = 240
  end
end
