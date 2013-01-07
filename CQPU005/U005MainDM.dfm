object U005DmMain: TU005DmMain
  OldCreateOrder = False
  Height = 241
  Width = 452
  object SC_prefer: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvr'
    Address = '127.0.0.1'
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
  object con_bro: TConnectionBroker
    Connection = SC_prefer
    Left = 176
    Top = 72
  end
  object RD_Prefen: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RD_Prefen'
    RemoteServer = con_bro
    Left = 264
    Top = 72
  end
end
