object E010FrmSystem: TE010FrmSystem
  Left = 0
  Top = 0
  Caption = 'FrmSystem'
  ClientHeight = 611
  ClientWidth = 1093
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
    Width = 1093
    Height = 611
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1091
      Height = 40
      Align = alTop
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 949
        Top = 1
        Width = 141
        Height = 38
        Align = alRight
        Caption = 'Close'
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 1
        Top = 1
        Width = 141
        Height = 38
        Align = alLeft
        Caption = 'Add System'
        TabOrder = 1
        OnClick = cxButton2Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 41
      Width = 1091
      Height = 569
      Align = alClient
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 1089
        Height = 567
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = E010FrmMain.dsAllMenu
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'System'
            DataBinding.FieldName = 'ProgramSystem'
            Options.Editing = False
            Width = 120
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'ProgramType'
            Options.Editing = False
            Width = 110
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = 'Menu ID'
            DataBinding.FieldName = 'MenuID'
            Options.Editing = False
            Width = 100
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            Caption = 'Menu Name'
            DataBinding.FieldName = 'MenuName'
            Options.Editing = False
            Width = 300
          end
          object cxGrid1DBTableView1Column5: TcxGridDBColumn
            Caption = 'Menu Type'
            DataBinding.FieldName = 'MenuType'
            Options.Editing = False
            Width = 100
          end
          object cxGrid1DBTableView1Column6: TcxGridDBColumn
            Caption = 'Menu Group'
            DataBinding.FieldName = 'MenuGroup'
            Options.Editing = False
            Width = 150
          end
          object cxGrid1DBTableView1Column7: TcxGridDBColumn
            DataBinding.FieldName = 'RecordStatus'
            Options.Editing = False
            Width = 100
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
end
