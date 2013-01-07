object DMMain: TDMMain
  OldCreateOrder = False
  Height = 227
  Width = 339
  object SockCon: TSockCon
    Housed = False
    AutoProv = False
    Encoded = False
    AutoConnect = False
    Deploy = False
    Left = 24
    Top = 24
  end
  object ConBro: TConnectionBroker
    Connection = SockCon
    Left = 104
    Top = 24
  end
  object CDS1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 144
  end
  object RDS1: TRemDataSet
    Aggregates = <>
    Params = <>
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
    Top = 144
  end
end
