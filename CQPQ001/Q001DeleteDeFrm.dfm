object FrmQ001DeleteDe: TFrmQ001DeleteDe
  Left = 0
  Top = 0
  Caption = 'Delete Deposit'
  ClientHeight = 387
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 739
    Height = 387
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      739
      387)
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 740
      Height = 359
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DDEL
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1CQSRNO: TcxGridDBColumn
          DataBinding.FieldName = 'CQSRNO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxGrid1DBTableView1CQSDNO: TcxGridDBColumn
          Caption = 'DOC Load'
          DataBinding.FieldName = 'CQSDNO'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 125
        end
        object cxGrid1DBTableView1CQSBKC: TcxGridDBColumn
          Caption = 'Bank Code'
          DataBinding.FieldName = 'CQSBKC'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 75
        end
        object cxGrid1DBTableView1CQSBKN: TcxGridDBColumn
          Caption = 'Bank Name'
          DataBinding.FieldName = 'CQSBKN'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 81
        end
        object cxGrid1DBTableView1CQSBRC: TcxGridDBColumn
          Caption = 'Branch Code'
          DataBinding.FieldName = 'CQSBRC'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 88
        end
        object cxGrid1DBTableView1CQSBNN: TcxGridDBColumn
          Caption = 'Branch Name'
          DataBinding.FieldName = 'CQSBNN'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 324
        end
        object cxGrid1DBTableView1CQSCQN: TcxGridDBColumn
          Caption = 'Chq. No'
          DataBinding.FieldName = 'CQSCQN'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 71
        end
        object cxGrid1DBTableView1CQSCQD: TcxGridDBColumn
          Caption = 'Chq. Date'
          DataBinding.FieldName = 'CQSCQD'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 90
        end
        object cxGrid1DBTableView1CQSCQA: TcxGridDBColumn
          Caption = 'Chq. Amount'
          DataBinding.FieldName = 'CQSCQA'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 150
        end
        object cxGrid1DBTableView1CQSCQT: TcxGridDBColumn
          Caption = 'Chq. Type'
          DataBinding.FieldName = 'CQSCQT'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 74
        end
        object cxGrid1DBTableView1CQSCQC: TcxGridDBColumn
          Caption = 'Chq. Account'
          DataBinding.FieldName = 'CQSCQC'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 123
        end
        object cxGrid1DBTableView1CQSDED: TcxGridDBColumn
          Caption = 'Deposit Date'
          DataBinding.FieldName = 'CQSDED'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 89
        end
        object cxGrid1DBTableView1CQSDLC: TcxGridDBColumn
          Caption = 'Contract No.'
          DataBinding.FieldName = 'CQSDLC'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 88
        end
        object cxGrid1DBTableView1CQSPLO: TcxGridDBColumn
          Caption = 'Pickup Location'
          DataBinding.FieldName = 'CQSPLO'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 103
        end
        object cxGrid1DBTableView1CQSECD: TcxGridDBColumn
          Caption = 'Expected Credit Date'
          DataBinding.FieldName = 'CQSECD'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 160
        end
        object cxGrid1DBTableView1CQSREC: TcxGridDBColumn
          Caption = 'Reason Code'
          DataBinding.FieldName = 'CQSREC'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 91
        end
        object cxGrid1DBTableView1CQSRED: TcxGridDBColumn
          Caption = 'Reason Detail'
          DataBinding.FieldName = 'CQSRED'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 185
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 585
      Top = 362
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Add'
      TabOrder = 1
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfFlat
    end
    object cxButton2: TcxButton
      Left = 663
      Top = 362
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = cxButton2Click
      LookAndFeel.Kind = lfFlat
    end
  end
  object DDEL: TDataSource
    DataSet = DEL
    Left = 664
    Top = 16
  end
  object DEL: TRemDataSet
    Aggregates = <>
    CommandText = 'select * from cqds001'
    Params = <>
    ProviderName = 'DEL'
    RemoteServer = DMQ001Main.RQC
    AfterOpen = DELAfterOpen
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
    Left = 664
    Top = 72
  end
end
