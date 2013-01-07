object Q001FrmMC: TQ001FrmMC
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Q001MCForm'
  ClientHeight = 555
  ClientWidth = 835
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 555
    Align = alLeft
    TabOrder = 0
    DesignSize = (
      433
      555)
    object cxLabel12: TcxLabel
      Left = 14
      Top = 5
      AutoSize = False
      Caption = 'Current'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.Color = clSkyBlue
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Height = 34
      Width = 107
    end
    object EOK: TcxButton
      Left = 208
      Top = 492
      Width = 88
      Height = 39
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfStandard
    end
    object ECan: TcxButton
      Left = 302
      Top = 492
      Width = 91
      Height = 39
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.Kind = lfStandard
    end
    object cxLabel14: TcxLabel
      Left = 14
      Top = 43
      AutoSize = False
      Caption = 'Bank Code'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel17: TcxLabel
      Left = 14
      Top = 74
      AutoSize = False
      Caption = 'Bank Name'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel18: TcxLabel
      Left = 14
      Top = 105
      AutoSize = False
      Caption = 'Branch Code'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel19: TcxLabel
      Left = 14
      Top = 136
      AutoSize = False
      Caption = 'Branch Name'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel20: TcxLabel
      Left = 14
      Top = 167
      AutoSize = False
      Caption = 'Bank Account'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel21: TcxLabel
      Left = 14
      Top = 199
      AutoSize = False
      Caption = 'Chq. Type'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel22: TcxLabel
      Left = 14
      Top = 230
      AutoSize = False
      Caption = 'Chq. Status'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel23: TcxLabel
      Left = 14
      Top = 261
      AutoSize = False
      Caption = 'Trade Date'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel24: TcxLabel
      Left = 14
      Top = 292
      AutoSize = False
      Caption = 'Chq. Date'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel25: TcxLabel
      Left = 14
      Top = 323
      AutoSize = False
      Caption = 'Chq. Amount'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel26: TcxLabel
      Left = 14
      Top = 355
      AutoSize = False
      Caption = 'Contract No.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel30: TcxLabel
      Left = 14
      Top = 386
      AutoSize = False
      Caption = 'Dealer Code'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel31: TcxLabel
      Left = 14
      Top = 417
      AutoSize = False
      Caption = 'Dealers Name'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel32: TcxLabel
      Left = 14
      Top = 448
      AutoSize = False
      Caption = 'Due Date'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxDBLabel4: TcxDBLabel
      Left = 130
      Top = 40
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxDBLabel5: TcxDBLabel
      Left = 130
      Top = 71
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxDBLabel6: TcxDBLabel
      Left = 130
      Top = 102
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxDBLabel7: TcxDBLabel
      Left = 130
      Top = 133
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxDBLabel8: TcxDBLabel
      Left = 130
      Top = 165
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxDBLabel9: TcxDBLabel
      Left = 130
      Top = 196
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxLabel33: TcxLabel
      Left = 130
      Top = 227
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxLabel34: TcxLabel
      Left = 130
      Top = 259
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxLabel35: TcxLabel
      Left = 130
      Top = 290
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxLabel36: TcxLabel
      Left = 130
      Top = 321
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxDBLabel10: TcxDBLabel
      Left = 130
      Top = 353
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxDBLabel11: TcxDBLabel
      Left = 130
      Top = 384
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxDBLabel12: TcxDBLabel
      Left = 130
      Top = 415
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
    object cxDBLabel13: TcxDBLabel
      Left = 130
      Top = 447
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 263
    end
  end
  object Panel2: TPanel
    Left = 433
    Top = 0
    Width = 402
    Height = 555
    Align = alClient
    TabOrder = 1
    DesignSize = (
      402
      555)
    object cxLabel1: TcxLabel
      Left = 14
      Top = 167
      AutoSize = False
      Caption = 'Bank Account'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel2: TcxLabel
      Left = 14
      Top = 43
      AutoSize = False
      Caption = 'Bank Code'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel3: TcxLabel
      Left = 14
      Top = 74
      AutoSize = False
      Caption = 'Bank Name'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel4: TcxLabel
      Left = 14
      Top = 292
      AutoSize = False
      Caption = 'Chq. Date'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel5: TcxLabel
      Left = 14
      Top = 261
      AutoSize = False
      Caption = 'Trade Date'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel6: TcxLabel
      Left = 14
      Top = 230
      AutoSize = False
      Caption = 'Chq. Status'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel7: TcxLabel
      Left = 14
      Top = 386
      AutoSize = False
      Caption = 'Dealer Code'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel8: TcxLabel
      Left = 14
      Top = 136
      AutoSize = False
      Caption = 'Branch Name'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel9: TcxLabel
      Left = 14
      Top = 199
      AutoSize = False
      Caption = 'Chq. Type'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel11: TcxLabel
      Left = 14
      Top = 105
      AutoSize = False
      Caption = 'Branch Code'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel13: TcxLabel
      Left = 14
      Top = 5
      AutoSize = False
      Caption = 'New'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.Color = clSkyBlue
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Height = 34
      Width = 107
    end
    object CQSBKC: TcxLabel
      Left = 130
      Top = 227
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 243
    end
    object CQSBRC: TcxLabel
      Left = 130
      Top = 259
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 243
    end
    object CQSCQC: TcxDBLabel
      Left = 130
      Top = 384
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 243
    end
    object CQSCQD: TcxDBLabel
      Left = 130
      Top = 165
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 243
    end
    object CQSCQN: TcxDBLabel
      Left = 130
      Top = 133
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 243
    end
    object CQSCQA: TcxDBLabel
      Left = 130
      Top = 196
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 243
    end
    object CQSCQT: TcxLabel
      Left = 130
      Top = 290
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 243
    end
    object cxLabel15: TcxLabel
      Left = 14
      Top = 448
      AutoSize = False
      Caption = 'Due Date'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxDBLabel1: TcxDBLabel
      Left = 130
      Top = 447
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 243
    end
    object cxLabel10: TcxLabel
      Left = 14
      Top = 417
      AutoSize = False
      Caption = 'Dealers Name'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object CQSPLO: TcxDBLabel
      Left = 130
      Top = 415
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 243
    end
    object cxLabel16: TcxLabel
      Left = 14
      Top = 323
      AutoSize = False
      Caption = 'Chq. Amount'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxLabel27: TcxLabel
      Left = 130
      Top = 321
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 243
    end
    object cxLabel28: TcxLabel
      Left = 14
      Top = 355
      AutoSize = False
      Caption = 'Contract No.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 110
    end
    object cxDBLabel2: TcxDBLabel
      Left = 130
      Top = 353
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 27
      Width = 243
    end
    object cxLabel29: TcxLabel
      Left = 14
      Top = 480
      AutoSize = False
      Caption = 'Remark'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 130
    end
    object cxMemo1: TcxMemo
      Left = 130
      Top = 480
      Anchors = [akLeft, akTop, akRight]
      Lines.Strings = (
        'cxMemo1')
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 27
      Height = 65
      Width = 243
    end
    object cxTextEdit1: TcxTextEdit
      Left = 130
      Top = 47
      TabOrder = 28
      Text = 'cxTextEdit1'
      Width = 121
    end
  end
end
