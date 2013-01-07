object DM_Pre: TDM_Pre
  OldCreateOrder = False
  Height = 241
  Width = 452
  object SC_prefer: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '192.168.1.211'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = False
    AutoProv = True
    Encoded = True
    AutoConnect = True
    ConnectionTitle = 'nop'
    ConfigFile = 'conop.ini'
    Deploy = True
    Left = 104
    Top = 72
  end
  object RD_Prefen: TRemDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = SC_prefer
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
    Left = 248
    Top = 72
  end
end
