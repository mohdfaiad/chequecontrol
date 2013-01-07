use LLSPDTA

declare @DNO varchar(15)  --12
declare @CNO varchar(7)
declare @CSN varchar(7)
declare @RTM varchar(12)

declare @BNK varchar(12)
declare @BBR varchar(12)



declare @NEWDOCNO varchar(12)

set @DNO='RC201203200067'
set @RTM='TEMPNO0'
set @NEWDOCNO='DOCNO00'

--select * from CQDM007 where CQMDNO=@DNO
--select * from CQDS003 where CQSDNO=@DNO



select @CNO=CQMCNO,@CSN=CQMCSN,@BNK=CQMBNK,@BBR=CQMBBR,@RTM=RIGHT(CQMTNO,12) 
,@NEWDOCNO=RIGHT(CQMDNO,12)
from CQDM007 where CQMDNO=@DNO

--select @CNO,@CSN,@BNK,@BBR,@RTM,@NEWDOCNO

--select * from CQDM007  where CQMDNO=@DNO
--select * from HPTRCH00 where RCHRFN = @CNO
--select * from HPTRCH00 where RCHDOC = @NEWDOCNO

--select * from HPTRCH00 where RCHRFN = @CNO and RCHBBN=@BNK and RCHBBR=@BBR

if not exists(
	select * from HPTRCH00 where RCHRFN = @CNO and RCHBBN=@BNK and RCHBBR=@BBR
)
begin

	insert into HPTRCB00   --RCB
	select 
	CQMACT,'2' as CQMPST,null as CQMPSD
	,'2' as CQMFL1,'2' as CQMFL2,'I' as  CQMFL3,CQMBRN,CQMPDM,CQMPDT
	,@NEWDOCNO as CQMDNO1,@RTM as CQMTNO,CQMETD
	,CQMETU,'2' as CQMDCT,CQMAMT,CQMETD,CQMETD,CQMETU,CQMMTD,CQMMTD,CQMMTU
	from CQDM007 where CQMDNO=@DNO
	and CQMACT='A'
	-- delete from HPTRCB00 where RCBDOC='DOCNO00'
	-- select * from HPTRCB00 where RCBDOC='DOCNO00'


	insert into HPTRCH00   --RCH
	select 
	CQMACT,'2' as CQMPST,null as CQMPSD,'2' as CQMFL1,'2' as CQMFL2
	,'I' as  CQMFL3,CQMBRN,CQMPDM,CQMPDT,@NEWDOCNO as CQMDNO,'00' as CQMITM
	,'1' as CQMRBY,CQMBNK,CQMBBR,CQMCNO,CQMDTE,CQMAMT,'01' as CQMACN,'' as CQMCQP
	,null as CQMCQT,CQMETD,CQMETD,CQMETU,CQMMTD,CQMMTD,CQMMTU
	from CQDM007 where CQMDNO=@DNO
	and CQMACT='A'
	--delete from HPTRCH00 where RCHDOC='DOCNO00'
	--select * from HPTRCH00 where RCHDOC='DOCNO00'

	insert into HPTRCD00
	select 
	'A' as CQSACT,'2' as CQMPST,null as CQMPSD,'D' as CQMFL1,'' as CQMFL2,null as CQMFL3
	,CQSBRN,CQSPDM,CQSPDT,@NEWDOCNO as CQMDNO
	,'00' as CQSITM,CQSSEQ
	,'01' as CQSCBN,'2' as CQSCPM,'01' as CQSCPT
	,CQSCSN,'013' as CQSRTY,CQSNET -- amount
	,'1' as CQSRFR,'1' as CQSRTO
	,CQSETD,CQSETD,CQSETU
	,CQSMTD,CQSMTD,CQSMTU
	,null as CQSREF
	,0 as CQSICA
	from CQDS003 where  CQSDNO=@DNO
	--delete from HPTRCD00 where RCDDOC='DOCNO00'
	--select * from HPTRCD00 where RCDDOC='DOCNO00'

end

--select * from CQDS003 where CQSDNO=@DNO

/*
delete from HPTRCB00 where RCBDOC='201203200067'
delete from HPTRCH00 where RCHDOC='201203200067'
delete from HPTRCD00 where RCDDOC='201203200067'

select * from HPTRCB00 where RCBDOC='DOCNO00'
select * from HPTRCH00 where RCHDOC='DOCNO00'
select * from HPTRCD00 where RCDDOC='DOCNO00'


*/

select * from HPTRCB00 where RCBDOC='201203200067'
select * from HPTRCH00 where RCHDOC='201203200067'
select * from HPTRCD00 where RCDDOC='201203200067'



