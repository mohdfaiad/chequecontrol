object frmReportBase: TfrmReportBase
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'frmReportBase'
  ClientHeight = 174
  ClientWidth = 333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 333
    Height = 174
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = 'Panel1'
    TabOrder = 0
    DesignSize = (
      329
      170)
    object btnCancel: TcxButton
      Left = 231
      Top = 122
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      ExplicitLeft = 243
      ExplicitTop = 134
    end
    object btnOK: TcxButton
      Left = 150
      Top = 122
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfFlat
      ExplicitLeft = 162
      ExplicitTop = 134
    end
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 304
    Top = 152
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 304
    Top = 152
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 304
    Top = 152
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 304
    Top = 152
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 304
    Top = 152
  end
  object frxChartObject1: TfrxChartObject
    Left = 304
    Top = 152
  end
  object cdsReport4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsReport4'
    RemoteServer = SockCon
    Left = 272
    Top = 72
  end
  object cdsReport2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsReport2'
    RemoteServer = SockCon
    Left = 272
    Top = 72
  end
  object cdsReport3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsReport3'
    RemoteServer = SockCon
    Left = 272
    Top = 72
  end
  object cdsReport5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsReport5'
    RemoteServer = SockCon
    Left = 272
    Top = 72
  end
  object frxDBXComponents1: TfrxDBXComponents
    Left = 424
    Top = 136
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 424
    Top = 136
  end
  object frxBDEComponents1: TfrxBDEComponents
    DefaultSession = 'Default'
    Left = 424
    Top = 136
  end
  object frxIBXComponents1: TfrxIBXComponents
    Left = 424
    Top = 136
  end
  object frxADOComponents1: TfrxADOComponents
    Left = 304
    Top = 152
  end
  object frxReport: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40930.735662835650000000
    ReportOptions.LastChange = 40930.735662835650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 312
    Top = 64
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    DataSet = cdsReport5
    BCDToCurrency = False
    Left = 272
    Top = 24
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = cdsReport2
    BCDToCurrency = False
    Left = 272
    Top = 24
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    DataSet = cdsReport
    BCDToCurrency = False
    Left = 272
    Top = 24
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSet = cdsReport3
    BCDToCurrency = False
    Left = 272
    Top = 24
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = cdsReport1
    BCDToCurrency = False
    Left = 272
    Top = 24
  end
  object cdsRepTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsRepTemp'
    RemoteServer = SockCon
    Left = 272
    Top = 72
  end
  object cdsReport: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsReport'
    RemoteServer = SockCon
    Left = 272
    Top = 72
  end
  object cdsReport1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsReport1'
    RemoteServer = SockCon
    Left = 272
    Top = 72
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    DataSet = cdsReport4
    BCDToCurrency = False
    Left = 272
    Top = 24
  end
  object SockCon: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '192.168.2.22'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = False
    AutoConnect = False
    Deploy = False
    Left = 88
    Top = 48
  end
end
