inherited frmReceive: TfrmReceive
  Caption = 'frmReceive'
  Font.Charset = THAI_CHARSET
  Font.Height = -15
  KeyPreview = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 18
  inherited MASTERPANE: TPanel
<<<<<<< .mine
    inherited pnHeader: TJvPanel
      TabOrder = 2
      inherited pnHeaderRight: TJvPanel
        inherited cxLabel7: TcxLabel
          ExplicitWidth = 45
          ExplicitHeight = 23
        end
        inherited cxLabel8: TcxLabel
          ExplicitWidth = 76
          ExplicitHeight = 23
        end
        inherited edtUser: TcxTextEdit
          ExplicitHeight = 26
        end
        inherited cxTextEdit1: TcxTextEdit
          ExplicitHeight = 26
        end
      end
    end
    inherited pnContainer: TPanel
      ExplicitLeft = 1
      ExplicitTop = 42
      ExplicitWidth = 655
      ExplicitHeight = 441
    end
=======
    inherited pnHeader: TJvPanel
      TabOrder = 1
      inherited pnHeaderRight: TJvPanel
        inherited cxLabel7: TcxLabel
          ExplicitWidth = 45
          ExplicitHeight = 23
        end
        inherited cxLabel8: TcxLabel
          ExplicitWidth = 76
          ExplicitHeight = 23
        end
      end
    end
>>>>>>> .r41
    object JvPageControl1: TJvPageControl
      Left = 1
      Top = 42
      Width = 655
      Height = 441
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Receive'
        object Bevel1: TBevel
          Left = 0
          Top = 0
          Width = 647
          Height = 408
          Align = alClient
          ExplicitLeft = -64
          ExplicitTop = -3
          ExplicitWidth = 837
          ExplicitHeight = 437
        end
        object cxGrid1: TcxGrid
          Left = 4
          Top = 251
          Width = 829
          Height = 149
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 159
          Top = 3
          TabOrder = 1
          Width = 94
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 159
          Top = 132
          TabOrder = 2
          Width = 169
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 423
          Top = 3
          TabOrder = 3
          Width = 169
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 159
          Top = 106
          TabOrder = 4
          Width = 189
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 159
          Top = 54
          TabOrder = 5
          Width = 94
        end
        object cxDBComboBox1: TcxDBComboBox
          Left = 159
          Top = 28
          TabOrder = 6
          Width = 189
        end
        object cxDBComboBox2: TcxDBComboBox
          Left = 423
          Top = 30
          TabOrder = 7
          Width = 169
        end
        object cxButton1: TcxButton
          Left = 87
          Top = 403
          Width = 75
          Height = 25
          Caption = 'Hold'
          TabOrder = 8
        end
        object cxButton2: TcxButton
          Left = 6
          Top = 403
          Width = 75
          Height = 25
          Caption = 'Reset'
          TabOrder = 9
        end
        object cxButton3: TcxButton
          Left = 168
          Top = 403
          Width = 75
          Height = 25
          Caption = 'OK'
          TabOrder = 10
        end
        object cxLabel2: TcxLabel
          Left = 119
          Top = 59
          Caption = 'Bank'
        end
        object cxLabel3: TcxLabel
          Left = 6
          Top = 32
          Caption = 'Cheque Number From'
        end
        object cxLabel4: TcxLabel
          Left = 120
          Top = 85
          Caption = 'Date'
        end
        object cxLabel5: TcxLabel
          Left = 398
          Top = 4
          Caption = '@:'
        end
        object cxLabel6: TcxLabel
          Left = 372
          Top = 30
          Caption = 'Branch'
        end
        object cxMemo1: TcxMemo
          Left = 158
          Top = 158
          Lines.Strings = (
            'cxMemo1')
          TabOrder = 16
          Height = 89
          Width = 433
        end
        object cxLabel9: TcxLabel
          Left = 80
          Top = 156
          Caption = 'Comments'
        end
        object cxDateEdit1: TcxDateEdit
          Left = 159
          Top = 80
          TabOrder = 18
          Width = 189
        end
        object cxLabel10: TcxLabel
          Left = 96
          Top = 134
          Caption = 'Contract'
        end
        object cxLabel11: TcxLabel
          Left = 70
          Top = 111
          Caption = 'Total Amont'
        end
        object cxLabel1: TcxLabel
          Left = 71
          Top = 8
          Caption = 'Receive Chq'
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Hold'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object TabSheet3: TTabSheet
        Caption = 'History'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
end
