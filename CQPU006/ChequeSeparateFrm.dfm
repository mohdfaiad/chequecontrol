object frmChequeSeparate: TfrmChequeSeparate
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Adjust and Seperate Cheque (v1.0.0.1498)'
  ClientHeight = 564
  ClientWidth = 951
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 951
    Height = 564
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'General'
      DesignSize = (
        943
        533)
      object Label4: TLabel
        Left = 711
        Top = 471
        Width = 32
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = 'Total:'
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Bevel3: TBevel
        Left = 0
        Top = 471
        Width = 943
        Height = 62
        Align = alBottom
        ExplicitLeft = 3
        ExplicitWidth = 940
      end
      object Splitter1: TSplitter
        Left = 0
        Top = 381
        Width = 943
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 0
        ExplicitWidth = 416
      end
      object cxLabel34: TcxLabel
        Left = 749
        Top = 465
        Anchors = [akRight, akBottom]
        AutoSize = False
        Caption = '0.00'
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Style.BorderStyle = ebsSingle
        Style.Color = clAppWorkSpace
        Style.Font.Charset = THAI_CHARSET
        Style.Font.Color = 8257535
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.BorderStyle = ebsThick
        StyleFocused.Color = clGray
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.BorderStyle = ebsThick
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        Visible = False
        Height = 26
        Width = 154
      end
      object cxLabel36: TcxLabel
        Left = 903
        Top = 467
        Anchors = [akRight, akBottom]
        Caption = 'x'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Visible = False
      end
      object cxTextEdit6: TcxTextEdit
        Left = 915
        Top = 468
        Anchors = [akRight, akBottom]
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        Style.Color = clGray
        Style.Font.Charset = THAI_CHARSET
        Style.Font.Color = clYellow
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Text = '5'
        Visible = False
        Width = 24
      end
      object lbChequeAmount: TcxLabel
        Left = 7
        Top = 484
        Anchors = [akLeft, akBottom]
        Caption = 'Cheque Amount'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Visible = False
      end
      object edSummaryA: TcxTextEdit
        Left = 107
        Top = 481
        Anchors = [akLeft, akBottom]
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        Style.Color = 14548991
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 4
        Text = '0.00'
        Visible = False
        Width = 173
      end
      object lbNetAmount: TcxLabel
        Left = 17
        Top = 510
        Anchors = [akLeft, akBottom]
        Caption = 'Net Amount'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Visible = False
      end
      object edNetAmountA: TcxTextEdit
        Left = 107
        Top = 507
        Anchors = [akLeft, akBottom]
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        Style.Color = 14548991
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clGreen
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 6
        Text = '0.00'
        Visible = False
        Width = 173
      end
      object edWHT: TcxTextEdit
        Left = 379
        Top = 481
        Anchors = [akLeft, akBottom]
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        Style.Color = 14548991
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 7
        Text = '0.00'
        Visible = False
        Width = 158
      end
      object _lbWT: TcxLabel
        Left = 350
        Top = 484
        Anchors = [akLeft, akBottom]
        Caption = 'WT'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Visible = False
      end
      object _lbDiff: TcxLabel
        Left = 350
        Top = 510
        Anchors = [akLeft, akBottom]
        Caption = 'Diff'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object edVatA: TcxTextEdit
        Left = 379
        Top = 507
        Anchors = [akLeft, akBottom]
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        Style.Color = 14548991
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 10
        Text = '0.00'
        Width = 158
      end
      object btnAdd: TcxButton
        Left = 566
        Top = 502
        Width = 107
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Add Other.. (F3)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = btnAddClick
        LookAndFeel.Kind = lfFlat
      end
      object btnHold: TcxButton
        Left = 679
        Top = 502
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Hold'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = btnHoldClick
        LookAndFeel.Kind = lfFlat
      end
      object btnSeOK: TcxButton
        Left = 784
        Top = 502
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'OK (F5)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = btnSeOKClick
        LookAndFeel.Kind = lfFlat
      end
      object btnSeCancel: TcxButton
        Left = 865
        Top = 502
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Cancel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = btnSeCancelClick
        LookAndFeel.Kind = lfFlat
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 384
        Width = 943
        Height = 87
        Align = alBottom
        TabOrder = 15
        object cxGrid3DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsOtherPayments
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OnCustomDrawColumnHeader = cxGrid3DBTableView1CustomDrawColumnHeader
          object cxGrid3DBTableView1CON: TcxGridDBColumn
            Caption = 'Contract'
            DataBinding.FieldName = 'CON'
          end
          object cxGrid3DBTableView1CONDES: TcxGridDBColumn
            Caption = 'Contract Info'
            DataBinding.FieldName = 'CONDES'
          end
          object cxGrid3DBTableView1CDE: TcxGridDBColumn
            Caption = 'Code'
            DataBinding.FieldName = 'CDE'
          end
          object cxGrid3DBTableView1DES: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DES'
            Width = 491
          end
          object cxGrid3DBTableView1AMT: TcxGridDBColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;(,0.00)'
          end
          object cxGrid3DBTableView1VAT: TcxGridDBColumn
            Caption = 'Vat'
            DataBinding.FieldName = 'VAT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;(,0.00)'
            Width = 78
          end
          object cxGrid3DBTableView1NET: TcxGridDBColumn
            Caption = 'Net Amount'
            DataBinding.FieldName = 'NET'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;(,0.00)'
            Width = 96
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
      object pnClient: TPanel
        Left = 0
        Top = 0
        Width = 943
        Height = 381
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 16
        DesignSize = (
          943
          381)
        object cxLabel4: TcxLabel
          Left = 16
          Top = 6
          Caption = 'Contract No.'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object ChqNo: TcxTextEdit
          Left = 101
          Top = 2
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ReadOnly = True
          Style.BorderColor = clBlack
          Style.Color = clGray
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clYellow
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.Shadow = False
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          TabOrder = 1
          Text = '100001'
          Width = 117
        end
        object cxLabel5: TcxLabel
          Left = 428
          Top = 6
          Anchors = [akTop, akRight]
          Caption = 'Cheque Amount'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object edTatalAmt: TcxTextEdit
          Left = 537
          Top = 2
          Anchors = [akTop, akRight]
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ReadOnly = True
          Style.BorderColor = clBlack
          Style.Color = clGray
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clYellow
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.Shadow = False
          Style.IsFontAssigned = True
          TabOrder = 3
          Text = '1070'
          Width = 154
        end
        object cxLabel8: TcxLabel
          Left = 224
          Top = 31
          Caption = 'Dealer'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbDealerName: TcxLabel
          Left = 271
          Top = 31
          Caption = 'x'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object GroupBox1: TGroupBox
          Left = 4
          Top = 44
          Width = 935
          Height = 36
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 6
          object raPartial: TRadioButton
            Left = 138
            Top = 14
            Width = 122
            Height = 17
            Caption = 'Patial / Advance'
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = raNoAdjustClick
          end
          object raShortOver: TRadioButton
            Left = 266
            Top = 14
            Width = 144
            Height = 17
            Caption = 'Short/Over Amount'
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = raNoAdjustClick
          end
          object raNoAdjust: TRadioButton
            Left = 17
            Top = 14
            Width = 122
            Height = 17
            Caption = 'No Adjust'
            Checked = True
            Font.Charset = THAI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            TabStop = True
            OnClick = raNoAdjustClick
          end
        end
        object AdjPage: TPageControl
          Left = 5
          Top = 84
          Width = 934
          Height = 294
          ActivePage = tabChqOne
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 7
          OnChange = AdjPageChange
          object tabChqOne: TTabSheet
            Caption = 'Cheque 1:1'
            DesignSize = (
              926
              263)
            object GroupBox2: TGroupBox
              Left = 3
              Top = 0
              Width = 278
              Height = 263
              Anchors = [akLeft, akTop, akBottom]
              Caption = 'Rental'
              TabOrder = 0
              object cxLabel12: TcxLabel
                Left = 41
                Top = 22
                Caption = 'Goods'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object lbAmount: TcxLabel
                Left = 86
                Top = 20
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object lbVAT: TcxLabel
                Left = 86
                Top = 45
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object cxLabel18: TcxLabel
                Left = 56
                Top = 47
                Caption = 'VAT'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object cxLabel15: TcxLabel
                Left = 30
                Top = 72
                Caption = 'WT(5%)'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object lbWT: TcxLabel
                Left = 86
                Top = 70
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.TextColor = 6711039
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object lbNetAmt: TcxLabel
                Left = 86
                Top = 95
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = 8257535
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object cxLabel17: TcxLabel
                Left = 11
                Top = 96
                Caption = 'Net Amount'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object lbNetAmtAA: TcxLabel
                Left = 86
                Top = 221
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = 8257535
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Visible = False
                Height = 26
                Width = 154
              end
              object cxLabel1: TcxLabel
                Left = 43
                Top = 158
                Caption = 'Tenor'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object lbTenor: TcxLabel
                Left = 86
                Top = 154
                AutoSize = False
                Caption = '0'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = 8257535
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.TextColor = clWhite
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object cxLabel9: TcxLabel
                Left = 40
                Top = 184
                Caption = 'Peroid'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object lbPeroid: TcxLabel
                Left = 86
                Top = 179
                AutoSize = False
                Caption = '0'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = 8257535
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.TextColor = clWhite
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object lbInsDue: TcxLabel
                Left = 86
                Top = 128
                AutoSize = False
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = 8257535
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.TextColor = clWhite
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object cxLabel11: TcxLabel
                Left = 24
                Top = 133
                Caption = 'Due Date'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
            end
            object GroupBox4: TGroupBox
              Left = 631
              Top = 0
              Width = 294
              Height = 263
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Pay Rental'
              TabOrder = 1
              object lbNetPaymnet: TLabel
                Left = 13
                Top = 196
                Width = 76
                Height = 13
                Caption = 'Net Payment:'
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object lbDiff: TLabel
                Left = 19
                Top = 141
                Width = 70
                Height = 13
                Caption = 'Short / Over'
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
                Visible = False
              end
              object lbDiffTotal: TLabel
                Left = 57
                Top = 170
                Width = 32
                Height = 13
                Caption = 'Total:'
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object lbNetPay: TcxLabel
                Left = 95
                Top = 93
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = 8454016
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object lbAmountA: TcxLabel
                Left = 95
                Top = 18
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object lbWTA: TcxLabel
                Left = 95
                Top = 68
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.TextColor = 6711039
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object lbNetAmountA: TcxLabel
                Left = 95
                Top = 164
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = 8257535
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object lbVatA: TcxLabel
                Left = 95
                Top = 43
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object edDiff: TcxLabel
                Left = 95
                Top = 135
                AutoSize = False
                Caption = '+1'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clWhite
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clMaroon
                Style.Font.Height = -16
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.TextColor = clRed
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Visible = False
                Height = 26
                Width = 154
              end
              object cxLabel7: TcxLabel
                Left = 48
                Top = 25
                Caption = 'Goods'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object cxlbWT: TcxLabel
                Left = 37
                Top = 75
                Caption = 'WT(5%)'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object cxLabel23: TcxLabel
                Left = 18
                Top = 102
                Caption = 'Net Amount'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object cxlbVAT: TcxLabel
                Left = 31
                Top = 48
                Caption = 'VAT(7%)'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object lbx2: TcxLabel
                Left = 249
                Top = 166
                Caption = 'x'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object edChqCountP2: TcxTextEdit
                Left = 261
                Top = 167
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Properties.ReadOnly = True
                Style.Color = clGray
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clYellow
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.Shadow = False
                Style.IsFontAssigned = True
                TabOrder = 11
                Text = '5'
                Width = 24
              end
              object lbx1: TcxLabel
                Left = 249
                Top = 138
                Caption = 'x'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
                Visible = False
              end
              object edChqCountP1: TcxTextEdit
                Left = 261
                Top = 137
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Properties.ReadOnly = True
                Style.Color = clGray
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clYellow
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.Shadow = False
                Style.IsFontAssigned = True
                TabOrder = 13
                Text = '5'
                Visible = False
                Width = 24
              end
              object edNetPayment: TcxLabel
                Left = 95
                Top = 189
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = 16777088
                Style.Font.Height = -15
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object cxLabel29: TcxLabel
                Left = 261
                Top = 22
                Caption = 'THB'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object cxLabel30: TcxLabel
                Left = 261
                Top = 47
                Caption = 'THB'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object cxLabel31: TcxLabel
                Left = 261
                Top = 72
                Caption = 'THB'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object cxLabel32: TcxLabel
                Left = 261
                Top = 97
                Caption = 'THB'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
            end
            object GroupBox3: TGroupBox
              Left = 287
              Top = 0
              Width = 338
              Height = 263
              Anchors = [akLeft, akTop, akBottom]
              Caption = 'Due Amount'
              TabOrder = 2
              object cxLabel19: TcxLabel
                Left = 42
                Top = 22
                Caption = 'Outstanding ( + )'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object lbOut: TcxLabel
                Left = 147
                Top = 20
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = 8257535
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.TextColor = 16753919
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object cxLabel20: TcxLabel
                Left = 72
                Top = 48
                Caption = 'Advance (-)'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object lbAdvance: TcxLabel
                Left = 147
                Top = 45
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = 8257535
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.TextColor = 8453888
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object lbNetPayment: TcxLabel
                Left = 147
                Top = 70
                AutoSize = False
                Caption = '0.00'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = 8257535
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Height = 26
                Width = 154
              end
              object cxLabel21: TcxLabel
                Left = 10
                Top = 77
                Caption = '(Current) Net Payment'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object cxLabel35: TcxLabel
                Left = 117
                Top = 100
                Caption = 'Due'
                ParentFont = False
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = clNavy
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
                Visible = False
              end
              object lbDue: TcxLabel
                Left = 147
                Top = 95
                AutoSize = False
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsSingle
                Style.Color = clAppWorkSpace
                Style.Font.Charset = THAI_CHARSET
                Style.Font.Color = 8257535
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.TextColor = clWhite
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.BorderStyle = ebsThick
                StyleFocused.Color = clGray
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsThick
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                Visible = False
                Height = 26
                Width = 154
              end
            end
          end
          object tabChqOneToMany: TTabSheet
            Caption = 'Cheque 1:N'
            ImageIndex = 1
            OnShow = tabChqOneToManyShow
            object PageControl: TPageControl
              Left = 0
              Top = 0
              Width = 926
              Height = 263
              ActivePage = TabRelatedContract
              Align = alClient
              TabOrder = 0
              OnEnter = PageControlEnter
              object TabRelatedContract: TTabSheet
                Tag = 1
                Caption = 'Lists'
                OnShow = TabRelatedContractShow
                DesignSize = (
                  918
                  232)
                object gridSeperate: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 918
                  Height = 232
                  Align = alClient
                  TabOrder = 0
                  object gridSeperateDBTableView1: TcxGridDBTableView
                    NavigatorButtons.ConfirmDelete = False
                    DataController.DataSource = dsRelatedContract
                    DataController.KeyFieldNames = 'INSCRN'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsData.Deleting = False
                    OptionsData.Inserting = False
                    OptionsView.GridLines = glNone
                    OptionsView.GroupByBox = False
                    OnCustomDrawColumnHeader = gridSeperateDBTableView1CustomDrawColumnHeader
                    object gridSeperateDBTableView1CHK: TcxGridDBColumn
                      Caption = '-#-'
                      DataBinding.FieldName = 'CHK'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.ValueChecked = '1'
                      Properties.ValueUnchecked = '0'
                      Properties.OnChange = gridSeperateDBTableView1CHKPropertiesChange
                      Properties.OnEditValueChanged = gridSeperateDBTableView1CHKPropertiesEditValueChanged
                      Width = 30
                    end
                    object gridSeperateDBTableView1INSCRN: TcxGridDBColumn
                      Caption = 'Contract'
                      DataBinding.FieldName = 'INSCRN'
                      Options.Editing = False
                    end
                    object gridSeperateDBTableView1DEAName: TcxGridDBColumn
                      Caption = 'Name'
                      DataBinding.FieldName = 'DEAName'
                      Options.Editing = False
                      Width = 195
                    end
                    object gridSeperateDBTableView1CARMDL: TcxGridDBColumn
                      Caption = 'Model'
                      DataBinding.FieldName = 'CARMDL'
                      Options.Editing = False
                      Width = 93
                    end
                    object gridSeperateDBTableView1INSITM: TcxGridDBColumn
                      Caption = 'Tenors'
                      DataBinding.FieldName = 'INSITM'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.Alignment.Vert = taVCenter
                      Properties.DisplayFormat = '0'
                      Options.Editing = False
                      Width = 51
                    end
                    object gridSeperateDBTableView1CONPER: TcxGridDBColumn
                      Caption = 'Peroid'
                      DataBinding.FieldName = 'CONPER'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.Alignment.Vert = taVCenter
                      Properties.DisplayFormat = '0'
                      Options.Editing = False
                      Width = 51
                    end
                    object gridSeperateDBTableView1INSDUE: TcxGridDBColumn
                      Caption = 'Due'
                      DataBinding.FieldName = 'INSDUE'
                      Options.Editing = False
                      Width = 91
                    end
                    object gridSeperateDBTableView1INSIAM: TcxGridDBColumn
                      Caption = 'Goods'
                      DataBinding.FieldName = 'INSIAM'
                      Options.Editing = False
                    end
                    object gridSeperateDBTableView1INSVAM: TcxGridDBColumn
                      Caption = 'Vat'
                      DataBinding.FieldName = 'INSVAM'
                      Options.Editing = False
                    end
                    object gridSeperateDBTableView1WHT: TcxGridDBColumn
                      DataBinding.FieldName = 'WHT'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '(#,##0.00)'
                      OnCustomDrawCell = gridSeperateDBTableView1WHTCustomDrawCell
                      Options.Editing = False
                      Width = 67
                    end
                    object gridSeperateDBTableView1NET: TcxGridDBColumn
                      Caption = 'Net Amount'
                      DataBinding.FieldName = 'NET'
                      Options.Editing = False
                      Width = 77
                    end
                  end
                  object gridSeperateLevel1: TcxGridLevel
                    GridView = gridSeperateDBTableView1
                  end
                end
                object DBNavigator1: TDBNavigator
                  Left = 682
                  Top = 35
                  Width = 240
                  Height = 25
                  DataSource = dsRelatedContract
                  Anchors = [akTop, akRight]
                  TabOrder = 1
                  Visible = False
                end
              end
              object TabDealerGroup: TTabSheet
                Tag = 2
                Caption = 'Dealer Group'
                ImageIndex = 2
                OnShow = TabDealerGroupShow
                object cxGrid1: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 918
                  Height = 232
                  Align = alClient
                  TabOrder = 0
                  object cxGridDBTableView2: TcxGridDBTableView
                    NavigatorButtons.ConfirmDelete = False
                    DataController.DataSource = dsDealerHdr
                    DataController.DetailKeyFieldNames = 'CONDEA'
                    DataController.KeyFieldNames = 'CONDEA'
                    DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsData.Deleting = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.GridLines = glNone
                    OptionsView.GroupByBox = False
                    OnCustomDrawColumnHeader = cxGridDBTableView2CustomDrawColumnHeader
                    object cxGridDBTableView2CONDEA: TcxGridDBColumn
                      Caption = 'Dealer Code'
                      DataBinding.FieldName = 'CONDEA'
                      Width = 64
                    end
                    object cxGridDBTableView2DEANAME: TcxGridDBColumn
                      Caption = 'Dealer Name'
                      DataBinding.FieldName = 'DEANAME'
                      Width = 160
                    end
                    object cxGridDBTableView2EMAIL: TcxGridDBColumn
                      Caption = 'Email'
                      DataBinding.FieldName = 'EMAIL'
                      Width = 200
                    end
                  end
                  object cxGridDBTableView3: TcxGridDBTableView
                    NavigatorButtons.ConfirmDelete = False
                    DataController.DataSource = dsDealerDtl
                    DataController.DetailKeyFieldNames = 'CONDEA'
                    DataController.KeyFieldNames = 'INSCRN'
                    DataController.MasterKeyFieldNames = 'CONDEA'
                    DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsData.Deleting = False
                    OptionsData.Inserting = False
                    OptionsView.GridLines = glNone
                    OptionsView.GroupByBox = False
                    OnCustomDrawColumnHeader = cxGridDBTableView3CustomDrawColumnHeader
                    object cxGridDBTableView3CHK: TcxGridDBColumn
                      Caption = '#'
                      DataBinding.FieldName = 'CHK'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.ValueChecked = '1'
                      Properties.ValueUnchecked = '0'
                      Properties.OnEditValueChanged = cxGridDBTableView3CHKPropertiesEditValueChanged
                      FooterAlignmentHorz = taRightJustify
                      GroupSummaryAlignment = taRightJustify
                      Width = 41
                    end
                    object cxGridDBTableView3INSCRN: TcxGridDBColumn
                      Caption = 'ContracNo.'
                      DataBinding.FieldName = 'INSCRN'
                      Options.Editing = False
                      Width = 69
                    end
                    object cxGridDBTableView3CARMDL: TcxGridDBColumn
                      Caption = 'Model'
                      DataBinding.FieldName = 'CARMDL'
                      Width = 64
                    end
                    object cxGridDBTableView3INSITM: TcxGridDBColumn
                      Caption = 'Tenors'
                      DataBinding.FieldName = 'INSITM'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.Alignment.Vert = taVCenter
                      Properties.DisplayFormat = '0'
                      FooterAlignmentHorz = taRightJustify
                      GroupSummaryAlignment = taRightJustify
                      Options.Editing = False
                      Width = 42
                    end
                    object cxGridDBTableView3CONPER: TcxGridDBColumn
                      Caption = 'Peroid'
                      DataBinding.FieldName = 'CONPER'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.Alignment.Vert = taVCenter
                      Properties.DisplayFormat = '0'
                      Width = 50
                    end
                    object cxGridDBTableView3INSDUE: TcxGridDBColumn
                      Caption = 'Due.'
                      DataBinding.FieldName = 'INSDUE'
                      Options.Editing = False
                      Width = 79
                    end
                    object cxGridDBTableView3INSIAM: TcxGridDBColumn
                      Caption = 'Goods'
                      DataBinding.FieldName = 'INSIAM'
                      FooterAlignmentHorz = taRightJustify
                      GroupSummaryAlignment = taRightJustify
                      Options.Editing = False
                      Width = 71
                    end
                    object cxGridDBTableView3INSVAM: TcxGridDBColumn
                      Caption = 'Vat'
                      DataBinding.FieldName = 'INSVAM'
                      FooterAlignmentHorz = taRightJustify
                      GroupSummaryAlignment = taRightJustify
                      Options.Editing = False
                      Width = 86
                    end
                    object cxGridDBTableView3WHT: TcxGridDBColumn
                      DataBinding.FieldName = 'WHT'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '(#,##0.00)'
                      OnCustomDrawCell = cxGridDBTableView3WHTCustomDrawCell
                      FooterAlignmentHorz = taRightJustify
                      GroupSummaryAlignment = taRightJustify
                      Options.Editing = False
                      Width = 61
                    end
                    object cxGridDBTableView3NET: TcxGridDBColumn
                      Caption = 'Net'
                      DataBinding.FieldName = 'NET'
                      FooterAlignmentHorz = taRightJustify
                      GroupSummaryAlignment = taRightJustify
                      Options.Editing = False
                      Width = 98
                    end
                  end
                  object cxGridLevel2: TcxGridLevel
                    GridView = cxGridDBTableView2
                    object cxGridLevel3: TcxGridLevel
                      GridView = cxGridDBTableView3
                    end
                  end
                end
              end
              object TabLasted: TTabSheet
                Tag = 3
                Caption = 'History'
                ImageIndex = 1
                OnShow = TabLastedShow
                DesignSize = (
                  918
                  232)
                object Bevel2: TBevel
                  Left = 0
                  Top = 0
                  Width = 918
                  Height = 232
                  Align = alClient
                  Shape = bsFrame
                  ExplicitLeft = 240
                  ExplicitTop = 152
                  ExplicitWidth = 50
                  ExplicitHeight = 50
                end
                object cxGrid2: TcxGrid
                  Left = 3
                  Top = 3
                  Width = 912
                  Height = 226
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  TabOrder = 0
                  object cxGridDBTableView1: TcxGridDBTableView
                    NavigatorButtons.ConfirmDelete = False
                    DataController.DataSource = dsHistoryHdr
                    DataController.DetailKeyFieldNames = 'CQMDNO'
                    DataController.KeyFieldNames = 'CQMDNO'
                    DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsData.Deleting = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.GridLines = glNone
                    OptionsView.GroupByBox = False
                    OnCustomDrawColumnHeader = cxGridDBTableView1CustomDrawColumnHeader
                    object cxGridDBTableView1CQMDNO: TcxGridDBColumn
                      Caption = 'DocNo'
                      DataBinding.FieldName = 'CQMDNO'
                    end
                    object cxGridDBTableView1CQSETD: TcxGridDBColumn
                      Caption = 'Entry Date'
                      DataBinding.FieldName = 'CQSETD'
                      PropertiesClassName = 'TcxDateEditProperties'
                    end
                  end
                  object cxGrid2DBTableView1: TcxGridDBTableView
                    NavigatorButtons.ConfirmDelete = False
                    DataController.DataSource = dsHistoryDtl
                    DataController.DetailKeyFieldNames = 'CQSDNO'
                    DataController.KeyFieldNames = 'ID'
                    DataController.MasterKeyFieldNames = 'CQMDNO'
                    DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsData.Inserting = False
                    OptionsView.GridLines = glNone
                    OptionsView.GroupByBox = False
                    OnCustomDrawColumnHeader = cxGrid2DBTableView1CustomDrawColumnHeader
                    object cxGrid2DBTableView1CQMCHK: TcxGridDBColumn
                      Caption = '-#-'
                      DataBinding.FieldName = 'CQMCHK'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.ValueChecked = '1'
                      Properties.ValueUnchecked = '0'
                      Properties.OnEditValueChanged = cxGrid2DBTableView1CQMCHKPropertiesEditValueChanged
                      FooterAlignmentHorz = taRightJustify
                      GroupSummaryAlignment = taRightJustify
                      Width = 51
                    end
                    object cxGrid2DBTableView1CQSCSN: TcxGridDBColumn
                      Caption = 'Contract'
                      DataBinding.FieldName = 'CQSCSN'
                      Options.Editing = False
                      Width = 70
                    end
                    object cxGrid2DBTableView1CARMDL: TcxGridDBColumn
                      Caption = 'Model'
                      DataBinding.FieldName = 'CARMDL'
                      Options.Editing = False
                      Width = 64
                    end
                    object cxGrid2DBTableView1CQMDUE: TcxGridDBColumn
                      Caption = 'Due'
                      DataBinding.FieldName = 'CQMDUE'
                      Options.Editing = False
                      Width = 129
                    end
                    object cxGrid2DBTableView1CQSAMT: TcxGridDBColumn
                      Caption = 'Goods'
                      DataBinding.FieldName = 'CQSAMT'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '#,##0.00'
                      FooterAlignmentHorz = taRightJustify
                      GroupSummaryAlignment = taRightJustify
                      Options.Editing = False
                      Width = 79
                    end
                    object cxGrid2DBTableView1CQSVAT: TcxGridDBColumn
                      Caption = 'Vat'
                      DataBinding.FieldName = 'CQSVAT'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '#,##0.00'
                      FooterAlignmentHorz = taRightJustify
                      GroupSummaryAlignment = taRightJustify
                      Options.Editing = False
                      Width = 86
                    end
                    object cxGrid2DBTableView1CQSWHT: TcxGridDBColumn
                      Caption = 'WT'
                      DataBinding.FieldName = 'CQSWHT'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '(#,##0.00)'
                      OnCustomDrawCell = cxGrid2DBTableView1CQSWHTCustomDrawCell
                      FooterAlignmentHorz = taRightJustify
                      GroupSummaryAlignment = taRightJustify
                      Options.Editing = False
                      Width = 100
                    end
                    object cxGrid2DBTableView1CQSNET: TcxGridDBColumn
                      Caption = 'Net'
                      DataBinding.FieldName = 'CQSNET'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '#,##0.00'
                      FooterAlignmentHorz = taRightJustify
                      GroupSummaryAlignment = taRightJustify
                      Options.Editing = False
                      Width = 123
                    end
                  end
                  object cxGridLevel1: TcxGridLevel
                    GridView = cxGridDBTableView1
                    object cxGrid2Level1: TcxGridLevel
                      GridView = cxGrid2DBTableView1
                    end
                  end
                end
                object cxLabel2: TcxLabel
                  Left = 16
                  Top = 414
                  Caption = 'Total Amount'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                end
                object cxTextEdit2: TcxTextEdit
                  Left = 100
                  Top = 412
                  ParentFont = False
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Alignment.Vert = taVCenter
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clRed
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.Shadow = True
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  Text = '1,000,000.00'
                  Width = 189
                end
                object cxLabel6: TcxLabel
                  Left = 295
                  Top = 414
                  Caption = 'THB'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                end
              end
            end
          end
        end
        object ckWT: TCheckBox
          Left = 424
          Top = 58
          Width = 144
          Height = 17
          Caption = 'Include WT (5%)'
          Checked = True
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 8
          OnClick = ckWTClick
        end
        object edChqCount: TcxTextEdit
          Left = 705
          Top = 2
          Anchors = [akTop, akRight]
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ReadOnly = True
          Style.BorderColor = clBlack
          Style.Color = clGray
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clYellow
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.Shadow = False
          Style.IsFontAssigned = True
          TabOrder = 9
          Text = '5'
          Width = 24
        end
        object cxLabel25: TcxLabel
          Left = 693
          Top = 6
          Anchors = [akTop, akRight]
          Caption = 'x'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object edChqNetAmt: TcxTextEdit
          Left = 749
          Top = 2
          Anchors = [akTop, akRight]
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ReadOnly = True
          Style.BorderColor = clBlack
          Style.Color = clGray
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clYellow
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.Shadow = False
          Style.IsFontAssigned = True
          TabOrder = 11
          Text = '5'
          Width = 190
        end
        object cxLabel33: TcxLabel
          Left = 731
          Top = 6
          Anchors = [akTop, akRight]
          Caption = '='
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel10: TcxLabel
          Left = 45
          Top = 29
          Caption = 'Model'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbModel: TcxLabel
          Left = 101
          Top = 26
          AutoSize = False
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Style.BorderStyle = ebsSingle
          Style.Color = clAppWorkSpace
          Style.Font.Charset = THAI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.BorderStyle = ebsThick
          StyleFocused.Color = clGray
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleHot.BorderStyle = ebsThick
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          Height = 24
          Width = 117
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Log Cheque Info'
      ImageIndex = 1
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 943
        Height = 533
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView4: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsInfo
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OnCustomDrawColumnHeader = cxGridDBTableView4CustomDrawColumnHeader
          object cxGridDBTableView4INSCRN: TcxGridDBColumn
            Caption = 'Contract'
            DataBinding.FieldName = 'INSCRN'
            Width = 85
          end
          object cxGridDBTableView4INSITM: TcxGridDBColumn
            Caption = 'Tenors'
            DataBinding.FieldName = 'INSITM'
            Width = 50
          end
          object cxGridDBTableView4INSDUE: TcxGridDBColumn
            Caption = 'Due'
            DataBinding.FieldName = 'INSDUE'
            Width = 80
          end
          object cxGridDBTableView4INSIAM: TcxGridDBColumn
            Caption = 'Goods'
            DataBinding.FieldName = 'INSIAM'
            Width = 76
          end
          object cxGridDBTableView4INSIRA: TcxGridDBColumn
            Caption = 'Goods Receive'
            DataBinding.FieldName = 'INSIRA'
            Width = 86
          end
          object cxGridDBTableView4INSVAM: TcxGridDBColumn
            Caption = 'Vat'
            DataBinding.FieldName = 'INSVAM'
            Width = 63
          end
          object cxGridDBTableView4WHT: TcxGridDBColumn
            Caption = 'WT (5%)'
            DataBinding.FieldName = 'WHT'
            Width = 63
          end
          object cxGridDBTableView4INSNET: TcxGridDBColumn
            Caption = 'Net'
            DataBinding.FieldName = 'INSNET'
            Width = 69
          end
          object cxGridDBTableView4CQMDTE: TcxGridDBColumn
            Caption = 'Chq. Date'
            DataBinding.FieldName = 'CQMDTE'
            Width = 75
          end
          object cxGridDBTableView4CQMCNO: TcxGridDBColumn
            Caption = 'Chq. No'
            DataBinding.FieldName = 'CQMCNO'
            Width = 56
          end
          object cxGridDBTableView4CQSADV: TcxGridDBColumn
            Caption = 'Chq. Amount'
            DataBinding.FieldName = 'CQSADV'
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
    end
  end
  object SockCon: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '127.0.0.1'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = False
    AutoConnect = False
    Deploy = False
    Left = 24
    Top = 424
  end
  object connBroker: TConnectionBroker
    Connection = SockCon
    Left = 64
    Top = 392
  end
  object cdsRelatedContract: TClientDataSet
    Aggregates = <>
    CommandText = 'sp_getContractRelated '#39'8100043'#39
    Params = <>
    ProviderName = 'cdsRelatedContract'
    RemoteServer = connBroker
    AfterPost = cdsRelatedContractAfterPost
    Left = 304
    Top = 408
  end
  object cdsHistoryHdr: TClientDataSet
    Aggregates = <>
    CommandText = 'exec SP_GETHISTORY '#39'8100001'#39
    Params = <>
    ProviderName = 'cdsHistoryHdr'
    RemoteServer = connBroker
    Left = 232
    Top = 392
  end
  object dsRelatedContract: TDataSource
    DataSet = cdsRelatedContract
    OnDataChange = dsRelatedContractDataChange
    Left = 360
    Top = 424
  end
  object dsHistoryHdr: TDataSource
    DataSet = cdsHistoryHdr
    Left = 184
    Top = 408
  end
  object dsHistoryDtl: TDataSource
    DataSet = cdsHistoryDtl
    Left = 608
    Top = 448
  end
  object cdsHistoryDtl: TClientDataSet
    Aggregates = <>
    CommandText = 
      'if object_id( '#39'tempdb..#temp0003'#39' ) is not  null drop table #tem' +
      'p0003 select identity(int,1,1) as ID,a.*,b.CQMDUE,c.CARMDL , 0 a' +
      's CQMCHK  into #temp0003 from CQDS003 a  left join CQDM007 b on ' +
      'a.CQSDNO=b.CQMDNO left join DBMCOA03 c on a.CQSCSN=c.COARUN sele' +
      'ct * from #temp0003'
    Params = <>
    ProviderName = 'cdsHistoryDtl'
    RemoteServer = connBroker
    AfterPost = cdsHistoryDtlAfterPost
    Left = 552
    Top = 456
  end
  object cdsDealerHdr: TClientDataSet
    Aggregates = <>
    CommandText = 'exec sp_getEmailRelated '#39'8100053'#39
    Params = <>
    ProviderName = 'cdsDealerHdr'
    RemoteServer = connBroker
    Left = 552
    Top = 416
  end
  object dsDealerHdr: TDataSource
    DataSet = cdsDealerHdr
    Left = 600
    Top = 400
  end
  object cdsDealerDtl: TClientDataSet
    Aggregates = <>
    CommandText = 'exec sp_getEmailRelatedDtl '#39'8100053'#39
    Params = <>
    ProviderName = 'cdsDealerDtl'
    RemoteServer = connBroker
    AfterPost = cdsDealerDtlAfterPost
    Left = 416
    Top = 408
  end
  object dsDealerDtl: TDataSource
    DataSet = cdsDealerDtl
    Left = 464
    Top = 432
  end
  object dsIns: TDataSource
    DataSet = cdsIns
    Left = 128
    Top = 432
  end
  object cdsIns: TClientDataSet
    Aggregates = <>
    CommandText = 'select 0 as CHK,* from HPTINS00'
    Params = <>
    ProviderName = 'cdsIns'
    RemoteServer = connBroker
    Left = 88
    Top = 432
  end
  object cdsSeperateTmp: TClientDataSet
    Aggregates = <>
    CommandText = 'select *,1 as CQSCHK  from CQDS003'
    Params = <>
    ProviderName = 'cdsSeperateTmp'
    Left = 496
    Top = 384
    object cdsSeperateTmpCDE: TStringField
      FieldName = 'CDE'
      Size = 30
    end
    object cdsSeperateTmpCON: TStringField
      FieldName = 'CON'
      Size = 15
    end
    object cdsSeperateTmpITM: TStringField
      FieldName = 'ITM'
      Size = 15
    end
    object cdsSeperateTmpDEA: TStringField
      FieldName = 'DEA'
      Size = 15
    end
    object cdsSeperateTmpAMT: TCurrencyField
      FieldName = 'AMT'
    end
    object cdsSeperateTmpVAT: TCurrencyField
      FieldName = 'VAT'
    end
    object cdsSeperateTmpWHT: TCurrencyField
      FieldName = 'WHT'
    end
    object cdsSeperateTmpRCT: TStringField
      FieldName = 'RCT'
      Size = 3
    end
    object cdsSeperateTmpDES: TStringField
      FieldName = 'DES'
      Size = 200
    end
    object cdsSeperateTmpNET: TCurrencyField
      FieldName = 'NET'
    end
    object cdsSeperateTmpIWHT: TStringField
      FieldName = 'IWHT'
      Size = 1
    end
    object cdsSeperateTmpGOODS: TCurrencyField
      FieldName = 'GOODS'
    end
    object cdsSeperateTmpDIFF: TCurrencyField
      FieldName = 'DIFF'
    end
    object cdsSeperateTmpPFA: TStringField
      FieldName = 'PFA'
      Size = 3
    end
  end
  object dsOtherPayments: TDataSource
    DataSet = cdsOtherPayments
    Left = 272
    Top = 448
  end
  object cdsOtherPayments: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsOtherPayments'
    AfterInsert = cdsOtherPaymentsAfterInsert
    BeforePost = cdsOtherPaymentsBeforePost
    BeforeDelete = cdsOtherPaymentsBeforeDelete
    Left = 232
    Top = 448
    object cdsOtherPaymentsCDE: TStringField
      FieldName = 'CDE'
      Size = 15
    end
    object cdsOtherPaymentsDES: TStringField
      FieldName = 'DES'
      Size = 200
    end
    object cdsOtherPaymentsAMT: TCurrencyField
      FieldName = 'AMT'
    end
    object cdsOtherPaymentsVAT: TCurrencyField
      FieldName = 'VAT'
    end
    object cdsOtherPaymentsNET: TCurrencyField
      FieldName = 'NET'
    end
    object cdsOtherPaymentsCON: TStringField
      FieldName = 'CON'
      Size = 10
    end
    object cdsOtherPaymentsACD: TStringField
      FieldName = 'ACD'
    end
    object cdsOtherPaymentsCONDES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CONDES'
    end
  end
  object cdsInfo: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from fn_GetChqPayment('#39'8100053'#39','#39'2012-12-10'#39')'
    Params = <>
    ProviderName = 'cdsInfo'
    RemoteServer = connBroker
    Left = 128
    Top = 336
  end
  object dsInfo: TDataSource
    DataSet = cdsInfo
    Left = 176
    Top = 336
  end
  object cdsInstallment: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsInstallment'
    RemoteServer = connBroker
    Left = 136
    Top = 168
  end
  object cdsConIRD: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsConIRD'
    RemoteServer = connBroker
    Left = 176
    Top = 232
  end
end
