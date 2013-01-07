object E002FrmTake: TE002FrmTake
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'E002FrmTake'
  ClientHeight = 157
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pa_status: TPanel
    Left = 0
    Top = 0
    Width = 623
    Height = 157
    Align = alClient
    AutoSize = True
    TabOrder = 0
    ExplicitWidth = 714
    object lbl1: TLabel
      Left = 61
      Top = 34
      Width = 76
      Height = 18
      Caption = #3619#3627#3633#3626#3626#3606#3634#3609#3632' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 61
      Top = 64
      Width = 79
      Height = 18
      Caption = #3626#3606#3634#3609#3632#3652#3607#3618' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 61
      Top = 90
      Width = 96
      Height = 18
      Caption = #3626#3606#3634#3609#3632#3629#3633#3591#3585#3620#3625' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Save: TcxButton
      Left = 380
      Top = 126
      Width = 75
      Height = 24
      Caption = 'Save_Add'
      TabOrder = 0
      OnClick = SaveClick
      LookAndFeel.Kind = lfFlat
    end
    object Cancel: TcxButton
      Left = 541
      Top = 125
      Width = 75
      Height = 24
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = CancelClick
      LookAndFeel.Kind = lfFlat
    end
    object StsCode: TcxTextEdit
      Left = 163
      Top = 24
      ParentFont = False
      Properties.MaxLength = 3
      Properties.OnChange = StsCodePropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      OnExit = StsCodeExit
      OnKeyPress = StsCodeKeyPress
      Width = 137
    end
    object StsNameTh: TcxTextEdit
      Left = 163
      Top = 56
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 454
    end
    object StsNameEn: TcxTextEdit
      Left = 163
      Top = 86
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 454
    end
    object Add_exit: TcxButton
      Left = 461
      Top = 125
      Width = 75
      Height = 25
      Caption = 'Save_Exit'
      TabOrder = 5
      OnClick = Add_exitClick
      LookAndFeel.Kind = lfFlat
    end
  end
end
