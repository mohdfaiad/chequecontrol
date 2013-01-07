object frmPaymentInfo: TfrmPaymentInfo
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'Payment Info'
  ClientHeight = 509
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  ExplicitWidth = 320
  ExplicitHeight = 240
  DesignSize = (
    764
    509)
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 762
    Height = 502
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
    ExplicitWidth = 657
    ExplicitHeight = 449
  end
  object Label1: TLabel
    Left = 32
    Top = 470
    Width = 73
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = '0 = Payment'
    ExplicitTop = 412
  end
  object Label2: TLabel
    Left = 120
    Top = 470
    Width = 76
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = '3 = Pendding'
    ExplicitTop = 412
  end
  object Label3: TLabel
    Left = 8
    Top = 451
    Width = 36
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = 'Status'
    ExplicitTop = 393
  end
  object cxGrid1: TcxGrid
    Left = 4
    Top = 5
    Width = 754
    Height = 439
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    ExplicitWidth = 679
    ExplicitHeight = 381
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = _ds
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1No: TcxGridDBColumn
        DataBinding.FieldName = 'No'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1Goods: TcxGridDBColumn
        DataBinding.FieldName = 'Goods'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1Vat: TcxGridDBColumn
        DataBinding.FieldName = 'Vat'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1Receive: TcxGridDBColumn
        DataBinding.FieldName = 'Receive'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1Vat_1: TcxGridDBColumn
        Caption = 'Vat Receive'
        DataBinding.FieldName = 'Vat_1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 94
      end
      object cxGrid1DBTableView1Statble: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'Statble'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 82
      end
      object cxGrid1DBTableView1Type: TcxGridDBColumn
        DataBinding.FieldName = 'Type'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 198
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object SockCon: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '127.0.0.1'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = False
    AutoConnect = False
    Deploy = False
    Left = 560
    Top = 400
  end
  object _cds: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select 1  as [No],1000 as Goods,700 as Vat,1000 as [Receive],700' +
      ' as Vat ,0 as Statble,'#39'Recevied'#39' as [Type] union select 2  as [N' +
      'o],1000 as Goods,700 as Vat,1000 as [Receive],700 as Vat ,0 as S' +
      'tatble,'#39'Recevied'#39' as [Type] union select 3  as [No],1000 as Good' +
      's,700 as Vat,1000 as [Receive],700 as Vat ,0 as Statble,'#39'Recevie' +
      'd'#39' as [Type] union select 4  as [No],1000 as Goods,700 as Vat,30' +
      '0 as [Receive],210 as Vat ,0 as Statble,'#39'Recevied'#39' as [Type] uni' +
      'on select 5  as [No],1000 as Goods,700 as Vat,0 as [Receive],0 a' +
      's Vat ,3 as Statble,'#39'PDC(10/5/2012)'#39' as [Type] union select 6  a' +
      's [No],1000 as Goods,700 as Vat,0 as [Receive],0 as Vat ,3 as St' +
      'atble,'#39'PDC(10/6/2012)'#39' as [Type] union select 7  as [No],1000 as' +
      ' Goods,700 as Vat,0 as [Receive],0 as Vat ,3 as Statble,'#39'PDC(10/' +
      '7/2012)'#39' as [Type] union select 8  as [No],1000 as Goods,700 as ' +
      'Vat,0 as [Receive],0 as Vat ,3 as Statble,'#39'PDC(10/8/2012)'#39' as [T' +
      'ype] union select 9  as [No],1000 as Goods,700 as Vat,0 as [Rece' +
      'ive],0 as Vat ,3 as Statble,'#39'-'#39' as [Type] union select 10 as [No' +
      '],1000 as Goods,700 as Vat,0 as [Receive],0 as Vat ,3 as Statble' +
      ','#39'-'#39' as [Type] '
    Params = <>
    ProviderName = '_cds'
    RemoteServer = SockCon
    Left = 597
    Top = 400
    object _cdsNo: TIntegerField
      FieldName = 'No'
    end
    object _cdsGoods: TIntegerField
      FieldName = 'Goods'
    end
    object _cdsVat: TIntegerField
      FieldName = 'Vat'
    end
    object _cdsReceive: TIntegerField
      FieldName = 'Receive'
    end
    object _cdsVat_1: TIntegerField
      FieldName = 'Vat_1'
    end
    object _cdsStatble: TIntegerField
      FieldName = 'Statble'
    end
    object _cdsType: TStringField
      FieldName = 'Type'
      Size = 14
    end
  end
  object _ds: TDataSource
    DataSet = _cds
    Left = 632
    Top = 400
  end
end
