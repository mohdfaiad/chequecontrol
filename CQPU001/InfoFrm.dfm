object frmInfo: TfrmInfo
  Left = 0
  Top = 0
  Caption = 'Contract Payment Infomation'
  ClientHeight = 529
  ClientWidth = 873
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 873
    Height = 529
    Align = alClient
    ExplicitLeft = 312
    ExplicitTop = 248
    ExplicitWidth = 50
    ExplicitHeight = 50
  end
  object cxGrid4: TcxGrid
    Left = 0
    Top = 40
    Width = 873
    Height = 489
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxGridDBTableView4: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxGridDBTableView4CustomDrawCell
      DataController.DataSource = dsInfo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLines = glVertical
      OptionsView.GroupByBox = False
      object cxGridDBTableView4INSCRN: TcxGridDBColumn
        Caption = 'Contract'
        DataBinding.FieldName = 'INSCRN'
        HeaderAlignmentHorz = taCenter
        Width = 55
      end
      object cxGridDBTableView4INSITM: TcxGridDBColumn
        Caption = 'Tenor'
        DataBinding.FieldName = 'INSITM'
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBTableView4INSDUE: TcxGridDBColumn
        Caption = 'Due'
        DataBinding.FieldName = 'INSDUE'
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBTableView4INSIAM: TcxGridDBColumn
        Caption = 'Goods'
        DataBinding.FieldName = 'INSIAM'
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBTableView4INSVAM: TcxGridDBColumn
        Caption = 'VAT'
        DataBinding.FieldName = 'INSVAM'
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBTableView4INSIRA: TcxGridDBColumn
        Caption = 'Receive'
        DataBinding.FieldName = 'INSIRA'
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBTableView4WHT: TcxGridDBColumn
        Caption = 'WT'
        DataBinding.FieldName = 'WHT'
        HeaderAlignmentHorz = taCenter
      end
    end
    object cxGridLevel4: TcxGridLevel
      GridView = cxGridDBTableView4
    end
  end
  object lbDealerName: TcxLabel
    Left = 51
    Top = 8
    AutoSize = False
    ParentColor = False
    ParentFont = False
    Properties.Alignment.Horz = taLeftJustify
    Style.BorderStyle = ebsSingle
    Style.Color = clGray
    Style.Font.Charset = THAI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.Shadow = False
    Style.TextColor = clYellow
    Style.IsFontAssigned = True
    Height = 24
    Width = 383
  end
  object cxLabel11: TcxLabel
    Left = 8
    Top = 12
    Caption = 'Dealer'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel1: TcxLabel
    Left = 440
    Top = 11
    Caption = 'Model'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object lbModel: TcxLabel
    Left = 481
    Top = 7
    AutoSize = False
    ParentColor = False
    ParentFont = False
    Properties.Alignment.Horz = taLeftJustify
    Style.BorderStyle = ebsSingle
    Style.Color = clGray
    Style.Font.Charset = THAI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.Shadow = False
    Style.TextColor = clYellow
    Style.IsFontAssigned = True
    Height = 24
    Width = 328
  end
  object cdsInfo: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select '#9'a.INSCRN,a.INSITM,a.INSDUE,a.INSIAM,a.INSVAM,a.INSIRA,'#9'c' +
      'ase'#9#9'when b.CONPER<=36 then'#9#9' convert(decimal(18,2),(a.INSIAM*0.' +
      '05)) '#9' else 0 '#9'end as WHT from HPTINS00 a left join HPMCON00 b o' +
      'n a.INSCRN=b.CONRUN where '#9'a.INSCRN='#39'8100595'#39#9'and a.INSITM>0orde' +
      'r by a.INSITM'
    Params = <>
    ProviderName = 'sqlDsp'
    RemoteServer = frmMainProgram.connBroker
    Left = 128
    Top = 336
  end
  object dsInfo: TDataSource
    DataSet = cdsInfo
    Left = 176
    Top = 336
  end
  object SockCon1: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '127.0.0.1'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = False
    AutoProv = False
    Encoded = False
    AutoConnect = False
    Deploy = False
    Left = 384
    Top = 152
  end
end
