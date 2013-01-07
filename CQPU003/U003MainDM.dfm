object DMU003Main: TDMU003Main
  OldCreateOrder = False
  Height = 169
  Width = 377
  object RSL: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '192.168.1.21'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = False
    AutoConnect = False
    ConnectionTitle = 'LoadResult'
    Deploy = False
    Left = 24
    Top = 24
  end
  object CQDM006: TRemDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = RSL
    AfterScroll = CQDM006AfterScroll
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
    Left = 64
    Top = 24
  end
  object CQDS002: TRemDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = RSL
    AfterOpen = CQDS002AfterOpen
    Mono = False
    FillNull = False
    AutoLink = False
    AutoDec = 0
    ProperCap = False
    CalcFields.Strings = (
      'STS,STRING,2,0')
    AutoApply = False
    RefreshOnFailed = False
    ByPass = False
    TrimChar = False
    LimitSQLRec = 0
    Left = 120
    Top = 24
  end
  object HP: TClientDataSet
    Tag = 99
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP1'
    RemoteServer = RSL
    Left = 184
    Top = 24
  end
end
