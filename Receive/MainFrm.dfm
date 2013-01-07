object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 391
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 205
    Width = 24
    Height = 13
    Caption = 'TEST'
  end
  object Label2: TLabel
    Left = 48
    Top = 224
    Width = 36
    Height = 13
    Caption = #3607#3604#3626#3629#3610
  end
  object Button1: TButton
    Left = 208
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 88
    Width = 705
    Height = 89
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsp: TDataSetProvider
    DataSet = ADODataSet
    Options = [poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 96
    Top = 264
  end
  object cds1: TClientDataSet
    Aggregates = <>
    CommandText = 'select *   FROM Branch'
    Params = <>
    ProviderName = 'dsp'
    Left = 128
    Top = 264
  end
  object DataSource1: TDataSource
    DataSet = cds1
    Left = 160
    Top = 264
  end
  object ADODataSet: TADODataSet
    Parameters = <>
    Left = 56
    Top = 264
  end
end
