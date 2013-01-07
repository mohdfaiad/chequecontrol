inherited frmRptRcv000: TfrmRptRcv000
  Caption = 'Report - Daily Receive '
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnCancel: TcxButton
      OnClick = btnCancelClick
      ExplicitLeft = 235
      ExplicitTop = 126
    end
    inherited btnOK: TcxButton
      OnClick = btnOKClick
      ExplicitLeft = 154
      ExplicitTop = 126
    end
    object dtFrom: TcxDateEdit
      Left = 70
      Top = 16
      TabOrder = 2
      Width = 121
    end
    object dtTo: TcxDateEdit
      Left = 197
      Top = 16
      TabOrder = 3
      Width = 121
    end
    object chqFrom: TcxTextEdit
      Left = 70
      Top = 43
      TabOrder = 4
      Text = 'chqFrom'
      Width = 121
    end
    object chqTo: TcxTextEdit
      Left = 197
      Top = 43
      TabOrder = 5
      Text = 'cxTextEdit1'
      Width = 121
    end
  end
  inherited frxReport: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
