inherited FormPreference: TFormPreference
  Caption = 'Preference-TaxRate/Penalty'
  ClientHeight = 493
  ClientWidth = 761
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 769
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  inherited MASTERPANE: TPanel
    Width = 761
    Height = 493
    ExplicitWidth = 734
    ExplicitHeight = 439
    inherited pnHeader: TJvPanel
      Width = 759
      ExplicitWidth = 732
      inherited ToolBar: TToolBar
        inherited btnClose: TToolButton
          OnClick = btnCloseClick
        end
        inherited btnSave: TToolButton
          OnClick = btnSaveClick
        end
      end
      inherited pnHeaderRight: TJvPanel
        Left = 395
        ExplicitLeft = 368
        inherited cxLabel7: TcxLabel
          ExplicitWidth = 45
          ExplicitHeight = 23
        end
        inherited cxLabel8: TcxLabel
          ExplicitWidth = 76
          ExplicitHeight = 23
        end
        inherited edtUser: TcxTextEdit
          ExplicitHeight = 26
        end
        inherited cxTextEdit1: TcxTextEdit
          ExplicitHeight = 26
        end
      end
    end
    inherited pnContainer: TPanel
      Width = 759
      Height = 443
      ExplicitWidth = 732
      ExplicitHeight = 389
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 759
        Height = 443
        Align = alClient
        TabOrder = 0
        ExplicitLeft = -2
        ExplicitTop = 78
        ExplicitWidth = 734
        ExplicitHeight = 311
        object GroupBox1: TGroupBox
          Left = 16
          Top = 16
          Width = 697
          Height = 169
          Caption = 'Witholding Tax'
          Color = clBtnFace
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 152
            Top = 49
            Width = 131
            Height = 18
            Caption = 'Witholding Tax Rate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 152
            Top = 73
            Width = 58
            Height = 18
            Caption = 'Condition'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 176
            Top = 106
            Width = 137
            Height = 18
            Caption = '>=36 tenors:Waived'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 487
            Top = 44
            Width = 15
            Height = 18
            Caption = '%'
          end
          object Edit1: TEdit
            Left = 360
            Top = 41
            Width = 121
            Height = 26
            MaxLength = 2
            TabOrder = 0
            Text = 'Edit1'
            OnKeyPress = Edit1KeyPress
          end
        end
        object GroupBox2: TGroupBox
          Left = 16
          Top = 191
          Width = 697
          Height = 113
          Caption = 'Penalty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label5: TLabel
            Left = 152
            Top = 28
            Width = 61
            Height = 18
            Caption = 'Over due'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 152
            Top = 63
            Width = 82
            Height = 18
            Caption = 'Penalty Rate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 487
            Top = 29
            Width = 31
            Height = 18
            Caption = 'days'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 487
            Top = 65
            Width = 15
            Height = 18
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Edit2: TEdit
            Left = 360
            Top = 24
            Width = 121
            Height = 26
            MaxLength = 2
            TabOrder = 0
            Text = 'Edit2'
            OnKeyPress = Edit2KeyPress
          end
          object Edit3: TEdit
            Left = 360
            Top = 64
            Width = 121
            Height = 26
            MaxLength = 2
            TabOrder = 1
            Text = 'Edit3'
            OnKeyPress = Edit3KeyPress
          end
        end
        object GroupBox3: TGroupBox
          Left = 16
          Top = 310
          Width = 697
          Height = 83
          Caption = 'Other'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label9: TLabel
            Left = 152
            Top = 30
            Width = 60
            Height = 18
            Caption = 'Due Alert'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 487
            Top = 30
            Width = 33
            Height = 18
            Caption = 'Dayz'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Edit4: TEdit
            Left = 360
            Top = 24
            Width = 121
            Height = 26
            MaxLength = 2
            TabOrder = 0
            Text = 'Edit4'
            OnKeyPress = Edit4KeyPress
          end
        end
        object Save: TcxButton
          Left = 638
          Top = 399
          Width = 75
          Height = 25
          Caption = 'Save'
          TabOrder = 3
          Visible = False
          OnClick = SaveClick
        end
      end
    end
  end
  inherited OpenDialog1: TOpenDialog
    Left = 712
    Top = 64
  end
  object DS_PRE: TDSource
    DataSet = DM_Pre.RD_Prefen
    AutoState = False
    DisableEventsOnLoading = False
    Left = 584
    Top = 64
  end
end
