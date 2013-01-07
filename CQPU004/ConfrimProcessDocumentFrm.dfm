object frmConfrimProcessDocumentFrm: TfrmConfrimProcessDocumentFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Confrim To Process Document'
  ClientHeight = 453
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    798
    453)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 798
    Height = 453
    Align = alClient
    Shape = bsFrame
    ExplicitLeft = 48
    ExplicitTop = 72
    ExplicitWidth = 50
    ExplicitHeight = 50
  end
  object Label1: TLabel
    Left = 8
    Top = 376
    Width = 50
    Height = 13
    Caption = 'Comments'
  end
  object cxGrid2: TcxGrid
    Left = 3
    Top = 4
    Width = 791
    Height = 374
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 393
    Width = 497
    Height = 49
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object btnCancel: TcxButton
    Left = 634
    Top = 412
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object cxButton1: TcxButton
    Left = 715
    Top = 412
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
  end
end
