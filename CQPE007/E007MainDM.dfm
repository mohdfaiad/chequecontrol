object E007DMMain: TE007DMMain
  OldCreateOrder = False
  Height = 258
  Width = 468
  object SMTP: TClientDataSet
    Aggregates = <>
    CommandText = 'select CQMCOD, CQMRS1 from CQDM004'
    Params = <>
    ProviderName = 'SMTP'
    RemoteServer = conBro
    Left = 128
    Top = 40
  end
  object SockCon1: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '192.168.1.211'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = False
    AutoConnect = False
    ConnectionTitle = 'SMTP Setting'
    Deploy = False
    Left = 48
    Top = 40
  end
  object CdsSet: TClientDataSet
    Aggregates = <>
    CommandText = 'select CQMCOD, CQMRS1 from CQDM004'
    Params = <>
    ProviderName = 'CdsSet'
    RemoteServer = conBro
    AfterPost = CdsSetAfterPost
    Left = 128
    Top = 112
  end
  object conBro: TConnectionBroker
    Connection = SockCon1
    Left = 48
    Top = 104
  end
end
