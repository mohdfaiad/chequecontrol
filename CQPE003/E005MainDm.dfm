object E003DmMain: TE003DmMain
  OldCreateOrder = False
  Height = 300
  Width = 348
  object dso_explana: TRemDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dso_explana'
    RemoteServer = SO_EX
    OnNewRecord = dso_explanaNewRecord
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
    Top = 16
  end
  object SO_EX: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '192.168.1.211'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = True
    AutoConnect = True
    ConnectionTitle = 'CIP'
    Deploy = True
    Left = 64
    Top = 16
  end
end
