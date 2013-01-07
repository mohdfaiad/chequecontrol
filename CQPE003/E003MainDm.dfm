object E003DmMain: TE003DmMain
  OldCreateOrder = False
  Height = 170
  Width = 348
  object SO_EX: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '127.0.0.1'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = False
    AutoConnect = False
    ConnectionTitle = 'CIP'
    Deploy = False
    Left = 80
    Top = 24
  end
  object ConBro: TConnectionBroker
    Connection = SO_EX
    Left = 160
    Top = 24
  end
  object dso_explana: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dso_explana'
    RemoteServer = ConBro
    OnNewRecord = dso_explanaNewRecord
    OnReconcileError = dso_explanaReconcileError
    Left = 248
    Top = 24
  end
end
