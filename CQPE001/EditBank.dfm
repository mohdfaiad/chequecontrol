object FormBankEdit: TFormBankEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Edit Bank'
  ClientHeight = 505
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object pane: TPanel
    Left = 0
    Top = 0
    Width = 785
    Height = 505
    Align = alClient
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 24
      Top = 16
      TabOrder = 0
      Height = 305
      Width = 713
      object BtnSave: TcxButton
        Left = 488
        Top = 149
        Width = 89
        Height = 30
        Caption = 'Save'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtnSaveClick
      end
      object BtnCancel: TcxButton
        Left = 583
        Top = 149
        Width = 89
        Height = 30
        Caption = 'Cancel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BtnCancelClick
      end
      object cxLabel1: TcxLabel
        Left = 40
        Top = 72
        Caption = 'Bank Code'
      end
      object cxLabel2: TcxLabel
        Left = 200
        Top = 128
        Caption = 'Branch Name'
      end
      object TxtCBk: TcxDBTextEdit
        Left = 40
        Top = 95
        DataBinding.DataField = 'CQMBNK'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 121
      end
      object TxtNbk: TcxDBTextEdit
        Left = 200
        Top = 95
        DataBinding.DataField = 'CQMEGN'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 248
      end
      object TxtLBk: TcxDBTextEdit
        Left = 464
        Top = 95
        DataBinding.DataField = 'CQMLOC'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        Width = 208
      end
      object TxtCBra: TcxDBTextEdit
        Left = 40
        Top = 151
        DataBinding.DataField = 'CQMBRC'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 7
        Width = 121
      end
      object TxtNBra: TcxDBTextEdit
        Left = 200
        Top = 151
        DataBinding.DataField = 'CQMBRH'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 8
        Width = 248
      end
      object cxLabel3: TcxLabel
        Left = 464
        Top = 72
        Caption = 'Location'
      end
      object cxLabel4: TcxLabel
        Left = 40
        Top = 128
        Caption = 'Branch Code'
      end
      object cxLabel5: TcxLabel
        Left = 200
        Top = 72
        Caption = 'Bank Name'
      end
      object cxLabel6: TcxLabel
        Left = 40
        Top = 16
        Caption = 'Active'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 40
        Top = 39
        DataBinding.DataField = 'CQMACT'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 13
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 200
        Top = 39
        DataBinding.DataField = 'CQMSTS'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 14
        Width = 248
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 464
        Top = 39
        DataBinding.DataField = 'CQMBRN'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 15
        Width = 208
      end
      object cxLabel7: TcxLabel
        Left = 464
        Top = 16
        Caption = 'BRN'
      end
      object cxLabel8: TcxLabel
        Left = 200
        Top = 16
        Caption = 'Status'
      end
    end
  end
end
