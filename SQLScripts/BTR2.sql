-- batc receive
declare @chqno varchar(7)
declare @conno varchar(7)

set @chqno = '1111111'
set @conno='8100001'

--insert into HPTRCB00   --RCB
select 
CQMACT,'2' as CQMPST,null as CQMPSD
,'2' as CQMFL1,'2' as CQMFL2,'I' as  CQMFL3,CQMBRN,CQMPDM,CQMPDT
,'DOCNO00' as CQMDNO1,'TEMPNO0' as CQMTNO,CQMETD
,CQMETU,'2' as CQMDCT,CQMAMT,CQMETD,CQMETD,CQMETU,CQMMTD,CQMMTD,CQMMTU
from CQDM007 where CQMCNO=@chqno and CQMCSN=@conno
and CQMACT='A'


--insert into HPTRCH00   --RCH
select 
CQMACT,'2' as CQMPST,null as CQMPSD,'2' as CQMFL1,'2' as CQMFL2
,'I' as  CQMFL3,CQMBRN,CQMPDM,CQMPDT,'DOCNO00' as CQMDNO,'00' as CQMITM
,'1' as CQMRBY,CQMBNK,CQMBBR,CQMCSN,CQMDTE,CQMAMT,'01' as CQMACN,'' as CQMCQP
,null as CQMCQT,CQMETD,CQMETD,CQMETU,CQMMTD,CQMMTD,CQMMTU
from CQDM007 where CQMCNO=@chqno and CQMCSN=@conno
and CQMACT='A'


--select * from HPTRCH00 where RCHDOC='DOCNO00'
-- delete from HPTRCH00 where RCHDOC='DOCNO00'
 


--select * from HPTRCB00 where RCBDOC='201003000148'

--select * from HPTRCB00 where RCBDOC='aaaaa'
--select * from HPTRCB00 where RCBDOC='DOCNO00'
--delete from HPTRCB00 where RCBDOC='DOCNO00'
--insert into HPTRCD00
select 
'A' as CQSACT,'2' as CQMPST,null as CQMPSD,'D' as CQMFL1,'' as CQMFL2,null as CQMFL3
,CQSBRN,CQSPDM,CQSPDT,'DOCNO00' as CQMDNO
,'00' as CQSITM,CQSSEQ
,'01' as CQSCBN,'2' as CQSCPM,'01' as CQSCPT
,CQSCSN,'013' as CQSRTY,CQSAMT -- amount
,'1' as CQSRFR,'1' as CQSRTO
,CQSETD,CQSETD,CQSETU
,CQSMTD,CQSMTD,CQSMTU
,null as CQSREF
,0 as CQSICA
from CQDS003 where  CQSDNO='RC201203200007'
--delete from HPTRCD00 where RCDDOC='DOCNO00'

--select * from CQDM007
--select * from CQDS003
