object Q002DMMain: TQ002DMMain
  OldCreateOrder = False
  Height = 99
  Width = 315
  object SockCon: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvrSAM'
    Address = '192.168.1.21'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = False
    AutoConnect = False
    Deploy = False
    Left = 39
    Top = 5
  end
  object T004: TRemDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = SockCon
    AfterOpen = T004AfterOpen
    Mono = False
    FillNull = False
    AutoLink = False
    AutoDec = 0
    ProperCap = False
    CalcFields.Strings = (
      'CHK,INTEGER,0,0')
    AutoApply = False
    RefreshOnFailed = False
    ByPass = False
    TrimChar = False
    LimitSQLRec = 0
    Left = 96
    Top = 8
  end
  object S003: TRemDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = SockCon
    AfterOpen = S003AfterOpen
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
    Left = 144
    Top = 8
  end
end
