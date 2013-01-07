object FormMAIN: TFormMAIN
  Left = 0
  Top = 0
  Caption = 'Leasing Cheque Control System v1.1.2'
  ClientHeight = 552
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 195
    Top = 0
    Height = 533
    Align = alLeft
    MinSize = 1
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
    ExplicitLeft = 196
    ExplicitTop = -6
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 533
    Width = 994
    Height = 19
    Panels = <
      item
        Text = 'User : A'
        Width = 300
      end
      item
        Text = 'Main Menu'
        Width = 300
      end>
  end
  object MAINPANE: TJvPanel
    Left = 205
    Top = 0
    Width = 789
    Height = 533
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    OnResize = MAINPANEResize
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 195
    Height = 533
    HorzScrollBar.Smooth = True
    HorzScrollBar.Style = ssFlat
    VertScrollBar.Increment = 47
    VertScrollBar.Style = ssFlat
    Align = alLeft
    BevelEdges = []
    BevelKind = bkSoft
    BorderStyle = bsNone
    Color = 7425280
    Padding.Left = 5
    Padding.Right = 5
    Padding.Bottom = 1
    ParentColor = False
    TabOrder = 2
    object MNUGRP1: TJvXPBar
      Tag = 1
      Left = 5
      Top = 0
      Width = 185
      Height = 35
      DotNetHighlighting = True
      Caption = 'Daily Operations'
      Collapsed = True
      Colors.BorderColor = clNone
      Colors.BodyColor = clWhite
      Colors.BodyBorderColor = clGray
      Colors.GradientFrom = 13945028
      Colors.GradientTo = 13153201
      Colors.SeparatorColor = 14474460
      Items = <
        item
          Caption = 'Load Deposit Cheque'
          Name = 'btnLoadDeposit'
        end
        item
          Caption = 'Receive Cheque'
          Name = 'btnRecevieCheque'
        end
        item
          Caption = 'Load Result Cheque'
          Name = 'btnLoadResult'
        end
        item
          Caption = 'Repayin Cheque'
          Enabled = False
        end
        item
          Caption = 'Edit Cheque'
          Enabled = False
        end
        item
          Caption = 'Search Cheque'
          Enabled = False
        end
        item
          Caption = 'Send E-mail'
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 9646848
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = 10303232
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      HotTrackColor = clMaroon
      OwnerDraw = False
      ShowItemFrame = True
      RoundedItemFrame = 0
      Align = alTop
      ParentFont = False
    end
    object JvXPBar1: TJvXPBar
      Left = 5
      Top = 140
      Width = 185
      Height = 63
      Caption = 'System'
      Colors.BorderColor = clNone
      Colors.BodyColor = clWhite
      Colors.BodyBorderColor = clGray
      Colors.GradientFrom = 13945028
      Colors.GradientTo = 13153201
      Colors.SeparatorColor = 14474460
      Items = <
        item
          Caption = 'Exit'
          OnClick = JvXPBar1Items0Click
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 9646848
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = 10303232
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      HotTrackColor = clMaroon
      OwnerDraw = False
      ShowItemFrame = True
      RoundedItemFrame = 0
      Align = alTop
      ParentFont = False
    end
    object MNUGRP3: TJvXPBar
      Tag = 4
      Left = 5
      Top = 105
      Width = 185
      Height = 35
      Caption = 'Configuration'
      Collapsed = True
      Colors.BorderColor = clNone
      Colors.BodyColor = clWhite
      Colors.BodyBorderColor = clGray
      Colors.GradientFrom = 13945028
      Colors.GradientTo = 13153201
      Colors.SeparatorColor = 14474460
      Items = <
        item
          Caption = 'Tax Rate/Penalty'
        end
        item
          Caption = 'Bank Accounts'
        end
        item
          Caption = 'Retrun Cheque Reason'
        end
        item
          Caption = 'User Accounts'
        end
        item
          Caption = 'Access Control'
        end
        item
          Caption = 'Documents Type'
          Enabled = False
        end
        item
          Caption = 'Cheque Status'
        end
        item
          Caption = 'SMTP Setting'
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 9646848
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = 10303232
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      HotTrackColor = clMaroon
      OwnerDraw = False
      ShowItemFrame = True
      RoundedItemFrame = 0
      Align = alTop
      ParentFont = False
    end
    object MNUGRP4: TJvXPBar
      Tag = 3
      Left = 5
      Top = 70
      Width = 185
      Height = 35
      Caption = 'Cheque Reports'
      Collapsed = True
      Colors.BorderColor = clNone
      Colors.BodyColor = clWhite
      Colors.BodyBorderColor = clGray
      Colors.GradientFrom = 13945028
      Colors.GradientTo = 13153201
      Colors.SeparatorColor = 14474460
      Items = <
        item
          Caption = 'Daily Receive Cheque'
          Enabled = False
        end
        item
          Caption = 'Payin Report'
          Enabled = False
        end
        item
          Caption = 'Passed Cheque'
          Enabled = False
        end
        item
          Caption = 'Returned Cheque'
          Enabled = False
        end
        item
          Caption = 'Canceled Cheque'
          Enabled = False
        end
        item
          Caption = 'Borrowing Cheque'
          Enabled = False
        end
        item
          Caption = 'Bank Expended'
          Enabled = False
        end
        item
          Caption = 'Penalty Report'
          Enabled = False
        end
        item
          Caption = 'Daily Deposit Reconcile'
          Enabled = False
        end
        item
          Caption = 'Daily Reconcile Passed Cheque'
          Enabled = False
        end
        item
          Caption = 'Recording Cheque Report (for GL)'
          Enabled = False
        end
        item
          Caption = 'Monthly Custody Cheque Reconcile'
          Enabled = False
        end
        item
          Caption = 'User Activity Log'
          Enabled = False
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 9646848
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Grouped = True
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = 10303232
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      HotTrackColor = clMaroon
      OwnerDraw = False
      ShowItemFrame = True
      RoundedItemFrame = 0
      Align = alTop
      ParentFont = False
    end
    object MNUGRP2: TJvXPBar
      Tag = 2
      Left = 5
      Top = 35
      Width = 185
      Height = 35
      Caption = 'Strong Room'
      Collapsed = True
      Colors.BorderColor = clNone
      Colors.BodyColor = clWhite
      Colors.BodyBorderColor = clGray
      Colors.GradientFrom = 13945028
      Colors.GradientTo = 13153201
      Colors.SeparatorColor = 14474460
      Items = <
        item
          Caption = 'Borrow/Cancel Cheque'
          Checked = True
          Enabled = False
        end
        item
          Caption = 'Reborrow Cheque'
          Checked = True
          Enabled = False
        end
        item
          Caption = 'Inactive/Reactive Cheque'
          Checked = True
          Enabled = False
        end
        item
          Caption = 'Maintanance Cheque'
          Checked = True
          Enabled = False
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 9646848
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = 10303232
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      HotTrackColor = clMaroon
      OwnerDraw = False
      ShowItemFrame = True
      RoundedItemFrame = 0
      Align = alTop
      ParentFont = False
    end
  end
  object ADOConn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sqlserver2008;Persist Security Info' +
      '=True;User ID=sa;Initial Catalog=LLSPDTA;Data Source=.\SQLExpres' +
      's'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 248
    Top = 40
  end
  object DCOM: TDCOMConnection
    ServerGUID = '{E4A5AC17-E115-4A40-9D5E-CA575FC7ADD4}'
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    ComputerName = '127.0.0.1'
    Left = 248
    Top = 96
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 248
    Top = 216
  end
  object cdsMnu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlDsp'
    RemoteServer = SocketConn
    Left = 376
    Top = 128
  end
  object SocketConn: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '192.168.1.211'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = False
    AutoConnect = False
    Deploy = False
    Left = 248
    Top = 152
  end
end
