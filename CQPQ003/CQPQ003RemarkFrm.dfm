object FrmCQPQ003Remark: TFrmCQPQ003Remark
  Left = 0
  Top = 0
  Caption = 'Remark'
  ClientHeight = 202
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 202
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      455
      202)
    object OK: TcxButton
      Left = 293
      Top = 167
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      TabOrder = 0
      OnClick = OKClick
    end
    object Cancel: TcxButton
      Left = 374
      Top = 167
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = CancelClick
    end
    object RMK: TcxDBMemo
      Left = 8
      Top = 8
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataBinding.DataField = 'CQMRS1'
      DataBinding.DataSource = DECHQ
      Properties.ClearKey = 16430
      Properties.ScrollBars = ssVertical
      TabOrder = 2
      Height = 153
      Width = 441
    end
  end
  object DECHQ: TDataSource
    DataSet = DMCQPQ003EditCheque.ECHQ
    Left = 400
    Top = 24
  end
end
