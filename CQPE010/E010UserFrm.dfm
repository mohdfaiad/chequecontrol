object E010FrmUser: TE010FrmUser
  Left = 0
  Top = 0
  Caption = 'User'
  ClientHeight = 460
  ClientWidth = 418
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
    Width = 418
    Height = 460
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 424
    ExplicitHeight = 468
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 416
      Height = 40
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 422
      object cxButton1: TcxButton
        Left = 312
        Top = 8
        Width = 97
        Height = 25
        Caption = 'Add'
        TabOrder = 0
        OnClick = cxButton1Click
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 41
      Width = 416
      Height = 418
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 422
      ExplicitHeight = 426
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'userid'
          Options.Editing = False
          Width = 150
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'username'
          Options.Editing = False
          Width = 250
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object AddUser: TRemDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = E010FrmMain.SockCon
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
    Left = 32
    Top = 8
  end
end
