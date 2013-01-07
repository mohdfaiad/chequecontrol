inherited frmRptDpt001: TfrmRptDpt001
  Caption = 'Report - Payin'
  ExplicitWidth = 341
  ExplicitHeight = 201
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Caption = ''
    ExplicitLeft = 8
    inherited btnCancel: TcxButton
      ExplicitLeft = 231
      ExplicitTop = 122
    end
    inherited btnOK: TcxButton
      OnClick = btnOKClick
      ExplicitLeft = 150
      ExplicitTop = 122
    end
    object DateF: TcxDateEdit
      Left = 40
      Top = 32
      TabOrder = 2
      Width = 121
    end
    object DateT: TcxDateEdit
      Left = 185
      Top = 32
      TabOrder = 3
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 166
      Top = 33
      Caption = 'To'
    end
  end
  inherited frxReport: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
