object FrmU002SimilarReceive: TFrmU002SimilarReceive
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Similar Receive'
  ClientHeight = 511
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PANE: TPanel
    Left = 0
    Top = 0
    Width = 674
    Height = 511
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      674
      511)
    object cxGrid3: TcxGrid
      Left = 8
      Top = 216
      Width = 657
      Height = 289
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 16
      object cxGridDBTableView2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DHP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object cxGridDBTableView2BTRACT: TcxGridDBColumn
          DataBinding.FieldName = 'BTRACT'
          Visible = False
        end
        object cxGridDBTableView2BTRSTS: TcxGridDBColumn
          DataBinding.FieldName = 'BTRSTS'
          Visible = False
        end
        object cxGridDBTableView2BTRBRN: TcxGridDBColumn
          DataBinding.FieldName = 'BTRBRN'
          Visible = False
        end
        object cxGridDBTableView2BTRPDM: TcxGridDBColumn
          DataBinding.FieldName = 'BTRPDM'
          Visible = False
        end
        object cxGridDBTableView2BTRPDT: TcxGridDBColumn
          DataBinding.FieldName = 'BTRPDT'
          Visible = False
        end
        object cxGridDBTableView2BTRTYP: TcxGridDBColumn
          DataBinding.FieldName = 'BTRTYP'
          Visible = False
        end
        object cxGridDBTableView2BTRDOC: TcxGridDBColumn
          Caption = 'DOC'
          DataBinding.FieldName = 'BTRDOC'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 111
        end
        object cxGridDBTableView2BTRDTE: TcxGridDBColumn
          Caption = 'Date'
          DataBinding.FieldName = 'BTRDTE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 70
        end
        object cxGridDBTableView2BTREFF: TcxGridDBColumn
          Caption = 'Deposit Date'
          DataBinding.FieldName = 'BTREFF'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 70
        end
        object cxGridDBTableView2BTRBNK: TcxGridDBColumn
          DataBinding.FieldName = 'BTRBNK'
          Visible = False
        end
        object cxGridDBTableView2BTRFAC: TcxGridDBColumn
          DataBinding.FieldName = 'BTRFAC'
          Visible = False
        end
        object cxGridDBTableView2BTRTAC: TcxGridDBColumn
          DataBinding.FieldName = 'BTRTAC'
          Visible = False
        end
        object cxGridDBTableView2BTRREF: TcxGridDBColumn
          DataBinding.FieldName = 'BTRREF'
          Visible = False
        end
        object cxGridDBTableView2BTRCOD: TcxGridDBColumn
          DataBinding.FieldName = 'BTRCOD'
          Visible = False
        end
        object cxGridDBTableView2BTRTHN: TcxGridDBColumn
          DataBinding.FieldName = 'BTRTHN'
          Visible = False
        end
        object cxGridDBTableView2BTRTHS: TcxGridDBColumn
          DataBinding.FieldName = 'BTRTHS'
          Visible = False
        end
        object cxGridDBTableView2BTREGN: TcxGridDBColumn
          DataBinding.FieldName = 'BTREGN'
          Visible = False
        end
        object cxGridDBTableView2BTREGS: TcxGridDBColumn
          DataBinding.FieldName = 'BTREGS'
          Visible = False
        end
        object cxGridDBTableView2BTRPBY: TcxGridDBColumn
          DataBinding.FieldName = 'BTRPBY'
          Visible = False
        end
        object cxGridDBTableView2BTRCQB: TcxGridDBColumn
          Caption = 'Bank Code'
          DataBinding.FieldName = 'BTRCQB'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 56
        end
        object cxGridDBTableView2BTRCQR: TcxGridDBColumn
          Caption = 'Branch Code'
          DataBinding.FieldName = 'BTRCQR'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 66
        end
        object cxGridDBTableView2BTRCQN: TcxGridDBColumn
          Caption = 'Cheque Number'
          DataBinding.FieldName = 'BTRCQN'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 95
        end
        object cxGridDBTableView2BTRCQD: TcxGridDBColumn
          Caption = 'Cheque Date'
          DataBinding.FieldName = 'BTRCQD'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 68
        end
        object cxGridDBTableView2BTRCQS: TcxGridDBColumn
          DataBinding.FieldName = 'BTRCQS'
          Visible = False
        end
        object cxGridDBTableView2BTRBAC: TcxGridDBColumn
          DataBinding.FieldName = 'BTRBAC'
          Visible = False
        end
        object cxGridDBTableView2BTRAMT: TcxGridDBColumn
          Caption = 'Cheque Amount'
          DataBinding.FieldName = 'BTRAMT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 101
        end
        object cxGridDBTableView2BTRFG1: TcxGridDBColumn
          DataBinding.FieldName = 'BTRFG1'
          Visible = False
        end
        object cxGridDBTableView2BTRETD: TcxGridDBColumn
          Caption = 'Entry Date'
          DataBinding.FieldName = 'BTRETD'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 70
        end
        object cxGridDBTableView2BTRETT: TcxGridDBColumn
          Caption = 'Entry Time'
          DataBinding.FieldName = 'BTRETT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 56
        end
        object cxGridDBTableView2BTRETU: TcxGridDBColumn
          Caption = 'Entry User'
          DataBinding.FieldName = 'BTRETU'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 56
        end
        object cxGridDBTableView2BTRMTD: TcxGridDBColumn
          DataBinding.FieldName = 'BTRMTD'
          Visible = False
        end
        object cxGridDBTableView2BTRMTT: TcxGridDBColumn
          DataBinding.FieldName = 'BTRMTT'
          Visible = False
        end
        object cxGridDBTableView2BTRMTU: TcxGridDBColumn
          DataBinding.FieldName = 'BTRMTU'
          Visible = False
        end
        object cxGridDBTableView2BTRPAT: TcxGridDBColumn
          DataBinding.FieldName = 'BTRPAT'
          Visible = False
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object cxGrid2: TcxGrid
      Left = 8
      Top = 392
      Width = 658
      Height = 113
      Anchors = [akLeft, akRight, akBottom]
      Enabled = False
      TabOrder = 1
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DHLTC_DT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object cxGridDBTableView1CQSACT: TcxGridDBColumn
          DataBinding.FieldName = 'CQSACT'
          Visible = False
        end
        object cxGridDBTableView1CQSSTS: TcxGridDBColumn
          DataBinding.FieldName = 'CQSSTS'
          Visible = False
        end
        object cxGridDBTableView1CQSBRN: TcxGridDBColumn
          DataBinding.FieldName = 'CQSBRN'
          Visible = False
        end
        object cxGridDBTableView1CQSPDM: TcxGridDBColumn
          DataBinding.FieldName = 'CQSPDM'
          Visible = False
        end
        object cxGridDBTableView1CQSPDT: TcxGridDBColumn
          DataBinding.FieldName = 'CQSPDT'
          Visible = False
        end
        object cxGridDBTableView1CQSDNO: TcxGridDBColumn
          DataBinding.FieldName = 'CQSDNO'
          Visible = False
        end
        object cxGridDBTableView1CQSRNO: TcxGridDBColumn
          DataBinding.FieldName = 'CQSRNO'
          Visible = False
        end
        object cxGridDBTableView1CQSSEQ: TcxGridDBColumn
          Caption = '-No-'
          DataBinding.FieldName = 'CQSSEQ'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object cxGridDBTableView1CQSCBR: TcxGridDBColumn
          DataBinding.FieldName = 'CQSCBR'
          Visible = False
        end
        object cxGridDBTableView1CQSCPD: TcxGridDBColumn
          DataBinding.FieldName = 'CQSCPD'
          Visible = False
        end
        object cxGridDBTableView1CQSCTP: TcxGridDBColumn
          DataBinding.FieldName = 'CQSCTP'
          Visible = False
        end
        object cxGridDBTableView1CQSRCT: TcxGridDBColumn
          Caption = 'Receive Type'
          DataBinding.FieldName = 'CQSRCT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 70
        end
        object cxGridDBTableView1CQSCSN: TcxGridDBColumn
          Caption = 'Contract'
          DataBinding.FieldName = 'CQSCSN'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 141
        end
        object cxGridDBTableView1CQSAMT: TcxGridDBColumn
          Caption = 'Goods'
          DataBinding.FieldName = 'CQSAMT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object cxGridDBTableView1CQSVAT: TcxGridDBColumn
          Caption = 'Vat'
          DataBinding.FieldName = 'CQSVAT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object cxGridDBTableView1CQSWHT: TcxGridDBColumn
          Caption = 'Withholding'
          DataBinding.FieldName = 'CQSWHT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object cxGridDBTableView1CQSNET: TcxGridDBColumn
          Caption = 'Net Amount'
          DataBinding.FieldName = 'CQSNET'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object cxGridDBTableView1CQSADF: TcxGridDBColumn
          DataBinding.FieldName = 'CQSADF'
          Visible = False
        end
        object cxGridDBTableView1CQSCFA: TcxGridDBColumn
          DataBinding.FieldName = 'CQSCFA'
          Visible = False
        end
        object cxGridDBTableView1CQSPFA: TcxGridDBColumn
          DataBinding.FieldName = 'CQSPFA'
          Visible = False
        end
        object cxGridDBTableView1CQSWFA: TcxGridDBColumn
          DataBinding.FieldName = 'CQSWFA'
          Visible = False
        end
        object cxGridDBTableView1CQSIWT: TcxGridDBColumn
          DataBinding.FieldName = 'CQSIWT'
          Visible = False
        end
        object cxGridDBTableView1CQSRS1: TcxGridDBColumn
          DataBinding.FieldName = 'CQSRS1'
          Visible = False
        end
        object cxGridDBTableView1CQSRS2: TcxGridDBColumn
          DataBinding.FieldName = 'CQSRS2'
          Visible = False
        end
        object cxGridDBTableView1CQSRS3: TcxGridDBColumn
          DataBinding.FieldName = 'CQSRS3'
          Visible = False
        end
        object cxGridDBTableView1CQSRS4: TcxGridDBColumn
          DataBinding.FieldName = 'CQSRS4'
          Visible = False
        end
        object cxGridDBTableView1CQSRS5: TcxGridDBColumn
          DataBinding.FieldName = 'CQSRS5'
          Visible = False
        end
        object cxGridDBTableView1CQSRN1: TcxGridDBColumn
          DataBinding.FieldName = 'CQSRN1'
          Visible = False
        end
        object cxGridDBTableView1CQSRN2: TcxGridDBColumn
          DataBinding.FieldName = 'CQSRN2'
          Visible = False
        end
        object cxGridDBTableView1CQSRN3: TcxGridDBColumn
          DataBinding.FieldName = 'CQSRN3'
          Visible = False
        end
        object cxGridDBTableView1CQSRN4: TcxGridDBColumn
          DataBinding.FieldName = 'CQSRN4'
          Visible = False
        end
        object cxGridDBTableView1CQSRN5: TcxGridDBColumn
          DataBinding.FieldName = 'CQSRN5'
          Visible = False
        end
        object cxGridDBTableView1CQSETD: TcxGridDBColumn
          DataBinding.FieldName = 'CQSETD'
          Visible = False
        end
        object cxGridDBTableView1CQSETW: TcxGridDBColumn
          DataBinding.FieldName = 'CQSETW'
          Visible = False
        end
        object cxGridDBTableView1CQSETU: TcxGridDBColumn
          DataBinding.FieldName = 'CQSETU'
          Visible = False
        end
        object cxGridDBTableView1CQSMTD: TcxGridDBColumn
          DataBinding.FieldName = 'CQSMTD'
          Visible = False
        end
        object cxGridDBTableView1CQSMTU: TcxGridDBColumn
          DataBinding.FieldName = 'CQSMTU'
          Visible = False
        end
        object cxGridDBTableView1CQSMTW: TcxGridDBColumn
          DataBinding.FieldName = 'CQSMTW'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 216
      Width = 658
      Height = 173
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DHLTC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1CQMACT: TcxGridDBColumn
          DataBinding.FieldName = 'CQMACT'
          Visible = False
        end
        object cxGrid1DBTableView1CQMSTS: TcxGridDBColumn
          DataBinding.FieldName = 'CQMSTS'
          Visible = False
        end
        object cxGrid1DBTableView1CQMBRN: TcxGridDBColumn
          DataBinding.FieldName = 'CQMBRN'
          Visible = False
        end
        object cxGrid1DBTableView1CQMPDM: TcxGridDBColumn
          DataBinding.FieldName = 'CQMPDM'
          Visible = False
        end
        object cxGrid1DBTableView1CQMPDT: TcxGridDBColumn
          DataBinding.FieldName = 'CQMPDT'
          Visible = False
        end
        object cxGrid1DBTableView1CQMDNO: TcxGridDBColumn
          Caption = 'Doc No'
          DataBinding.FieldName = 'CQMDNO'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 124
        end
        object cxGrid1DBTableView1CQMBNK: TcxGridDBColumn
          Caption = 'Bank Code'
          DataBinding.FieldName = 'CQMBNK'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 74
        end
        object cxGrid1DBTableView1CQMBBR: TcxGridDBColumn
          Caption = 'Branch Code'
          DataBinding.FieldName = 'CQMBBR'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 70
        end
        object cxGrid1DBTableView1CQMLET: TcxGridDBColumn
          DataBinding.FieldName = 'CQMLET'
          Visible = False
        end
        object cxGrid1DBTableView1CQMCNO: TcxGridDBColumn
          Caption = 'Cheque Number'
          DataBinding.FieldName = 'CQMCNO'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 115
        end
        object cxGrid1DBTableView1CQMTYP: TcxGridDBColumn
          DataBinding.FieldName = 'CQMTYP'
          Visible = False
        end
        object cxGrid1DBTableView1CQMCTY: TcxGridDBColumn
          DataBinding.FieldName = 'CQMCTY'
          Visible = False
        end
        object cxGrid1DBTableView1CQMDTE: TcxGridDBColumn
          Caption = 'Cheque Date'
          DataBinding.FieldName = 'CQMDTE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 85
        end
        object cxGrid1DBTableView1CQMITM: TcxGridDBColumn
          DataBinding.FieldName = 'CQMITM'
          Visible = False
        end
        object cxGrid1DBTableView1CQMAMT: TcxGridDBColumn
          Caption = 'Cheque Amount'
          DataBinding.FieldName = 'CQMAMT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 91
        end
        object cxGrid1DBTableView1CQMDUE: TcxGridDBColumn
          DataBinding.FieldName = 'CQMDUE'
          Visible = False
        end
        object cxGrid1DBTableView1CQMCSN: TcxGridDBColumn
          Caption = 'Contract'
          DataBinding.FieldName = 'CQMCSN'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 83
        end
        object cxGrid1DBTableView1CQMRMK: TcxGridDBColumn
          DataBinding.FieldName = 'CQMRMK'
          Visible = False
        end
        object cxGrid1DBTableView1CQMRS1: TcxGridDBColumn
          DataBinding.FieldName = 'CQMRS1'
          Visible = False
        end
        object cxGrid1DBTableView1CQMRS2: TcxGridDBColumn
          DataBinding.FieldName = 'CQMRS2'
          Visible = False
        end
        object cxGrid1DBTableView1CQMRS3: TcxGridDBColumn
          DataBinding.FieldName = 'CQMRS3'
          Visible = False
        end
        object cxGrid1DBTableView1CQMRS4: TcxGridDBColumn
          DataBinding.FieldName = 'CQMRS4'
          Visible = False
        end
        object cxGrid1DBTableView1CQMRS5: TcxGridDBColumn
          DataBinding.FieldName = 'CQMRS5'
          Visible = False
        end
        object cxGrid1DBTableView1CQMRN1: TcxGridDBColumn
          DataBinding.FieldName = 'CQMRN1'
          Visible = False
        end
        object cxGrid1DBTableView1CQMRN2: TcxGridDBColumn
          DataBinding.FieldName = 'CQMRN2'
          Visible = False
        end
        object cxGrid1DBTableView1CQMRN3: TcxGridDBColumn
          DataBinding.FieldName = 'CQMRN3'
          Visible = False
        end
        object cxGrid1DBTableView1CQMRN4: TcxGridDBColumn
          DataBinding.FieldName = 'CQMRN4'
          Visible = False
        end
        object cxGrid1DBTableView1CQMRN5: TcxGridDBColumn
          DataBinding.FieldName = 'CQMRN5'
          Visible = False
        end
        object cxGrid1DBTableView1CQMETD: TcxGridDBColumn
          DataBinding.FieldName = 'CQMETD'
          Visible = False
        end
        object cxGrid1DBTableView1CQMETW: TcxGridDBColumn
          DataBinding.FieldName = 'CQMETW'
          Visible = False
        end
        object cxGrid1DBTableView1CQMETU: TcxGridDBColumn
          DataBinding.FieldName = 'CQMETU'
          Visible = False
        end
        object cxGrid1DBTableView1CQMMTD: TcxGridDBColumn
          DataBinding.FieldName = 'CQMMTD'
          Visible = False
        end
        object cxGrid1DBTableView1CQMMTU: TcxGridDBColumn
          DataBinding.FieldName = 'CQMMTU'
          Visible = False
        end
        object cxGrid1DBTableView1CQMMTW: TcxGridDBColumn
          DataBinding.FieldName = 'CQMMTW'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxLabel2: TcxLabel
      Left = 141
      Top = 32
      AutoSize = False
      Caption = 'Check Date'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 100
    end
    object cxLabel5: TcxLabel
      Left = 459
      Top = 32
      AutoSize = False
      Caption = 'Branch Code'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 100
    end
    object cxLabel6: TcxLabel
      Left = 353
      Top = 32
      AutoSize = False
      Caption = 'Bank Code'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 100
    end
    object cxLabel8: TcxLabel
      Left = 35
      Top = 32
      AutoSize = False
      Caption = 'Check No'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 100
    end
    object cxLabel9: TcxLabel
      Left = 247
      Top = 32
      AutoSize = False
      Caption = 'Check Amount'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 100
    end
    object cxLabel3: TcxLabel
      Left = 565
      Top = 32
      AutoSize = False
      Caption = 'Dealer Code'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 20
      Width = 100
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 58
      AutoSize = False
      Caption = 'Bank'
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 20
      Width = 100
    end
    object cxLabel7: TcxLabel
      Left = 8
      Top = 110
      AutoSize = False
      Caption = 'HLTC'
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 20
      Width = 100
    end
    object CQSCQN: TcxDBLabel
      Left = 35
      Top = 83
      DataBinding.DataField = 'CQSCQN'
      DataBinding.DataSource = DCQDS001
      ParentColor = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 21
      Width = 100
    end
    object CQSBKC: TcxDBLabel
      Left = 353
      Top = 83
      DataBinding.DataField = 'CQSBKC'
      DataBinding.DataSource = DCQDS001
      ParentColor = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 21
      Width = 100
    end
    object CQSBRC: TcxDBLabel
      Left = 459
      Top = 83
      DataBinding.DataField = 'CQSBRC'
      DataBinding.DataSource = DCQDS001
      ParentColor = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 21
      Width = 100
    end
    object CQSDLC: TcxDBLabel
      Left = 565
      Top = 83
      DataBinding.DataField = 'CQSDLC'
      DataBinding.DataSource = DCQDS001
      ParentColor = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 21
      Width = 100
    end
    object CQSCQD: TcxDBLabel
      Left = 141
      Top = 83
      DataBinding.DataField = 'CQSCQD'
      DataBinding.DataSource = DCQDS001
      ParentColor = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 21
      Width = 100
    end
    object CQSCQA: TcxDBLabel
      Left = 247
      Top = 83
      DataBinding.DataField = 'CQSCQA'
      DataBinding.DataSource = DCQDS001
      ParentColor = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 21
      Width = 100
    end
    object Panel1: TPanel
      Left = 346
      Top = 179
      Width = 320
      Height = 25
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 17
      object cxButton1: TcxButton
        Left = 81
        Top = 0
        Width = 75
        Height = 25
        Caption = 'Same Bank'
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 163
        Top = 0
        Width = 75
        Height = 25
        Caption = 'Seperate'
        TabOrder = 1
        OnClick = cxButton2Click
      end
      object cxButton3: TcxButton
        Left = 244
        Top = 0
        Width = 75
        Height = 25
        Caption = 'Exit'
        TabOrder = 2
        OnClick = cxButton3Click
      end
      object cxButton4: TcxButton
        Left = 0
        Top = 0
        Width = 75
        Height = 25
        Caption = 'Edit Bank'
        TabOrder = 3
        OnClick = cxButton4Click
      end
    end
    object Panel2: TPanel
      Left = 427
      Top = 179
      Width = 239
      Height = 25
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 18
      object cxButton5: TcxButton
        Left = 82
        Top = 0
        Width = 75
        Height = 25
        Caption = 'Re-Check'
        TabOrder = 0
        OnClick = cxButton5Click
      end
      object cxButton6: TcxButton
        Left = 163
        Top = 0
        Width = 75
        Height = 25
        Caption = 'Exit'
        TabOrder = 1
        OnClick = cxButton6Click
      end
      object cxButton7: TcxButton
        Left = 1
        Top = 0
        Width = 75
        Height = 25
        Caption = 'New Item'
        TabOrder = 2
        OnClick = cxButton7Click
      end
    end
    object CNO: TcxDBTextEdit
      Left = 35
      Top = 136
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.OnChange = DataChanges
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.BorderStyle = ebsUltraFlat
      StyleDisabled.Color = clWindow
      StyleDisabled.TextColor = clWindowText
      StyleDisabled.TextStyle = []
      TabOrder = 19
      Width = 100
    end
    object DTE: TcxDBTextEdit
      Left = 141
      Top = 136
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.OnChange = DataChanges
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.BorderStyle = ebsUltraFlat
      StyleDisabled.Color = clWindow
      StyleDisabled.TextColor = clWindowText
      StyleDisabled.TextStyle = []
      TabOrder = 20
      Width = 100
    end
    object AMT: TcxDBTextEdit
      Left = 247
      Top = 136
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.OnChange = DataChanges
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.BorderStyle = ebsUltraFlat
      StyleDisabled.Color = clWindow
      StyleDisabled.TextColor = clWindowText
      StyleDisabled.TextStyle = []
      TabOrder = 21
      Width = 100
    end
    object BNK: TcxDBTextEdit
      Left = 353
      Top = 136
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.OnChange = DataChanges
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.BorderStyle = ebsUltraFlat
      StyleDisabled.Color = clWindow
      StyleDisabled.TextColor = clWindowText
      StyleDisabled.TextStyle = []
      TabOrder = 22
      Width = 100
    end
    object BBR: TcxDBTextEdit
      Left = 459
      Top = 136
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.OnChange = DataChanges
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.BorderStyle = ebsUltraFlat
      StyleDisabled.Color = clWindow
      StyleDisabled.TextColor = clWindowText
      StyleDisabled.TextStyle = []
      TabOrder = 23
      Width = 100
    end
    object CSN: TcxDBTextEdit
      Left = 565
      Top = 136
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.OnChange = DataChanges
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.BorderStyle = ebsUltraFlat
      StyleDisabled.Color = clWindow
      StyleDisabled.TextColor = clWindowText
      StyleDisabled.TextStyle = []
      TabOrder = 24
      Width = 100
    end
  end
  object DCQDS001: TDataSource
    DataSet = DMU002Main.CQDS001
    Left = 96
    Top = 168
  end
  object DHLTC: TDataSource
    DataSet = HLTC
    Left = 240
    Top = 168
  end
  object DHLTC_DT: TDataSource
    DataSet = HLTC_DT
    Left = 352
    Top = 168
  end
  object DHP: TDataSource
    DataSet = HP
    Left = 48
    Top = 168
  end
  object HP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP3'
    RemoteServer = DMU002Main.SC
    AfterOpen = HPAfterOpen
    Left = 8
    Top = 168
  end
  object HLTC_DT: TRemDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HLTC_DT'
    RemoteServer = DMU002Main.SC
    AfterOpen = HLTC_DTAfterOpen
    Mono = False
    FillNull = False
    AutoLink = False
    AutoDec = 0
    ProperCap = False
    AutoApply = False
    RefreshOnFailed = False
    ByPass = False
    TrimChar = False
    LimitSQLRec = 0
    Left = 408
    Top = 168
  end
  object HLTC: TRemDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HLTC'
    RemoteServer = DMU002Main.SC
    AfterOpen = HLTCAfterOpen
    AfterScroll = HLTCAfterScroll
    Mono = False
    FillNull = False
    AutoLink = False
    AutoDec = 0
    ProperCap = False
    AutoApply = False
    RefreshOnFailed = False
    ByPass = False
    TrimChar = False
    LimitSQLRec = 0
    Left = 288
    Top = 168
  end
end
