object DMU002Main: TDMU002Main
  OldCreateOrder = False
  Height = 181
  Width = 295
  object CQDM005: TRemDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CQDM005'
    RemoteServer = SC
    AfterScroll = CQDM005AfterScroll
    OnReconcileError = CQDM005ReconcileError
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
    Left = 56
    Top = 24
  end
  object CQDS001: TRemDataSet
    Aggregates = <>
    CommandText = 'select * from cqds001'
    FieldDefs = <
      item
        Name = 'CQSACT'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CQSSTS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CQSBRN'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CQSPDM'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CQSPDT'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CQSDNO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CQSRNO'
        DataType = ftInteger
      end
      item
        Name = 'CQSETY'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CQSBTY'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CQSRMK'
        DataType = ftMemo
      end
      item
        Name = 'CQSWSO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CQSCNO'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CQSRTY'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CQSCQD'
        DataType = ftTimeStamp
      end
      item
        Name = 'CQSCQA'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CQSCQN'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CQSCQC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CQSBKC'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CQSBRC'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CQSCQT'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CQSDED'
        DataType = ftTimeStamp
      end
      item
        Name = 'CQSDLC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CQSBKN'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CQSBNN'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CQSCQS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CQSREC'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CQSRED'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CQSPLO'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'CQSECD'
        DataType = ftTimeStamp
      end
      item
        Name = 'CQSTNO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CQSEDD'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CQSDEL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CQSLDF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CQSRFN'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CQSRS1'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CQSRS2'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CQSRS3'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CQSRS4'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CQSRS5'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CQSRN1'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CQSRN2'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CQSRN3'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CQSRN4'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CQSRN5'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CQSETD'
        DataType = ftTimeStamp
      end
      item
        Name = 'CQSETU'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CQSETW'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CQSMTD'
        DataType = ftTimeStamp
      end
      item
        Name = 'CQSMTU'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CQSMTW'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CQSCRD'
        DataType = ftTimeStamp
      end
      item
        Name = 'CQSCRU'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CQSCRW'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'CQDS001'
    RemoteServer = SC
    StoreDefs = True
    AfterOpen = CQDS001AfterOpen
    Mono = False
    FillNull = False
    AutoLink = False
    AutoDec = 0
    ProperCap = False
    CalcFields.Strings = (
      'GOD,FLOAT,0,0'
      'VAT,FLOAT,0,0'
      'WHT,FLOAT,0,0'
      'DUE,STRING,10,0'
      'STS,STRING,2,0')
    AutoApply = False
    RefreshOnFailed = False
    ByPass = False
    TrimChar = False
    LimitSQLRec = 0
    Left = 106
    Top = 24
  end
  object His: TRemDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'His'
    RemoteServer = SC
    AfterOpen = HisAfterOpen
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
    Left = 152
    Top = 24
  end
  object HP: TClientDataSet
    Tag = 99
    Aggregates = <>
    CommandText = 'SELECT * FROM HPPDTA.HPTBTR00 FETCH FIRST 1 ROW ONLY'
    Params = <>
    ProviderName = 'DSP1'
    RemoteServer = SC
    Left = 200
    Top = 24
  end
  object SC: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '192.168.1.33'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = False
    AutoConnect = False
    Deploy = False
    Left = 16
    Top = 24
  end
end
