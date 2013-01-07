object frmMainApplication: TfrmMainApplication
  Left = 0
  Top = 0
  Caption = 'Honda-Check'
  ClientHeight = 540
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 922
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 2
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 69
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 3
    end
  end
  object MASTERPANEL: TPanel
    Left = 144
    Top = 72
    Width = 657
    Height = 369
    TabOrder = 1
  end
  object ADOConn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=123456;Persist Security Info=True;U' +
      'ser ID=sa;Initial Catalog=LLSPDTA;Data Source=.'
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 64
  end
end
