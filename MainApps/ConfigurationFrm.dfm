object frmConfiguration: TfrmConfiguration
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Configuration..'
  ClientHeight = 179
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    345
    179)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 345
    Height = 179
    Align = alClient
    Shape = bsFrame
    ExplicitWidth = 384
    ExplicitHeight = 211
  end
  object Label1: TLabel
    Left = 25
    Top = 14
    Width = 38
    Height = 13
    Caption = 'Server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 39
    Top = 60
    Width = 24
    Height = 13
    Caption = 'Port'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 21
    Top = 89
    Width = 42
    Height = 18
    Caption = 'SERVER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 9
    Top = 39
    Width = 58
    Height = 13
    Caption = 'HostName'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnReConnect: TButton
    Left = 174
    Top = 146
    Width = 83
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnReConnectClick
  end
  object btnCancel: TButton
    Left = 259
    Top = 146
    Width = 83
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object txtServerName: TEdit
    Left = 69
    Top = 12
    Width = 249
    Height = 21
    Font.Charset = THAI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object edPort: TEdit
    Left = 69
    Top = 61
    Width = 249
    Height = 21
    Enabled = False
    Font.Charset = THAI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    Text = '19005'
  end
  object edHostName: TEdit
    Left = 69
    Top = 35
    Width = 249
    Height = 21
    Font.Charset = THAI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object ckUsingIP: TCheckBox
    Left = 69
    Top = 112
    Width = 231
    Height = 17
    Caption = 'Using IP to Connect'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object cmbServer: TComboBox
    Left = 69
    Top = 85
    Width = 249
    Height = 21
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 6
    Items.Strings = (
      'PRODUCTION SERVER'
      'TEST SERVER'
      'REPORT SERVER')
  end
end
