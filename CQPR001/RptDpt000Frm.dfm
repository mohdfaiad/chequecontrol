inherited frmRptDpt000: TfrmRptDpt000
  Caption = 'Report - Load Deposit Reconcile'
  ClientHeight = 142
  ExplicitWidth = 341
  ExplicitHeight = 169
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 142
    Caption = ''
    inherited btnCancel: TcxButton
      Left = 227
      Top = 86
      OnClick = btnCancelClick
      ExplicitLeft = 227
      ExplicitTop = 118
    end
    inherited btnOK: TcxButton
      Left = 146
      Top = 86
      OnClick = btnOKClick
      ExplicitLeft = 146
      ExplicitTop = 118
    end
    object DateDe: TcxDateEdit
      Left = 24
      Top = 24
      TabOrder = 2
      Width = 278
    end
  end
  inherited frxCSVExport1: TfrxCSVExport
    Left = 64
    Top = 88
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 64
    Top = 88
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 64
    Top = 88
  end
  inherited frxDialogControls1: TfrxDialogControls
    Left = 64
    Top = 88
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 64
    Top = 88
  end
  inherited frxChartObject1: TfrxChartObject
    Left = 64
    Top = 88
  end
  inherited cdsReport4: TClientDataSet
    Left = 32
    Top = 88
  end
  inherited cdsReport2: TClientDataSet
    Left = 32
    Top = 88
  end
  inherited cdsReport3: TClientDataSet
    Left = 32
    Top = 88
  end
  inherited cdsReport5: TClientDataSet
    Left = 32
    Top = 88
  end
  inherited frxADOComponents1: TfrxADOComponents
    Left = 64
    Top = 88
  end
  inherited frxReport: TfrxReport
    Left = 64
    Top = 88
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited cdsRepTemp: TClientDataSet
    Left = 32
    Top = 88
  end
  inherited cdsReport: TClientDataSet
    Left = 32
    Top = 88
  end
  inherited cdsReport1: TClientDataSet
    Left = 32
    Top = 88
  end
  inherited SockCon: TSockCon
    Left = 96
    Top = 88
  end
end
