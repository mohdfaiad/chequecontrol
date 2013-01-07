object DMQ001Main: TDMQ001Main
  OldCreateOrder = False
  Height = 223
  Width = 361
  object RQC: TSockCon
    ServerName = 'HLTCSrvr.RemoteHLTCSrvrSAM'
    Address = '127.0.0.1'
    Port = 19005
    LoginID = 'HLTCAPP'
    Housed = True
    AutoProv = True
    Encoded = False
    AutoConnect = False
    Deploy = False
    Left = 24
    Top = 8
  end
  object MAS: TRemDataSet
    Aggregates = <>
    CommandText = 
      'DECLARE @FDATE VARCHAR(10)'#13#10'DECLARE @TDATE VARCHAR(10)'#13#10'DECLARE ' +
      '@STATUS VARCHAR(2)'#13#10'SELECT 0 AS CHK'#13#10#9' , RANK() OVER (ORDER BY B' +
      'B.CQTDNO) AS ITM'#13#10#9' , (BB.CQTACT + BB.CQTSTS) AS STS'#13#10#9' , BB.CQT' +
      'DNO'#13#10#9' , BB.CQTNO2'#13#10#9' , BB.CQTAMT'#13#10#9' , BB.CQTDAT'#13#10#9' , BB.CQTTRD'#13 +
      #10#9' , BB.CQTCTY'#13#10'                , BB.CQTRFN'#13#10#9' , AA.CQMCSN'#13#10#9' , ' +
      'D.MODEL'#13#10#9' , D.DEA1NAME'#13#10#9' , E.CQMEGN'#13#10#9' , E.CQMBRH'#13#10#9' , F.CQMNA' +
      'T'#13#10'FROM ('#13#10#9'SELECT A.CQTDNO, MAX(A.CQTRNO) AS RNO, B.CQMCSN'#13#10#9'FR' +
      'OM CQDT002 A'#13#10#9'LEFT JOIN CQDM007 B ON A.CQTRFN=B.CQMDNO'#13#10#9'LEFT J' +
      'OIN CQDS003 C ON B.CQMDNO=C.CQSDNO'#13#10#9'LEFT JOIN LHPPDTA.DBO.TMP_I' +
      'NFOCOLLECTION D ON D.FSYSTEM='#39'LS'#39' AND C.CQSCSN=D.CONRUN '#13#10#9'LEFT ' +
      'JOIN CQDM001 E ON A.CQTBNK=E.CQMBNK AND A.CQTBBR=E.CQMBRC'#13#10#9'LEFT' +
      ' JOIN CQDM003 F ON CAST(A.CQTCCQ AS INT)=F.CQMCDE'#13#10#9'WHERE ('#13#10#9#9#9 +
      '(RTRIM(LTRIM(ISNULL(@FDATE,'#39#39')))='#39#39' OR RTRIM(LTRIM(ISNULL(@TDATE' +
      ','#39#39')))='#39#39') '#13#10#9#9#9'OR ('#13#10#9#9#9#9'CONVERT(DATETIME,CONVERT(VARCHAR,A.CQT' +
      'STD,101),101) '#13#10#9#9#9#9'BETWEEN CAST(RTRIM(LTRIM(@FDATE)) AS DATETIM' +
      'E) '#13#10#9#9#9#9'    AND CAST(RTRIM(LTRIM(@TDATE)) AS DATETIME)'#13#10#9#9#9'   )' +
      #13#10#9#9'  )'#13#10#9'  AND (LEN(ISNULL(@STATUS,'#39#39')) < 2 OR (A.CQTACT=LEFT(@' +
      'STATUS,1) AND A.CQTSTS=RIGHT(@STATUS,1)))'#13#10#9'  '#13#10#9'GROUP BY A.CQTD' +
      'NO, B.CQMCSN '#13#10#9' ) AA'#13#10'LEFT JOIN CQDT002 BB ON AA.CQTDNO=BB.CQTD' +
      'NO AND AA.RNO=BB.CQTRNO'#13#10'LEFT JOIN LHPPDTA.DBO.TMP_INFOCOLLECTIO' +
      'N D ON D.FSYSTEM='#39'LS'#39' AND AA.CQMCSN=D.CONRUN'#13#10'LEFT JOIN CQDM001 ' +
      'E ON BB.CQTBNK=E.CQMBNK AND BB.CQTBBR=E.CQMBRC'#13#10'LEFT JOIN CQDM00' +
      '3 F ON CAST(BB.CQTCCQ AS INT)=F.CQMCDE'#13#10'GROUP BY (BB.CQTACT + BB' +
      '.CQTSTS), BB.CQTDNO, BB.CQTNO2, BB.CQTAMT, BB.CQTDAT, BB.CQTTRD,' +
      ' BB.CQTCTY'#13#10'       , AA.CQMCSN, D.MODEL, D.DEA1NAME, E.CQMEGN, E' +
      '.CQMBRH, F.CQMNAT , BB.CQTRFN'
    Params = <>
    ProviderName = 'MAS'
    RemoteServer = RQC
    AfterOpen = MASAfterOpen
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
    Left = 88
    Top = 8
  end
  object T004: TRemDataSet
    Aggregates = <>
    CommandText = 'select * from CQDT004'
    Params = <>
    ProviderName = 'T004'
    RemoteServer = RQC
    AfterOpen = T004AfterOpen
    OnCalcFields = T004CalcFields
    Mono = False
    FillNull = False
    AutoLink = False
    AutoDec = 0
    ProperCap = False
    CalcFields.Strings = (
      'ITM,INTEGER,0,0')
    AutoApply = False
    RefreshOnFailed = False
    ByPass = False
    TrimChar = False
    LimitSQLRec = 0
    Left = 152
    Top = 8
  end
  object CSN: TRemDataSet
    Aggregates = <>
    CommandText = 
      'SELECT  A.CQMRFN'#13#10'                       , D.CQSCSN'#13#10'           ' +
      '            , E.DEA1NAME'#13#10'                       , E.MODEL'#13#10'    ' +
      '                   , D.CQSRS1'#13#10'                       , D.CQSRS2' +
      #13#10'                       , D.CQSAMT'#13#10'                       , D.' +
      'CQSVAT'#13#10'                       , D.CQSWHT'#13#10'                     ' +
      '  , D.CQSNET'#13#10'                  FROM CQDM011 A'#13#10'                ' +
      '  LEFT JOIN CQDS003 D ON A.CQMRFN=D.CQSDNO'#13#10'                  LE' +
      'FT JOIN LHPPDTA.DBO.TMP_INFOCOLLECTION E ON E.FSYSTEM='#39'LS'#39' AND D' +
      '.CQSCSN=E.CONRUN'#13#10'                  WHERE EXISTS(SELECT CQTRFN F' +
      'ROM CQDT002 AA WHERE AA.CQTRFN=D.CQSDNO GROUP BY CQTRFN)'#13#10'      ' +
      '            ORDER BY A.CQMRFN'
    Params = <>
    ProviderName = 'CSN'
    RemoteServer = RQC
    AfterOpen = CSNAfterOpen
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
    Left = 88
    Top = 56
  end
  object HIS: TRemDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = RQC
    AfterOpen = T004AfterOpen
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
    Left = 232
    Top = 8
  end
end
