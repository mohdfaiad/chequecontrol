object Form_Ex_take: TForm_Ex_take
  Left = 0
  Top = 0
  Caption = 'Form_Ex_take'
  ClientHeight = 166
  ClientWidth = 520
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pa_ex_take: TPanel
    Left = 0
    Top = 0
    Width = 520
    Height = 166
    Align = alClient
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
      Top = 19
      Width = 58
      Height = 18
      Caption = #3627#3617#3634#3618#3648#3621#3586
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 2
      Top = 59
      Width = 120
      Height = 18
      Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3616#3634#3625#3634#3652#3607#3618
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 2
      Top = 83
      Width = 137
      Height = 18
      Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Ex_thai: TDBEdit
      Left = 145
      Top = 56
      Width = 353
      Height = 21
      DataField = 'Ex_Thai'
      DataSource = dsrc1
      TabOrder = 0
    end
    object Ex_English: TDBEdit
      Left = 145
      Top = 83
      Width = 353
      Height = 21
      DataField = 'Ex_English'
      DataSource = dsrc1
      TabOrder = 1
    end
    object Cancel: TcxButton
      Left = 272
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = CancelClick
    end
    object Save: TcxButton
      Left = 152
      Top = 127
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 3
      OnClick = SaveClick
    end
    object Ex_Number: TcxDBMaskEdit
      Left = 83
      Top = 16
      DataBinding.DataField = 'Ex_Number'
      DataBinding.DataSource = dsrc1
      TabOrder = 4
      Width = 169
    end
  end
  object dsrc1: TDSource
    AutoState = False
    DisableEventsOnLoading = False
    Left = 384
    Top = 128
  end
end
