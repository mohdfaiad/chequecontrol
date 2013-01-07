inherited Q001FrmRequest: TQ001FrmRequest
  Top = 37
  Caption = 'Request Cheque'
  ClientHeight = 667
  ClientWidth = 1028
  OnClose = FormClose
  ExplicitWidth = 1036
  ExplicitHeight = 694
  PixelsPerInch = 96
  TextHeight = 13
  inherited MASTERPANE: TPanel
    Width = 1028
    Height = 667
    ExplicitWidth = 1028
    ExplicitHeight = 667
    inherited pnHeader: TJvPanel
      Width = 1026
      ExplicitWidth = 1026
      inherited ToolBar: TToolBar
        Width = 1024
        ExplicitWidth = 1024
        inherited btnClose: TToolButton
          OnClick = btnCloseClick
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      inherited pnHeaderRight: TJvPanel
        Left = 406
        Top = 35
        Height = 1
        Align = alRight
        ExplicitLeft = 406
        ExplicitTop = 35
        ExplicitHeight = 1
      end
    end
    inherited pnContainer: TPanel
      Width = 1026
      Height = 628
      ExplicitWidth = 1026
      ExplicitHeight = 628
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1026
        Height = 628
        Align = alClient
        TabOrder = 0
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 1024
          Height = 626
          ActivePage = cxTabSheet1
          Align = alClient
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          Style = 9
          TabOrder = 0
          TabPosition = tpBottom
          TabSlants.Kind = skCutCorner
          TabSlants.Positions = [spLeft, spRight]
          OnChange = cxPageControl1Change
          ClientRectBottom = 601
          ClientRectRight = 1024
          ClientRectTop = 0
          object cxTabSheet1: TcxTabSheet
            Caption = 'Req Chq'
            ImageIndex = 0
            object Panel2: TPanel
              Left = 0
              Top = 265
              Width = 1024
              Height = 39
              Align = alBottom
              TabOrder = 0
              DesignSize = (
                1024
                39)
              object cxButton2: TcxButton
                Left = 885
                Top = 3
                Width = 61
                Height = 30
                Anchors = [akTop, akRight, akBottom]
                Caption = '+ Add'
                TabOrder = 0
                OnClick = cxButton2Click
                LookAndFeel.Kind = lfStandard
              end
              object cxButton1: TcxButton
                Left = 954
                Top = 3
                Width = 65
                Height = 30
                Anchors = [akTop, akRight, akBottom]
                Caption = '- Delete'
                TabOrder = 1
                OnClick = DeleteClick
                LookAndFeel.Kind = lfStandard
              end
              object cxButton9: TcxButton
                Left = 118
                Top = 2
                Width = 102
                Height = 33
                Anchors = [akLeft, akTop, akBottom]
                Caption = 'Open'
                TabOrder = 2
                Visible = False
                OnClick = cxButton9Click
                LookAndFeel.Kind = lfStandard
              end
              object cxButton3: TcxButton
                Left = 10
                Top = 2
                Width = 102
                Height = 33
                Anchors = [akLeft, akTop, akBottom]
                Caption = 'New'
                TabOrder = 3
                Visible = False
                OnClick = cxButton3Click
                LookAndFeel.Kind = lfStandard
              end
              object cxLabel34: TcxLabel
                Left = 0
                Top = 3
                Align = alCustom
                AutoSize = False
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsUltraFlat
                Style.Color = clGradientInactiveCaption
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -19
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Height = 30
                Width = 145
              end
              object cxButton6: TcxButton
                Left = 813
                Top = 3
                Width = 66
                Height = 30
                Anchors = [akTop, akRight, akBottom]
                Caption = 'Clear'
                TabOrder = 5
                OnClick = clearClick
                LookAndFeel.Kind = lfStandard
              end
              object reqDate: TcxDateEdit
                Left = 491
                Top = 5
                Properties.ButtonGlyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFAFA290604830604830604830673F3E60483060483060
                  4830604830604830604830604830604830604830604830604830C0A8A0D0B4A0
                  BDA280A58770E0B7A0D0A790A58770E0B7A0BDA280A58770D0B4A0BDA280A587
                  70D0A790BE9781604830C0A8A0FFFFFFFFFFFFBE9781FFF8FFFFF8F0BE9781FF
                  F0F0FFF0F0BE9781FFE8E0FFE8E0BDA280F8E1D0D0C0B0604830C0A8A0FFFFFF
                  FFFFFFD0A790FFFFFFFFF8FFD3A080FFF8F0FFF0F0D3A080FFE8E0FFE8E0D3A0
                  80F8E1D0D0C0B0604830C0B1A0D0B090BE9781A58770D3A080BE9781A58770D3
                  A080BE97811E49E11039C91039C90F30AAD3A080BE9781604830C0B1A0FFFFFF
                  FFFFFFBE9781FFFFFFFFFFFFBE9781FFF8FFFFF8F03261F5FFF8F0FFF8F01039
                  C9FFE8E0D0C0B0604830C0B1A0FFFFFFFFFFFFD3A080FFFFFFFFFFFFD3A080FF
                  FFFFFFF8FF6289F9FFFFFFF6F6F51039C9FFE8E0D0C7C3604830D0B4A0D0B090
                  BE9781A58770D3A080BE9781A58770D3A080BE97817F95F16289F93261F51E49
                  E1D3A080BE9781604830D0B4A0FFFFFFFFFFFFBE9781FFFFFFFFFFFFBE9781FF
                  FFFFFFFFFFBE9781FFF8FFFFF8F0BE9781FFF0F0DFD9D16B543FD0B4A0FFFFFF
                  FFFFFFD3A080FFFFFFFFFFFFD3A080FFFFFFFFFFFFD3A080FFFFFFFFF8FFD3A0
                  80FFF8F0FFF0F0604830F0A890F0A890F0A580F0A580F0A580F09E70E09B70E3
                  8E63E38E63E38E63D97E53D97E53E07540E07540E07540CC6C3AF0A890FFE8E0
                  FFE8E0FFE8E0FFE8E0FFE8E0FFE8E0F8B590FFAC80F0A580F0A580F0A580F0A5
                  80F0A580F09E70CC6C3AF0A890F0A890F0A580F0A580D3A080E09B70E38E63E3
                  8E63E38E63D97E53D97E53D97E53CC6C3AE07540CC6C3ACC6C3AA59EA0FFFFFF
                  909390FFFFFF909390FFFFFF848484FFFFFF848484FFFFFF706D70FFFFFF6365
                  63FFFFFF535D60DFD9D1FFFFFF202720E2DFDD202720E2DFDD202720E4E8EA20
                  2720D0C7C3202720D6D9DE202720F0F0F0202720E2DFDDA59EA0}
                Style.HotTrack = True
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.ButtonStyle = btsDefault
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleHot.BorderStyle = ebsUltraFlat
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.ButtonStyle = btsDefault
                TabOrder = 6
                Width = 110
              end
              object cxLabel2: TcxLabel
                Left = 404
                Top = 7
                AutoSize = False
                Caption = 'Active Date'
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clBlue
                Style.Font.Height = -15
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.IsFontAssigned = True
                Height = 22
                Width = 86
              end
              object cxLabel6: TcxLabel
                Left = 229
                Top = 2
                Align = alCustom
                AutoSize = False
                Caption = 'Batch No:'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Vert = taVCenter
                Style.BorderStyle = ebsUltraFlat
                Style.Color = clGradientInactiveCaption
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -19
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Height = 30
                Width = 166
              end
              object cxLabel9: TcxLabel
                Left = 148
                Top = 5
                AutoSize = False
                Caption = 'Batch  No:'
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clBlue
                Style.Font.Height = -15
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.IsFontAssigned = True
                Height = 22
                Width = 81
              end
              object cxButton11: TcxButton
                Left = 672
                Top = 5
                Width = 123
                Height = 25
                Caption = 'Deposit Delete'
                TabOrder = 10
                OnClick = cxButton11Click
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 560
              Width = 1024
              Height = 41
              Align = alBottom
              TabOrder = 1
              DesignSize = (
                1024
                41)
              object Label2: TLabel
                Left = 3
                Top = 9
                Width = 49
                Height = 18
                Anchors = [akLeft, akTop, akBottom]
                Caption = 'Action :'
              end
              object cbInform: TcxComboBox
                Left = 58
                Top = 6
                Anchors = [akLeft, akTop, akBottom]
                Properties.Items.Strings = (
                  'Repayin Cheque'
                  'Cancel Cheque'
                  'Borrow Cheque'
                  'Reborrow Cheque'
                  'Inactive Cheque'
                  'Reinactive Cheque')
                Properties.OnChange = cbInformPropertiesChange
                TabOrder = 0
                Width = 148
              end
              object cxButton7: TcxButton
                Left = 238
                Top = 6
                Width = 75
                Height = 26
                Anchors = [akLeft, akTop, akBottom]
                Caption = 'Memo Edit'
                TabOrder = 1
                OnClick = MemoClick
                LookAndFeel.Kind = lfStandard
              end
              object cxButton8: TcxButton
                Left = 342
                Top = 7
                Width = 102
                Height = 26
                Anchors = [akLeft, akTop, akBottom]
                Caption = 'Save'
                TabOrder = 2
                Visible = False
                LookAndFeel.Kind = lfStandard
              end
              object cxButton4: TcxButton
                Left = 917
                Top = 6
                Width = 102
                Height = 26
                Anchors = [akTop, akRight, akBottom]
                Caption = 'Submit'
                TabOrder = 3
                Visible = False
                OnClick = submitClick
                LookAndFeel.Kind = lfStandard
              end
              object cxButton5: TcxButton
                Left = 450
                Top = 6
                Width = 102
                Height = 26
                Anchors = [akLeft, akTop, akBottom]
                Caption = 'Save As...'
                TabOrder = 4
                Visible = False
                Glyph.Data = {
                  0E060000424D0E06000000000000360000002800000016000000160000000100
                  180000000000D8050000C40E0000C40E00000000000000000000C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                  D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                  0000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4A57473A57473A57473A574
                  73A57473A57473A57473A57473A57473A57473A57473A57473A57473C8D0D4C8
                  D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4A57473FFF6E1FF
                  F0D6FFF0D6FFECCDFFECCDFFE1C2FFE4BDFFE4BDFFDDB5FFDFAEFFD8B0A57473
                  C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4A57473
                  FFF6E1B0B1AF41546BB0B1AFFFE5C7DBDCE0E8CCBBE8CCBBFFD8B0FFD8B0FAD0
                  ACA57473C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                  D4AA7D7DFFF4E641546BD3D4D041546BFFE7CF9C9798988A8E998681FFDDB5FF
                  DDB5FAD3B0A57473C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8
                  D0D4C8D0D4AE8483FFF9EFB0B1AF41546BB0B1AFFFE7CFFFE7CFFFE5C7FFE1C2
                  FFDEBCFFDDB5FAD6B6A57473C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4AE8483FFF9EFFFF4E6FFF4E6FFEFDDFFEFDDFFE7CFFFE7
                  CFFFE5C7FFE1C2FFE1C2FAD6B6A57473C8D0D4C8D0D4C8D0D4C8D0D40000C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4B08B89FFFCF7B3B4B041546BB0B1AFFFEFDDE5
                  E0E1E4D9D5E2D2C6FFE5C7FFE5C7FADABEA57473C8D0D4C8D0D4C8D0D4C8D0D4
                  0000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4B4918EFFFCF741546BD3D4D041546B
                  FFEFDDA19C9DA19790A99A8AFFE7CFFFE5C7FADABEA57473C8D0D4C8D0D4C8D0
                  D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4B79694FFFFFFB3B4B04154
                  6BB9BAB8FFF4E6FFF4E6FFEFDDFFEFDDFFE7CFFFE7CFFBE0CBA57473C8D0D4C8
                  D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4BC9C99FFFFFFFF
                  FFFFFFFCF7FFFCF7FFF4E6FFF4E6FFF4E6FFEFDDFFEFDDFFE7CFFBE0CBA57473
                  C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C2A49E
                  FFFFFFB3B4B041546BB0B1AFFFF9EFE5E0E1E4D9D5E2D2C6F2D5BCF2D5BCEFCA
                  B1A57473C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                  D4C7AAA4FFFFFF41546BD3D4D041546BFFFCF7A19C9DA19790D39871D39871D3
                  9871D39871A57473C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8
                  D0D4C8D0D4D1B6AEFFFFFFB3B4B041546BB9BAB8FFFCF7FFFCF7FFFCF7D39871
                  F6ECE8F2E1D2E1B79DA57473C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4D1B6AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
                  F7D39871F4E8DFF8BE6FB47A56BFBDC2C8D0D4C8D0D4C8D0D4C8D0D40000C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4D6BEB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFD39871E3C8B3BE967FBFBDC2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                  0000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D8BEAFDFC8BCD6BEB5D1B6AEC4A7A1
                  BD9B96B58F8CAE8483AA7D7DC0A59EC3C4C7C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                  D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                  D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000}
                LookAndFeel.Kind = lfStandard
              end
              object btn1: TButton
                Left = 600
                Top = 6
                Width = 92
                Height = 25
                Caption = 'PRINT'
                TabOrder = 5
                Visible = False
                OnClick = btn1Click
              end
            end
            object cxGrid1: TcxGrid
              Tag = 10
              Left = 0
              Top = 304
              Width = 1024
              Height = 256
              Align = alBottom
              TabOrder = 2
              object gdbtvSelectedList: TcxGridDBTableView
                OnDblClick = DrillDownClick
                OnKeyDown = gdbtvSelectedListKeyDown
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = DataSource2
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skCount
                    Column = cxGridDBColumn2
                  end
                  item
                    Format = '#,##0.00'
                    Kind = skSum
                    Column = G1Column_Amt
                  end>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Click here to finding data.'
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsSelection.MultiSelect = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGridDBColumn2: TcxGridDBColumn
                  Tag = 99
                  Caption = 'Item'
                  OnGetDisplayText = cxGridDBColumn2GetDisplayText
                  HeaderAlignmentHorz = taCenter
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 38
                end
                object G1Column_bank_n: TcxGridDBColumn
                  Caption = 'Bank Name'
                  DataBinding.FieldName = 'CQTEGN'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object G1Column_branch_n: TcxGridDBColumn
                  Caption = 'Branch Name'
                  DataBinding.FieldName = 'CQTBRH'
                  HeaderAlignmentHorz = taCenter
                  Width = 164
                end
                object G1Column_item: TcxGridDBColumn
                  Caption = 'Chq. No.'
                  DataBinding.FieldName = 'CQTNo2'
                  HeaderAlignmentHorz = taCenter
                  Width = 65
                end
                object G1Column_Amt: TcxGridDBColumn
                  Caption = 'Chq. Amount'
                  DataBinding.FieldName = 'CQTAMT'
                  OnGetDisplayText = G1Column_AmtGetDisplayText
                  HeaderAlignmentHorz = taCenter
                  Width = 98
                end
                object G1Column_chq_date: TcxGridDBColumn
                  Tag = 99
                  Caption = 'Chq. Date'
                  DataBinding.FieldName = 'CQTDAT'
                  HeaderAlignmentHorz = taCenter
                  Width = 80
                end
                object G1Column_Deposit_date: TcxGridDBColumn
                  Tag = 99
                  Caption = 'Deposit date'
                  DataBinding.FieldName = 'CQTTRD'
                  HeaderAlignmentHorz = taCenter
                  Width = 80
                end
                object G1Column_contract: TcxGridDBColumn
                  Caption = 'Contract No.'
                  DataBinding.FieldName = 'CQTCON'
                  HeaderAlignmentHorz = taCenter
                  Width = 88
                end
                object G1Column_dealer: TcxGridDBColumn
                  Caption = 'Dealers'
                  DataBinding.FieldName = 'CQTDEA'
                  HeaderAlignmentHorz = taCenter
                  Width = 257
                end
                object G1Column_Carmodel: TcxGridDBColumn
                  Caption = 'Car Model'
                  DataBinding.FieldName = 'CQTMDL'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object G1Column_chq_type: TcxGridDBColumn
                  Caption = 'Chq. Type'
                  DataBinding.FieldName = 'CQTCTY'
                  HeaderAlignmentHorz = taCenter
                  Width = 46
                end
                object G1Column_Re_reason: TcxGridDBColumn
                  Caption = 'Return Reason'
                  DataBinding.FieldName = 'CQTTRSON'
                  HeaderAlignmentHorz = taCenter
                  Width = 113
                end
                object G1Column_Active: TcxGridDBColumn
                  Caption = 'Active'
                  DataBinding.FieldName = 'CQTACT'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 40
                end
                object G1Column_status: TcxGridDBColumn
                  Tag = 99
                  Caption = 'Status'
                  DataBinding.FieldName = 'CQTSTS'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 37
                end
                object G1CQTMNS: TcxGridDBColumn
                  Caption = 'Req Status'
                  DataBinding.FieldName = 'CQTMNS'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 60
                end
                object G1CQTMMO: TcxGridDBColumn
                  Caption = 'Memo'
                  DataBinding.FieldName = 'CQTMMO'
                  HeaderAlignmentHorz = taCenter
                  Width = 150
                end
                object G1Column_CheckCondition: TcxGridDBColumn
                  Caption = 'Condition'
                  DataBinding.FieldName = 'CQTYES'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 60
                end
                object G1Ac_status: TcxGridDBColumn
                  Caption = 'Status'
                  DataBinding.FieldName = 'StatusCal'
                  HeaderAlignmentHorz = taCenter
                  Width = 50
                end
                object G1Couumn_Rfn: TcxGridDBColumn
                  DataBinding.FieldName = 'cqtrfn'
                  Visible = False
                end
                object G1column_Active_date: TcxGridDBColumn
                  Caption = 'ActiveDate'
                  DataBinding.FieldName = 'CQTACD'
                  Width = 80
                end
                object gdbtvSelectedListColumn1: TcxGridDBColumn
                  Caption = 'bbbb'
                  DataBinding.FieldName = 'StatusCal'
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = gdbtvSelectedList
              end
            end
            object SearchBar1: TSearchBar
              Left = 0
              Top = 0
              Width = 1024
              Height = 44
              Align = alTop
              TabOrder = 3
              SQLPrefix = 'AND'
              Bracket = True
            end
            object Panel1: TPanel
              Left = 0
              Top = 44
              Width = 1024
              Height = 57
              Align = alTop
              TabOrder = 4
              DesignSize = (
                1024
                57)
              object cxLabel1: TcxLabel
                Left = -2
                Top = 15
                Caption = 'Chq Status'
              end
              object cxGroupBox1: TcxGroupBox
                Left = 244
                Top = 2
                Caption = 'Cheque Date'
                TabOrder = 1
                Height = 46
                Width = 301
                object deFrom: TcxDateEdit
                  Left = 9
                  Top = 17
                  Properties.ButtonGlyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFAFA290604830604830604830673F3E60483060483060
                    4830604830604830604830604830604830604830604830604830C0A8A0D0B4A0
                    BDA280A58770E0B7A0D0A790A58770E0B7A0BDA280A58770D0B4A0BDA280A587
                    70D0A790BE9781604830C0A8A0FFFFFFFFFFFFBE9781FFF8FFFFF8F0BE9781FF
                    F0F0FFF0F0BE9781FFE8E0FFE8E0BDA280F8E1D0D0C0B0604830C0A8A0FFFFFF
                    FFFFFFD0A790FFFFFFFFF8FFD3A080FFF8F0FFF0F0D3A080FFE8E0FFE8E0D3A0
                    80F8E1D0D0C0B0604830C0B1A0D0B090BE9781A58770D3A080BE9781A58770D3
                    A080BE97811E49E11039C91039C90F30AAD3A080BE9781604830C0B1A0FFFFFF
                    FFFFFFBE9781FFFFFFFFFFFFBE9781FFF8FFFFF8F03261F5FFF8F0FFF8F01039
                    C9FFE8E0D0C0B0604830C0B1A0FFFFFFFFFFFFD3A080FFFFFFFFFFFFD3A080FF
                    FFFFFFF8FF6289F9FFFFFFF6F6F51039C9FFE8E0D0C7C3604830D0B4A0D0B090
                    BE9781A58770D3A080BE9781A58770D3A080BE97817F95F16289F93261F51E49
                    E1D3A080BE9781604830D0B4A0FFFFFFFFFFFFBE9781FFFFFFFFFFFFBE9781FF
                    FFFFFFFFFFBE9781FFF8FFFFF8F0BE9781FFF0F0DFD9D16B543FD0B4A0FFFFFF
                    FFFFFFD3A080FFFFFFFFFFFFD3A080FFFFFFFFFFFFD3A080FFFFFFFFF8FFD3A0
                    80FFF8F0FFF0F0604830F0A890F0A890F0A580F0A580F0A580F09E70E09B70E3
                    8E63E38E63E38E63D97E53D97E53E07540E07540E07540CC6C3AF0A890FFE8E0
                    FFE8E0FFE8E0FFE8E0FFE8E0FFE8E0F8B590FFAC80F0A580F0A580F0A580F0A5
                    80F0A580F09E70CC6C3AF0A890F0A890F0A580F0A580D3A080E09B70E38E63E3
                    8E63E38E63D97E53D97E53D97E53CC6C3AE07540CC6C3ACC6C3AA59EA0FFFFFF
                    909390FFFFFF909390FFFFFF848484FFFFFF848484FFFFFF706D70FFFFFF6365
                    63FFFFFF535D60DFD9D1FFFFFF202720E2DFDD202720E2DFDD202720E4E8EA20
                    2720D0C7C3202720D6D9DE202720F0F0F0202720E2DFDDA59EA0}
                  Style.HotTrack = True
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.ButtonStyle = btsDefault
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.BorderStyle = ebsUltraFlat
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.ButtonStyle = btsDefault
                  TabOrder = 0
                  Width = 121
                end
                object cxLabel4: TcxLabel
                  Left = 137
                  Top = 18
                  Caption = 'To'
                end
                object deTo: TcxDateEdit
                  Left = 165
                  Top = 17
                  Properties.ButtonGlyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFAFA290604830604830604830673F3E60483060483060
                    4830604830604830604830604830604830604830604830604830C0A8A0D0B4A0
                    BDA280A58770E0B7A0D0A790A58770E0B7A0BDA280A58770D0B4A0BDA280A587
                    70D0A790BE9781604830C0A8A0FFFFFFFFFFFFBE9781FFF8FFFFF8F0BE9781FF
                    F0F0FFF0F0BE9781FFE8E0FFE8E0BDA280F8E1D0D0C0B0604830C0A8A0FFFFFF
                    FFFFFFD0A790FFFFFFFFF8FFD3A080FFF8F0FFF0F0D3A080FFE8E0FFE8E0D3A0
                    80F8E1D0D0C0B0604830C0B1A0D0B090BE9781A58770D3A080BE9781A58770D3
                    A080BE97811E49E11039C91039C90F30AAD3A080BE9781604830C0B1A0FFFFFF
                    FFFFFFBE9781FFFFFFFFFFFFBE9781FFF8FFFFF8F03261F5FFF8F0FFF8F01039
                    C9FFE8E0D0C0B0604830C0B1A0FFFFFFFFFFFFD3A080FFFFFFFFFFFFD3A080FF
                    FFFFFFF8FF6289F9FFFFFFF6F6F51039C9FFE8E0D0C7C3604830D0B4A0D0B090
                    BE9781A58770D3A080BE9781A58770D3A080BE97817F95F16289F93261F51E49
                    E1D3A080BE9781604830D0B4A0FFFFFFFFFFFFBE9781FFFFFFFFFFFFBE9781FF
                    FFFFFFFFFFBE9781FFF8FFFFF8F0BE9781FFF0F0DFD9D16B543FD0B4A0FFFFFF
                    FFFFFFD3A080FFFFFFFFFFFFD3A080FFFFFFFFFFFFD3A080FFFFFFFFF8FFD3A0
                    80FFF8F0FFF0F0604830F0A890F0A890F0A580F0A580F0A580F09E70E09B70E3
                    8E63E38E63E38E63D97E53D97E53E07540E07540E07540CC6C3AF0A890FFE8E0
                    FFE8E0FFE8E0FFE8E0FFE8E0FFE8E0F8B590FFAC80F0A580F0A580F0A580F0A5
                    80F0A580F09E70CC6C3AF0A890F0A890F0A580F0A580D3A080E09B70E38E63E3
                    8E63E38E63D97E53D97E53D97E53CC6C3AE07540CC6C3ACC6C3AA59EA0FFFFFF
                    909390FFFFFF909390FFFFFF848484FFFFFF848484FFFFFF706D70FFFFFF6365
                    63FFFFFF535D60DFD9D1FFFFFF202720E2DFDD202720E2DFDD202720E4E8EA20
                    2720D0C7C3202720D6D9DE202720F0F0F0202720E2DFDDA59EA0}
                  Style.ButtonStyle = btsDefault
                  TabOrder = 2
                  Width = 121
                end
                object cbDate: TcxCheckBox
                  Left = 18
                  Top = 17
                  Caption = 'Enable'
                  State = cbsChecked
                  TabOrder = 3
                  Visible = False
                  OnClick = cbDateClick
                  Width = 68
                end
              end
              object Button1: TButton
                Left = 561
                Top = 17
                Width = 92
                Height = 25
                Caption = 'Search'
                TabOrder = 2
                OnClick = MaschqClick
              end
              object ListStatusChq: TcxComboBox
                Left = 76
                Top = 11
                Anchors = [akLeft, akTop, akBottom]
                Properties.Items.Strings = (
                  'Deposit Cheque'
                  'PayIn  Cheque'
                  'Pass Cheque'
                  'ReTurn Cheque'
                  'Cancel Cheque'
                  'Borrow Cheque'
                  'Inactive Cheque'
                  'All')
                Properties.OnChange = cbInformPropertiesChange
                TabOrder = 3
                Width = 148
              end
              object UnSA: TButton
                Left = 929
                Top = 17
                Width = 92
                Height = 25
                Anchors = [akTop, akRight]
                Caption = 'UnSelect All'
                TabOrder = 4
                OnClick = UnSAClick
              end
              object SA: TButton
                Left = 831
                Top = 18
                Width = 92
                Height = 25
                Anchors = [akTop, akRight]
                Caption = 'Select All'
                TabOrder = 5
                OnClick = SAClick
              end
            end
            object CxGBank: TcxGrid
              Left = 0
              Top = 101
              Width = 1024
              Height = 164
              Align = alTop
              TabOrder = 5
              object gdbtvSearchList: TcxGridDBTableView
                OnKeyDown = gdbtvSearchListKeyDown
                NavigatorButtons.ConfirmDelete = False
                OnCellClick = gdbtvSearchListCellClick
                OnCustomDrawCell = gdbtvSearchListCustomDrawCell
                OnSelectionChanged = gdbtvSearchListSelectionChanged
                DataController.DataSource = DataSource1
                DataController.DetailKeyFieldNames = 'CQSDNO'
                DataController.KeyFieldNames = 'CQMRFN'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skSum
                    FieldName = 'CQMAMT'
                    Column = gdbtvSearchListColumn3
                  end
                  item
                    Kind = skCount
                    Column = gdbtvSearchListColumn16
                  end
                  item
                    Format = #39'0'#39
                    Kind = skCount
                  end
                  item
                    Format = #39'0.00'#39
                    Kind = skCount
                    Column = gdbtvSearchListColumn2
                  end>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Click here to finding data.'
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsSelection.MultiSelect = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                OnColumnHeaderClick = gdbtvSearchListColumnHeaderClick
                object checkboxja: TcxGridDBColumn
                  DataBinding.FieldName = 'CHK'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayChecked = '1'
                  Properties.DisplayUnchecked = '0'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  Width = 25
                  IsCaptionAssigned = True
                end
                object gdbtvSearchListColumn16: TcxGridDBColumn
                  Tag = 99
                  AlternateCaption = '0'
                  Caption = 'Item'
                  OnGetDisplayText = gdbtvSearchListColumn16GetDisplayText
                  HeaderAlignmentHorz = taCenter
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 38
                end
                object gdbtvSearchListColumn13: TcxGridDBColumn
                  Caption = 'Bank Name'
                  DataBinding.FieldName = 'CQMEGN'
                  HeaderAlignmentHorz = taCenter
                  Width = 85
                end
                object gdbtvSearchListColumn15: TcxGridDBColumn
                  Caption = 'Branch Name'
                  DataBinding.FieldName = 'CQMBRH'
                  HeaderAlignmentHorz = taCenter
                  Width = 173
                end
                object gdbtvSearchListColumn4: TcxGridDBColumn
                  Caption = 'Chq. No.'
                  DataBinding.FieldName = 'CQMNO2'
                  HeaderAlignmentHorz = taCenter
                  Width = 70
                end
                object gdbtvSearchListColumn3: TcxGridDBColumn
                  Tag = 77
                  Caption = 'Chq. Amount'
                  DataBinding.FieldName = 'CQMAMT'
                  OnGetDisplayText = gdbtvSearchListColumn3GetDisplayText
                  HeaderAlignmentHorz = taCenter
                  Width = 100
                end
                object gdbtvSearchListColumn2: TcxGridDBColumn
                  Tag = 99
                  Caption = 'Chq. Date'
                  DataBinding.FieldName = 'CQMDAT'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 88
                end
                object G1chqDate: TcxGridDBColumn
                  Caption = 'Chq. Date'
                  OnGetDisplayText = G1chqDateGetDisplayText
                  Width = 88
                end
                object gdbtvSearchListColumn9: TcxGridDBColumn
                  Tag = 99
                  Caption = 'Deposit Date'
                  DataBinding.FieldName = 'CQMTRD'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 88
                end
                object G1depDate: TcxGridDBColumn
                  Caption = 'Deposit Date'
                  OnGetDisplayText = G1depDateGetDisplayText
                  Width = 95
                end
                object gdbtvSearchListColumn5: TcxGridDBColumn
                  Caption = 'Contract No.'
                  DataBinding.FieldName = 'CQMCSN'
                  HeaderAlignmentHorz = taCenter
                  Width = 93
                end
                object gdbtvSearchListColumn7: TcxGridDBColumn
                  Caption = 'Dealers'
                  DataBinding.FieldName = 'DLR Name'
                  HeaderAlignmentHorz = taCenter
                  Width = 237
                end
                object gdbtvSearchListColumn8: TcxGridDBColumn
                  Caption = 'Car Model'
                  DataBinding.FieldName = 'CARMDL'
                  HeaderAlignmentHorz = taCenter
                  Width = 97
                end
                object gdbtvSearchListColumn10: TcxGridDBColumn
                  Caption = 'Chq. Type'
                  DataBinding.FieldName = 'CQMCTY'
                  HeaderAlignmentHorz = taCenter
                  Width = 69
                end
                object gdbtvSearchListColumn11: TcxGridDBColumn
                  Caption = 'Return Reason'
                  DataBinding.FieldName = 'CQMNAT'
                  HeaderAlignmentHorz = taCenter
                  Width = 113
                end
                object gdbtvSearchListColumn18: TcxGridDBColumn
                  Tag = 99
                  Caption = 'Status'
                  DataBinding.FieldName = 'CQMSTA'
                  OnGetDisplayText = gdbtvSearchListColumn18GetDisplayText
                  HeaderAlignmentHorz = taCenter
                  Width = 50
                end
                object gdbtvSearchListColumn1: TcxGridDBColumn
                  Caption = 'iiii'
                  DataBinding.FieldName = 'CQMRFN'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                end
                object G1Status: TcxGridDBColumn
                  Caption = 'Status'
                  Visible = False
                  OnGetDisplayText = G1StatusGetDisplayText
                end
              end
              object CxGBankDBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = detail
                DataController.DetailKeyFieldNames = 'CQSDNO'
                DataController.MasterKeyFieldNames = 'CQMRFN'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.GroupByBox = False
                object Detail_contact: TcxGridDBColumn
                  Caption = 'Contact'
                  DataBinding.FieldName = 'CQSCSN'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object detail_deler: TcxGridDBColumn
                  Caption = 'Dealer Name'
                  DataBinding.FieldName = 'DLR Name'
                  HeaderAlignmentHorz = taCenter
                  Width = 300
                end
                object detail_Model: TcxGridDBColumn
                  Caption = 'Car Model'
                  DataBinding.FieldName = 'CARMDL'
                  HeaderAlignmentHorz = taCenter
                  Width = 120
                end
                object CxGBankDBTableView1Column1: TcxGridDBColumn
                  DataBinding.FieldName = 'CQSDNO'
                  HeaderAlignmentHorz = taCenter
                end
              end
              object CxGBankLevel1: TcxGridLevel
                GridView = gdbtvSearchList
                object CxGBankLevel2: TcxGridLevel
                  GridView = CxGBankDBTableView1
                end
              end
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Manage Req Chq'
            ImageIndex = 2
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 1024
              Height = 601
              Align = alClient
              TabOrder = 0
              object cxPageControl2: TcxPageControl
                Left = 1
                Top = 68
                Width = 1022
                Height = 491
                Align = alClient
                Style = 9
                TabOrder = 0
                TabSlants.Kind = skCutCorner
                TabSlants.Positions = [spLeft, spRight]
                ClientRectBottom = 491
                ClientRectRight = 1022
                ClientRectTop = 0
              end
              object Panel7: TPanel
                Left = 1
                Top = 1
                Width = 1022
                Height = 67
                Align = alTop
                TabOrder = 1
                DesignSize = (
                  1022
                  67)
                object Label1: TLabel
                  Left = 257
                  Top = 11
                  Width = 31
                  Height = 18
                  Anchors = [akLeft, akTop, akBottom]
                  Caption = 'Date'
                end
                object Label3: TLabel
                  Left = 11
                  Top = 11
                  Width = 49
                  Height = 18
                  Anchors = [akLeft, akTop, akBottom]
                  Caption = 'Action :'
                end
                object cxComboBox1: TcxComboBox
                  Left = 63
                  Top = 7
                  Anchors = [akLeft, akTop, akBottom]
                  Properties.Items.Strings = (
                    'Repayin Cheque'
                    'Cancel Cheque'
                    'Borrow Cheque'
                    'Reborrow Cheque'
                    'Inactive Cheque'
                    'Reactive Cheque')
                  Properties.OnChange = cbInformPropertiesChange
                  TabOrder = 0
                  Width = 139
                end
                object ManReqDate1: TcxDateEdit
                  Left = 294
                  Top = 6
                  Properties.ButtonGlyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFAFA290604830604830604830673F3E60483060483060
                    4830604830604830604830604830604830604830604830604830C0A8A0D0B4A0
                    BDA280A58770E0B7A0D0A790A58770E0B7A0BDA280A58770D0B4A0BDA280A587
                    70D0A790BE9781604830C0A8A0FFFFFFFFFFFFBE9781FFF8FFFFF8F0BE9781FF
                    F0F0FFF0F0BE9781FFE8E0FFE8E0BDA280F8E1D0D0C0B0604830C0A8A0FFFFFF
                    FFFFFFD0A790FFFFFFFFF8FFD3A080FFF8F0FFF0F0D3A080FFE8E0FFE8E0D3A0
                    80F8E1D0D0C0B0604830C0B1A0D0B090BE9781A58770D3A080BE9781A58770D3
                    A080BE97811E49E11039C91039C90F30AAD3A080BE9781604830C0B1A0FFFFFF
                    FFFFFFBE9781FFFFFFFFFFFFBE9781FFF8FFFFF8F03261F5FFF8F0FFF8F01039
                    C9FFE8E0D0C0B0604830C0B1A0FFFFFFFFFFFFD3A080FFFFFFFFFFFFD3A080FF
                    FFFFFFF8FF6289F9FFFFFFF6F6F51039C9FFE8E0D0C7C3604830D0B4A0D0B090
                    BE9781A58770D3A080BE9781A58770D3A080BE97817F95F16289F93261F51E49
                    E1D3A080BE9781604830D0B4A0FFFFFFFFFFFFBE9781FFFFFFFFFFFFBE9781FF
                    FFFFFFFFFFBE9781FFF8FFFFF8F0BE9781FFF0F0DFD9D16B543FD0B4A0FFFFFF
                    FFFFFFD3A080FFFFFFFFFFFFD3A080FFFFFFFFFFFFD3A080FFFFFFFFF8FFD3A0
                    80FFF8F0FFF0F0604830F0A890F0A890F0A580F0A580F0A580F09E70E09B70E3
                    8E63E38E63E38E63D97E53D97E53E07540E07540E07540CC6C3AF0A890FFE8E0
                    FFE8E0FFE8E0FFE8E0FFE8E0FFE8E0F8B590FFAC80F0A580F0A580F0A580F0A5
                    80F0A580F09E70CC6C3AF0A890F0A890F0A580F0A580D3A080E09B70E38E63E3
                    8E63E38E63D97E53D97E53D97E53CC6C3AE07540CC6C3ACC6C3AA59EA0FFFFFF
                    909390FFFFFF909390FFFFFF848484FFFFFF848484FFFFFF706D70FFFFFF6365
                    63FFFFFF535D60DFD9D1FFFFFF202720E2DFDD202720E2DFDD202720E4E8EA20
                    2720D0C7C3202720D6D9DE202720F0F0F0202720E2DFDDA59EA0}
                  Style.HotTrack = True
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.ButtonStyle = btsDefault
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.BorderStyle = ebsUltraFlat
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.ButtonStyle = btsDefault
                  TabOrder = 1
                  Width = 121
                end
                object cxLabel3: TcxLabel
                  Left = 419
                  Top = 10
                  Caption = 'To'
                end
                object ManReqDate2: TcxDateEdit
                  Left = 442
                  Top = 7
                  Properties.ButtonGlyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFAFA290604830604830604830673F3E60483060483060
                    4830604830604830604830604830604830604830604830604830C0A8A0D0B4A0
                    BDA280A58770E0B7A0D0A790A58770E0B7A0BDA280A58770D0B4A0BDA280A587
                    70D0A790BE9781604830C0A8A0FFFFFFFFFFFFBE9781FFF8FFFFF8F0BE9781FF
                    F0F0FFF0F0BE9781FFE8E0FFE8E0BDA280F8E1D0D0C0B0604830C0A8A0FFFFFF
                    FFFFFFD0A790FFFFFFFFF8FFD3A080FFF8F0FFF0F0D3A080FFE8E0FFE8E0D3A0
                    80F8E1D0D0C0B0604830C0B1A0D0B090BE9781A58770D3A080BE9781A58770D3
                    A080BE97811E49E11039C91039C90F30AAD3A080BE9781604830C0B1A0FFFFFF
                    FFFFFFBE9781FFFFFFFFFFFFBE9781FFF8FFFFF8F03261F5FFF8F0FFF8F01039
                    C9FFE8E0D0C0B0604830C0B1A0FFFFFFFFFFFFD3A080FFFFFFFFFFFFD3A080FF
                    FFFFFFF8FF6289F9FFFFFFF6F6F51039C9FFE8E0D0C7C3604830D0B4A0D0B090
                    BE9781A58770D3A080BE9781A58770D3A080BE97817F95F16289F93261F51E49
                    E1D3A080BE9781604830D0B4A0FFFFFFFFFFFFBE9781FFFFFFFFFFFFBE9781FF
                    FFFFFFFFFFBE9781FFF8FFFFF8F0BE9781FFF0F0DFD9D16B543FD0B4A0FFFFFF
                    FFFFFFD3A080FFFFFFFFFFFFD3A080FFFFFFFFFFFFD3A080FFFFFFFFF8FFD3A0
                    80FFF8F0FFF0F0604830F0A890F0A890F0A580F0A580F0A580F09E70E09B70E3
                    8E63E38E63E38E63D97E53D97E53E07540E07540E07540CC6C3AF0A890FFE8E0
                    FFE8E0FFE8E0FFE8E0FFE8E0FFE8E0F8B590FFAC80F0A580F0A580F0A580F0A5
                    80F0A580F09E70CC6C3AF0A890F0A890F0A580F0A580D3A080E09B70E38E63E3
                    8E63E38E63D97E53D97E53D97E53CC6C3AE07540CC6C3ACC6C3AA59EA0FFFFFF
                    909390FFFFFF909390FFFFFF848484FFFFFF848484FFFFFF706D70FFFFFF6365
                    63FFFFFF535D60DFD9D1FFFFFF202720E2DFDD202720E2DFDD202720E4E8EA20
                    2720D0C7C3202720D6D9DE202720F0F0F0202720E2DFDDA59EA0}
                  Style.ButtonStyle = btsDefault
                  TabOrder = 3
                  Width = 121
                end
                object cxTextEdit1: TcxTextEdit
                  Left = 63
                  Top = 37
                  Properties.MaxLength = 7
                  TabOrder = 4
                  Width = 113
                end
                object cxLabel5: TcxLabel
                  Left = 2
                  Top = 37
                  Caption = 'Chq No.'
                  Properties.LabelStyle = cxlsRaised
                  Style.Edges = [bLeft, bTop, bRight, bBottom]
                  Style.Shadow = False
                end
                object cxButton10: TcxButton
                  Left = 595
                  Top = 8
                  Width = 56
                  Height = 27
                  Anchors = [akLeft, akTop, akBottom]
                  Caption = 'Search'
                  TabOrder = 6
                  OnClick = searchClick
                  LookAndFeel.Kind = lfStandard
                end
                object cxLabel11: TcxLabel
                  Left = 221
                  Top = 40
                  Caption = 'Batch No.'
                  Properties.LabelStyle = cxlsRaised
                  Style.Edges = [bLeft, bTop, bRight, bBottom]
                  Style.Shadow = False
                end
                object cxTextEdit3: TcxTextEdit
                  Left = 294
                  Top = 37
                  Properties.CharCase = ecUpperCase
                  TabOrder = 8
                  Width = 269
                end
              end
              object cxGrid2: TcxGrid
                Tag = 20
                Left = 1
                Top = 68
                Width = 1022
                Height = 491
                Align = alClient
                TabOrder = 2
                object gdbtvLogList: TcxGridDBTableView
                  OnDblClick = DrillDownClick
                  NavigatorButtons.ConfirmDelete = False
                  DataController.DataSource = DTSManReq
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skCount
                      Column = G2Column_item
                    end
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                      FieldName = 'CQTAMT'
                      Column = G2Column_amt
                    end>
                  DataController.Summary.SummaryGroups = <>
                  NewItemRow.InfoText = 'Click here to finding data.'
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.CellSelect = False
                  OptionsSelection.MultiSelect = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object G2Column_item: TcxGridDBColumn
                    Tag = 99
                    Caption = 'Item'
                    OnGetDisplayText = cxGridDBColumn2GetDisplayText
                    HeaderAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 38
                  end
                  object G2Column_Bank_n: TcxGridDBColumn
                    Caption = 'Bank Name'
                    DataBinding.FieldName = 'CQTEGN'
                    HeaderAlignmentHorz = taCenter
                    Width = 90
                  end
                  object G2Column_Branch_n: TcxGridDBColumn
                    Caption = 'Branch Name'
                    DataBinding.FieldName = 'CQTBRH'
                    HeaderAlignmentHorz = taCenter
                    Width = 164
                  end
                  object G2Column_No: TcxGridDBColumn
                    Caption = 'Chq. No'
                    DataBinding.FieldName = 'CQTNO2'
                    HeaderAlignmentHorz = taCenter
                    Width = 65
                  end
                  object G2Column_amt: TcxGridDBColumn
                    Caption = 'Chq. Amount'
                    DataBinding.FieldName = 'CQTAMT'
                    OnGetDisplayText = G2Column_amtGetDisplayText
                    HeaderAlignmentHorz = taCenter
                    Width = 98
                  end
                  object G2Column_chqDate: TcxGridDBColumn
                    Tag = 99
                    Caption = 'Chq. Date'
                    DataBinding.FieldName = 'CQTDAT'
                    HeaderAlignmentHorz = taCenter
                    Width = 82
                  end
                  object G2Column_deposit: TcxGridDBColumn
                    Tag = 99
                    Caption = 'Deposit Date'
                    DataBinding.FieldName = 'CQTTRD'
                    HeaderAlignmentHorz = taCenter
                    Width = 82
                  end
                  object G2Column_contract: TcxGridDBColumn
                    Caption = 'Contract No.'
                    DataBinding.FieldName = 'CQTCON'
                    HeaderAlignmentHorz = taCenter
                    Width = 90
                  end
                  object G2Column_dealers: TcxGridDBColumn
                    Caption = 'Dealer'
                    DataBinding.FieldName = 'CQTDEA'
                    HeaderAlignmentHorz = taCenter
                    Width = 257
                  end
                  object G2Column_carmodel: TcxGridDBColumn
                    Caption = 'Car Model'
                    DataBinding.FieldName = 'CQTMDL'
                    HeaderAlignmentHorz = taCenter
                    Width = 90
                  end
                  object G2Column_chqtype: TcxGridDBColumn
                    Caption = 'Chq Type'
                    DataBinding.FieldName = 'CQTCTY'
                    HeaderAlignmentHorz = taCenter
                    Width = 46
                  end
                  object G2Column_rereason: TcxGridDBColumn
                    Caption = 'Return Reason'
                    DataBinding.FieldName = 'CQTRUN'
                    HeaderAlignmentHorz = taCenter
                    Width = 113
                  end
                  object G2Column_active: TcxGridDBColumn
                    Caption = 'Active'
                    DataBinding.FieldName = 'CQTACT'
                    HeaderAlignmentHorz = taCenter
                    Width = 42
                  end
                  object G2Column_status: TcxGridDBColumn
                    Tag = 99
                    Caption = 'Status'
                    DataBinding.FieldName = 'CQTSTS'
                    HeaderAlignmentHorz = taCenter
                    Width = 37
                  end
                  object G2Column_reqStaus: TcxGridDBColumn
                    Caption = 'Req Status'
                    DataBinding.FieldName = 'CQTMNS'
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                  end
                  object G2Column_memo: TcxGridDBColumn
                    Caption = 'Memo'
                    DataBinding.FieldName = 'CQTMMO'
                    HeaderAlignmentHorz = taCenter
                    Width = 180
                  end
                  object G2Column_editor: TcxGridDBColumn
                    Caption = 'Editor'
                    DataBinding.FieldName = 'CQTCRU'
                    HeaderAlignmentHorz = taCenter
                    Width = 100
                  end
                  object G2Column_devision: TcxGridDBColumn
                    Caption = 'Division'
                    DataBinding.FieldName = 'CQTCRW'
                    HeaderAlignmentHorz = taCenter
                    Width = 120
                  end
                  object G2Column_docu: TcxGridDBColumn
                    Caption = 'Batch  No.'
                    DataBinding.FieldName = 'CQTDNO'
                    HeaderAlignmentHorz = taCenter
                    Width = 150
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  GridView = gdbtvLogList
                end
              end
              object Panel8: TPanel
                Left = 1
                Top = 559
                Width = 1022
                Height = 41
                Align = alBottom
                TabOrder = 3
                DesignSize = (
                  1022
                  41)
                object cxButton12: TcxButton
                  Left = 649
                  Top = 6
                  Width = 75
                  Height = 26
                  Anchors = [akLeft, akTop, akBottom]
                  Caption = 'Preview'
                  TabOrder = 0
                  OnClick = cxButton12Click
                  LookAndFeel.Kind = lfStandard
                end
                object cxButton14: TcxButton
                  Left = 529
                  Top = 6
                  Width = 81
                  Height = 26
                  Anchors = [akTop, akRight, akBottom]
                  Caption = 'Delete'
                  TabOrder = 1
                  OnClick = DeleteReqClick
                  LookAndFeel.Kind = lfStandard
                end
              end
            end
          end
        end
      end
    end
  end
  inherited dsp: TDataSetProvider
    Left = 171
    Top = 260
  end
  inherited OpenDialog1: TOpenDialog
    Left = 416
    Top = 65528
  end
  inherited il1: TImageList
    Left = 458
    Top = 80
    Bitmap = {
      494C010109000801080110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      000000000000000000000000000000000000FFFFFF00FFFFFF00F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00F7F7F700FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F7F7F700E7E3E700CECF
      CE00C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600CECBCE00DEDFDE00F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00B5B2B5006B6563006B69
      6B0073696B00736D6B00736D6B0073696B006B6963006B6563006B6563006B65
      63007B7D7B00CECBCE00EFEFEF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00847D7B00C6BEBD00C6C7
      C600DEDBDE00FFFFFF00B5B2AD00CEC7C600B5A6A500948A84009C8E8C007B6D
      6B005A555200C6C7C600EFEFEF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B797300B5AEAD00B5AE
      AD00BDBABD00F7EFEF009C9A9400B5B2AD00A59A9400736D6B00847973007365
      63005A555200C6C7C600EFEFEF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B797300ADAAA500B5AE
      AD00BDBEBD00F7EFEF009C9A9400B5B2AD00A59A94007B716B008C797B006B61
      5A005A514A00C6C7C600EFEFEF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B797300B5AAA500B5AE
      AD00BDBEBD00F7EFEF009C9A9C00B5B2AD00A59A94007B716B008C797B006B61
      5A005A514A00C6C7C600EFEFEF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B797300B5AAA500B5AE
      AD00BDBEBD00F7EFEF009C9A9C00B5B2AD00A59A94007B716B008C797B006B61
      5A005A514A00C6C7C600EFEFEF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B797300B5AAA500B5AE
      AD00BDBEBD00F7EFEF009C9A9C00B5B2AD00A59A94007B716B008C797B006B61
      5A005A514A00C6C7C600EFEFEF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B797300B5AAA500B5AE
      AD00BDBEBD00F7EFEF009C9A9C00B5B2AD00A59A94007B716B008C797B006B61
      5A005A514A00C6C7C600EFEFEF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B757300B5AAA500B5AE
      AD00BDBEBD00F7EFEF009C9A9C00B5B2AD00A59A94007B716B008C797B006B61
      5A005A514A00C6C3C600E7E3E700FFFBFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F70073717300A59E9C00A5A2
      A500ADA6A500DEDFDE00A5A2A5009C9694008C8684005A5552006B6163005A4D
      4A004A454200BDBABD00D6D3D600F7F3F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8E8C00737173008C868400948E
      8C00949694009C9A9C008C8A840073716B00736D6B00635D5A005A555200524D
      4A004A45420052514A00D6D3D600F7F3F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A59E9C00B5AAA500C6C3BD00DED7
      D600EFF3EF00E7E3E700C6BEBD00ADA29C009C928C0094868400847573007365
      63006355520073696B00E7E3E700F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBABD0094928C00948E8C009492
      8C00948E8C005A5D5A00B5B2B500A5A2A5005A595A0094929400948A8C00948E
      8C00948E8C0094929400F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00949694006B6163006B61630084828400F7F3F700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECFCE00C6C3C600E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000000000000000000000009C3000009C30
      00009C3000009C3000009C3000009C3000009C3000009C3000009C3000009C30
      00009C3000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3000000000
      000000000000000000000000000000000000CECFCE00639A9C0063659C009C9A
      9C00E7E7E7000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003130CE000000
      FF0000009C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9A6300FFCF9C00FFCF
      9C00FFCF9C00FFCF9C00FFCF9C00FFCF9C00FFCF9C00FFCF9C00FFCF9C00CE9A
      6300CE9A63009C30000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3000009C30
      0000000000000000000000000000000000000000000063CFFF00319ACE006365
      9C009C9A9C00E7E7E70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003130CE00319A
      FF000000FF0000009C0000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000CE9A6300CE9A6300CE9A6300CE9A
      6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A
      63009C300000CE9A63009C300000000000000000000000000000000000009C30
      00009C3000009C3000009C3000009C3000009C3000009C3000009C3000009C30
      00009C30000000000000000000000000000000000000CECFFF0063CFFF00319A
      CE0063659C009C9A9C00E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003130
      CE000065FF000000CE0000000000000000000000000000000000000000000000
      00000000FF00000000000000000000000000CE9A6300FFFFFF00FFCF9C00FFCF
      9C00FFCF9C00FFCF9C00FFCF9C00FFCF9C00FFCF9C00FFCF9C00FFCF9C00FFCF
      9C00CE9A63009C3000009C300000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3000009C30
      0000000000000000000000000000000000000000000000000000CECFFF0063CF
      FF00319ACE0063659C009C9A9C00E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CE000000FF0000009C00000000000000000000000000000000000000
      FF0000009C00000000000000000000000000CE9A6300FFFFFF00FFCF9C00FFCF
      9C00FFCF9C00FFCF9C0000CF0000009A0000FFCF9C000000FF000000CE00FFCF
      9C00CE9A6300CE9A63009C300000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3000000000
      000000000000000000000000000000000000000000000000000000000000CECF
      FF0063CFFF00319ACE0063659C00CECFCE00FFCFCE00CE9A9C00CE9A9C00CE9A
      9C00CECF9C00E7E7E70000000000000000000000000000000000000000000000
      0000000000000000CE000000FF0000009C0000000000000000000000FF000000
      9C0000000000000000000000000000000000CE9A6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9A6300CE9A6300CE9A63009C3000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECFFF0063CFFF00B5B2B500CE9A9C00CECF9C00FFFFCE00FFFFCE00FFFF
      CE00FFFFCE00CE9A9C00FFCFCE00000000000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C000000FF0000009C000000
      000000000000000000000000000000000000CE9A6300FFFFFF00FFCF9C00FFCF
      9C00FFCF9C00FFCF9C00FFCF9C00FFCF9C00FFCF9C00FFCF9C00FFCF9C00FFCF
      9C00CE9A6300CE9A6300CE9A63009C300000CE9A6300CE9A6300CE9A6300CE9A
      6300CE9A6300CE9A6300CE9A63000000000000000000319ACE0000659C000065
      9C0000659C0000659C0000659C0000659C000000000000000000000000000000
      000000000000E7E7E700CE9A9C00FFCF9C00FFFFCE00FFFFCE00FFFFCE00FFFF
      FF00FFFFFF00FFFFFF00CE9A9C00E7E7E7000000000000000000000000000000
      00000000000000000000000000000000CE000000FF0000009C00000000000000
      00000000000000000000000000000000000000000000CE9A6300CE9A6300CE9A
      6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300FFCF
      9C00FFCF9C00CE9A6300CE9A63009C300000CE9A6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE9A63000000000000000000319ACE009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF0000659C000000000000000000000000000000
      000000000000FFCFCE00CECF9C00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFF
      FF00FFFFFF00FFFFFF00FFFFCE00CECF9C000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C000000CE0000009C000000
      0000000000000000000000000000000000000000000000000000CE9A6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9A
      6300FFCF9C00FFCF9C00CE9A63009C300000CE9A6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE9A63000000000000000000319ACE009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF0000659C000000000000000000000000000000
      000000000000CECF9C00FFCF9C00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFF
      CE00FFFFFF00FFFFFF00FFFFCE00CE9A9C000000000000000000000000000000
      0000000000000000CE000000FF0000009C0000000000000000000000CE000000
      9C0000000000000000000000000000000000000000000000000000000000CE9A
      6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9A
      6300CE9A6300CE9A63009C30000000000000CE9A6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE9A63000000000000000000319ACE009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF0000659C000000000000000000000000000000
      000000000000CE9A9C00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00CE9A9C000000000000000000000000000000
      CE000000FF000000FF0000009C00000000000000000000000000000000000000
      CE0000009C00000000000000000000000000000000000000000000000000CE9A
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9A6300000000000000000000000000CE9A6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE9A63000000000000000000319ACE009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF0000659C000000000000000000000000000000
      000000000000CECF9C00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00CE9A9C0000000000000000000000CE00319A
      FF000000FF0000009C0000000000000000000000000000000000000000000000
      00000000CE0000009C0000000000000000000000000000000000000000000000
      0000CE9A6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFF
      FF00CE9A6300000000000000000000000000CE9A6300FFFFFF00FFFFFF00CE9A
      6300CE9A6300CE9A6300CE9A63000000000000000000319ACE009CFFFF009CFF
      FF00319ACE00319ACE00319ACE00319ACE000000000000000000000000000000
      000000000000FFCFCE00CECF9C00FFFFFF00FFFFFF00FFFFCE00FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00CECF9C00CECF9C00000000000000000063659C000000
      CE0063659C000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE00000000000000000000000000000000000000
      0000CE9A6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9A63000000000000000000CE9A6300FFFFFF00FFFFFF00CE9A
      6300E7E7E700CE9A6300000000000000000000000000319ACE009CFFFF009CFF
      FF00319ACE00CEFFFF0000659C00000000000000000000000000000000000000
      000000000000E7E7E700CE9A9C00FFCFCE00FFFFFF00FFFFCE00FFFFCE00FFFF
      CE00FFFFCE00FFCF9C00CE9A9C00E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A
      6300CE9A6300CE9A63000000000000000000CE9A6300FFFFFF00FFFFFF00CE9A
      6300CE9A630000000000000000000000000000000000319ACE009CFFFF009CFF
      FF00319ACE0000659C0000000000000000000000000000000000000000000000
      00000000000000000000FFCFCE00CE9A9C00FFCFCE00FFFFCE00FFFFCE00FFFF
      CE00CECF9C00CE9A9C00FFCFCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9A6300CE9A6300CE9A6300CE9A
      63000000000000000000000000000000000000000000319ACE00319ACE00319A
      CE00319ACE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E7E700CECF9C00CE9A9C00CE9A9C00CE9A
      9C00CE9A9C00E7E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9ACE0000008400000084000000840000008400000084009C9ACE000000
      0000000000000000000000000000000000000000000000000000CE9A6300CE9A
      6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A
      6300CE9A6300CE9A630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3000009C30
      00009C3000009C3000009C3000009C3000009C3000009C3000009C3000009C30
      00009C3000009C3000009C300000000000000000000000000000000000000000
      84000000CE000000FF000000FF000000FF000000FF000000FF000000CE000000
      8400000000000000000000000000000000000000000000000000CE9A6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9A630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C300000CE650000CE65
      00009C300000E7E7E700CE6500009C300000E7E7E700E7E7E700E7E7E7009C30
      0000CE650000CE6500009C300000000000000000000000000000000084000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000084000000000000000000000000000000000000000000CE9A6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9A630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C300000CE650000CE65
      00009C300000E7E7E700CE6500009C300000E7E7E700E7E7E700E7E7E7009C30
      0000CE650000CE6500009C3000000000000000000000000084000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000840000000000000000000000000000000000CE9A6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9A63000000000000000000000000009C3000009C3000009C30
      00009C3000009C3000009C3000009C3000009C3000009C3000009C3000009C30
      00009C3000009C3000000000000000000000000000009C300000CE650000CE65
      00009C300000E7E7E700CE6500009C300000E7E7E700E7E7E700E7E7E7009C30
      0000CE650000CE6500009C300000000000009C9ACE000000CE000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000CE009C9ACE00000000000000000000000000CE9A6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9A63000000000000000000000000009C300000CE650000CE65
      0000CE650000CE650000CE650000CE650000CE650000CE650000CE650000CE65
      0000CE6500009C3000000000000000000000000000009C300000CE650000CE65
      00009C300000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7009C30
      0000CE650000CE6500009C30000000000000000084000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF0000008400000000000000000000000000CE9A6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9A6300000000000000000000000000000000009C300000CE65
      0000CE650000CE650000CE650000CE650000CE650000CE650000CE650000CE65
      00009C300000000000000000000000000000000000009C300000CE650000CE65
      0000CE6500009C3000009C3000009C3000009C3000009C3000009C300000CE65
      0000CE650000CE6500009C30000000000000000084000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF0000008400000000000000000000000000CE9A6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9A630000000000000000000000000000000000000000009C30
      0000CE650000CE650000CE650000CE650000CE650000CE650000CE6500009C30
      000000000000000000000000000000000000000000009C300000CE650000CE65
      0000CE650000CE650000CE650000CE650000CE650000CE650000CE650000CE65
      0000CE650000CE6500009C30000000000000000084000000FF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF0000008400000000000000000000000000CE9A6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9A630000000000000000000000000000000000000000000000
      00009C300000CE650000CE650000CE650000CE650000CE6500009C3000000000
      000000000000000000000000000000000000000000009C300000CE650000CE65
      00009C3000009C3000009C3000009C3000009C3000009C3000009C3000009C30
      0000CE650000CE6500009C30000000000000000084000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF0000008400000000000000000000000000CE9A6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9A630000000000000000000000000000000000000000000000
      0000000000009C300000CE650000CE650000CE6500009C300000000000000000
      000000000000000000000000000000000000000000009C300000CE6500009C30
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C300000CE6500009C30000000000000000084000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF0000008400000000000000000000000000CE9A6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9A630000000000000000000000000000000000000000000000
      000000000000000000009C300000CE6500009C30000000000000000000000000
      000000000000000000000000000000000000000000009C300000CE6500009C30
      0000FFFFFF009C3000009C3000009C3000009C3000009C3000009C300000FFFF
      FF009C300000CE6500009C300000000000009C9ACE000000CE000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000CE009C9ACE00000000000000000000000000CE9A6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9A6300CE9A
      6300CE9A6300CE9A630000000000000000000000000000000000000000000000
      00000000000000000000000000009C3000000000000000000000000000000000
      000000000000000000000000000000000000000000009C300000CE6500009C30
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C300000CE6500009C3000000000000000000000000084000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000840000000000000000000000000000000000CE9A6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9A6300E7E7
      E700CE9A63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C300000E7E7E7009C30
      0000FFFFFF009C3000009C3000009C3000009C3000009C3000009C300000FFFF
      FF009C3000009C3000009C300000000000000000000000000000000084000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000084000000000000000000000000000000000000000000CE9A6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9A6300CE9A
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C300000CE6500009C30
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C300000CE6500009C300000000000000000000000000000000000000000
      84000000CE000000FF000000FF000000FF000000FF000000FF000000CE000000
      8400000000000000000000000000000000000000000000000000CE9A6300CE9A
      6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A6300CE9A63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C3000009C3000009C30
      00009C3000009C3000009C3000009C3000009C3000009C3000009C3000009C30
      00009C3000009C3000009C300000000000000000000000000000000000000000
      00009C9ACE0000008400000084000000840000008400000084009C9ACE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF8FFFEFFDC007FFDF07FF
      C7FF8003FFCF83FFC3FB0001E00781FFE3F70001FFCFC0FFF1E70001FFDFE003
      F8CF0000FFFFF001FC1F00000180F800FE3F80000180F800FC1FC0000180F800
      F8CFE0010180F800E1E7E0070180F800C3F3F0070180F800C7FDF0030381F800
      FFFFF8030783FC01FFFFFFFF0F87FE03FFFFFFFFFFFFFFFFF01FC003FFFFC001
      E00FC003FFFF8001C007C003FFFF80018003C003800380010001C00380038001
      0001C003C00780010001C003E00F80010001C003F01F80010001C003F83F8001
      0001C003FC7F80010001C003FEFF80018003C007FFFF8001C007C00FFFFF8001
      E00FC01FFFFF8001F01FFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited DCOM: TDCOMConnection
    Left = 83
    Top = 64
  end
  inherited frxReport: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxDBDataset1: TfrxDBDataset
    Left = 759
    Top = 93
  end
  inherited frxDBDataset2: TfrxDBDataset
    Left = 764
    Top = 95
  end
  inherited frxDBDataset3: TfrxDBDataset
    Left = 767
  end
  inherited frxDBDataset4: TfrxDBDataset
    Left = 754
    Top = 97
  end
  inherited frxDBDataset5: TfrxDBDataset
    Left = 757
    Top = 99
  end
  inherited frxDBDataset: TfrxDBDataset
    Left = 757
  end
  inherited toolbarimg: TImageList
    Bitmap = {
      494C01010C006400640018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFB
      FF00E7E7E700D6D7D600D6D3D600D6D3D600D6D3D600D6D3D600D6D7D600E7E7
      E700FFFBFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFBFF00E7E3E700BDBEBD00B5B6
      B500CECFCE00E7E7E700FFFBFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFBFF00EFEBEF00DEDB
      DE00D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600DEDBDE00EFEB
      EF00FFFBFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E700A5A6A5007B797B00737173007371730073717300737173007B797B00A5A6
      A500E7E7E7000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F3F700BDBABD00525552004A4D
      4A0073717300A5A2A500C6C7C600DEDFDE00EFEBEF00E7E7E700DEDFDE00DEDB
      DE00DEDBDE00DEDFDE00E7E7E700F7F3F700FFFBFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFBFF00E7E7E700D6D7D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3
      D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D7D600E7E7E700FFFB
      FF0000000000000000000000000000000000FFFFFF00E7E3E700ADAEAD008482
      840073757300737573007375730073757300737573007375730084868400ADAE
      AD00E7E7E700FFFFFF00FFFFFF00F7F7F700F7F3F700FFFBFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000D6D7
      D6004A494A002124210021242100212421002124210021242100212421004A49
      4A00D6D7D6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF007B797B0073696B00635D
      5A00292C2900424142006B696B0094929400A5A2A5009C9A9C008C8E8C008482
      8400848284008C8E8C009C9E9C00B5B2B500CECBCE00EFEBEF00FFFBFF000000
      000000000000000000000000000000000000000000000000000000000000FFFB
      FF00DEDFDE00A5A2A5007B797B00737173007371730073717300737173007371
      730073717300737173007371730073717300737173007B797B00A5A2A500DEDF
      DE00FFFBFF00000000000000000000000000FFFBFF00CECBCE00525152002928
      2900212421002124210021242100212421002124210021242100292829005251
      5200C6C7C600F7F7F700EFEFEF00CECBCE00B5B6B500C6C7C600E7E7E700FFFB
      FF0000000000000000000000000000000000000000000000000000000000D6D3
      D600292C2900E7D7CE00E7D7CE00E7D7CE00E7D7CE00E7D7CE00E7D7CE00292C
      2900D6D3D6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFBFF00848284007B757300EFDB
      D600B5AEA5007B717300313431003134310042454200393C390031303100292C
      2900292C290031303100393C39004A4D4A0073717300A5A2A500CECFCE00EFEF
      EF00FFFFFF00000000000000000000000000000000000000000000000000F7F3
      F700B5B6B5004241420029282900292829002928290029282900292829002928
      290029282900292829002928290029282900292829002928290042414200B5B6
      B500F7F3F700000000000000000000000000FFFBFF00ADAAAD005A595A00D6CF
      C600DED3CE00DED3CE00DED3CE00DED3CE00DED3CE00DED3CE00CEC3BD004A45
      42009C9E9C00EFEBEF00C6C7C600737173004A494A006B696B00ADAAAD00DEDF
      DE00FFFBFF00000000000000000000000000FFFBFF00E7E7E700D6D7D600ADAE
      AD0031343100E7D7CE00E7D3CE00E7D7CE00E7D7CE00E7D7CE00E7D7CE003134
      3100ADAEAD00D6D7D600E7E7E700FFFBFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C6C7C60042414200D6C7
      BD00DECFC600CEC3BD00BDAEA500948A8400736D6B00948A8400B5AAA500C6BA
      B500C6BAB500B5A6A500948E84006B61630039383900424542007B797B00B5B6
      B500E7E7E700FFFFFF000000000000000000000000000000000000000000EFEB
      EF007375730073655A00D6B6A50073615200D6B6A500D6B6A500D6B6A500D6B6
      A500DEB6A500DEBAA500D6B6A500D6B6A50073615200D6B6A50073655A007375
      7300EFEBEF00000000000000000000000000FFFFFF00C6C3C60063616300EFE7
      E700EFDBD600E7DBD600E7DBCE00E7D7CE00E7D7CE00E7D7CE00E7D7CE00635D
      5A008C8E8C00DEDBDE008C8A8C004A494A007B757300424142004A4D4A00A5A2
      A500DEDBDE00FFFBFF000000000000000000E7E7E700A5A6A5007B797B006365
      6300393C3900E7D3C600E7D3C600E7D3C600E7D3C600E7D3C600E7D3C600393C
      390052515200636563008C8A8C00BDBEBD00D6D3D600D6D3D600D6D3D600D6D3
      D600D6D3D600D6D7D600E7E7E700FFFBFF0000000000EFEFEF00636163009C96
      9400CEBEB500CEBEB500DECBC600E7D7CE00E7D7CE00E7D7CE00E7D7CE00E7D7
      CE00E7D7CE00E7D7CE00E7D7CE00E7D7CE00C6B6AD007B757300393839006361
      6300B5B2B500EFEBEF00FFFFFF0000000000000000000000000000000000E7E7
      E7006B6D6B008C7D7300DEBEAD0094827300DEBAAD00DEBAAD00DEBEAD00DEBA
      AD00DEBAAD00DEBEAD00DEBAAD00DEBEAD0094827300DEBEAD008C7D73006B6D
      6B00E7E7E70000000000000000000000000000000000F7F7F7007B797B00847D
      7B00EFE7E700EFDBD600E7D7CE00E7D7CE00E7D7CE00E7D7CE00E7D7CE00635D
      5A008C8E8C00C6C3C60052555200847D7B00E7D7CE00CEBAB5006B6563004A49
      4A00A5A2A500DEDFDE00FFFBFF0000000000D6D7D6005A595A00424542004245
      420042454200E7CFC600DECFC600E7CFC600E7CFC600DECFC600DECFC6004245
      42004245420042454200393C39005A5D5A007371730073717300737173007371
      7300737173007B797B00A5A6A500E7E7E70000000000EFEFEF00848684006361
      5A00CEBAB500DECFC600E7D7CE00E7D7CE00E7D7CE00DECBBD00D6BAB500E7D7
      CE00E7D7CE00DECBBD00D6C3BD00E7D7CE00E7D7CE00E7D3CE00AD9E94004A45
      420063616300BDBABD00F7F3F70000000000000000000000000000000000E7E3
      E7006B696B00A5968C00DEC7BD00B59A8C00DEC3B500DEC3B500DEC3B500DEC3
      B500DEC3B500DEC3B500DEC3B500DEC3B500B59A8C00DEC7BD00A5968C006B69
      6B00E7E3E70000000000000000000000000000000000EFEBEF00ADAEAD004A49
      4A00BDB2AD00EFE3DE00E7D7CE00E7D7CE00E7D7CE00E7D7CE00E7D7CE006361
      5A008C8E8C00ADAAAD00393C3900C6B6AD00E7D7CE00E7D7CE00DECBC6007B71
      6B004A4D4A00ADAEAD00EFEBEF0000000000D6D7D60052515200DECBBD00DECB
      BD00DECBBD00DECBBD00DECBBD00DECBBD00DECBBD00DECBBD00DECBBD00DECB
      BD00DECBBD00DECBBD0052515200212021002124210021242100212421002124
      210021242100212421004A494A00D6D7D600FFFFFF00D6D7D6007B797B004A4D
      4A00D6C7BD00E7D7CE00E7D3CE00E7D3CE00E7D7CE00A57973009C716B009C71
      6B009C716B009C716B009C716B00D6C3B500E7D7CE00E7D7CE00E7D7CE00B5A6
      9C00424542007B797B00D6D7D600FFFFFF00000000000000000000000000E7E7
      E7006B6D6B00BDAEAD00E7CFC600C6B2A500DEC7BD00DEC7B500DEC7BD00DEC7
      B500DEC7BD00DEC7BD00DEC7B500DEC7B500C6B2A500E7CFC600BDAEA5006B6D
      6B00E7E7E700000000000000000000000000FFFBFF00CECFCE00636163006361
      5A00D6C7BD00E7D7CE00E7D7CE00E7D3CE00E7D7CE00E7D3CE00E7D7CE006361
      63008C8E8C009C9A9C007B797B00EFE7DE00E7D7CE00E7D3CE00E7D7CE00D6CB
      C600635D5A0063616300CECFCE00FFFBFF00E7E7E7005A595A00F7EBE700DEC7
      BD00DEC7BD00DEC7B500DEC7BD00DEC7B500DEC7BD00DEC7B500DEC7B500DEC7
      B500DEC7B500F7EBE7005A595A00D6D3D600EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF0029282900D6D3D600F7F7F700B5B6B500424142009C92
      8C00E7D3C600E7D3CE00E7D3C600E7D3CE00E7D3CE00A57D7B009C716B009C71
      6B009C716B009C716B009C716B00D6BEB500E7D3CE00E7D3C600E7D3C600E7D3
      CE009C928C0042414200B5B6B500F7F7F700000000000000000000000000EFEB
      EF007B797B00C6BEB500E7D7CE00D6C3B500E7CBBD00E7CBBD00E7CBBD00E7CB
      BD00E7CBBD00E7CBBD00E7CBBD00E7CBBD00D6C3B500E7D7CE00C6BEB5007B79
      7B00EFEBEF00000000000000000000000000EFEFEF00ADAAAD0042454200BDAE
      AD00E7D3CE00E7D3CE00E7D3CE00EFDBD600E7D7CE00E7D3CE00E7D7CE006B65
      630094969400B5B6B5007B797B00E7E3DE00EFDFD600E7D3CE00E7D3CE00E7D3
      CE00BDAEA50042454200ADAAAD00EFEFEF00F7F7F700949294009C928C00EFE7
      E700DEC3B500DEC3B500DEC3B500DEC3B500DEC3B500DEC3B500DEC3B500DEC3
      B500EFE7E7009C928C008C8A8C00E7E7E700EFEBEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00292C2900D6D3D600E7E7E7008C8A8C006B656300DECB
      BD00E7CFC600E7CFC600E7CFC600E7CFC600E7D3C600E7CFC600CEAEA5009C71
      6B009C716B00BD9E9400E7CFC600E7CFC600E7CFC600E7CFC600E7CFC600E7CF
      C600DECBBD006B6563008C8A8C00E7E7E700000000000000000000000000F7F7
      F7009C9A9C00BDBAB500EFDFDE00DECFC600E7CFC600E7CFC600DECBBD00AD9E
      9400A59E9400DECBBD00E7CFC600E7CFC600DECFC600EFDFDE00BDBAB5009C9A
      9C00F7F7F700000000000000000000000000E7E3E7007B7D7B007B757300DECF
      C600E7D3C600E7D3C600E7D7CE00E7DBD600EFE7E700E7D3CE00E7D7CE006B69
      6B009C9A9C00F7F3F700A5A6A50063615A00DED7D600EFDFD600E7D3C600E7D3
      C600DECFC60073716B007B7D7B00E7E3E700FFFFFF00E7E7E70094969400A596
      8C00EFE7DE00D6BEAD00D6BEAD00D6BEAD00D6BEAD00D6BEAD00D6BEAD00EFE7
      DE00A5968C008C8E8C00D6D7D600EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEB
      EF00EFEBEF00EFEBEF0031343100D6D3D600DEDFDE0063656300A59A9400E7CF
      C600E7CFC600E7CFC600E7CFC600E7CFC600E7CFC600E7CFC600CEB6AD009C6D
      6B009C6D6B00C6A29C00E7CFC600E7CFC600E7CFC600E7CFC600E7CFC600E7CF
      C600E7CFC600A59A940063656300DEDFDE00000000000000000000000000FFFF
      FF00CECFCE009C9A9C00EFE7E700E7D7D600E7D3CE00C6B2AD008C827B00AD9E
      9C00AD9E9C008C827B00C6B2AD00E7D3CE00E7D7D600EFE7E7009C9A9C00CECF
      CE00FFFFFF00000000000000000000000000DEDBDE005A5D5A00AD9E9400E7CF
      C600E7CFC600E7CFC600D6C3BD006B6563008C868400EFE3DE00E7D7CE00736D
      6B00ADAEAD00FFFBFF00FFFFFF00B5B6B5006B6D6B00EFEBE700E7D7CE00E7CF
      C600E7D3C600AD9E94005A5D5A00DEDBDE0000000000FFFFFF00EFEBEF009C9A
      9C00A59A9400EFE7DE00D6BEAD00D6BEAD00D6BEAD00D6BEAD00EFE7DE00A59A
      940094929400D6D7D600E7E7E700EFEBEF00EFEBEF00E7EBEF00EFEBEF00EFEB
      EF00EFEBEF00EFE7EF00393C3900D6D3D600D6D7D6005A5D5A00C6BAB500E7CF
      C600DECBBD00DECBBD00DECBC600DECBBD00DECBBD00DECBBD00CEB2AD009C6D
      63009C6D6300BD9E9400DECBBD00DECBBD00DECBBD00DECBBD00DECBC600DECB
      BD00E7CFC600C6BAB5005A5D5A00D6D7D6000000000000000000000000000000
      0000FFFBFF00B5B6B500A5A2A500EFE7E700CEC7C6008C828400847D7B00736D
      6B00736D6B00847D7B008C828400CEC7C600EFE7E700A5A2A500B5B6B500FFFB
      FF0000000000000000000000000000000000D6D7D60052555200C6B6AD00E7CF
      C600E7CFC600E7CFC600A59A9400737573008C8E8C00948E8C00B5AAAD005A59
      5A00DEDBDE00EFEFEF00F7F3F700EFEBEF007B797B00C6BEBD00EFDBD600E7CF
      C600E7D3C600CEBEBD0052555200D6D7D6000000000000000000FFFFFF00EFEB
      EF009C9E9C00AD9E9400EFE7DE00D6BEAD00D6BEAD00EFE7DE00AD9E94009496
      9400D6D3D600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E70042414200D6D3D600D6D7D6005A595A00DED3CE00DECB
      BD00DECBBD00DECBBD00DECBBD00DECBBD00DECBBD00DECBBD00CEAEA5009C6D
      63009C6D6300BD9E9400DECBBD00DECBBD00DECBBD00DECBBD00DECBBD00DECB
      BD00DECBBD00DED3CE005A595A00D6D7D6000000000000000000000000000000
      000000000000FFFBFF00BDBEBD008C8684008C8A8C005A5D5A0039383900292C
      2900292C2900393839005A5D5A008C8A8C008C868400BDBEBD00FFFBFF000000
      000000000000000000000000000000000000D6D7D60052555200D6C3B500DECB
      C600E7CFC600E7CFC60084827B008C8E8C00EFEBEF00CECBCE009C9E9C00D6D7
      D600CECBCE00ADAEAD00BDBEBD00CECFCE008C8A8C009C9A9400E7D3CE00E7CF
      C600E7CFC600E7DBD60052555200D6D7D600000000000000000000000000FFFF
      FF00EFEBEF00A5A2A500ADA29C00EFE7DE00EFE7DE00ADA29C009C9A9C00D6D3
      D600E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E7E700E7E3E700E7E3
      E700E7E3E700E7E3E7004A494A00D6D3D600DEDBDE0063616300E7D7D600DEC7
      BD00DEC7BD00DEC7BD00DEC7BD00DEC7BD00DEC7BD00DEC7BD00C6AA9C009C69
      63009C696300BD9E9400DEC7BD00DEC7BD00DEC7BD00DEC7BD00DEC7BD00DEC7
      BD00DEC7BD00E7D7D60063616300DEDBDE000000000000000000000000000000
      00000000000000000000F7F7F700B5B6B5004A494A0042454200737173009496
      9400949694007371730042494A004A494A00B5B6B500F7F7F700000000000000
      000000000000000000000000000000000000DEDBDE005A5D5A00DECFC600DECB
      BD00DECBBD00DECBBD008C827B0084828400DEDFDE00FFFFFF00FFFBFF00D6D3
      D600848284005A5D5A006B696B008C8E8C0073717300948E8C00DECFC600DECB
      BD00E7CFC600EFE3DE005A5D5A00DEDBDE000000000000000000000000000000
      0000FFFFFF00EFEFEF00ADAEAD008C8A8C008C8A8C006B6D6B00D6D3D600E7E3
      E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3
      E700E7E3E700E7E3E70052515200D6D3D600E7E7E70073717300DED3CE00DECB
      BD00DEC7B500DEC3B500DEC3B500DEC3B500DEC3B500A5756B00946963009469
      630094696300BD9A8C00DEC3B500DEC7B500DEC3B500DEC3B500DEC3B500DEC3
      B500DECBBD00DED3CE0073717300E7E7E7000000000000000000000000000000
      00000000000000000000E7E7E7008C8E8C004A4D4A008C8A8C00ADAAAD00ADAE
      AD00ADAEB500ADAEAD008C8E8C004A4D4A008C8E8C00E7E7E700000000000000
      000000000000000000000000000000000000E7E3E7006B696B00E7D7D600DECB
      BD00DECBBD00DECBBD00A59A940063656300ADAEAD00E7E7E700F7F3F700B5B2
      B50073717300ADA29C00847D7B005A595A005A595A00A59A9400DECBBD00DECB
      BD00E7CFC600E7DFDE006B696B00E7E3E7000000000000000000000000000000
      000000000000000000000000000000000000D6D3D6005A595A00DEDFDE00DEDF
      DE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDF
      DE00DEDFDE00DEDFDE005A595A00D6D3D600F7F3F7008C8A8C00CEC3BD00E7D3
      C600DEC3B500DEC3B500DEC3B500DEC3B500DEC3B5009C6D6300946963009469
      630094696300BD968C00DEC3B500DEC3B500DEC3B500DEC3B500DEC3B500DEC3
      B500E7D3C600CEC3BD008C8A8C00F7F3F7000000000000000000000000000000
      00000000000000000000DEDBDE00636563007B797B00B5B2B500B5B6B500BDBA
      BD00BDBABD00BDBABD00B5B6B5007B7D7B0063656300DEDBDE00000000000000
      000000000000000000000000000000000000EFEFEF0084828400D6CFCE00E7CF
      C600DEC7BD00DEC7BD00CEBAAD00737173006B696B00ADAAAD00D6D7D6009C9E
      9C009C9A9400EFDFDE00D6C7BD00847D7B0073717300CEB6AD00DEC7BD00DEC7
      BD00DECBBD00D6CBC60084828400EFEFEF000000000000000000000000000000
      000000000000000000000000000000000000D6D3D60063616300DEDBDE00DEDF
      DE00DEDFDE00DEDBDE00DEDFDE00DEDFDE00DEDBDE00DEDBDE00DEDFDE00DEDF
      DE00DEDFDE00DEDFDE0063616300D6D3D600FFFFFF00B5B6B5009C9A9400EFDB
      D600DEC3B500DEC3B500DEC3B500D6BEB500D6BEB500CEB2A500CEAEA500CEAE
      A500C6AA9C00D6BAAD00D6BEB500D6BEB500D6BEB500D6BEB500D6BEB500DEC3
      B500EFDBD6009C9A9400B5B6B500FFFFFF000000000000000000000000000000
      00000000000000000000D6D7D6005A595A009C9E9C00BDBABD00C6C3C600C6CB
      CE00CECBCE00CECBCE00C6C3C600A5A6A5005A595A00D6D7D600000000000000
      000000000000000000000000000000000000FFFBFF00ADAEAD00ADAAA500EFDF
      DE00DEC7BD00DEC7BD00DEC7BD00BDAAA500737573006B6D6B00B5B2B5009496
      9400A59E9C00EFE7E700DECBBD00D6BEB500C6B2A500DEC7BD00DEC7BD00DEC7
      BD00DEC7BD00A59E9C00ADAEAD00FFFBFF000000000000000000000000000000
      000000000000000000000000000000000000D6D3D60063656300DEDBDE00DEDB
      DE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDB
      DE00DEDBDE00D6DBD60063656300D6D7D60000000000EFEBEF007B797B00D6CB
      C600E7CFC600D6BEAD00D6BEAD00D6BEAD00D6BEAD00D6BEAD00BD968C009465
      5A0094655A00C6A69C00D6BEAD00D6BEAD00D6BEAD00D6BEAD00D6BEAD00E7CF
      C600D6CBC6007B797B00EFEBEF00000000000000000000000000000000000000
      00000000000000000000DEDBDE005A5D5A00BDBABD00C6C7C600CECFD600D6D7
      D600D6D7D600D6D7D600CECFCE00C6C3C6005A5D5A00DEDBDE00000000000000
      00000000000000000000000000000000000000000000E7E3E7007B797B00E7DF
      DE00E7CFC600DEC7B500DEC7B500DEC7BD00CEBAB500A59E9C00949294009496
      9400A5A29C00F7E7E700DEC7B500DEC7BD00DEC7B500DEC7B500DEC7B500DEC7
      B500C6B2A5007B797B00E7E3E700000000000000000000000000000000000000
      000000000000000000000000000000000000D6D3D6006B6D6B00D6D7D600D6D7
      D600D6D7D600D6D7D600D6D7D600D6D7D600D6D7D600D6D7D600D6D3D600BDBE
      BD00ADAEAD00ADAEAD006B6D6B00DEDBDE0000000000FFFFFF00CECFCE008C8A
      8C00E7D7D600DEC7BD00D6BAAD00D6BAAD00D6BAAD00D6BAAD00A57D73009465
      5A0094655A00B5928400D6BAAD00D6BAAD00D6BAAD00D6BAAD00DEC7BD00E7D7
      D6008C8A8C00CECFCE00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7E7E70073717300ADB2B500CECFD600DEDBDE00E7E3
      E700E7E7E700E7E3E700DEDBDE00BDBABD0073717300E7E7E700000000000000
      00000000000000000000000000000000000000000000FFFBFF00BDBABD00A5A2
      9C00EFE7E700DEC7BD00DEC3B500DEC3B500E7D7CE00CEC3BD00949294009C9E
      9C00ADA6A500F7E7E700DEC3B500DEC3B500DEC3B500DEC3B500DEC3B500D6BA
      AD008C8A8400ADAAAD00F7F7F700000000000000000000000000000000000000
      000000000000000000000000000000000000D6D3D60073757300D6D3D600D6D3
      D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D7D600BDBEBD009C9A
      9C0094969400ADAEAD007B797B00E7E3E7000000000000000000FFFBFF00BDBE
      BD009C969400DED7CE00E7D3C600DEC3B500D6BAAD00D6BAAD00BD9E94009469
      63009C716300CEAEA500D6BAAD00D6BAAD00DEBEB500E7D3C600DED7CE009C96
      9400BDBEBD00FFFBFF0000000000000000000000000000000000000000000000
      00000000000000000000F7F7F7009C9A9C009C9E9C00D6D7D600E7E3E700EFEB
      EF00EFEFF700EFEBEF00E7E3E700A5A6A5009C9A9C00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000FFFBFF00ADAA
      AD00BDB6B500EFE3DE00DECBBD00DEC3B500F7EBE7009C9A9C00B5B6B500A5A6
      A500ADA6A500EFE7DE00DEC3B500DEC3B500DEC3B500DEC3B500DEC3B500ADA2
      9C006B6D6B00A5A2A500E7E3E700FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000D6D3D6007B797B00D6D3D600D6D3
      D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600CECFCE00BDBABD00CECF
      CE00EFEBEF00BDBABD0094969400F7F3F700000000000000000000000000FFFB
      FF00C6C7C6008C8E8C00C6BEBD00E7DFD600E7D3CE00DECBBD00DEC3B500D6BE
      AD00D6BEAD00DEC3B500DECBBD00E7D3CE00E7DFD600C6BEBD008C8E8C00C6C7
      C600FFFBFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00D6D7D6008C8A8C00BDBEBD00E7E7E700EFEF
      F700F7F7F700EFEFF700C6C7C6008C8A8C00D6D7D600FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFB
      FF00ADAEAD00B5AEAD00EFE7E700E7DBD600EFE7E70084868400DEDBDE00A5A6
      A500ADAAA500EFE7DE00DEC3B500DEC3B500DEC3B500DEC3B500DEC3B500CEBA
      AD00948E8C007B797B00CECBCE00FFFBFF000000000000000000000000000000
      000000000000000000000000000000000000D6D7D60084828400CECFCE00CECF
      CE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00C6C7C600C6C3C600EFEB
      EF00D6D3D6008C8E8C00D6D3D600FFFFFF000000000000000000000000000000
      0000FFFFFF00EFEFEF00B5B2B5009C969400C6BAB500D6CFC600E7DBD600EFE3
      DE00EFE3DE00E7DBD600D6CFC600C6BAB5009C969400B5B2B500EFEFEF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFBFF00CECBCE0094929400BDBABD00DEDF
      DE00E7E3E700BDBEBD0094969400CECBCE00FFFBFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFBFF00BDBEBD0094969400CEC7C600C6BEBD00BDBABD00F7F3F700B5B6
      B500B5AAAD00EFE7DE00DEC3B500DEC3B500DEC3B500DEC3B500DEC3B500DEC3
      B500D6C3BD00948E8C00BDBEBD00FFFBFF000000000000000000000000000000
      000000000000000000000000000000000000E7E7E70084868400CECFCE00CECF
      CE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00C6C7C600CECFCE00BDBE
      BD008C8E8C00C6C3C600FFFBFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00E7E7E700C6C3C600A5A6A500949694008C8E
      8C008C8E8C0094969400A5A6A500C6C3C600E7E7E700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00DEDFDE00ADAEAD009492
      940094929400ADAEAD00DEDFDE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00EFEBEF00BDBABD00C6C3C600FFFBFF00FFFFFF00D6D7
      D600A59E9C00F7EBE700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00EFE7E700A59E9C00D6D3D600FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFBFF00ADAEAD008C8A8C008C8A
      8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C009492940094929400ADAE
      AD00E7E3E700FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFB
      FF00BDBEBD00949294008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A
      8C0094929400BDBABD00FFFBFF00000000000000000000000000FFFFFF00F7F7
      F700E7E7E700D6D7D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3
      D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D7
      D600E7E7E700F7F7F700FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFBFF00EFEFEF00E7E3E700DEDBDE00D6D7
      D600D6D7D600DEDBDE00E7E3E700EFEFEF00FFFBFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700E7E7E700DEDBDE00E7E7E700F7F7F700FFFFFF0000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F700E7E7E700DEDBDE00E7E7
      E700F7F7F700FFFFFF000000000000000000000000000000000000000000FFFB
      FF00E7E7E700D6D7D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3
      D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D7D600E7E7
      E700FFFBFF0000000000000000000000000000000000FFFFFF00F7F7F700D6D3
      D6009C9E9C007B797B0073717300737173007371730073717300737173007371
      7300737173007371730073717300737173007371730073717300737173007B79
      7B009C9E9C00D6D3D600F7F7F700000000000000000000000000000000000000
      000000000000FFFBFF00E7E7E700CECBCE00ADAAAD0094969400848284007375
      7300737573008482840094969400ADAAAD00CECBCE00E7E7E700FFFBFF000000
      00000000000000000000000000000000000000000000FFFFFF00F7F7F700D6D3
      D6009C9E9C00848284009C9E9C00D6D3D600F7F7F700FFFFFF00000000000000
      00000000000000000000FFFFFF00F7F7F700D6D3D6009C9E9C00848284009C9E
      9C00D6D3D600F7F7F700FFFFFF0000000000000000000000000000000000E7E7
      E700A5A6A5007B797B0073717300737173007371730073717300737173007371
      73007371730073717300737173007371730073717300737173007B797B00A5A6
      A500E7E7E70000000000000000000000000000000000F7F7F700D6D3D6008C8A
      8C00393C39002124210021242100212421002124210021242100212421002124
      2100212421002124210021242100212421002124210021242100212421002124
      2100393C390094929400E7E7E70000000000000000000000000000000000FFFF
      FF00F7F3F700D6D3D600A5A6A5006B6D6B004A494A0031343100292829002124
      21002124210029282900313431004A494A006B6D6B00A5A6A500D6D3D600F7F3
      F700FFFFFF00000000000000000000000000FFFFFF00F7F7F700D6D3D6008C8A
      8C00393C390021242100393C39008C8A8C00D6D3D600F7F7F700FFFFFF000000
      000000000000FFFFFF00F7F7F700D6D3D6008C8A8C00393C390021242100393C
      39008C8A8C00D6D3D600F7F7F700FFFFFF00000000000000000000000000D6D7
      D600424542002124210021242100212421002124210021242100212421002124
      2100212421002124210021242100212421002124210021242100212421004245
      4200D6D7D60000000000000000000000000000000000E7E7E70094929400393C
      390084868400DEDFDE008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A
      8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C00DEDBDE00DEDB
      DE00848284004A494A00D6D7D600000000000000000000000000FFFFFF00EFEF
      EF00BDBEBD007B7D7B0042454200313439005255630073718C008486AD009496
      C6009496C6008486AD0073718C005255630031343900424542007B7D7B00BDBE
      BD00EFEFEF00FFFFFF000000000000000000F7F7F700D6D3D6008C8A8C00393C
      39006B698400ADAADE006B698400393C39008C8A8C00D6D3D600F7F7F700FFFF
      FF00FFFFFF00F7F7F700D6D3D6008C8A8C00393C39006B698400ADAADE006B69
      8400393C39008C8A8C00D6D3D600F7F7F700000000000000000000000000D6D3
      D60029282900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002928
      2900D6D3D60000000000000000000000000000000000D6D7D6004A4D4A008486
      8400DEDBDE00DEDBDE008C8A8C00DEDBDE00DEDBDE00DEDBDE008C8A8C008C8A
      8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C00DEDBDE00DEDB
      DE00DEDBDE00292C2900D6D3D600000000000000000000000000F7F3F700BDBE
      BD006B6D6B00292C29005A596B008482A5009C9ACE009C9ACE009C9ACE009C9A
      CE009C9ECE009C9ACE009C9ACE009C9ACE008482A5005A596B00292C29006B6D
      6B00BDBEBD00F7F3F7000000000000000000E7E7E70094929400424142006B69
      8400A5A6DE00A5A6DE00A5A6DE006B698400424142008C8A8C00D6D3D600F7F3
      F700F7F3F700D6D3D6008C8A8C00424142006B698400A5A6DE00A5A6DE00A5A6
      DE006B6984004241420094929400E7E7E700FFFFFF00F7F3F700E7E3E700B5B2
      B500292C2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00292C
      2900B5B2B500E7E3E700F7F3F700FFFFFF0000000000D6D3D60031303100DEDB
      D600D6D7D600D6D7D6008C8A8C00D6D7D600D6D7D600D6D7D6008C8A8C008C8A
      8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C00D6D7D600D6D7
      D600D6D7D60031303100D6D3D6000000000000000000FFFBFF00D6D3D6007375
      7300313439006B6984009C9ACE009C9ACE009C9ACE009C9ACE00CECBE700DEDB
      EF00DEDBEF00CECBE700B5B6DE00A5A2CE009C9ACE009C9ACE006B6984003134
      390073757300D6D3D600FFFBFF0000000000DEDBDE00525152006B698400A5A6
      DE00A5A2DE00A5A6DE00A5A2DE00A5A2DE006B698400424142008C8E8C00CECB
      CE00CECBCE008C8E8C00424142006B698400A5A2DE00A5A2DE00A5A6DE00A5A2
      DE00A5A2DE006B69840052515200DEDBDE00F7F3F700CECBCE00949694006B6D
      6B0031303100F7F3F700F7F3F700F7F3F700F7F3F700F7F3F700F7F3F700F7F3
      F700F7F3F700F7F3F700F7F3F700F7F3F700F7F3F700F7F3F700F7F3F7003130
      31006B6D6B0094969400CECBCE00F7F3F70000000000D6D3D60031343100D6D7
      D600D6D7D600D6D7D6008C8A8C00D6D7D600D6D7D600D6D7D6008C8A8C008C8A
      8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C00D6D7D600D6D7
      D600D6D7D60031343100D6D3D60000000000FFFFFF00E7E7E700A5A2A5003134
      31006B6984009496CE009496CE009496CE008C8EBD009C9AAD006B697B004A49
      52004A4952006B697B009C9AAD00C6C7DE00B5B6DE009496CE009496CE006B69
      840031343100A5A2A500E7E7E700FFFFFF00E7E7E70031343100D6D7EF00A5A2
      D600A5A2D600A5A2DE00A5A2D600A5A2D600A5A2D6006B698400424542007B79
      7B007B797B00424542006B698400A5A2DE00A5A2D600A5A2D600A5A2DE00A5A2
      D600A5A2D600D6D7EF0031343100E7E7E700E7E3E7007B7D7B00424142003134
      310031343100E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7003134
      310031343100424142007B7D7B00E7E3E70000000000D6D3D600393C3900D6D3
      D600D6D3D600D6D3D6008C8A8C00D6D3D600D6D3D600D6D3D6008C8A8C008C8A
      8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C00D6D3D600D6D3
      D600D6D3D600393C3900D6D3D60000000000FFFBFF00CECBCE005A5D5A005A5D
      73009496CE009496CE009492CE009496CE007B7DA500393839005A595A009496
      9400BDBEBD00ADAAAD0073757300525563009496AD00B5B2DE009492CE009492
      CE005A5D73005A5D5A00CECBCE00FFFBFF00F7F7F700737573006B698C00D6D3
      EF009C9ED6009C9ED6009C9ED6009C9ED6009C9ED6009C9ED6006B698C004241
      4200424142006B698C009C9ED6009C9ED6009C9ED6009C9ED6009C9ED6009C9E
      D600D6D3EF006B698C0073757300F7F7F700D6D7D6004A4D4A009C9A9C00CECF
      CE006B696B00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDB
      DE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE006B69
      6B00CECFCE009C9A9C004A4D4A00D6D7D60000000000D6D3D60042414200D6D3
      D600CECFCE00CECFCE008C8A8C00CECFCE00CECFCE00CECFCE008C8A8C008C8A
      8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C00CECFCE00CECF
      CE00D6D3D60042414200D6D3D60000000000EFEFEF009C9E9C0042454A007B7D
      AD009492CE009492CE008C8ECE008C8ECE009492CE0073759C00393C42006361
      6300B5B2B500E7E7E700FFFBFF00C6C7C6006B6D6B009496B5008C92CE00948E
      CE007B7DAD0042454A009C9E9C00EFEFEF00FFFFFF00E7E3E7007B797B006B6D
      8C00D6D3EF009C9AD6009C9AD6009C9AD6009C9AD6009C9AD6009C9AD6006B6D
      8C006B6D8C009C9AD6009C9AD6009C9AD6009C9AD6009C9AD6009C9AD600D6D3
      EF006B6D8C007B797B00E7E3E700FFFFFF00D6D3D600393C3900BDBABD00BDBA
      BD00737573005A5D5A005A5D5A005A5D5A005A5D5A005A5D5A005A5D5A005A5D
      5A005A5D5A005A5D5A005A5D5A005A5D5A005A5D5A005A5D5A005A5D5A007375
      7300BDBABD00BDBABD00393C3900D6D3D60000000000D6D3D6004A494A00CECF
      CE00CECBCE00CECBCE008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A
      8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C00CECBCE00CECB
      CE00CECFCE004A494A00D6D3D60000000000E7E3E7007375730063617B008C8E
      CE008C8ECE008486BD0073719C00B5B2DE008C8ECE008C8ACE0073759C004245
      420063656300B5B2B500E7E7E700FFFBFF00BDBABD005A596B00A5A2CE008C8E
      CE008C8ECE0063617B0073757300E7E3E70000000000FFFFFF00E7E7E7007B7D
      7B006B6D8C00D6D3EF009496D6009496D6009496D6009496D6009496D6009496
      D6009496D6009496D6009496D6009496D6009496D6009496D600D6CFEF006B6D
      8C007B7D7B00E7E7E700FFFFFF0000000000D6D3D600424542008C8A8C008C8A
      8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A
      8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A
      8C008C8A8C008C8A8C0042454200D6D3D60000000000D6D3D6004A4D4A00CECF
      CE00C6CBC600C6C7C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C7C600C6C7
      C600CECBCE004A4D4A00D6D3D60000000000DEDBDE005A5D5A007B759C008C86
      CE008C86CE0073719400636163008C92AD00ADAEDE00848ACE008C8ACE007371
      9C004A494A0063656300B5B2B500E7E7E700EFEBEF006B6D6B009C9AB500848A
      CE008C86CE007B759C005A5D5A00DEDBDE000000000000000000FFFFFF00E7E7
      E700848284006B6D8C00CECFEF009492D6009492D6009492D6009492D6009492
      D6009492D6009492D6009492D6009492D6009492D600CECFEF006B6D8C008482
      8400E7E7E700FFFFFF000000000000000000D6D3D6004A494A00BDBEBD00BDBE
      BD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBE
      BD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBE
      BD00BDBEBD00BDBEBD004A494A00D6D3D60000000000D6D3D60052555200CECF
      CE00C6C7C600C6C3C600C6C3C600C6C7C600C6C3C600C6C7C600C6C3C600C6C3
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6C3C600C6C7C600C6C7C600C6C7
      C600CECBCE0052555200D6D3D60000000000D6D7D600525552009492BD008482
      CE008486C60063617B008C8A8C007B7D7B008C92AD00ADAADE008486CE008482
      CE007371A5005251520063656300B5B2B500DEDFDE008C8E8C0073718C008486
      C6008482CE009492C60052555200D6D7D600000000000000000000000000FFFF
      FF00E7E7E700848284006B6D9400CECFEF008C8ED6008C8ED6008C8ED6008C8E
      D6008C8ED6008C8ED6008C8ED6008C8ED600CECFEF006B6D940084828400E7E7
      E700FFFFFF00000000000000000000000000D6D3D6004A4D4A00C6C7C600C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7
      C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600C6C7C600639A3100639A
      3100C6C7C600C6C7C6004A4D4A00D6D3D60000000000D6D3D6005A595A00CECF
      CE00C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600C6C3
      C600C6C3C600C6C3C600C6C3C600C6C3C600C6C3C600BDC3C600C6C3BD00C6C3
      C600CECBCE005A595A00D6D3D60000000000D6D7D60052555200A5A2D6007B7D
      C6007B7DC6005A5D6B00A5A6A500CECFCE00848684009492AD00ADAADE007B7D
      C6007B7DC6007371A500525552006B696B00ADAAAD009C9A9C0063616B007B7D
      C6007B7DC600A5A2D60052555200D6D7D600000000000000000000000000FFFF
      FF00F7F3F700BDBEBD00636563006B6D94008C8ACE008C8ACE008C8ACE008C8A
      CE008C8ACE008C8ACE008C8ACE008C8ACE006B6D940063656300BDBEBD00F7F3
      F700FFFFFF00000000000000000000000000D6D3D60052555200CECFCE00CECF
      CE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECF
      CE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECF
      CE00CECFCE00CECFCE0052555200D6D3D60000000000D6D3D60063616300CECF
      CE00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBE
      BD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBEBD00BDBE
      BD00CECBCE0063616300D6D3D60000000000DEDBDE005A5D5A00A5A6D6008486
      CE007B79C60063616B009C9E9C00EFEFEF00DEDBDE008C8A8C009492B500A5A6
      DE007B79C6007B79C6007371A5005A595A00636563007375730063616B007B79
      C6008486CE00A5A6D6005A5D5A00DEDBDE000000000000000000FFFFFF00F7F7
      F700D6D3D6008C8E8C005A5D5A00737194008486CE008486CE008486CE008486
      CE008486CE008486CE008486CE008486CE00737194005A5D5A008C8E8C00D6D3
      D600F7F7F700FFFFFF000000000000000000D6D3D6005A595A00D6D3D600D6D3
      D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3
      D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3
      D600D6D3D600D6D3D6005A595A00D6D3D60000000000D6D3D6006B696B00CECF
      CE00BDBABD00BDBABD00DEDFDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDFDE00BDBABD00BDBA
      BD00CECBCE006B696B00D6D3D60000000000E7E3E7006B696B00A5A2CE008C8E
      CE007375C6006B6984007B7D7B00DEDBDE00FFFBFF00DEDBDE008C8E8C009492
      B500A5A2DE007375C6007375C600736DA50063616300525552006B6984007375
      C6008C8ECE00A5A2CE006B696B00E7E3E70000000000FFFFFF00F7F7F700D6D3
      D600949294005A5D5A0073719400847DCE008482CE008482CE008482CE00847D
      CE008482CE008482CE008482CE00847DCE00847DCE00737194005A5D5A009492
      9400D6D3D600F7F7F700FFFFFF0000000000D6D7D60063616300D6D7D600D6D7
      D600ADAEAD008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A
      8C008C8A8C008C8E8C008C8A8C008C8A8C008C8A8C008C8E8C008C8A8C00ADAE
      AD00D6D7D600D6D7D60063616300D6D7D60000000000D6D3D6006B6D6B00CECF
      CE00B5B6B500B5B6B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B6B500B5B6
      B500CECFCE006B6D6B00D6D3D60000000000EFEFEF00848284009C9ABD009C9A
      D6007371C6006B6DA5006B696B00BDBABD00EFEFEF00FFFBFF00DEDBDE009492
      94009492B500A5A2DE007371C6007371C6006B6DA500636563006B6DA5007371
      C6009C9AD6009C9ABD0084828400EFEFEF00FFFFFF00F7F7F700D6D3D6009492
      94006361630073719C007B79CE007B7DCE007B79CE007B7DCE007B79CE007B79
      CE007B7DCE007B7DCE007B7DCE007B7DCE007B7DCE007B7DCE0073719C006361
      630094929400D6D3D600F7F7F700FFFFFF00E7E3E70063656300DEDBDE00DEDB
      DE00ADAEAD00E7E3E700E7E3E700E7DFDE00E7E3E700E7E3E700E7DFDE00E7E3
      E700E7DFDE00E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700ADAE
      AD00DEDBDE00DEDBDE0063656300E7E3E70000000000D6D3D60073717300D6D3
      D600B5B2B500B5B2B500FFFFFF00FFFFFF00BDBABD00BDBABD00BDBABD00BDBA
      BD00BDBABD00BDBABD00BDBABD00BDBABD00FFFFFF00FFFFFF00B5B2B500B5B2
      B500CECFCE0073717300D6D3D60000000000FFFBFF00A5A2A5007B7D9C00B5B2
      E7007B79CE006B6DBD006B6D84007B7D7B00BDBABD00DEDBDE00EFEFEF00D6D3
      D6008C8E8C009492B5009C9EDE006B6DC6006B6DC6006B6DAD006B6DBD007B79
      CE00B5B2DE007B7D9C00A5A2A500FFFBFF00F7F7F700D6D3D600949294006365
      630073719C007B79CE007B79CE007B79CE007B79CE007375CE007B79CE00C6C3
      E700C6C3E7007B79CE007B79CE007B79CE007B79CE007B79CE007B75CE007371
      9C006365630094929400D6D3D600F7F7F700F7F3F7008C8E8C00B5B6B500DEDB
      DE00ADAEAD00E7E3E700E7E3E700E7DFDE00E7E3E700E7E3E700E7DFDE00E7E3
      E700E7DFDE00E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700ADAE
      AD00DEDBDE00B5B6B5008C8E8C00F7F3F70000000000D6D3D6007B797B00D6D3
      D600B5B2B500B5B2B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B2B5007B79
      7B00D6D3D6007B797B00D6D3D60000000000FFFFFF00DEDBDE0073717B00ADAE
      D6008486CE006B69C6006B6DA500636563006B6D6B008C8E8C00ADAAAD00BDBA
      BD00A5A6A5007B7D7B009492B5009C9AD6006B69C6006B69C6006B69C6008486
      CE00ADAED60073717B00DEDBDE00FFFFFF00E7E7E7009C9A9C006B696B007371
      9C007375CE007375C6007375C6007375CE007375CE007375CE00C6C3E7007371
      9C0073719C00C6C3E7007375C6007375CE007375CE007375CE007375CE007375
      CE0073719C006B696B009C9A9C00E7E7E700FFFFFF00D6D3D6009C9A9C007371
      730073717300DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDF
      DE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE007371
      7300737173009C9A9C00D6D3D600FFFFFF0000000000D6D7D6007B7D7B00D6D7
      D600ADAEAD00ADAEAD00FFFFFF00FFFFFF00BDBABD00BDBABD00BDBABD00BDBA
      BD00BDBABD00BDBABD00BDBABD00BDBABD00FFFFFF00FFFFFF00ADAEAD007B7D
      7B00D6D7D6007B7D7B00D6D7D6000000000000000000FFFBFF00ADAEAD008482
      A500ADAEDE006B69C6006365C6006B6DA50073718C0063656300636563006365
      630063656300636563006B696B006B6DAD006B65C6006B65C6006B69C600ADAE
      DE008482A500ADAEAD00FFFBFF0000000000DEDBDE007B797B0073719C007371
      C6007371C6007371C6007371C6007371C6007371C600BDBEE70073719C009C9A
      9C009C9A9C0073719C00BDBEE7007371C6007371C6007371C6007371C6007371
      C6007371C60073719C007B797B00DEDBDE00000000000000000000000000D6D3
      D60073757300DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDB
      DE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00C6C3C600BDBABD007375
      7300D6D3D60000000000000000000000000000000000E7E7E70084828400DEDB
      DE00ADAEAD00ADAEAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADAAAD00ADAA
      AD00DEDBD60084828400E7E7E700000000000000000000000000EFEFEF007B79
      7B008C8EB5009C9ADE006365C6006365C6006365BD006B6DA500737194007375
      840073758400737194006B6DA5006365BD006365C6006365C6009C9ADE008C8E
      B5007B797B00EFEFEF000000000000000000E7E7E7007B797B00BDBEE7006B6D
      C6006B6DC6006B6DC6006B6DC6006B6DC600BDBEE7007371A5009C9E9C00EFEB
      EF00EFEBEF009C9E9C007375A500BDBEE7006B6DC6006B6DC6006B6DC6006B6D
      C6006B6DC600BDBEE7007B797B00E7E7E700000000000000000000000000D6D3
      D6007B797B00D6D7D600D6D7D600D6D7D600D6D7D600D6D7D600D6D7D600D6D7
      D600D6D7D600D6D7D600D6D7D600CECBCE00ADAEAD009C9E9C00949294007B79
      7B00DEDBDE0000000000000000000000000000000000F7F7F700A5A6A500B5B6
      B500DEDBDE00DEDBDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDBDE00DEDB
      DE00B5B6B500A5A6A500F7F7F700000000000000000000000000FFFFFF00DEDF
      DE007B7D84008C8EB500ADAADE007B7DCE007371CE006361C6006361C6006361
      C6006361C6006361C6006361C6007371CE007B7DCE00ADAADE008C8EB5007B7D
      8400DEDFDE00FFFFFF000000000000000000F7F7F700A5A2A5007375A500BDBE
      E7006B69C6006B69C6006B69C600BDBEE7007375A500A5A2A500EFEBEF00FFFF
      FF00FFFFFF00EFEBEF00A5A2A5007375A500BDBEE7006B69C6006B69C6006B69
      C600BDBEE7007375A500A5A2A500F7F7F700000000000000000000000000D6D3
      D6007B7D7B00D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3
      D600D6D3D600D6D3D600D6D3D600C6C7C600EFEFEF00EFEFEF00D6D3D6008482
      8400EFEBEF0000000000000000000000000000000000FFFFFF00EFEFEF00ADAE
      AD008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A
      8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A
      8C00ADAEAD00EFEFEF00FFFFFF0000000000000000000000000000000000FFFF
      FF00E7E3E700848284008486AD00ADAED600ADAADE008C8ED6007B79CE006B69
      C6006B69C6007B79CE008C8ED600ADAADE00ADAED6008486AD0084828400E7E3
      E700FFFFFF00000000000000000000000000FFFFFF00EFEBEF00A5A2A5007375
      A500BDBAE7006B69C600BDBAE7007375A500A5A2A500EFEBEF00FFFFFF000000
      000000000000FFFFFF00EFEBEF00A5A2A5007375A500BDBAE7006B69C600BDBA
      E7007375A500A5A2A500EFEBEF00FFFFFF00000000000000000000000000D6D7
      D60084828400CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECF
      CE00CECFCE00CECFCE00CECFCE00C6C3C600F7F3F700FFFFFF00B5B2B500A5A6
      A500FFFBFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFBFF00C6C3C60084828C008486AD009C9AC600B5B6DE00CECF
      EF00CECFEF00B5B6DE009C9AC6008486AD0084828C00C6C3C600FFFBFF000000
      00000000000000000000000000000000000000000000FFFFFF00EFEBEF00A5A6
      A5007375A500BDBAE7007375A500A5A6A500EFEBEF00FFFFFF00000000000000
      00000000000000000000FFFFFF00EFEBEF00A5A6A5007375A500BDBAE7007375
      A500A5A6A500EFEBEF00FFFFFF0000000000000000000000000000000000E7E7
      E70084868400DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDF
      DE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00E7E3E700B5B2B50084868400E7E7
      E700FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00EFEBEF00C6C7C600ADAAAD00949694008C8A
      8C008C8A8C0094969400ADAAAD00C6C7C600EFEBEF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00EFEF
      EF00ADAEAD008C8A8C00ADAEAD00EFEFEF00FFFFFF0000000000000000000000
      0000000000000000000000000000FFFFFF00EFEFEF00ADAEAD008C8A8C00ADAE
      AD00EFEFEF00FFFFFF000000000000000000000000000000000000000000FFFB
      FF00ADAEAD008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A
      8C008C8A8C008C8A8C008C8A8C008C8A8C008C8E8C00B5B2B500EFEFEF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFBFF00EFEFEF00E7E3E700DEDBDE00D6D7
      D600D6D7D600DEDBDE00E7E3E700EFEFEF00FFFBFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D3D600CECBCE00BDBEBD00BDBA
      BD00CECFCE00EFEFEF00FFFFFF00000000000000000000000000FFFBFF00EFEB
      EF00DEDBDE00D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3
      D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600DEDB
      DE00EFEBEF00FFFBFF000000000000000000FFFBFF00EFEBEF00DEDBDE00D6D3
      D600D6D3D600D6D3D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFBFF00E7E7E700CECBCE00ADAAAD0094969400848284007375
      7300737573008482840094969400ADAAAD00CECBCE00E7E7E700FFFBFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000737573006B6D6B00636163004A494A004241
      42006B696B00BDBABD00EFEFEF00FFFFFF000000000000000000EFEBEF00B5B2
      B500848284007375730073757300737573007375730073757300737573007375
      7300737573007375730073757300737573007375730073757300737573008482
      8400B5B2B500EFEBEF000000000000000000EFEBEF00B5B6B500848684006B6D
      6B0063616300636563006B6D6B00737573000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00F7F3F700D6D3D600A5A6A5006B6D6B004A494A0031343100292829002124
      21002124210029282900313431004A494A006B6D6B00A5A6A500D6D3D600F7F3
      F700FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002124210021242100181C180010141000181C18002124
      2100212021006B696B00CECBCE00F7F3F7000000000000000000DEDBDE005255
      5200292829002124210021242100212421002124210021242100212421002124
      2100212421002124210021242100212421002124210021242100212421002928
      290052555200DEDBDE000000000000000000DEDFDE005A5D5A00292829002120
      21001014100010141000181C1800212021002124210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00EFEF
      EF00BDBEBD007B7D7B00424542004A494A0094929400C6C7CE00E7E3E700EFEF
      F700EFEFF700E7E3E700C6C7CE00949294004A494A00424542007B7D7B00BDBE
      BD00EFEFEF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E3E700DEDBDE00BDBEBD007B7D7B0039383900212421003134
      3100423C39003134310084868400E7E3E7000000000000000000D6D3D600292C
      2900DEDBDE00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDB
      DE00292C2900D6D3D6000000000000000000E7E7E7003134310018140800293C
      4A00292C2900313431005A595A008C8E8C00C6C3C600DEDFDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F3F700BDBE
      BD006B6D6B00292C290094969C00DEDBE700E7E7F700E7E3EF00DEDBEF00D6D7
      E700D6D7E700DEDBEF00E7E3EF00E7E7F700DEDBE70094969C00292C29006B6D
      6B00BDBEBD00F7F3F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEBEF00E7E3E700C6C3C60084828400393C390021242100313431004A4D
      4A006B6D6B006B696B004A4D4A00DEDBDE000000000000000000D6D3D600292C
      2900E7E3E700EFEBEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E3
      E700292C2900D6D3D6000000000000000000F7F7F7006B696B00425563005A8E
      BD004279AD002945630029303100393C39008C8E8C00C6C7C600E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFBFF00D6D3D6007375
      730042454200B5B6BD00E7E7EF00DEDBEF00D6D7E700D6D7E700D6D3E700D6D3
      E700D6D7E700D6D7E700D6D7E700D6D3E700DEDBEF00E7E7F700B5B6BD004245
      420073757300D6D3D600FFFBFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700C6C7C60084828400393C390029282900313431004A4D4A006B6D
      6B0094929400B5B2B50031303100E7E7E7000000000000000000D6D3D6003130
      3100E7E3E700EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEB
      EF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00E7E3
      E70031303100D6D3D6000000000000000000FFFFFF00C6C7C600313439006BA2
      DE006B9ED6005286B5003975C60031517300424142008C8E8C00C6C7C600E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00E7E7E700A5A2A5003134
      3100B5B6BD00E7E3EF00D6D3E700D6D3E700D6D3E700D6D3E700D6D3E700D6D3
      E700D6D3E700D6D3E700D6D3E700D6D3E700D6D3E700D6D3E700E7E3EF00B5B6
      BD0031343100A5A2A500E7E7E700FFFFFF000000000000000000000000000000
      00006396CE004AB6D600298ED6003165C60029456300393839007B797B00B5B2
      B500CECBCE00949694004245420029282900313431004A4D4A006B6D6B009492
      9400B5B2B5008482840073757300F7F7F7000000000000000000D6D3D6003134
      3100E7E3E700EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEB
      EF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00E7E3
      E70031343100D6D3D600000000000000000000000000F7F7F7005A5D5A00526D
      8C006B96CE0052BADE00319AEF003971E70039557300424142008C8E8C00C6C7
      C600E7E7E7000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFBFF00CECBCE005A5D5A009C9A
      A500E7E7EF00D6D3E700ADAECE008C8AB500ADAECE00D6D3E700D6D3E700D6CF
      E700D6D3E700CED3E700CED3E700ADAECE008C8AB500ADAECE00D6CFE700E7E3
      EF009C9AA5005A5D5A00CECBCE00FFFBFF00000000000000000000000000393C
      42008CBECE0063B2B500187D8C0018517B0018346B0018283900212421005A59
      5A008482840052555200292C2900313431004A4D4A006B6D6B0094929400B5B2
      B500848684006B696B00E7E7E700FFFFFF000000000000000000D6D3D6003938
      3900E7E3E700EFE7EF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEBEF00EFEB
      EF00EFEBEF00EFEBEF00E7EBEF00EFEBEF00EFEBEF00EFE7EF00EFEBEF00E7E3
      E70039383900D6D3D600000000000000000000000000FFFFFF00A5A6A5003941
      42009CD7E70084EBEF0029C7E7003196E7003971E70039557300424542008C8E
      8C00C6C7C600E7E3E70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF009C9E9C005A5D5A00DEDB
      E700D6D7E700CECFE700737194008C8AB5008C8AB500ADAACE00CECFE700CECF
      E700CECFE700CECFE700ADAACE008C8AB5008C8AB50073719400CECFE700D6D7
      E700DEDBE7005A5D5A009C9E9C00EFEFEF000000000000000000C6C7C6003130
      3100425552005269630031454200313C3900393C390039383900313431002928
      290031343100393C3900393839004A4D4A006B6D6B0094929400B5B2B5008486
      840039383900BDBEBD00FFFFFF00000000000000000000000000D6D3D600393C
      3900DEDFDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDF
      DE00393C3900D6D3D60000000000000000000000000000000000CECFCE003938
      39006B828400CEFFFF007BDFEF0029C3DE003196E7003971E70039597B004A49
      4A008C8E8C00C6C3C600E7E3E700000000000000000000000000000000000000
      000000000000000000000000000000000000E7E3E700737573009C9EA500E7E3
      EF00CECBDE00CECBDE009492AD006B6D94008486B5008486B500ADAACE00CECB
      DE00CECBDE00ADA6CE008486B5008486B5006B6D94009492AD00CECBDE00CECB
      DE00E7E3EF009C9EA50073757300E7E3E70000000000FFFBFF00B5B6B5002928
      2900313431006361630094929400B5B6B500D6D3D600D6D3D600B5B6B5009492
      94006361630042454200ADAAAD00BDBABD0094929400B5B2B5008C8A8C007371
      730042414200D6D3D60000000000000000000000000000000000D6D3D6004245
      4200DEDFDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDF
      DE0042454200D6D3D60000000000000000000000000000000000000000004241
      420073757300738A8C00C6FBF70084DFEF0029C3E7003196E7003971E700425D
      7B004A494A008C8A8C00C6C3C600DEDFDE000000000000000000000000000000
      000000000000000000000000000000000000DEDBDE005A5D5A00C6C7CE00D6D7
      E700CECBDE00C6CBDE00CEC7DE008C8EAD006B6D94008482B5008482B500A5A6
      C600A5A6C6008482B5008482B5006B6D94008C8EAD00CEC7DE00C6CBDE00C6C7
      DE00D6D7E700C6C7CE005A5D5A00DEDBDE00FFFFFF00E7E7E7008C8A8C003134
      310084868400CECBCE00EFE7E700F7EBE700F7EFE700F7EFE700F7EBE700EFE7
      E700CECBCE00DEDFDE009C9A9C00EFEFEF007B7D7B008C8E8C007B797B00CECB
      CE004A494A000000000000000000000000000000000000000000D6D3D6004A49
      4A00DEDFDE00E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3
      E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700DEDF
      DE004A494A00D6D3D60000000000000000000000000000000000000000000000
      0000D6D7D6007B797B00738A8C00C6FBF70084E3EF0029C3DE003196E7003971
      E700426184004A4D4A008C8A8C00BDBEBD00DEDFDE0000000000000000000000
      000000000000000000000000000000000000D6D7D60052555200DEDFE700CECF
      E700C6C7DE00C6C7DE00C6C7DE00C6C7DE008C8EAD006B699400847DB500847D
      AD00847DAD00847DB5006B6994008C8AA500C6C7DE00C6C7DE00C6C7DE00C6C7
      DE00CECFE700DEDFE70052555200D6D7D600F7F7F700C6C3C600525552008C8A
      8C00DEDBD600EFE7DE00FFF3E700FFF7EF00FFFBF700FFFBF700FFF7EF00FFF3
      E700EFE7DE00DEDBD600DEDFDE004A4D4A00636163008C8A8C00D6D3D600DEDB
      DE00000000000000000000000000000000000000000000000000D6D3D6005251
      5200DEDBDE00E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3
      E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700E7E3E700DEDB
      DE0052515200D6D3D60000000000000000000000000000000000000000000000
      000000000000DEDFDE007B7D7B00738A8C00C6FBF70084E3EF0029C3E7003196
      E7003971E7004A658400525152008C8A8C00BDBEBD00DEDBDE00000000000000
      000000000000000000000000000000000000D6D7D60052555200EFEBF700C6C3
      DE00C6C3DE00C6C3DE00C6C3DE00C6C3DE00C6C3DE009496B5007B7DAD007B7D
      AD007B7DAD007B7DAD009496B500C6C3DE00C6C3DE00C6C3DE00C6C3DE00C6C3
      DE00C6C7DE00EFEBF70052555200D6D7D600EFEBEF009492940073717300CECB
      CE00EFE3D600FFF3E700FFF7F700FFFBEF00FFF7F700FFF7EF00FFF7F700FFFB
      EF00FFF3E700EFE3D600CECBCE007371730052555200ADAAAD00000000000000
      0000000000000000000000000000000000000000000000000000D6D3D6005255
      5200DEDBDE00DEE3DE00E7DFDE00DEDFDE00DEDFDE00DEDFDE00E7DFE700DEE3
      DE00E7E3E700DEDFDE00E7DFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDB
      DE0052555200D6D3D60000000000000000000000000000000000000000000000
      00000000000000000000DEDBDE00848284007B8E8C00C6FBF7007BDFEF0029C3
      E7003196E7003971E7004A698C005255520084868400BDBEBD00DEDBDE000000
      000000000000000000000000000000000000DEDBDE005A5D5A00EFEBF700C6C3
      DE00BDBED600BDBED600BDBEDE00BDBED600BDBEDE009C9EC6007B79AD007B79
      AD007B79AD007B79AD009C9EC600BDBED600BDBEDE00BDBED600BDBED600BDBE
      DE00C6C3DE00EFEBF7005A5D5A00DEDBDE00DEDFDE00737173009C9E9C00EFDF
      D600F7E7D600FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00F7E7D600EFDFD6009C9E9C004245420073757300000000000000
      0000000000000000000000000000000000000000000000000000D6D3D6005A5D
      5A00D6D7D600DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDF
      DE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEDFDE00D6D7
      D6005A5D5A00D6D3D60000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDBDE00848284007B969400C6FBF7007BDF
      EF0029C3DE003196E7003971E70052698C005A595A0084868400BDBABD00D6D3
      D60000000000000000000000000000000000E7E3E7006B696B00DEDBE700C6C7
      DE00BDBAD600BDBED600BDBED600BDBAD6009C9AC6007375AD007375AD006361
      8C0063618C007375AD007375AD009C9AC600BDBED600BDBED600BDBAD600BDBA
      D600C6C7DE00DEDBE7006B696B00E7E3E700D6D7D60063656300BDBEBD00EFD7
      BD00FFE7D600FFF3E700FFF3E700FFF3E700FFEFE700FFF3E700FFF3E700FFF3
      E700FFF3E700FFE7D600EFD7BD00BDBEBD0052555A004A4D4A00000000000000
      0000000000000000000000000000000000000000000000000000D6D3D6006361
      6300D6D7D600DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDB
      DE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDFDE00DEDBDE00DEDBDE00D6D7
      D60063616300D6D3D60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D7D60084868400849A9C00C6FB
      F70084DFEF0029C3E7003196E7003971E700526D8C005A595A0084868400B5B6
      B5005A5D5A00000000000000000000000000EFEFEF0084828400C6C7D600CECB
      DE00BDBAD600BDBAD600BDBAD6009496BD007371AD007375AD0063618C008482
      A5008482A50063618C007371AD007375AD009496BD00BDBAD600BDBAD600BDBA
      D600CECBDE00C6C7D60084828400EFEFEF00D6D7D60063656300D6D7D600EFCB
      A500FFEBD600FFEBDE00FFEFDE00FFEBDE00FFEFDE00FFEBDE00FFEFDE00FFEF
      DE00FFEFDE00FFEBD600EFCBA500D6D7D6006361630042617B00000000000000
      0000000000000000000000000000000000000000000000000000D6D3D6006365
      6300D6D7D600DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDB
      DE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00DEDBDE00D6DBD600D6D3
      D60063656300D6D3D60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D3D60084868400849A
      9C00C6FBF70084E3EF0029C3DE003196E7003171EF00527194005A5D5A007B7D
      7B0052555200CECFCE000000000000000000FFFBFF00A5A2A500ADAAB500D6D7
      E700B5B6D600B5B6D6009492BD007371AD007371AD00635D8C00847DA500B5B6
      D600B5B6D6008482A5005A5D8C007371A5007371AD009492BD00B5B6D600B5B6
      D600D6D7E700ADAAB500A5A2A500FFFBFF00DEDFDE006B6D6B00D6D7D600E7C3
      9C00FFE7CE00FFE7D600FFE7D600FFE7D600FFEBD600FFEBD600FFEBD600FFE7
      D600FFEBD600FFE7CE00E7C39C00D6D7D60063696B00316DC600000000000000
      0000000000000000000000000000000000000000000000000000D6D3D6006B69
      6B00D6D3D600D6D7D600D6D7D600D6D7D600D6D7D600D6D7D600D6D7D600D6D7
      D600D6D7D600D6D7D600D6D7D600D6D7D600D6D3D600CECBCE00CECBCE00C6C7
      C6006B6D6B00D6D7D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D3D6008C8A
      8C00849E9C00C6FBF70084E3EF0029C7E700299EF700397DDE00737573005A5D
      5A0042414200B5B2B500FFFBFF0000000000FFFFFF00DEDBDE0084828400D6D7
      DE00BDBEDE00B5B2D6005A5D8C007371A5005A5D8C007B7D9C00B5B2D600B5B2
      D600B5B2D600B5B2D6007B7D9C005A5D8C007371A5005A5D8C00B5B2D600BDBE
      DE00D6D7E70084828400DEDBDE00FFFFFF00EFEBEF007B7D7B00C6C3C600E7C3
      9C00F7D7B500FFE3C600FFE3CE00FFE3CE00FFE7CE00FFE7C600FFE3CE00FFE7
      CE00FFE3CE00F7D7B500E7C39C00C6C3C6005A71730042495200000000000000
      0000000000000000000000000000000000000000000000000000D6D3D6007371
      7300CECFD600D6D7D600D6D7D600D6D7D600D6D7D600D6D7D600D6D7D600D6D7
      D600D6D7D600D6D7D600D6D7D600CECBCE00B5B2B5009C9EA5009C9A9C00A5A6
      A50073717300DEDBDE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECF
      CE008C8E8C008CA2A500C6FFF7007BE7F70042B6D6004A515A006B5D52007B7D
      73005255520084828400D6D7D600FFFBFF0000000000FFFBFF00ADAEAD00ADAE
      B500D6D3E700B5B2D6007B7D9C004A496B007B7D9C00B5B2CE00B5B2CE00B5B2
      CE00B5B2CE00B5B2D600B5B2CE007B7D9C004A496B007B7D9C00B5B2D600D6D3
      E700ADAEB500ADAEAD00FFFBFF0000000000F7F7F7009C9A9C00ADAAAD00E7CB
      AD00EFC79C00FFDFBD00FFE7CE00FFEFDE00FFF3E700FFF3E700FFEFDE00FFE7
      CE00FFDFC600EFC79C00E7CBAD00ADAAAD008C8E8C006B615A00000000000000
      0000000000000000000000000000000000000000000000000000D6D3D6007375
      7300CECFCE00D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3
      D600D6D3D600D6D3D600D6D3CE00B5B6B500949694008C8E8C009C9E9C00B5B6
      B5007B797B00E7E3E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECFCE008C8E8C008CA6A500BDEBE700DED7D60073655A00424139006B69
      520073757B006B696B00A5A2A500E7E7E7000000000000000000EFEFEF007B79
      7B00BDBECE00CECBDE00ADAECE00ADAECE00ADAECE00ADAECE00ADAECE00ADAE
      CE00ADAECE00ADAECE00ADAECE00ADAECE00ADAECE00ADAECE00CECBDE00BDBE
      CE007B797B00EFEFEF000000000000000000FFFFFF00CECFCE008C8E8C00D6CB
      C600E7BA9400F7CBA500FFF7EF00FFFBF700FFFBF700FFFBF700FFFBF700FFF7
      EF00F7CBA500E7BA9400D6CBC6008C8E8C00BDAEAD00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000D6D3D6007B79
      7B00CECFCE00D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3
      D600D6D3D600D6D3D600CECBCE00B5B2B500CECFCE00EFEBEF00F7F3F700BDBA
      BD0094929400F7F3F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECBCE008C8E8C00848A8C00E7D3D600F7EFEF00736D63005A55
      4A004261BD00636D8C007B797B00D6D7D6000000000000000000FFFFFF00DEDF
      DE0084868C00BDBECE00CED3E700BDBAD600ADAECE00ADAECE00ADAECE00ADAE
      CE00ADAECE00ADAECE00ADAECE00ADAECE00BDBAD600D6CFE700BDBECE008486
      8C00DEDFDE00FFFFFF00000000000000000000000000FFFBFF009C9E9C00A5A6
      A500DECFBD00DEB68C00EFC39C00F7DFC600FFF7EF00FFF7EF00F7DFC600EFC3
      9C00DEB68C00DECFBD00A5A6A5007B797B00736D6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D3D6007B7D
      7B00CECBCE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECF
      CE00CECFCE00CECFCE00C6C7C600BDBABD00E7E3E700F7EFEF00D6D7D6008C8A
      8C00CECFCE00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6BEBD008C8A8C00736D6B00EFE3DE00DED7CE004261
      CE003151F7003159CE007B7D7B00DEDBDE00000000000000000000000000FFFF
      FF00E7E3E70084828400B5B2BD00D6D7E700CECFE700C6C3DE00B5B6D600ADAE
      CE00ADAECE00B5B6D600C6C3DE00CECFE700D6D7E700B5B2BD0084828400E7E3
      E700FFFFFF000000000000000000000000000000000000000000D6D7D6007B79
      7B00A5A6A500D6CBC600E7C3A500DEB28400DEA67300DEA67300DEB28400E7C3
      A500D6CBC600A5A6A50094929400BDBEBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDBDE008482
      8400CECBCE00CECBCE00CECBCE00CECFCE00CECFCE00CECFCE00CECFCE00CECB
      CE00CECFCE00CECBCE00C6C3C600CECBCE00F7EFF700D6D7D60094929400B5B2
      B500FFFBFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C3C600A59EA5007B7D7B005A9AE700296D
      F7003959E700425DDE0084868400EFEBEF000000000000000000000000000000
      000000000000FFFBFF00C6C3C60094929400B5B2BD00CECBD600DEDBE700E7E3
      EF00E7E3EF00DEDBE700CECBD600B5B2BD0094929400C6C3C600FFFBFF000000
      0000000000000000000000000000000000000000000000000000000000008486
      8400A5A2A50094969400B5B2B500C6C7C600D6D7D600D6D7D600C6C7C600B5B2
      B50094969400A5A6A500CECBCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEBEF008C8A
      8C00CECFCE00D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3D600D6D3
      D600D6D3D600D6D3D600CECFCE00D6D3D600BDBEBD0094929400BDBABD00FFFB
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B6B50084828400638AAD003982
      E7004275D60084828C00B5B2B500FFFBFF000000000000000000000000000000
      00000000000000000000FFFFFF00EFEBEF00C6C7C600ADAAAD00949694008C8A
      8C008C8A8C0094969400ADAAAD00C6C7C600EFEBEF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8E8C008486840084828400848684008486840084868400848684008482
      8400848684008C8A8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFBFF00BDBA
      BD008C8E8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A8C008C8A
      8C008C8A8C008C8A8C008C8E8C0094929400ADAEAD00E7E3E700FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDBDE00ADAEAD008C8A
      8C0094929400BDBABD00FFFBFF0000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E007FF00FFFFFFFFFF8007FFE007FF00
      003FF0000F00001FE007FF00001FE0000700000FE007FF000007E00007000007
      0000FF000003E00007000003000000800001E00007800001000000800001E000
      07800001000000000000E00007000000000000000000E0000700000000000000
      0000E00007000000000000000000E00007000000800000000000F0000F000000
      C00000000000F8001F000000E00000000000FC003F000000F00000000000FC00
      3F000000FF0000000000FC003F000000FF0000000000FC003F000000FF000080
      0001FC003F800001FF0000800001FC003F800001FF0000C00003FC003FC00000
      FF0000E00007FC003FE00000FF0000F0000FFE007FF00000FF0001FC003FFF00
      FFF80000FF0003FFFFFFFFFFFFFFE001C00001FC003FC07E03E00007800001F8
      001F803C01E00007800001E00007001800E00007800001C00003000000E00007
      800001C000030000000000008000018000010000000000008000010000000000
      0000000080000100000000000000000080000100000000000000000080000100
      0000800001000000800001000000C00003000000800001000000E00007000000
      800001000000E00007000000800001000000C000030000008000010000008000
      0100000080000100000000000000000080000100000000000000000080000100
      0000000000000000800001800001000000E00007800001C00003000000E00007
      800001C00003000000E00007800001E00007001800E00007FFFFFFF8001F803C
      01E00007FFFFFFFC003FC07E03E0000FFC003FFFFF01C0000303FFFFF8001FFF
      FE00C0000300FFFFE00007FFFC00C00003007FFFC00003FFF800C00003003FFF
      C00003FFF000C00003001FFF800001FFF000C00003000FFF000000F00000C000
      038007FF000000E00000C000038003FF000000C00001C00003C001FF00000080
      0003C00003E000FF000000000007C00003F0007F00000000000FC00003F8003F
      00000000003FC00003FC001F00000000003FC00003FE000F00000000003FC000
      03FF000700000000003FC00003FF800300000000003FC00003FFC00100000000
      003FC00003FFE00080000100003FC00003FFF000C0000300003FC00003FFF800
      C0000380007FC00003FFFC00E00007C000FFC00007FFFE00F8001FE001FFC000
      0FFFFF00FC003FF003FFC0001FFFFF8100000000000000000000000000000000
      000000000000}
  end
  object DataSource1: TDataSource
    DataSet = Q001DMMain.RDSCQM
    Left = 200
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = Q001DMMain.CDSMAN
    Left = 22
    Top = 437
  end
  object DTSManReq: TDataSource
    DataSet = Q001DMMain.ManageReq
    Left = 245
    Top = 428
  end
  object frxdbdtstCHORFR: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    DataSource = DataSource2
    BCDToCurrency = False
    Left = 689
    Top = 380
  end
  object Re1: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41014.527791516200000000
    ReportOptions.LastChange = 41014.547058368060000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = Re1GetValue
    Left = 562
    Top = 360
    Datasets = <
      item
        DataSet = frxdbdtstCHORFR
        DataSetName = 'frxDBDataset6'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'V1'
        Value = ''
      end
      item
        Name = 'V2'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[V1]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtstCHORFR
        DataSetName = 'frxDBDataset6'
        RowCount = 0
        object frxDBDataset6CQTNO2: TfrxMemoView
          Left = 98.267780000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CQTNO2'
          DataSet = frxdbdtstCHORFR
          DataSetName = 'frxDBDataset6'
          Memo.UTF8 = (
            '[frxDBDataset6."CQTNO2"]')
        end
        object frxDBDataset6CQTEGN: TfrxMemoView
          Left = 170.078850000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CQTEGN'
          DataSet = frxdbdtstCHORFR
          DataSetName = 'frxDBDataset6'
          Memo.UTF8 = (
            '[frxDBDataset6."CQTEGN"]')
        end
        object frxDBDataset6CQTBRH: TfrxMemoView
          Left = 400.630180000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CQTBRH'
          DataSet = frxdbdtstCHORFR
          DataSetName = 'frxDBDataset6'
          Memo.UTF8 = (
            '[frxDBDataset6."CQTBRH"]')
        end
        object frxDBDataset6CQTBNK: TfrxMemoView
          Left = 26.456710000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxdbdtstCHORFR
          DataSetName = 'frxDBDataset6'
          Memo.UTF8 = (
            '[Line#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 94.488250000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxdbdtstCHORFR
          DataSetName = 'frxDBDataset6'
          Memo.UTF8 = (
            #3648#3608#3587#3648#3608#3591#3648#3608#3585' [V2] '#3648#3608#137#3648#3608#154#3648#3608#3601#3648#3608#154)
        end
      end
    end
  end
  object detail: TDataSource
    DataSet = Q001DMMain.RDS1
    Left = 312
    Top = 161
  end
end
