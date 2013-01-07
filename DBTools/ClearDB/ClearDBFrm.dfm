object frmClearDB: TfrmClearDB
  Left = 0
  Top = 0
  Caption = 'DB Tools (Celar Receive Data)'
  ClientHeight = 376
  ClientWidth = 948
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 8
    Width = 55
    Height = 13
    Caption = 'CONTRACT'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 948
    Height = 33
    Align = alTop
    Shape = bsBottomLine
  end
  object Splitter1: TSplitter
    Left = 0
    Top = 256
    Width = 948
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 170
    ExplicitWidth = 206
  end
  object Button1: TButton
    Left = 334
    Top = 2
    Width = 121
    Height = 28
    Caption = 'Delete'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edContract: TEdit
    Left = 80
    Top = 4
    Width = 248
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 461
    Top = 2
    Width = 121
    Height = 28
    Caption = 'Clear ALL'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 948
    Height = 223
    Align = alTop
    DataSource = ds1
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 259
    Width = 948
    Height = 117
    Align = alClient
    DataSource = ds2
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 621
    Top = 2
    Width = 121
    Height = 28
    Caption = 'Refresh'
    TabOrder = 5
    OnClick = Button3Click
  end
  object SockCon: TSockCon
    Housed = False
    AutoProv = False
    Encoded = False
    AutoConnect = False
    Deploy = False
    Left = 192
    Top = 65528
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = SockCon
    Left = 544
    Top = 8
  end
  object ds1: TDataSource
    DataSet = cds1
    Left = 344
    Top = 104
  end
  object cds1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select CQMTNO,CQMDNO,CQMBNK,CQMBBR,CQMCNO,CQMDTE,CQMAMT,CQMCSN,C' +
      'QMITM from CQDM007'
    Params = <>
    RemoteServer = SockCon
    AfterScroll = cds1AfterScroll
    Left = 400
    Top = 104
  end
  object cds2: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = SockCon
    AfterScroll = cds2AfterScroll
    Left = 400
    Top = 160
  end
  object ds2: TDataSource
    DataSet = cds2
    Left = 344
    Top = 160
  end
end
