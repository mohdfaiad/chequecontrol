object FrmU002ViewHis: TFrmU002ViewHis
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'View Item History'
  ClientHeight = 155
  ClientWidth = 406
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
  object PaneHis: TPanel
    Left = 0
    Top = 0
    Width = 406
    Height = 155
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 392
    ExplicitHeight = 141
    object btnOK: TcxButton
      Left = 331
      Top = 130
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnOKClick
      LookAndFeel.Kind = lfFlat
    end
    object cxLabel1: TcxLabel
      Left = 1
      Top = 16
      AutoSize = False
      Caption = 'From bank '
      ParentColor = False
      ParentFont = False
      Style.Color = 5197647
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 25
      Width = 90
    end
    object cxLabel3: TcxLabel
      Left = 1
      Top = 38
      AutoSize = False
      Caption = 'Leasing'
      ParentColor = False
      ParentFont = False
      Style.Color = 5197647
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 25
      Width = 90
    end
    object cxLabel2: TcxLabel
      Left = 0
      Top = 60
      AutoSize = False
      Caption = 'Hire purchase'
      ParentColor = False
      ParentFont = False
      Style.Color = 5197647
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 25
      Width = 91
    end
    object cxLabel4: TcxLabel
      Left = 1
      Top = 82
      AutoSize = False
      Caption = 'Error'
      ParentColor = False
      ParentFont = False
      Style.Color = 5197647
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 25
      Width = 90
    end
    object cxLabel5: TcxLabel
      Left = 194
      Top = 16
      AutoSize = False
      Caption = 'Amount'
      ParentColor = False
      ParentFont = False
      Style.Color = 5197647
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 25
      Width = 88
    end
    object cxLabel6: TcxLabel
      Left = 194
      Top = 38
      AutoSize = False
      Caption = 'Amount '
      ParentColor = False
      ParentFont = False
      Style.Color = 5197647
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 25
      Width = 88
    end
    object cxLabel9: TcxLabel
      Left = 194
      Top = 60
      AutoSize = False
      Caption = 'Amount'
      ParentColor = False
      ParentFont = False
      Style.Color = 5197647
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 25
      Width = 88
    end
    object cxLabel10: TcxLabel
      Left = 194
      Top = 83
      AutoSize = False
      Caption = 'Amount'
      ParentColor = False
      ParentFont = False
      Style.Color = 5197647
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 25
      Width = 88
    end
    object CQMITS: TcxDBTextEdit
      Left = 90
      Top = 15
      DataBinding.DataSource = DHis
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clDefault
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 9
      Width = 104
    end
    object CQMHPS: TcxDBTextEdit
      Left = 90
      Top = 61
      DataBinding.DataSource = DHis
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clDefault
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 10
      Width = 104
    end
    object CQMERR: TcxDBTextEdit
      Left = 90
      Top = 84
      DataBinding.DataSource = DHis
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clDefault
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 11
      Width = 104
    end
    object CQMLSS: TcxDBTextEdit
      Left = 90
      Top = 38
      DataBinding.DataSource = DHis
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clDefault
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 12
      Width = 104
    end
    object CQMITA: TcxDBTextEdit
      Left = 280
      Top = 16
      DataBinding.DataSource = DHis
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clDefault
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 13
      Width = 104
    end
    object CQMHPA: TcxDBTextEdit
      Left = 280
      Top = 62
      DataBinding.DataSource = DHis
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clDefault
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 14
      Width = 104
    end
    object CQMERA: TcxDBTextEdit
      Left = 280
      Top = 85
      DataBinding.DataSource = DHis
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clDefault
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 15
      Width = 104
    end
    object CQMLSA: TcxDBTextEdit
      Left = 280
      Top = 39
      DataBinding.DataSource = DHis
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clDefault
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 16
      Width = 104
    end
  end
  object DHis: TDataSource
    DataSet = DMU002Main.His
    Left = 312
    Top = 112
  end
  object CAFHis: TCxAutoFields
    LocaleFont.Charset = DEFAULT_CHARSET
    LocaleFont.Color = clWindowText
    LocaleFont.Height = -11
    LocaleFont.Name = 'MS Sans Serif'
    LocaleFont.Style = []
    UseLocale = False
    Container = PaneHis
    Left = 272
    Top = 112
  end
end
