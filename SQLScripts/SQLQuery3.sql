if object_id( 'tempdb..#abc' ) is not  null drop table #abc
select * 
into #abc
from CQDM007

delete  from CQDM007

insert into CQDM007
select * from #abc



update CQDM007 set CQMBRN='01' ,CQMPDM='2',CQMPDT='01'
update CQDS003 set CQSBRN='01' ,CQSPDM='2',CQSPDT='01'