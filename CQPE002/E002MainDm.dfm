object E002DmMain: TE002DmMain
  OldCreateOrder = False
  Height = 138
  Width = 349
  object SC_prefer: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '192.168.1.211'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = False
    AutoConnect = False
    ConnectionTitle = 'nop'
    Deploy = False
    Left = 104
    Top = 72
  end
  object ConBro: TConnectionBroker
    Connection = SC_prefer
    Left = 176
    Top = 72
  end
  object dsatus: TClientDataSet
    Aggregates = <>
    CommandText = 'select * FROM CQDM002 order by CQMCDE'
    Params = <>
    RemoteServer = ConBro
    OnNewRecord = dsatusNewRecord
    OnReconcileError = dsatusReconcileError
    Left = 256
    Top = 72
  end
end
