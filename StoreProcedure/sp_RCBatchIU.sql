USE [LLSUDTA]
GO
/****** Object:  StoredProcedure [dbo].[sp_RCBatchIU]    Script Date: 05/31/2012 16:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
delete from HPTRCB00
delete from HPTRCH00
delete from HPTRCD00
*/


-- exec sp_RCBatchIU '201201205090058'
ALTER procedure [dbo].[sp_RCBatchIU]
--ON [dbo].[CQDM011]
--AFTER INSERT, UPDATE, DELETE 
@RFDNO as  varchar(15)

AS
	--declare @RFDNO as  varchar(15)

		
	
--select @RFDNO=CQMRFN from inserted	
	--select * from CQDM011
	
declare @DNO varchar(15)  --12
declare @CNO varchar(7)
declare @CSN varchar(7)
declare @RTM varchar(12)

declare @BNK varchar(12)
declare @BBR varchar(12)

declare @ACT varchar(1)
declare @STS varchar(1)
declare @MTD datetime
declare @CQP varchar(50) 



declare @NEWDOCNO varchar(12)

set @DNO=@RFDNO

select @CNO=CQMCNO,@CSN=CQMCSN,@BNK=CQMBNK,@BBR=CQMBBR,@RTM=RIGHT(CQMTNO,12) 
,@NEWDOCNO=RIGHT(CQMDNO,12)
from CQDM007 where CQMDNO=@DNO


if  exists(
	select * from HPTRCH00 where RCHDOC=@NEWDOCNO--RCHRFN = @CNO and RCHBBN=@BNK and RCHBBR=@BBR
)
begin  -- update
	/*
	select 
		@CQP=c.CQMNAE,@STS=b.CQMSTS
	from CQDM007 a
	left join CQDM011 b on a.CQMCNO=b.CQMNO2
	left join CQDM002 c on b.CQMSTS=c.CQMCDE  -- master chq code
	where a.CQMDNO=@DNO
	and a.CQMACT='A'
	*/
	
	select 
		@CQP=c.CQMNAE,@STS=a.CQMSTS,@ACT=a.CQMACT,@MTD=a.CQMMTD
	from CQDM011 a
	left join CQDM002 c on a.CQMSTS=c.CQMCDE  -- master chq code
	where a.CQMNO2=@CNO and a.CQMBNK=@BNK and a.CQMBBR=@BBR
	--and a.CQMACT='A'	
		
	
	--update HPTRCH00 set RCHCQT=@STS,RCHCQP=@CQP,RCHACT=@ACT,RCHMTM=@MTD  where RCHRFN = @CNO and RCHBBN=@BNK and RCHBBR=@BBR
    update HPTRCH00 set RCHCQT=@STS,RCHACT=@ACT,RCHMTM=@MTD  where RCHRFN = @CNO and RCHBBN=@BNK and RCHBBR=@BBR	
end
else
begin -- insert new record



	insert into HPTRCB00   --RCB
	select 
		CQMACT,'2' as CQMPST,null as CQMPSD
		,'2' as CQMFL1,'2' as CQMFL2,'I' as  CQMFL3,CQMBRN,CQMPDM,CQMPDT
		,@NEWDOCNO as CQMDNO1,@RTM as CQMTNO,CQMETD
		,CQMETU,'2' as CQMDCT,abs(convert(decimal(18,2),CQMAMT)) as CQMAMT,CQMETD,CQMETD,CQMETU,CQMMTD,CQMMTD,CQMMTU
	from CQDM007 
	where CQMDNO=@DNO and CQMACT='A'	



	insert into HPTRCH00   --RCH
	
	select

	a.CQMACT,'2' as CQMPST,null as CQMPSD,'2' as CQMFL1,'2' as CQMFL2
	,'I' as  CQMFL3,a.CQMBRN,a.CQMPDM,a.CQMPDT,@NEWDOCNO as CQMDNO,'00' as CQMITM
	,'1' as CQMRBY,a.CQMBNK,a.CQMBBR,a.CQMCNO,CQMDTE,abs(convert(decimal(18,2),a.CQMAMT)) as CQMAMT,'01' as CQMACN,
	--c.CQMNAE as  CQMCQP
	'' as  CQMCQP
	,b.CQMSTS as CQMCQT,a.CQMETD,a.CQMETD,a.CQMETU,a.CQMMTD,a.CQMMTD,a.CQMMTU
		
	from CQDM007 a
	left join CQDM011 b on a.CQMCNO=b.CQMNO2
	left join CQDM002 c on b.CQMSTS=c.CQMCDE  -- master chq code
	where a.CQMDNO=@DNO
	and a.CQMACT='A'
	
	




	
	if object_id( 'tempdb..#temp0011' ) is not  null drop table #temp0011
	select identity(int,1,1) as ROWSEQ,* 
	
	into #temp0011
	from (
	
	
	select 
	'A' as CQSACT,'2' as CQMPST,null as CQMPSD,'D' as CQMFL1,'' as CQMFL2,null as CQMFL3
	,CQSBRN,CQSPDM,CQSPDT,@NEWDOCNO as CQMDNO
	,'00' as CQSITM,1 as CQSSEQ
	,'01' as CQSCBN,'2' as CQSCPM,'01' as CQSCPT
	,CQSCSN,'013' as CQSRTY,abs(convert(decimal(18,2),(CQSAMT+CQSVAT))) as CQSAMT -- amount
	,'1' as CQSRFR,'1' as CQSRTO
	,CQSETD as RCDETD,CQSETD as RCDETM ,CQSETU as RCDUET
	,CQSMTD as RCDMTD,CQSMTD as RCDMTM,CQSMTU as RCDUTM
	,null as CQSREF
	,0 as CQSICA
	from CQDS003 where  CQSDNO=@DNO and CQSRCT='N'
	/*
	union
	select 
	'A' as CQSACT,'2' as CQMPST,null as CQMPSD,'D' as CQMFL1,'' as CQMFL2,null as CQMFL3
	,CQSBRN,CQSPDM,CQSPDT,@NEWDOCNO as CQMDNO
	,'00' as CQSITM,2 as CQSSEQ
	,'01' as CQSCBN,'2' as CQSCPM,'01' as CQSCPT
	,CQSCSN,'094' as CQSRTY,CQSVAT -- amount
	,'1' as CQSRFR,'1' as CQSRTO
	,CQSETD as RCDETD,CQSETD as RCDETM ,CQSETU as RCDUET
	,CQSMTD as RCDMTD,CQSMTD as RCDMTM,CQSMTU as RCDUTM
	,null as CQSREF
	,0 as CQSICA
	from CQDS003 where  CQSDNO=@DNO and CQSRCT='N'	
	*/
		
	union
	select 
	'A' as CQSACT,'2' as CQMPST,null as CQMPSD,'D' as CQMFL1,'' as CQMFL2,null as CQMFL3
	,CQSBRN,CQSPDM,CQSPDT,@NEWDOCNO as CQMDNO
	,'00' as CQSITM,3 as CQSSEQ
	,'01' as CQSCBN,'2' as CQSCPM,'01' as CQSCPT
	,CQSCSN,'F81' as CQSRTY,abs(convert (decimal(18,2),CQSWHT)) as CQSWHT -- amount
	,'1' as CQSRFR,'1' as CQSRTO
	,CQSETD as RCDETD,CQSETD as RCDETM ,CQSETU as RCDUET
	,CQSMTD as RCDMTD,CQSMTD as RCDMTM,CQSMTU as RCDUTM
	,null as CQSREF
	,0 as CQSICA
	from CQDS003 where  CQSDNO=@DNO and CQSRCT='N'	 and CQSWHT<>0
	
	union
	select 
	'A' as CQSACT,'2' as CQMPST,null as CQMPSD,'D' as CQMFL1,'' as CQMFL2,null as CQMFL3
	,CQSBRN,CQSPDM,CQSPDT,@NEWDOCNO as CQMDNO
	,'00' as CQSITM,4 as CQSSEQ
	,'01' as CQSCBN,'2' as CQSCPM,'01' as CQSCPT
	,CQSCSN,CQSRS1 as CQSRTY,abs(convert(decimal(18,2),CQSNET)) CQSNET -- amount
	,'1' as CQSRFR,'1' as CQSRTO
	,CQSETD as RCDETD,CQSETD as RCDETM ,CQSETU as RCDUET
	,CQSMTD as RCDMTD,CQSMTD as RCDMTM,CQSMTU as RCDUTM
	,null as CQSREF
	,0 as CQSICA
	from CQDS003 where  CQSDNO=@DNO and CQSRCT='O' and CQSNET<>0	
	
	) as xx
	
	
    insert into HPTRCD00
	/*select 
		*
	from 
	#temp0011    
    */
    
	select 
		CQSACT,CQMPST,CQMPSD,CQMFL1,CQMFL2,CQMFL3,CQSBRN,CQSPDM,CQSPDT,CQMDNO,CQSITM,ROWSEQ,CQSCBN,CQSCPM,
		CQSCPT,CQSCSN,CQSRTY,CQSAMT,CQSRFR,CQSRTO,RCDETD,RCDETM,RCDUET,RCDMTD,RCDMTM,RCDUTM,CQSREF,CQSICA	
	from 
	#temp0011


end


