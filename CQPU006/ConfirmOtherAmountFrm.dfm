object frmConfirmOtherAmount: TfrmConfirmOtherAmount
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Confirm Other Pay Amount'
  ClientHeight = 43
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    378
    43)
  PixelsPerInch = 96
  TextHeight = 25
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 378
    Height = 43
    Align = alClient
    ExplicitLeft = 72
    ExplicitTop = -6
    ExplicitWidth = 50
    ExplicitHeight = 50
  end
  object btnOK: TcxButton
    Left = 269
    Top = 3
    Width = 107
    Height = 37
    Anchors = [akTop, akRight, akBottom]
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnOKClick
    LookAndFeel.Kind = lfFlat
  end
  object edAmount: TcxCurrencyEdit
    Left = 2
    Top = 3
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoSize = False
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
    Properties.DecimalPlaces = 2
    Properties.DisplayFormat = '#,##0.00'
    Properties.EditFormat = '#,##0.00'
    Properties.Nullable = False
    Properties.UseDisplayFormatWhenEditing = True
    Properties.UseLeftAlignmentOnEditing = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    OnKeyDown = edAmountKeyDown
    Height = 37
    Width = 266
  end
end
