inherited frmGenReport: TfrmGenReport
  Caption = 'Report  Generator'
  ClientHeight = 315
  ClientWidth = 515
  Font.Height = -15
  OnShow = FormShow
  ExplicitWidth = 523
  ExplicitHeight = 342
  PixelsPerInch = 96
  TextHeight = 18
  inherited Panel1: TPanel
    Width = 515
    Height = 315
    TabOrder = 1
    ExplicitWidth = 515
    ExplicitHeight = 315
    inherited btnCancel: TcxButton
      Left = 564
      Top = 123
      TabOrder = 1
      ExplicitLeft = 564
      ExplicitTop = 123
    end
    inherited btnOK: TcxButton
      Left = 383
      Top = 14
      Width = 124
      Height = 27
      Anchors = [akTop, akRight]
      TabOrder = 2
      OnClick = btnOKClick
      ExplicitLeft = 383
      ExplicitTop = 14
      ExplicitWidth = 124
      ExplicitHeight = 27
    end
    object ListView1: TListViewEx
      Left = 10
      Top = 14
      Width = 367
      Height = 283
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clBtnFace
      Columns = <
        item
          Width = 150
        end
        item
          Width = 150
        end
        item
        end>
      ColumnClick = False
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.ItemData = {
        01780000000400000000000000FFFFFFFFFFFFFFFF0000000000000000046100
        61006100610000000000FFFFFFFFFFFFFFFF0000000000000000046200620062
        00620000000000FFFFFFFFFFFFFFFF0000000000000000046300630063006300
        00000000FFFFFFFFFFFFFFFF0000000000000000046400640064006400}
      OwnerDraw = True
      ParentFont = False
      ShowColumnHeaders = False
      TabOrder = 0
      ViewStyle = vsReport
      IncRowHeight = 7
    end
    object Button2: TButton
      Left = 432
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 3
      Visible = False
      OnClick = Button2Click
    end
    object DBGrid1: TDBGrid
      Left = 17
      Top = 150
      Width = 480
      Height = 147
      Anchors = [akLeft, akRight, akBottom]
      DataSource = DataSource1
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
    end
    object btnClose: TcxButton
      Left = 383
      Top = 47
      Width = 124
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnCloseClick
      LookAndFeel.Kind = lfFlat
    end
    object Button3: TButton
      Left = 400
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Button3'
      TabOrder = 6
      Visible = False
      OnClick = Button3Click
    end
  end
  object Button1: TButton [1]
    Left = 432
    Top = 220
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Button1'
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  inherited frxReport: TfrxReport
    OldStyleProgress = True
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  inherited cdsRepTemp: TClientDataSet
    Tag = 99
    Left = 392
    Top = 96
  end
  inherited cdsReport: TClientDataSet
    Left = 240
    Top = 88
  end
  inherited cdsReport1: TClientDataSet
    Left = 176
    Top = 96
  end
  inherited SockCon: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvrREP'
    Address = '127.0.0.1'
  end
  object cdsParamsList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsParamsList'
    RemoteServer = SockCon
    Left = 120
    Top = 160
  end
  object cdsParamsObj: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsParamsObj'
    RemoteServer = SockCon
    Left = 200
    Top = 160
  end
  object cdsRec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsRec'
    RemoteServer = SockCon
    Left = 192
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = cdsParamsObjValue
    Left = 144
    Top = 8
  end
  object cdsParamsObjValue: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsParamsObjValue'
    RemoteServer = SockCon
    Left = 200
    Top = 232
    object cdsParamsObjValueID: TIntegerField
      FieldName = 'ID'
    end
    object cdsParamsObjValueTYPE: TStringField
      FieldName = 'TYPE'
      Size = 30
    end
    object cdsParamsObjValueDESC: TStringField
      FieldName = 'DESC'
      Size = 200
    end
    object cdsParamsObjValueCODE: TStringField
      FieldName = 'CODE'
      Size = 30
    end
    object cdsParamsObjValueVALUE: TStringField
      FieldName = 'VALUE'
      Size = 80
    end
  end
  object ClientDataSet1: TClientDataSet
    Tag = 99
    Aggregates = <>
    CommandText = 'select * from hppdta.hpmcon00 fetch first 2 rows only'
    Params = <>
    ProviderName = 'DSP1'
    RemoteServer = SockCon
    Left = 360
    Top = 256
  end
end
