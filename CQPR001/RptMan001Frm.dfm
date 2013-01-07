inherited frmRptMan001: TfrmRptMan001
  Caption = 'Report - Borrow Cheque'
  ExplicitWidth = 341
  ExplicitHeight = 201
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnCancel: TcxButton
      Left = 231
      Top = 122
      ExplicitLeft = 231
      ExplicitTop = 122
    end
    inherited btnOK: TcxButton
      Left = 150
      Top = 122
      OnClick = btnOKClick
      ExplicitLeft = 150
      ExplicitTop = 122
    end
  end
  inherited frxReport: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
