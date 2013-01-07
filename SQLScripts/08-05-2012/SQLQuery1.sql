use LLSPDTA
select * from LLSUDTA.dbo.CQDM011
--delete from LLSUDTA.dbo.CQDM011 where CQMCNO='docno'

--insert into LLSUDTA.dbo.CQDM011
SELECT top 1 
		'A' [CQMACT]
      ,'A' [CQMSTS]
      ,'01' [CQMBRN]
      ,'2' [CQMPDM]
      ,'01' [CQMPDT]
      ,'docno' [CQMCNO]
      ,LEFT(BNK,3) [CQMBNK]
      ,left(BBR,4) [CQMBBR]
      ,NULL [CQMNO1]
      ,CHQNO [CQMNO2]
      ,NULL [CQMTYP]
      ,case 
		when CTYPE='LOC' then 'C' else 'N' end 
      as [CQMCTY]
      ,'2012-08-10' [CQMDAT] --CHQDATE
      ,AMT [CQMAMT]
      ,NULL as [CQMDUE]
      ,NULL as [CQMSTD]
      ,'08' as [CQMPAT]
      ,NULL as [CQMTRD]
      ,'00' [CQMCCQ]
      ,NULL [CQMCUS]
      ,NULL [CQMVTP]
      ,NULL [CQMGEN]
      ,'01' [CQMVBR]
      ,NULL [CQMVYY]
      ,NULL [CQMRUN]
      ,NULL [CQMITM]
      ,NULL [CQMPOS]
      ,NULL [CQMRED]
      ,NULL [CQMRTD]
      ,NULL  [CQMEXC]
      ,'201' [CQMDIV]
      ,'ACC' [CQMACC]  -- ***
      ,NULL [CQMPID]
      ,NULL [CQMPIN]
      ,NULL [CQMPBY]
      ,'' [CQMRFN] -- ***
      ,NULL [CQMRS1]
      ,NULL [CQMRS2]
      ,NULL [CQMRS3]
      ,NULL [CQMRS4]
      ,NULL [CQMRS5]
      ,NULL [CQMRN1]
      ,NULL [CQMRN2]
      ,NULL [CQMRN3]
      ,NULL [CQMRN4]
      ,NULL [CQMRN5]
      ,{fn now()} [CQMETD]
      ,'IMPORT' [CQMETU]
      ,'IMPORT' [CQMETW]
      ,NULL [CQMMTD]
      ,NULL [CQMMTU]
      ,NULL [CQMMTW]
      ,{fn now()} [CQMCRD]
      ,'IMPORT' [CQMCRU]
      ,'IMPORT' [CQMCRW] 
  FROM CHQBF
GO




select * from CHQBF