object frmSearchContract: TfrmSearchContract
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Search Contract'
  ClientHeight = 440
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object grid: TcxGrid
    Left = 0
    Top = 65
    Width = 602
    Height = 375
    Align = alClient
    TabOrder = 0
    ExplicitTop = 62
    object gridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsContract
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object gridDBTableView1INSCRN: TcxGridDBColumn
        Caption = 'Contract'
        DataBinding.FieldName = 'INSCRN'
        Width = 108
      end
      object gridDBTableView1DAEName: TcxGridDBColumn
        Caption = 'Dealer Name'
        DataBinding.FieldName = 'DAEName'
        Width = 467
      end
    end
    object gridLevel1: TcxGridLevel
      GridView = gridDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 602
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = -6
    ExplicitWidth = 728
    object jvContract: TJvDBSearchEdit
      Left = 1
      Top = 29
      Width = 121
      Height = 24
      DataSource = dsContract
      DataField = 'INSCRN'
      TabOrder = 0
      Text = 'jvContract'
      OnKeyDown = jvContractKeyDown
    end
    object jvDealerName: TJvDBSearchEdit
      Left = 125
      Top = 29
      Width = 281
      Height = 24
      DataSource = dsContract
      DataField = 'DAEName'
      TabOrder = 1
      Text = 'JvDBSearchEdit1'
      OnKeyDown = jvDealerNameKeyDown
    end
    object cxLabel19: TcxLabel
      Left = 1
      Top = 6
      Caption = 'Contract No :'
      ParentColor = False
      ParentFont = False
      Properties.ShadowedColor = clSilver
      Style.Color = clSilver
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clSilver
      StyleFocused.Color = clSilver
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 128
      Top = 6
      Caption = 'Dealer Name :'
      ParentColor = False
      ParentFont = False
      Properties.ShadowedColor = clSilver
      Style.Color = clSilver
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clSilver
      StyleFocused.Color = clSilver
      Transparent = True
    end
  end
  object btnOK: TcxButton
    Left = 411
    Top = 29
    Width = 95
    Height = 27
    Caption = 'OK ( F5)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnOKClick
    LookAndFeel.Kind = lfFlat
  end
  object dsContract: TDataSource
    DataSet = cdsSearch
    Left = 336
    Top = 128
  end
  object cdsSearch: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select aa.INSCRN,c.[DLR Name] as DAEName  from    (   select a.I' +
      'NSCRN from HPTINS00 a where a.INSF11=3 group by a.INSCRN    ) aa' +
      '     left join HPMCON00 b on aa.INSCRN=b.CONRUN    left join DEA' +
      'LER c on b.CONDEA=c.Code     '
    Params = <>
    ProviderName = 'sqlDsp'
    RemoteServer = frmChequeSeparate.SockCon
    Left = 440
    Top = 192
  end
end
