object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Leasing Cheque Control System.'
  ClientHeight = 552
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 193
    Top = 0
    Height = 533
    Align = alLeft
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
    ExplicitLeft = 504
    ExplicitTop = 248
    ExplicitHeight = 100
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 193
    Height = 533
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    Align = alLeft
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 191
      Height = 531
      VertScrollBar.Position = 45
      Align = alClient
      Color = clBtnShadow
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentColor = False
      TabOrder = 0
      object JvXPBar6: TJvXPBar
        Left = 5
        Top = -40
        Width = 160
        Height = 183
        Caption = 'Daily Operations'
        Colors.GradientFrom = 13945028
        Colors.GradientTo = 13153201
        Colors.SeparatorColor = 14474460
        Items = <
          item
            Caption = 'Load Deposit Cheque'
          end
          item
            Caption = 'Receive Cheque'
          end
          item
            Caption = 'Load Result Cheque'
          end
          item
            Caption = 'Repayin Cheque'
          end
          item
            Caption = 'Edit Cheque'
          end
          item
            Caption = 'Search Cheque'
          end
          item
            Caption = 'Send E-mail'
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15159552
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = 15159552
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        OwnerDraw = False
        ShowItemFrame = False
        RoundedItemFrame = 0
        Align = alTop
        ParentFont = False
      end
      object JvXPBar1: TJvXPBar
        Left = 5
        Top = 444
        Width = 160
        Height = 83
        Caption = 'System'
        Colors.GradientFrom = 13945028
        Colors.GradientTo = 13153201
        Colors.SeparatorColor = 14474460
        Items = <
          item
            Caption = 'Log Off'
          end
          item
            Caption = 'Exit'
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15159552
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = 15159552
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        OwnerDraw = False
        ShowItemFrame = False
        RoundedItemFrame = 0
        OnItemClick = JvXPBar1ItemClick
        Align = alTop
        ParentFont = False
      end
      object JvXPBar2: TJvXPBar
        Left = 5
        Top = 301
        Width = 160
        Height = 143
        Caption = 'Configuration'
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
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15159552
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = 15159552
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        OwnerDraw = False
        ShowItemFrame = False
        RoundedItemFrame = 0
        Align = alTop
        ParentFont = False
      end
      object JvXPBar4: TJvXPBar
        Left = 5
        Top = 266
        Width = 160
        Height = 35
        Caption = 'Cheque Reports'
        Collapsed = True
        Colors.GradientFrom = 13945028
        Colors.GradientTo = 13153201
        Colors.SeparatorColor = 14474460
        Items = <
          item
            Caption = 'Daily Receive Cheque'
          end
          item
            Caption = 'Payin Report'
          end
          item
            Caption = 'Passed Cheque'
          end
          item
            Caption = 'Returned Cheque'
          end
          item
            Caption = 'Canceled Cheque'
          end
          item
            Caption = 'Borrowing Cheque'
          end
          item
            Caption = 'Bank Expended'
          end
          item
            Caption = 'Penalty Report'
          end
          item
            Caption = 'Daily Deposit Reconcile'
          end
          item
            Caption = 'Daily Reconcile Passed Cheque'
          end
          item
            Caption = 'Recording Cheque Report (for GL)'
          end
          item
            Caption = 'Monthly Custody Cheque Reconcile'
          end
          item
            Caption = 'User Activity Log'
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15159552
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Grouped = True
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = 15159552
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        OwnerDraw = False
        ShowItemFrame = False
        RoundedItemFrame = 0
        Align = alTop
        ParentFont = False
      end
      object JvXPBar5: TJvXPBar
        Left = 5
        Top = 143
        Width = 160
        Height = 123
        Caption = 'Strong Room'
        Colors.GradientFrom = 13945028
        Colors.GradientTo = 13153201
        Colors.SeparatorColor = 14474460
        Items = <
          item
            Caption = 'Borrow/Cancel Cheque'
          end
          item
            Caption = 'Reborrow Cheque'
          end
          item
            Caption = 'Inactive/Reactive Cheque'
          end
          item
            Caption = 'Maintanance Cheque'
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15159552
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = 15159552
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        OwnerDraw = False
        ShowItemFrame = False
        RoundedItemFrame = 0
        Align = alTop
        ParentFont = False
      end
    end
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
      end
      item
        Alignment = taRightJustify
        Text = '12/11/2554 12:30:21'
        Width = 300
      end>
  end
  object MAINPANE: TJvPanel
    Left = 203
    Top = 0
    Width = 791
    Height = 533
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 209
    ExplicitTop = -6
  end
end
