object frmSeperateChqItem: TfrmSeperateChqItem
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Other'
  ClientHeight = 470
  ClientWidth = 845
  Color = clGray
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 0
    Top = 459
    Width = 845
    Height = 10
    Cursor = crVSplit
    Align = alBottom
    MinSize = 1
    Maximized = False
    Minimized = True
    ButtonCursor = crDefault
    ExplicitTop = 138
    ExplicitWidth = 177
    RestorePos = 177
  end
  object grid: TcxGrid
    Left = 0
    Top = 138
    Width = 845
    Height = 321
    Align = alClient
    TabOrder = 0
    object gridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPayments
      DataController.KeyFieldNames = 'ACDACD'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OnCustomDrawColumnHeader = gridDBTableView1CustomDrawColumnHeader
      object gridDBTableView1ACDACD: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'ACDACD'
        Options.Editing = False
        Width = 67
      end
      object gridDBTableView1ACDDES: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'ACDDES'
        Options.Editing = False
        Width = 329
      end
      object gridDBTableView1ACDNET: TcxGridDBColumn
        Caption = 'Debit / Credit'
        DataBinding.FieldName = 'ACDNET'
        Options.Editing = False
        Width = 64
      end
      object gridDBTableView1ACDEXAMT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'ACDEXAMT'
        Options.Editing = False
        Width = 62
      end
      object gridDBTableView1ACDRCV: TcxGridDBColumn
        Caption = 'Receive (AMT)'
        DataBinding.FieldName = 'ACDRCV'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,###,##0.00'
        Properties.EditFormat = '#,###,##0.00'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnEditValueChanged = gridDBTableView1ACDRCVPropertiesEditValueChanged
        OnCustomDrawCell = gridDBTableView1ACDRCVCustomDrawCell
        Width = 163
      end
      object gridDBTableView1ACDAMT: TcxGridDBColumn
        Caption = 'NET (AMT)'
        DataBinding.FieldName = 'ACDAMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,###,##0.00'
        Properties.EditFormat = '#,###,##0.00'
        Options.Editing = False
      end
      object gridDBTableView1ACDVAM: TcxGridDBColumn
        Caption = 'VAT (AMT)'
        DataBinding.FieldName = 'ACDVAM'
        Width = 88
      end
      object gridDBTableView1ACDBAL: TcxGridDBColumn
        Caption = 'Balance'
        DataBinding.FieldName = 'ACDBAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,###,##0.00'
        Properties.EditFormat = '#,###,##0.00'
        Visible = False
        OnCustomDrawCell = gridDBTableView1ACDBALCustomDrawCell
        Options.Editing = False
      end
      object gridDBTableView1ACDCON: TcxGridDBColumn
        Caption = 'Contract'
        DataBinding.FieldName = 'ACDCON'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'AAA'
          'BBB'
          'CCC'
          'DDD'
          'EEE'
          'FFF')
        Properties.OnEditValueChanged = gridDBTableView1ACDCONPropertiesEditValueChanged
        Visible = False
        OnGetProperties = gridDBTableView1ACDCONGetProperties
      end
      object gridDBTableView1ACDCONDES: TcxGridDBColumn
        Caption = 'Customer Name'
        DataBinding.FieldName = 'ACDCONDES'
        Visible = False
        Width = 380
      end
    end
    object gridLevel1: TcxGridLevel
      GridView = gridDBTableView1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 469
    Width = 845
    Height = 1
    Align = alBottom
    TabOrder = 1
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxGridDBTableView1CustomDrawCell
      DataController.DataSource = DataSource1
      DataController.KeyFieldNames = 'ACDACD'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OnCustomDrawColumnHeader = gridDBTableView1CustomDrawColumnHeader
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'ACDACD'
        Options.Editing = False
        Width = 67
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'ACDDES'
        Options.Editing = False
        Width = 336
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = 'Debit / Credit'
        DataBinding.FieldName = 'ACDNET'
        Options.Editing = False
        Width = 128
      end
      object cxGridDBColumn6: TcxGridDBColumn
        Caption = 'Receive Amount'
        DataBinding.FieldName = 'ACDRCV'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,###,##0.00'
        Properties.EditFormat = '#,###,##0.00'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnEditValueChanged = gridDBTableView1ACDRCVPropertiesEditValueChanged
        OnCustomDrawCell = gridDBTableView1ACDRCVCustomDrawCell
        Width = 161
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = 'NET ( AMT)'
        DataBinding.FieldName = 'ACDAMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,###,##0.00'
        Properties.EditFormat = '#,###,##0.00'
        Options.Editing = False
        Width = 78
      end
      object cxGridDBColumn5: TcxGridDBColumn
        Caption = 'VAT( AMT )'
        DataBinding.FieldName = 'ACDVAM'
        Width = 88
      end
      object cxGridDBColumn7: TcxGridDBColumn
        Caption = 'Balance'
        DataBinding.FieldName = 'ACDBAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,###,##0.00'
        Properties.EditFormat = '#,###,##0.00'
        Visible = False
        OnCustomDrawCell = gridDBTableView1ACDBALCustomDrawCell
        Options.Editing = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 845
    Height = 138
    Align = alTop
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      845
      138)
    object cxLabel1: TcxLabel
      Left = 21
      Top = 31
      Caption = 'Receive Code'
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clYellow
      Style.IsFontAssigned = True
    end
    object cxLabel2: TcxLabel
      Left = 524
      Top = 87
      Caption = 'Amount'
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clYellow
      Style.IsFontAssigned = True
      Visible = False
    end
    object cxLabel3: TcxLabel
      Left = 4
      Top = 55
      Caption = 'Receive Amount'
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clYellow
      Style.IsFontAssigned = True
    end
    object edPAmount: TcxTextEdit
      Left = 573
      Top = 85
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = False
      Style.Color = 16773360
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.TextColor = clNavy
      Style.IsFontAssigned = True
      TabOrder = 3
      Text = '9,999,999.00'
      Visible = False
      OnKeyDown = edPAmountKeyDown
      OnKeyPress = edPAmountKeyPress
      Height = 24
      Width = 207
    end
    object edPNet: TcxTextEdit
      Left = 101
      Top = 55
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 4
      OnKeyDown = edPNetKeyDown
      OnKeyPress = edPNetKeyPress
      Height = 24
      Width = 204
    end
    object cxLabel4: TcxLabel
      Left = 778
      Top = 88
      Caption = 'THB'
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clYellow
      Style.IsFontAssigned = True
      Visible = False
    end
    object cxLabel5: TcxLabel
      Left = 305
      Top = 57
      Caption = 'THB'
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clYellow
      Style.IsFontAssigned = True
    end
    object btnOK: TcxButton
      Left = 102
      Top = 82
      Width = 79
      Height = 24
      Caption = 'F5=OK '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btnOKClick
      LookAndFeel.Kind = lfFlat
    end
    object ACDDES: TJvDBSearchEdit
      Left = 168
      Top = 31
      Width = 314
      Height = 22
      DataSource = dsPayments
      DataField = 'ACDDES'
      Anchors = [akLeft, akTop, akRight]
      BevelInner = bvNone
      BevelOuter = bvNone
      Flat = True
      ParentFlat = False
      TabOrder = 8
      OnKeyDown = ACDDESKeyDown
    end
    object ACDACD: TJvDBSearchEdit
      Left = 102
      Top = 31
      Width = 66
      Height = 22
      DataSource = dsPayments
      DataField = 'ACDACD'
      BevelOuter = bvNone
      Flat = True
      ParentFlat = False
      TabOrder = 9
      OnKeyDown = ACDACDKeyDown
    end
    object cmbContract: TcxComboBox
      Left = 101
      Top = 6
      TabOrder = 10
      Width = 260
    end
    object cxLabel6: TcxLabel
      Left = 48
      Top = 8
      Caption = 'Contract'
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clYellow
      Style.IsFontAssigned = True
    end
    object lbOtherPayNet: TcxLabel
      Left = 620
      Top = 30
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = '9,999,999.00'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clWhite
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clCream
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 4210816
      Style.IsFontAssigned = True
      Height = 28
      Width = 212
    end
    object lbOtherCoverNet: TcxLabel
      Left = 620
      Top = 3
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = '9,999,999.00'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clWhite
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clCream
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clGreen
      Style.IsFontAssigned = True
      Height = 28
      Width = 212
    end
    object btnCancel: TcxButton
      Left = 187
      Top = 82
      Width = 79
      Height = 24
      Caption = 'Esc=Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = btnCancelClick
      LookAndFeel.Kind = lfFlat
    end
    object lbDiff: TcxLabel
      Left = 620
      Top = 57
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = '9,999,999.00'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clWhite
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clCream
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 18137
      Style.IsFontAssigned = True
      Height = 28
      Width = 212
    end
    object cxLabel7: TcxLabel
      Left = 561
      Top = 8
      Anchors = [akTop, akRight]
      Caption = 'Cover Net'
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clYellow
      Style.IsFontAssigned = True
    end
    object cxLabel8: TcxLabel
      Left = 538
      Top = 37
      Anchors = [akTop, akRight]
      Caption = 'Pay Other Net'
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clYellow
      Style.IsFontAssigned = True
    end
    object cxLabel9: TcxLabel
      Left = 572
      Top = 62
      Anchors = [akTop, akRight]
      Caption = 'Balance'
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clYellow
      Style.IsFontAssigned = True
    end
    object btnSearchContract: TcxButton
      Left = 360
      Top = 6
      Width = 122
      Height = 24
      Caption = 'Search Contract (F3)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      OnClick = btnSearchContractClick
      LookAndFeel.Kind = lfUltraFlat
    end
  end
  object dsPayments: TDataSource
    DataSet = _cdsPayType
    Left = 400
    Top = 128
  end
  object cdsPayType: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select ACDACD,ACDDES,ACDNET,0.00 as ACDAMT,0.00 as ACDRCV , 0.00' +
      ' as ACDBAL from HPPDTA.dbo.HPMACD00 order by ACDACD'
    Params = <>
    RemoteServer = frmChequeSeparate.SockCon
    Left = 504
    Top = 144
  end
  object cdsContract: TClientDataSet
    Tag = 99
    Active = True
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 200
    Data = {
      4B0000009619E0BD0100000018000000020000000000030000004B0003434F4E
      0100490000000100055749445448020002000A00044445534301004900000001
      0005574944544802000200C8000000}
    object cdsContractCON: TStringField
      FieldName = 'CON'
      Size = 10
    end
    object cdsContractDESC: TStringField
      FieldName = 'DESC'
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsPayTypeAccum
    Left = 648
    Top = 256
  end
  object cdsPayTypeAccum: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 224
    Data = {
      BC0100009619E0BD01000000180000000E000000000003000000BC0106414344
      4143440100490000000100055749445448020002000300064143444445530100
      490000000100055749445448020002001E00064143444E455401004900000001
      0005574944544802000200010006414344414D54080004000000010007535542
      545950450200490006004D6F6E65790006414344524356080004000000010007
      535542545950450200490006004D6F6E6579000641434442414C080004000000
      010007535542545950450200490006004D6F6E6579000641434456414D080004
      000000010007535542545950450200490006004D6F6E65790006414446523031
      0100490000000100055749445448020002000100064144465230320100490000
      0001000557494454480200020001000641444652303301004900000001000557
      4944544802000200010006414446523035010049000000010005574944544802
      0002000100064144465230370100490000000100055749445448020002000100
      0641444652313301004900000001000557494454480200020001000654484450
      434E080004000000010007535542545950450200490006004D6F6E6579000000}
    object StringField1: TStringField
      FieldName = 'ACDACD'
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'ACDDES'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'ACDNET'
      Size = 1
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'ACDAMT'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'ACDRCV'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'ACDBAL'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'ACDVAM'
    end
    object StringField4: TStringField
      FieldName = 'ADFR01'
      Size = 1
    end
    object StringField5: TStringField
      FieldName = 'ADFR02'
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'ADFR03'
      Size = 1
    end
    object StringField7: TStringField
      FieldName = 'ADFR05'
      Size = 1
    end
    object StringField8: TStringField
      FieldName = 'ADFR07'
      Size = 1
    end
    object StringField9: TStringField
      FieldName = 'ADFR13'
      Size = 1
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'THDPCN'
    end
  end
  object cdsExtAmt: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = frmChequeSeparate.SockCon
    Left = 88
    Top = 160
  end
  object _cdsPayType: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    BeforeEdit = _cdsPayType1BeforeEdit
    BeforePost = _cdsPayType1BeforePost
    Left = 344
    Top = 240
    Data = {
      350200009619E0BD010000001800000012000000000003000000350206414344
      4143440100490000000100055749445448020002000300064143444445530100
      490000000100055749445448020002001E00064143444E455401004900000001
      0005574944544802000200010006414344414D54080004000000010007535542
      545950450200490006004D6F6E65790006414344524356080004000000010007
      535542545950450200490006004D6F6E6579000641434442414C080004000000
      010007535542545950450200490006004D6F6E6579000641434456414D080004
      000000010007535542545950450200490006004D6F6E65790006414446523031
      0100490000000100055749445448020002000100064144465230320100490000
      0001000557494454480200020001000641444652303301004900000001000557
      4944544802000200010006414446523035010049000000010005574944544802
      0002000100064144465230370100490000000100055749445448020002000100
      0641444652313301004900000001000557494454480200020001000654484450
      434E080004000000010007535542545950450200490006004D6F6E6579000641
      4344434F4E0100490000000100055749445448020002000A0009414344434F4E
      444553020049000000010005574944544802000200FF00084143444558414D54
      080004000000010007535542545950450200490006004D6F6E65790006414446
      524E320100490000000100055749445448020002001E000000}
    object StringField41: TStringField
      FieldName = 'ACDACD'
      Size = 3
    end
    object StringField42: TStringField
      FieldName = 'ACDDES'
      Size = 30
    end
    object StringField43: TStringField
      FieldName = 'ACDNET'
      Size = 1
    end
    object CurrencyField22: TCurrencyField
      FieldName = 'ACDAMT'
    end
    object CurrencyField23: TCurrencyField
      FieldName = 'ACDRCV'
    end
    object CurrencyField24: TCurrencyField
      FieldName = 'ACDBAL'
    end
    object CurrencyField25: TCurrencyField
      FieldName = 'ACDVAM'
    end
    object StringField44: TStringField
      FieldName = 'ADFR01'
      Size = 1
    end
    object StringField45: TStringField
      FieldName = 'ADFR02'
      Size = 1
    end
    object StringField46: TStringField
      FieldName = 'ADFR03'
      Size = 1
    end
    object StringField47: TStringField
      FieldName = 'ADFR05'
      Size = 1
    end
    object StringField48: TStringField
      FieldName = 'ADFR07'
      Size = 1
    end
    object StringField49: TStringField
      FieldName = 'ADFR13'
      Size = 1
    end
    object CurrencyField26: TCurrencyField
      FieldName = 'THDPCN'
    end
    object StringField50: TStringField
      FieldName = 'ACDCON'
      Size = 10
    end
    object StringField51: TStringField
      FieldName = 'ACDCONDES'
      Size = 255
    end
    object CurrencyField27: TCurrencyField
      FieldName = 'ACDEXAMT'
    end
    object StringField52: TStringField
      FieldName = 'ADFRN2'
      Size = 30
    end
  end
end
