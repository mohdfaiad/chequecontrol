object frmFixDuplicateRow: TfrmFixDuplicateRow
  Left = 0
  Top = 0
  Caption = 'frmFixDuplicateRow'
  ClientHeight = 413
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 874
    Height = 413
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnProcess: TButton
    Left = 791
    Top = 8
    Width = 75
    Height = 25
    Caption = 'btnProcess'
    TabOrder = 1
    OnClick = btnProcessClick
  end
  object cdsTarget: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from CQDM008'
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 208
    Top = 24
    object cdsTargetCQMACT: TStringField
      FieldName = 'CQMACT'
      FixedChar = True
      Size = 1
    end
    object cdsTargetCQMSTS: TStringField
      FieldName = 'CQMSTS'
      FixedChar = True
      Size = 1
    end
    object cdsTargetCQMABR: TStringField
      FieldName = 'CQMABR'
      Required = True
    end
    object cdsTargetCQMGRP: TStringField
      FieldName = 'CQMGRP'
      Required = True
    end
    object cdsTargetCQMCDE: TStringField
      FieldName = 'CQMCDE'
      Required = True
    end
    object cdsTargetCQMNME: TStringField
      FieldName = 'CQMNME'
      Size = 80
    end
    object cdsTargetCQMDES: TStringField
      FieldName = 'CQMDES'
      Size = 150
    end
    object cdsTargetCQMVA1: TStringField
      FieldName = 'CQMVA1'
      Size = 100
    end
    object cdsTargetCQMVA2: TStringField
      FieldName = 'CQMVA2'
      Size = 100
    end
    object cdsTargetCQMVA3: TStringField
      FieldName = 'CQMVA3'
      Size = 100
    end
    object cdsTargetCQMVA4: TStringField
      FieldName = 'CQMVA4'
      Size = 100
    end
    object cdsTargetCQMVA5: TStringField
      FieldName = 'CQMVA5'
      Size = 100
    end
    object cdsTargetCQMNM1: TFMTBCDField
      FieldName = 'CQMNM1'
      Precision = 8
      Size = 0
    end
    object cdsTargetCQMNM2: TFMTBCDField
      FieldName = 'CQMNM2'
      Precision = 8
      Size = 0
    end
    object cdsTargetCQMNM3: TFMTBCDField
      FieldName = 'CQMNM3'
      Precision = 8
      Size = 0
    end
    object cdsTargetCQMNM4: TFMTBCDField
      FieldName = 'CQMNM4'
      Precision = 8
      Size = 0
    end
    object cdsTargetCQMNM5: TFMTBCDField
      FieldName = 'CQMNM5'
      Precision = 8
      Size = 0
    end
    object cdsTargetCQMETD: TSQLTimeStampField
      FieldName = 'CQMETD'
    end
    object cdsTargetCQMETW: TStringField
      FieldName = 'CQMETW'
      Size = 60
    end
    object cdsTargetCQMETU: TStringField
      FieldName = 'CQMETU'
    end
    object cdsTargetCQMMTD: TSQLTimeStampField
      FieldName = 'CQMMTD'
    end
    object cdsTargetCQMMTU: TStringField
      FieldName = 'CQMMTU'
    end
    object cdsTargetCQMMTW: TStringField
      FieldName = 'CQMMTW'
      Size = 60
    end
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbxmss30.dll'
    LoginPrompt = False
    Params.Strings = (
      'SchemaOverride=sa.dbo'
      'DriverName=MSSQL'
      'HostName=192.168.2.22'
      'DataBase=LLSPDTA'
      'User_Name=sa'
      'Password=a12345*'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=False'
      'Prepare SQL=False')
    VendorLib = 'oledb'
    Connected = True
    Left = 48
    Top = 16
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from CQDM008'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 72
    Top = 112
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 384
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = cdsTarget
    Left = 488
    Top = 56
  end
  object cdsSrc: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from CQDM008'
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 216
    Top = 168
    object cdsSrcCQMACT: TStringField
      FieldName = 'CQMACT'
      FixedChar = True
      Size = 1
    end
    object cdsSrcCQMSTS: TStringField
      FieldName = 'CQMSTS'
      FixedChar = True
      Size = 1
    end
    object cdsSrcCQMABR: TStringField
      FieldName = 'CQMABR'
      Required = True
    end
    object cdsSrcCQMGRP: TStringField
      FieldName = 'CQMGRP'
      Required = True
    end
    object cdsSrcCQMCDE: TStringField
      FieldName = 'CQMCDE'
      Required = True
    end
    object cdsSrcCQMNME: TStringField
      FieldName = 'CQMNME'
      Size = 80
    end
    object cdsSrcCQMDES: TStringField
      FieldName = 'CQMDES'
      Size = 150
    end
    object cdsSrcCQMVA1: TStringField
      FieldName = 'CQMVA1'
      Size = 100
    end
    object cdsSrcCQMVA2: TStringField
      FieldName = 'CQMVA2'
      Size = 100
    end
    object cdsSrcCQMVA3: TStringField
      FieldName = 'CQMVA3'
      Size = 100
    end
    object cdsSrcCQMVA4: TStringField
      FieldName = 'CQMVA4'
      Size = 100
    end
    object cdsSrcCQMVA5: TStringField
      FieldName = 'CQMVA5'
      Size = 100
    end
    object cdsSrcCQMNM1: TFMTBCDField
      FieldName = 'CQMNM1'
      Precision = 8
      Size = 0
    end
    object cdsSrcCQMNM2: TFMTBCDField
      FieldName = 'CQMNM2'
      Precision = 8
      Size = 0
    end
    object cdsSrcCQMNM3: TFMTBCDField
      FieldName = 'CQMNM3'
      Precision = 8
      Size = 0
    end
    object cdsSrcCQMNM4: TFMTBCDField
      FieldName = 'CQMNM4'
      Precision = 8
      Size = 0
    end
    object cdsSrcCQMNM5: TFMTBCDField
      FieldName = 'CQMNM5'
      Precision = 8
      Size = 0
    end
    object cdsSrcCQMETD: TSQLTimeStampField
      FieldName = 'CQMETD'
    end
    object cdsSrcCQMETW: TStringField
      FieldName = 'CQMETW'
      Size = 60
    end
    object cdsSrcCQMETU: TStringField
      FieldName = 'CQMETU'
    end
    object cdsSrcCQMMTD: TSQLTimeStampField
      FieldName = 'CQMMTD'
    end
    object cdsSrcCQMMTU: TStringField
      FieldName = 'CQMMTU'
    end
    object cdsSrcCQMMTW: TStringField
      FieldName = 'CQMMTW'
      Size = 60
    end
  end
end
