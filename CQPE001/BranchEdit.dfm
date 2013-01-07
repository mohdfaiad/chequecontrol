object FormEditBranch: TFormEditBranch
  Left = 0
  Top = 0
  Caption = 'Branch'
  ClientHeight = 495
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlpane: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 495
    Align = alClient
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 24
      Top = 16
      TabOrder = 0
      Height = 129
      Width = 713
      object cxButton1: TcxButton
        Left = 477
        Top = 85
        Width = 89
        Height = 25
        Caption = 'Save'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 585
        Top = 85
        Width = 89
        Height = 25
        Caption = 'Cancel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = cxButton2Click
      end
      object RzDBEdit1: TRzDBEdit
        Left = 33
        Top = 39
        Width = 121
        Height = 21
        DataField = 'btrbrc'
        TabOrder = 2
      end
      object RzDBEdit2: TRzDBEdit
        Left = 193
        Top = 39
        Width = 233
        Height = 21
        DataField = 'Btrbrn'
        TabOrder = 3
      end
      object cxLabel1: TcxLabel
        Left = 33
        Top = 19
        Caption = 'Branch Code'
      end
      object cxLabel2: TcxLabel
        Left = 193
        Top = 19
        Caption = 'Branch Name'
      end
      object RzDBEdit3: TRzDBEdit
        Left = 441
        Top = 39
        Width = 233
        Height = 21
        DataField = 'BTRLOC'
        TabOrder = 6
      end
      object cxLabel3: TcxLabel
        Left = 441
        Top = 19
        Caption = 'Branch Location'
      end
    end
  end
end
