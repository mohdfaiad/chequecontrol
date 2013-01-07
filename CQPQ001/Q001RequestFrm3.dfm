inherited Q001FrmRequest: TQ001FrmRequest
  Top = 37
  Caption = 'Request Cheque'
  ClientHeight = 667
  ClientWidth = 1016
  OnClose = FormClose
  ExplicitTop = 37
  ExplicitWidth = 1024
  ExplicitHeight = 701
  PixelsPerInch = 96
  TextHeight = 13
  inherited MASTERPANE: TPanel
    Width = 1016
    Height = 667
    ExplicitLeft = -1
    ExplicitTop = 8
    ExplicitWidth = 1024
    ExplicitHeight = 742
    inherited pnHeader: TJvPanel
      Width = 1014
      ExplicitWidth = 1018
      inherited ToolBar: TToolBar
        Width = 1012
        ExplicitWidth = 1012
        inherited btnClose: TToolButton
          OnClick = btnCloseClick
        end
      end
      inherited pnHeaderRight: TJvPanel
        Left = 394
        Top = 35
        Height = 1
        Align = alRight
        ExplicitLeft = 534
        ExplicitTop = 1
        ExplicitHeight = 46
      end
    end
    inherited pnContainer: TPanel
      Width = 1014
      Height = 628
      ExplicitWidth = 1018
      ExplicitHeight = 390
      object JvSplitter1: TJvSplitter
        Left = 0
        Top = 232
        Width = 1014
        Height = 8
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 80
        ExplicitWidth = 1018
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1014
        Height = 92
        Align = alTop
        TabOrder = 0
        DesignSize = (
          1014
          92)
        object cxLabel1: TcxLabel
          Left = 1
          Top = 59
          Caption = 'Chq Status'
        end
        object cxGroupBox1: TcxGroupBox
          Left = 247
          Top = 46
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
        object SearchBar1: TSearchBar
          Left = 1
          Top = 1
          Width = 1012
          Height = 44
          Align = alTop
          TabOrder = 2
          SQLPrefix = 'AND'
          Bracket = True
        end
        object Button1: TButton
          Left = 564
          Top = 61
          Width = 92
          Height = 25
          Caption = 'Search'
          TabOrder = 3
          OnClick = MaschqClick
        end
        object ListStatusChq: TcxComboBox
          Left = 79
          Top = 55
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
          TabOrder = 4
          Width = 148
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 92
        Width = 1014
        Height = 140
        Align = alTop
        TabOrder = 1
        object CxGBank: TcxGrid
          Left = 1
          Top = 1
          Width = 1012
          Height = 138
          Align = alClient
          TabOrder = 0
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
              Caption = 'Chq. Date2'
              DataBinding.FieldName = 'CQMDAT'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 88
            end
            object gdbtvSearchListColumn12: TcxGridDBColumn
              Caption = 'Chq. Date'
              OnGetDisplayText = gdbtvSearchListColumn12GetDisplayText
              Width = 88
            end
            object gdbtvSearchListColumn9: TcxGridDBColumn
              Tag = 99
              Caption = 'Deposit date'
              DataBinding.FieldName = 'CQMTRD'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 88
            end
            object gdbtvSearchListColumn14: TcxGridDBColumn
              Caption = 'Deposit date'
              OnGetDisplayText = gdbtvSearchListColumn14GetDisplayText
              Width = 88
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
              Caption = 'Status'
              DataBinding.FieldName = 'CQMSTA'
              Visible = False
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
            object gdbtvSearchListColumn6: TcxGridDBColumn
              Caption = 'Status'
              OnGetDisplayText = gdbtvSearchListColumn6GetDisplayText
              Width = 70
            end
            object gdbtvSearchListColumn17: TcxGridDBColumn
              Caption = 'act'
              DataBinding.FieldName = 'CQMACT'
              Visible = False
            end
            object gdbtvSearchListColumn19: TcxGridDBColumn
              Caption = 'STS'
              DataBinding.FieldName = 'CQMSTS'
              Visible = False
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
      object Panel4: TPanel
        Left = 0
        Top = 240
        Width = 1014
        Height = 388
        Align = alClient
        TabOrder = 2
        ExplicitTop = 197
        ExplicitWidth = 1018
        ExplicitHeight = 193
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 1012
          Height = 386
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
          ExplicitTop = 6
          ExplicitWidth = 1016
          ExplicitHeight = 425
          ClientRectBottom = 361
          ClientRectRight = 1012
          ClientRectTop = 0
          object cxTabSheet1: TcxTabSheet
            Caption = 'Req Chq'
            ImageIndex = 0
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 1012
              Height = 36
              Align = alTop
              TabOrder = 0
              DesignSize = (
                1012
                36)
              object cxButton2: TcxButton
                Left = 873
                Top = 3
                Width = 61
                Height = 27
                Anchors = [akTop, akRight, akBottom]
                Caption = '+ Add'
                TabOrder = 0
                OnClick = cxButton2Click
                LookAndFeel.Kind = lfStandard
              end
              object cxButton1: TcxButton
                Left = 942
                Top = 3
                Width = 65
                Height = 27
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
                Height = 30
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
                Height = 30
                Anchors = [akLeft, akTop, akBottom]
                Caption = 'New'
                TabOrder = 3
                Visible = False
                OnClick = cxButton3Click
                LookAndFeel.Kind = lfStandard
              end
              object cxLabel34: TcxLabel
                Left = -3
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
                Left = 801
                Top = 3
                Width = 66
                Height = 27
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
            end
            object Panel5: TPanel
              Left = 0
              Top = 320
              Width = 1012
              Height = 41
              Align = alBottom
              TabOrder = 1
              DesignSize = (
                1012
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
                Left = 905
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
              Top = 36
              Width = 1012
              Height = 284
              Align = alClient
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
                  OnGetDisplayText = G1Ac_statusGetDisplayText
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
              end
              object cxGridLevel1: TcxGridLevel
                GridView = gdbtvSelectedList
              end
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Manage Req Chq'
            ImageIndex = 2
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel6: TPanel
              Left = 0
              Top = 42
              Width = 1012
              Height = 319
              Align = alBottom
              TabOrder = 0
              object cxPageControl2: TcxPageControl
                Left = 1
                Top = 68
                Width = 1010
                Height = 209
                Align = alClient
                Style = 9
                TabOrder = 0
                TabSlants.Kind = skCutCorner
                TabSlants.Positions = [spLeft, spRight]
                ClientRectBottom = 209
                ClientRectRight = 1010
                ClientRectTop = 0
              end
              object Panel7: TPanel
                Left = 1
                Top = 1
                Width = 1010
                Height = 67
                Align = alTop
                TabOrder = 1
                DesignSize = (
                  1010
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
                Width = 1010
                Height = 209
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
                      FieldName = 'CQMAMT'
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
                    Caption = 'Meno'
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
                Top = 277
                Width = 1010
                Height = 41
                Align = alBottom
                TabOrder = 3
                DesignSize = (
                  1010
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
                  Left = 517
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
    Left = 432
    Top = 16
  end
  inherited il1: TImageList
    Left = 458
    Top = 80
    Bitmap = {
      494C01010900D400E80010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object DataSource1: TDataSource
    DataSet = Q001DMMain.RDSCQM
    Left = 200
    Top = 136
  end
  object DataSource2: TDataSource
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
    Left = 361
    Top = 170
  end
end
