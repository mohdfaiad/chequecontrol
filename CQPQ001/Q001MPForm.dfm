inherited Q001FrmMP: TQ001FrmMP
  Caption = 'Search Cheque in Storng Room'
  ClientHeight = 440
  ClientWidth = 1020
  OnClose = FormClose
  ExplicitWidth = 1028
  ExplicitHeight = 467
  PixelsPerInch = 96
  TextHeight = 13
  inherited MASTERPANE: TPanel
    Width = 1020
    Height = 440
    ExplicitWidth = 1020
    ExplicitHeight = 440
    inherited pnHeader: TJvPanel
      Width = 1018
      ExplicitWidth = 1018
      inherited ToolBar: TToolBar
        Left = 1
        Top = 1
        Width = 1016
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1016
      end
      inherited pnHeaderRight: TJvPanel
        Left = 534
        Top = 1
        Height = 46
        Align = alRight
        ExplicitLeft = 534
        ExplicitTop = 1
        ExplicitHeight = 46
        inherited cxLabel7: TcxLabel
          ExplicitWidth = 45
          ExplicitHeight = 23
        end
        inherited edtUser: TcxTextEdit
          ExplicitHeight = 26
        end
        inherited cxLabel8: TcxLabel
          ExplicitWidth = 76
          ExplicitHeight = 23
        end
        inherited edtPassword: TcxTextEdit
          ExplicitHeight = 26
        end
      end
    end
    inherited pnContainer: TPanel
      Width = 1018
      Height = 390
      ExplicitWidth = 1018
      ExplicitHeight = 390
      object JvSplitter1: TJvSplitter
        Left = 0
        Top = 193
        Width = 1018
        Height = 4
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 253
        ExplicitWidth = 771
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1018
        Height = 53
        Align = alTop
        TabOrder = 0
        object cxLabel1: TcxLabel
          Left = 9
          Top = 25
          Caption = 'Search:'
        end
        object cxedtSearch: TcxTextEdit
          Left = 64
          Top = 21
          Properties.OnChange = cxedtSearchPropertiesChange
          TabOrder = 1
          OnKeyDown = cxedtSearchKeyDown
          Width = 284
        end
        object rgOption: TcxRadioGroup
          Left = 354
          Top = 1
          Caption = 'Chq. Status'
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'All'
              Value = '*'
            end
            item
              Caption = 'Passed'
              Value = 'P'
            end
            item
              Caption = 'Returned'
              Value = 'Y'
            end>
          Properties.OnChange = rgOptionPropertiesChange
          ItemIndex = 0
          TabOrder = 2
          Height = 46
          Width = 271
        end
        object lblKeySearch: TcxLabel
          Left = 42
          Top = 1
          AutoSize = False
          Caption = 'Bank Code'
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.IsFontAssigned = True
          Height = 22
          Width = 306
        end
        object cxGroupBox1: TcxGroupBox
          Left = 631
          Top = 1
          Caption = 'Deposit Date'
          TabOrder = 4
          Height = 46
          Width = 374
          object deFrom: TcxDateEdit
            Left = 92
            Top = 16
            Enabled = False
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
            Left = 219
            Top = 18
            Caption = 'To'
          end
          object deTo: TcxDateEdit
            Left = 247
            Top = 16
            Enabled = False
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
            Left = 20
            Top = 16
            Caption = 'Enable'
            TabOrder = 3
            OnClick = cbDateClick
            Width = 68
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 53
        Width = 1018
        Height = 140
        Align = alTop
        TabOrder = 1
        object CxGBank: TcxGrid
          Left = 1
          Top = 1
          Width = 1016
          Height = 138
          Align = alClient
          TabOrder = 0
          object gdbtvSearchList: TcxGridDBTableView
            OnDblClick = gdbtvSearchListDblClick
            OnKeyDown = gdbtvSearchListKeyDown
            NavigatorButtons.ConfirmDelete = False
            OnSelectionChanged = gdbtvSearchListSelectionChanged
            DataController.DataSource = DataSource1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                OnGetText = gdbtvSearchListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
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
                Column = gdbtvSearchListColumn12
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
            Styles.Inactive = cxStyle2
            Styles.Selection = cxStyle1
            OnColumnHeaderClick = gdbtvSearchListColumnHeaderClick
            object gdbtvSearchListColumn16: TcxGridDBColumn
              Tag = 99
              Caption = 'Item'
              OnGetDisplayText = gdbtvSearchListColumn16GetDisplayText
              Options.Filtering = False
              Options.Sorting = False
              Width = 52
            end
            object gdbtvSearchListColumn12: TcxGridDBColumn
              Caption = 'Bank Code'
              DataBinding.FieldName = 'CQMBNK'
              Width = 74
            end
            object gdbtvSearchListColumn13: TcxGridDBColumn
              Caption = 'Bank Name'
              DataBinding.FieldName = 'CQMEGN'
              Width = 121
            end
            object gdbtvSearchListColumn14: TcxGridDBColumn
              Caption = 'Branch Code'
              DataBinding.FieldName = 'CQMBBR'
              Width = 97
            end
            object gdbtvSearchListColumn15: TcxGridDBColumn
              Caption = 'Branch Name'
              DataBinding.FieldName = 'CQMBRH'
              Width = 173
            end
            object gdbtvSearchListColumn4: TcxGridDBColumn
              Caption = 'Chq. Number'
              DataBinding.FieldName = 'CQMNO2'
              Width = 80
            end
            object gdbtvSearchListColumn3: TcxGridDBColumn
              Tag = 77
              Caption = 'Chq. Amount'
              DataBinding.FieldName = 'CQMAMT'
              OnGetDisplayText = gdbtvSearchListColumn3GetDisplayText
              Styles.Content = cxStyle3
              Width = 100
            end
            object gdbtvSearchListColumn2: TcxGridDBColumn
              Tag = 99
              Caption = 'Chq. Date'
              DataBinding.FieldName = 'CQMDAT'
              Width = 93
            end
            object gdbtvSearchListColumn9: TcxGridDBColumn
              Tag = 99
              Caption = 'Deposit'
              DataBinding.FieldName = 'CQMTRD'
              Width = 70
            end
            object gdbtvSearchListColumn5: TcxGridDBColumn
              Caption = 'Contract No.'
              DataBinding.FieldName = 'CONRUN'
              Width = 93
            end
            object gdbtvSearchListColumn7: TcxGridDBColumn
              Caption = 'Dealers'
              DataBinding.FieldName = 'DLR Name'
              Width = 237
            end
            object gdbtvSearchListColumn8: TcxGridDBColumn
              Caption = 'Car Model'
              DataBinding.FieldName = 'CARMDL'
              Width = 97
            end
            object gdbtvSearchListColumn10: TcxGridDBColumn
              Caption = 'Chq. Type'
              DataBinding.FieldName = 'CQMCTY'
              Width = 45
            end
            object gdbtvSearchListColumn11: TcxGridDBColumn
              Caption = 'Return Reason'
              DataBinding.FieldName = 'CQMRUN'
              Width = 113
            end
            object gdbtvSearchListColumn17: TcxGridDBColumn
              Tag = 99
              Caption = 'Active'
              DataBinding.FieldName = 'CQMACT'
              Width = 42
            end
            object gdbtvSearchListColumn1: TcxGridDBColumn
              Tag = 99
              Caption = 'Status'
              DataBinding.FieldName = 'CQMSTS'
              Width = 40
            end
            object gdbtvSearchListColumn18: TcxGridDBColumn
            end
          end
          object CxGBankLevel1: TcxGridLevel
            GridView = gdbtvSearchList
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 197
        Width = 1018
        Height = 193
        Align = alClient
        TabOrder = 2
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 1016
          Height = 191
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
          ClientRectBottom = 166
          ClientRectRight = 1016
          ClientRectTop = 0
          object cxTabSheet1: TcxTabSheet
            Caption = 'Cheque Entry'
            ImageIndex = 0
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 1016
              Height = 36
              Align = alTop
              TabOrder = 0
              DesignSize = (
                1016
                36)
              object cxButton2: TcxButton
                Left = 797
                Top = 3
                Width = 102
                Height = 27
                Anchors = [akTop, akRight, akBottom]
                Caption = '+ Add'
                TabOrder = 0
                OnClick = cxButton2Click
                LookAndFeel.Kind = lfStandard
              end
              object cxButton1: TcxButton
                Left = 905
                Top = 3
                Width = 102
                Height = 27
                Anchors = [akTop, akRight, akBottom]
                Caption = '- Delete'
                TabOrder = 1
                OnClick = cxButton1Click
                LookAndFeel.Kind = lfStandard
              end
              object cxButton9: TcxButton
                Left = 118
                Top = 2
                Width = 102
                Height = 30
                Anchors = [akLeft, akTop, akBottom]
                Caption = 'Open'
                TabOrder = 2
                OnClick = cxButton9Click
                LookAndFeel.Kind = lfStandard
              end
              object cxButton3: TcxButton
                Left = 10
                Top = 2
                Width = 102
                Height = 30
                Anchors = [akLeft, akTop, akBottom]
                Caption = 'New'
                TabOrder = 3
                OnClick = cxButton3Click
                LookAndFeel.Kind = lfStandard
              end
              object cxLabel34: TcxLabel
                Left = 226
                Top = 2
                Align = alCustom
                AutoSize = False
                Caption = 'Repayin - CC00001 (TL0007)'
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
                Width = 565
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 125
              Width = 1016
              Height = 41
              Align = alBottom
              TabOrder = 1
              DesignSize = (
                1016
                41)
              object Label2: TLabel
                Left = 20
                Top = 11
                Width = 55
                Height = 18
                Anchors = [akLeft, akTop, akBottom]
                Caption = 'Inform :'
              end
              object cbInform: TcxComboBox
                Left = 80
                Top = 7
                Anchors = [akLeft, akTop, akBottom]
                Properties.Items.Strings = (
                  'Repayin Cheque'
                  'Exchange Cheque'
                  'Cancel Cheque'
                  'Withdrawal Cheque'
                  'Inactive/Reactive Chq.')
                TabOrder = 0
                Text = 'Repayin Cheque'
                Width = 148
              end
              object cxButton7: TcxButton
                Left = 234
                Top = 7
                Width = 102
                Height = 26
                Anchors = [akLeft, akTop, akBottom]
                Caption = 'Preview'
                TabOrder = 1
                OnClick = cxButton7Click
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
                OnClick = cxButton8Click
                LookAndFeel.Kind = lfStandard
              end
              object cxButton4: TcxButton
                Left = 902
                Top = 7
                Width = 102
                Height = 26
                Anchors = [akTop, akRight, akBottom]
                Caption = 'Approve'
                TabOrder = 3
                OnClick = cxButton8Click
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
                LookAndFeel.Kind = lfStandard
              end
            end
            object cxGrid1: TcxGrid
              Left = 0
              Top = 36
              Width = 1016
              Height = 89
              Align = alClient
              TabOrder = 2
              object gdbtvSelectedList: TcxGridDBTableView
                OnDblClick = gdbtvSelectedListDblClick
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
                    Kind = skSum
                    FieldName = 'CQMAMT'
                    Column = cxGridDBColumn8
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
                Styles.Inactive = cxStyle2
                Styles.Selection = cxStyle1
                object cxGridDBColumn2: TcxGridDBColumn
                  Tag = 99
                  Caption = 'Item'
                  OnGetDisplayText = cxGridDBColumn2GetDisplayText
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 52
                end
                object cxGridDBColumn3: TcxGridDBColumn
                  Caption = 'Bank Code'
                  DataBinding.FieldName = 'CQMBNK'
                  Width = 74
                end
                object cxGridDBColumn4: TcxGridDBColumn
                  Caption = 'Bank Name'
                  DataBinding.FieldName = 'CQMEGN'
                  Width = 134
                end
                object cxGridDBColumn5: TcxGridDBColumn
                  Caption = 'Branch Code'
                  DataBinding.FieldName = 'CQMBBR'
                  Width = 97
                end
                object cxGridDBColumn6: TcxGridDBColumn
                  Caption = 'Branch Name'
                  DataBinding.FieldName = 'CQMBRH'
                  Width = 164
                end
                object cxGridDBColumn7: TcxGridDBColumn
                  Caption = 'Chq. Number'
                  DataBinding.FieldName = 'CQMNO2'
                  Width = 80
                end
                object cxGridDBColumn8: TcxGridDBColumn
                  Caption = 'Chq. Amount'
                  DataBinding.FieldName = 'CQMAMT'
                  OnGetDisplayText = cxGridDBColumn8GetDisplayText
                  Styles.Content = cxStyle3
                  Width = 98
                end
                object cxGridDBColumn9: TcxGridDBColumn
                  Tag = 99
                  Caption = 'Chq. Date'
                  DataBinding.FieldName = 'CQMDAT'
                  Width = 90
                end
                object cxGridDBColumn10: TcxGridDBColumn
                  Tag = 99
                  Caption = 'Deposit'
                  DataBinding.FieldName = 'CQMTRD'
                  Width = 70
                end
                object cxGridDBColumn11: TcxGridDBColumn
                  Caption = 'Contract No.'
                  DataBinding.FieldName = 'CONRUN'
                  Width = 93
                end
                object cxGridDBColumn12: TcxGridDBColumn
                  Caption = 'Dealers'
                  DataBinding.FieldName = 'DLR Name'
                  Width = 257
                end
                object cxGridDBColumn13: TcxGridDBColumn
                  Caption = 'Car Model'
                  DataBinding.FieldName = 'CARMDL'
                  Width = 97
                end
                object cxGridDBColumn14: TcxGridDBColumn
                  Caption = 'Chq. Type'
                  DataBinding.FieldName = 'CQMCTY'
                  Width = 46
                end
                object cxGridDBColumn15: TcxGridDBColumn
                  Caption = 'Return Reason'
                  DataBinding.FieldName = 'CQMRUN'
                  Width = 113
                end
                object cxGridDBColumn16: TcxGridDBColumn
                  Caption = 'Active'
                  DataBinding.FieldName = 'CQMACT'
                  Width = 40
                end
                object cxGridDBColumn17: TcxGridDBColumn
                  Tag = 99
                  Caption = 'Status'
                  DataBinding.FieldName = 'CQMSTS'
                  Width = 37
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = gdbtvSelectedList
              end
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Manage Chq.'
            ImageIndex = 2
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 1016
              Height = 166
              Align = alClient
              TabOrder = 0
              object cxPageControl2: TcxPageControl
                Left = 1
                Top = 42
                Width = 1014
                Height = 123
                Align = alClient
                Style = 9
                TabOrder = 0
                TabSlants.Kind = skCutCorner
                TabSlants.Positions = [spLeft, spRight]
                ClientRectBottom = 123
                ClientRectRight = 1014
                ClientRectTop = 0
              end
              object Panel7: TPanel
                Left = 1
                Top = 1
                Width = 1014
                Height = 41
                Align = alTop
                TabOrder = 1
                DesignSize = (
                  1014
                  41)
                object Label1: TLabel
                  Left = 20
                  Top = 11
                  Width = 80
                  Height = 18
                  Anchors = [akLeft, akTop, akBottom]
                  Caption = 'History Logs'
                end
              end
              object cxGrid2: TcxGrid
                Left = 1
                Top = 42
                Width = 1014
                Height = 123
                Align = alClient
                TabOrder = 2
                object gdbtvLogList: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  DataController.DataSource = DataSource2
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skCount
                      Column = cxGridDBColumn1
                    end
                    item
                      Kind = skSum
                      FieldName = 'CQMAMT'
                      Column = cxGridDBColumn23
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
                  Styles.Inactive = cxStyle2
                  Styles.Selection = cxStyle1
                  object cxGridDBColumn1: TcxGridDBColumn
                    Tag = 99
                    Caption = 'Item'
                    OnGetDisplayText = cxGridDBColumn2GetDisplayText
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 52
                  end
                  object cxGridDBColumn18: TcxGridDBColumn
                    Caption = 'Bank Code'
                    DataBinding.FieldName = 'CQMBNK'
                    Width = 74
                  end
                  object cxGridDBColumn19: TcxGridDBColumn
                    Caption = 'Bank Name'
                    DataBinding.FieldName = 'CQMEGN'
                    Width = 134
                  end
                  object cxGridDBColumn20: TcxGridDBColumn
                    Caption = 'Branch Code'
                    DataBinding.FieldName = 'CQMBBR'
                    Width = 97
                  end
                  object cxGridDBColumn21: TcxGridDBColumn
                    Caption = 'Branch Name'
                    DataBinding.FieldName = 'CQMBRH'
                    Width = 164
                  end
                  object cxGridDBColumn22: TcxGridDBColumn
                    Caption = 'Chq. Number'
                    DataBinding.FieldName = 'CQMNO2'
                    Width = 80
                  end
                  object cxGridDBColumn23: TcxGridDBColumn
                    Caption = 'Chq. Amount'
                    DataBinding.FieldName = 'CQMAMT'
                    Styles.Content = cxStyle3
                    Width = 98
                  end
                  object cxGridDBColumn24: TcxGridDBColumn
                    Tag = 99
                    Caption = 'Chq. Date'
                    DataBinding.FieldName = 'CQMDAT'
                    Width = 90
                  end
                  object cxGridDBColumn25: TcxGridDBColumn
                    Tag = 99
                    Caption = 'Deposit'
                    DataBinding.FieldName = 'CQMTRD'
                    Width = 70
                  end
                  object cxGridDBColumn26: TcxGridDBColumn
                    Caption = 'Contract No.'
                    DataBinding.FieldName = 'CONRUN'
                    Width = 93
                  end
                  object cxGridDBColumn27: TcxGridDBColumn
                    Caption = 'Dealers'
                    DataBinding.FieldName = 'DLR Name'
                    Width = 257
                  end
                  object cxGridDBColumn28: TcxGridDBColumn
                    Caption = 'Car Model'
                    DataBinding.FieldName = 'CARMDL'
                    Width = 97
                  end
                  object cxGridDBColumn29: TcxGridDBColumn
                    Caption = 'Chq. Type'
                    DataBinding.FieldName = 'CQMCTY'
                    Width = 46
                  end
                  object cxGridDBColumn30: TcxGridDBColumn
                    Caption = 'Return Reason'
                    DataBinding.FieldName = 'CQMRUN'
                    Width = 113
                  end
                  object cxGridDBColumn31: TcxGridDBColumn
                    Caption = 'Active'
                    DataBinding.FieldName = 'CQMACT'
                    Width = 40
                  end
                  object cxGridDBColumn32: TcxGridDBColumn
                    Tag = 99
                    Caption = 'Status'
                    DataBinding.FieldName = 'CQMSTS'
                    Width = 37
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  GridView = gdbtvLogList
                end
              end
            end
          end
        end
      end
    end
  end
  inherited il1: TImageList
    Bitmap = {
      494C01010900D400D40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      000000000000000000000000000000000000FFFFFFFFFDFDFDFFF7F7F7FFEFEF
      EFFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFEEEEEEFFF6F6F6FFFDFDFDFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFF7F7F7FFE2E2E2FFCDCD
      CDFFC7C7C7FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFCBCBCBFFDEDEDEFFF6F6F6FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFB1B0B0FF6E6765FF6F69
      68FF726B6AFF756F6DFF736C6BFF716A68FF6F6866FF6D6564FF6C6563FF6D67
      65FF7D7D7DFFCBCBCBFFEFEFEFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF817E7DFFC6BFBBFFC7C4
      C0FFDBD9D8FFFFFDFDFFB4B1ADFFCCC7C3FFB1A7A2FF938985FF988C88FF7F6E
      6AFF5D5452FFC7C7C7FFEDEDEDFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF7C7977FFB5AFABFFB1AD
      AAFFBDBBB9FFF0EEEEFF9C9995FFB6B0ADFFA39B97FF776D69FF877B77FF7365
      61FF5D5453FFC7C7C7FFEDEDEDFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF7B7877FFAFA8A5FFB2AF
      ABFFBFBEBBFFF0EFEEFF9F9B97FFB7B1AEFFA39B97FF79706CFF887B78FF6E60
      5DFF59504FFFC7C7C7FFEDEDEDFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF7B7877FFB0A9A5FFB2AF
      ABFFBFBEBBFFF0EFEEFF9F9B98FFB7B1AEFFA39B97FF79706CFF887B78FF6F61
      5DFF59504FFFC7C7C7FFEDEDEDFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF7B7877FFB0A9A5FFB2AF
      ABFFBFBEBBFFF0EFEEFF9F9B98FFB7B1AEFFA39B97FF79706CFF887B78FF6F61
      5DFF59504FFFC7C7C7FFEDEDEDFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF7B7877FFB0A9A5FFB2AF
      ABFFBFBEBBFFF0EFEEFF9F9B98FFB7B1AEFFA39B97FF79706CFF887B78FF6F61
      5DFF59504FFFC7C7C7FFEDEDEDFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF7B7877FFB0A9A5FFB2AF
      ABFFBFBEBBFFF0EFEEFF9F9B98FFB7B1AEFFA39B97FF79706CFF887B78FF6F61
      5DFF59504FFFC7C7C7FFEDEDEDFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF7B7776FFB0A9A5FFB2AF
      ABFFBFBEBBFFF0EFEEFF9F9B98FFB7B1AEFFA39B97FF79706CFF887B78FF6F61
      5DFF59504FFFC2C2C2FFE3E3E3FFFAFAFAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F6FF747271FFA49D9AFFA6A3
      A0FFA8A7A5FFDFDDDDFFA3A1A0FF999491FF8E8682FF5D5653FF6E6360FF5A4E
      4BFF4C4544FFB9B9B9FFD3D3D3FFF2F2F2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008D8C8CFF767170FF898683FF908E
      8CFF949493FF9C9B9BFF8A8886FF76726FFF726C69FF655E5CFF5E5755FF554D
      4BFF4D4745FF57514FFFD0D0D0FFF1F1F1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A09D9CFFB2A9A5FFC4C0BBFFD9D7
      D5FFEFF0EFFFE4E2E1FFC3BEBBFFAAA19CFF9E938EFF938682FF847773FF7466
      62FF665653FF706968FFE1E1E1FFF6F6F6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCBAB9FF94908EFF938E8DFF9490
      8EFF908C8BFF5D5D5DFFB5B3B3FFA4A1A1FF5B5A5AFF969292FF908B8AFF928D
      8CFF908C8BFF949190FFF6F6F6FFFCFCFCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF949595FF686361FF696362FF828383FFF1F1F1FFFCFCFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00C0C0C000E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      000000000000000000000000000000000000CCCCCC0066999900666699009999
      9900E5E5E5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003333CC000000
      FF00000099000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC99
      6600CC9966009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000066CCFF003399CC006666
      990099999900E5E5E50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003333CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      660099330000CC99660099330000000000000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000000000000000000000000000000000000CCCCFF0066CCFF003399
      CC006666990099999900E5E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      CC000066FF000000CC0000000000000000000000000000000000000000000000
      00000000FF00000000000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC9966009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000000000000CCCCFF0066CC
      FF003399CC006666990099999900E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CC000000FF0000009900000000000000000000000000000000000000
      FF0000009900000000000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC990000CC000000990000FFCC99000000FF000000CC00FFCC
      9900CC996600CC99660099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      FF0066CCFF003399CC0066669900CCCCCC00FFCCCC00CC999900CC999900CC99
      9900CCCC9900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000FF000000
      990000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600CC996600CC996600993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCCFF0066CCFF00B2B2B200CC999900CCCC9900FFFFCC00FFFFCC00FFFF
      CC00FFFFCC00CC999900FFCCCC00000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000FF00000099000000
      000000000000000000000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600CC996600CC99660099330000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC99660000000000000000003399CC00006699000066
      9900006699000066990000669900006699000000000000000000000000000000
      000000000000E5E5E500CC999900FFCC9900FFFFCC00FFFFCC00FFFFCC00FFFF
      FF00FFFFFF00FFFFFF00CC999900E5E5E5000000000000000000000000000000
      00000000000000000000000000000000CC000000FF0000009900000000000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600FFCC
      9900FFCC9900CC996600CC99660099330000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000000000000000000000000
      000000000000FFCCCC00CCCC9900FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFF
      FF00FFFFFF00FFFFFF00FFFFCC00CCCC99000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000CC00000099000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600FFCC9900FFCC9900CC99660099330000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000000000000000000000000
      000000000000CCCC9900FFCC9900FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFF
      CC00FFFFFF00FFFFFF00FFFFCC00CC9999000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000CC000000
      990000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC99
      6600CC996600CC9966009933000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000000000000000000000000
      000000000000CC999900FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFF
      CC00FFFFCC00FFFFCC00FFFFCC00CC9999000000000000000000000000000000
      CC000000FF000000FF0000009900000000000000000000000000000000000000
      CC0000009900000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000000000000000000000000
      000000000000CCCC9900FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFF
      CC00FFFFCC00FFFFCC00FFFFCC00CC99990000000000000000000000CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      00000000CC000000990000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFF
      FF00CC996600000000000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600CC996600CC996600CC99660000000000000000003399CC0099FFFF0099FF
      FF003399CC003399CC003399CC003399CC000000000000000000000000000000
      000000000000FFCCCC00CCCC9900FFFFFF00FFFFFF00FFFFCC00FFFFCC00FFFF
      CC00FFFFCC00FFFFCC00CCCC9900CCCC99000000000000000000666699000000
      CC00666699000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC00000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600E5E5E500CC9966000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC00CCFFFF0000669900000000000000000000000000000000000000
      000000000000E5E5E500CC999900FFCCCC00FFFFFF00FFFFCC00FFFFCC00FFFF
      CC00FFFFCC00FFCC9900CC999900E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC9966000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600CC996600000000000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC000066990000000000000000000000000000000000000000000000
      00000000000000000000FFCCCC00CC999900FFCCCC00FFFFCC00FFFFCC00FFFF
      CC00CCCC9900CC999900FFCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600CC996600CC996600CC99
      660000000000000000000000000000000000000000003399CC003399CC003399
      CC003399CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E500CCCC9900CC999900CC999900CC99
      9900CC999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009999CC0000008000000080000000800000008000000080009999CC000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      80000000CC000000FF000000FF000000FF000000FF000000FF000000CC000000
      8000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000080000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC660000993300000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000009999CC000000CC000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000CC009999CC00000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC6600009933000000000000000080000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF0000008000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099330000CC660000CC66
      0000CC660000993300009933000099330000993300009933000099330000CC66
      0000CC660000CC6600009933000000000000000080000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF0000008000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000080000000FF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF0000008000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000993300009933000099330000993300009933000099330000993300009933
      0000CC660000CC6600009933000000000000000080000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF0000008000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC6600009933000000000000000080000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF0000008000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000099330000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF0099330000CC66000099330000000000009999CC000000CC000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000CC009999CC00000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC660000993300000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5
      E500CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000E5E5E5009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF00993300009933000099330000000000000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000080000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000000000000000000000000
      80000000CC000000FF000000FF000000FF000000FF000000FF000000CC000000
      8000000000000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC9966000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      00009999CC0000008000000080000000800000008000000080009999CC000000
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
    Left = 56
    Top = 168
  end
  inherited SockCon: TSockCon
    Left = 96
    Top = 168
  end
  inherited frxReport: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited cdsReport1: TClientDataSet
    RemoteServer = Q001DMMain.SockCon
  end
  inherited cdsReport2: TClientDataSet
    RemoteServer = Q001DMMain.SockCon
  end
  inherited cdsReport3: TClientDataSet
    RemoteServer = Q001DMMain.SockCon
  end
  inherited cdsReport4: TClientDataSet
    RemoteServer = Q001DMMain.SockCon
  end
  inherited cdsReport5: TClientDataSet
    RemoteServer = Q001DMMain.SockCon
  end
  inherited cdsRepTemp: TClientDataSet
    RemoteServer = Q001DMMain.SockCon
  end
  inherited cdsReport: TClientDataSet
    RemoteServer = Q001DMMain.SockCon
  end
  object DataSource1: TDataSource
    DataSet = Q001DMMain.RDSCQM
    Left = 264
    Top = 160
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 16
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 33023
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clOlive
      TextColor = clWhite
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clRed
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 8
    Top = 56
  end
  object DataSource2: TDataSource
    DataSet = Q001DMMain.ClientDataSet1
    Left = 304
    Top = 160
  end
end
