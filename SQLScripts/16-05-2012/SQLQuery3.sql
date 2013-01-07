
--select * from CAMCHQ00 where CQMSTS ='P'

select * from CQDM007 where CQMCNO='0219795'
select * from CQDM007 where CQMCNO='7741709'

select * from CQDM011 where CQMSTS ='P'
select * from HPTRCH00 where RCHCQT='P'

--RCHCQP = cheque status


select * from HPTINS00 where INSCRN='8100505'
select * from HPTINS00 where INSCRN='8100674'

select * from HPTRCB00 where RCBDOC='201205090789'
select * from HPTRCH00 where RCHDOC='201205090789'
select * from HPTRCD00 where RCDDOC='201205090789'
select * from HPMRCV00 where RCVDOC='201205090789'

select * from HPTRCB00 where RCBDOC='201205090568'
select * from HPTRCH00 where RCHDOC='201205090568'
select * from HPTRCD00 where RCDDOC='201205090568'

--select RCDDOC,RCDCRN,RCDRTY,RCDAMT from HPTRCD00  where RCDRTY='121'
--update HPTRCD00 set RCDRTY='121' where  RCDRTY='A01'

select * from CQDS003 
--update CQDS003 set CQSRS1='121' where CQSRS1='A01'


--select * from HPTRCD00 

/*
delete from HPTRCB00 
delete from HPTRCH00 
delete from HPTRCD00 
*/


select count(*) from HPTRCB00 
select count(*) from HPTRCH00 
select count(*) from HPTRCD00 


begin transaction
commit transaction
rollback transaction


----------

if object_id( 'tempdb..#tempxxx' ) is not  null drop table #tempxxx
select * 
into #tempxxx 
from HPTRCD00

select * from #tempxxx 

select a.RCDDOC,a.RCDCRN,a.RCDRTY,a.RCDAMT ,b.RCDAMT as VATAMT
--into #tempxxx
from HPTRCD00 a  
left join HPTRCD00 b on a.RCDDOC=b.RCDDOC and a.RCDCRN=b.RCDCRN and b.RCDRTY='094'
where a.RCDRTY='013'



--select RCDDOC,RCDCRN,RCDRTY,RCDAMT* from HPTRCD00   where RCDRTY='094'


----------
declare @doc varchar(12)
declare @crn varchar(12)
declare @rty varchar(3)
declare @amt decimal(18,4)
declare @vat decimal (18,4)


declare  c1 cursor for 
select a.RCDDOC,a.RCDCRN,a.RCDRTY,a.RCDAMT ,b.RCDAMT as VATAMT
from HPTRCD00 a  
left join HPTRCD00 b on a.RCDDOC=b.RCDDOC and a.RCDCRN=b.RCDCRN and b.RCDRTY='094'
where a.RCDRTY='013'
open c1
fetch  next from c1 into @doc,@crn,@rty,@amt,@vat
while @@fetch_status=0 
	begin
				--update HPTRCD00 set RCDAMT=@amt+@vat where RCDDOC=@doc and RCDCRN=@crn and RCDRTY='013'
				--delete from HPTRCD00 where RCDDOC=@doc and RCDCRN=@crn and  RCDRTY='094'
				select RCDAMT,(@amt+@vat) newamt from HPTRCD00 where RCDDOC=@doc and RCDCRN=@crn and RCDRTY='013'
				fetch  next from c1 into @doc,@crn,@rty,@amt,@vat
				
	end

close c1
deallocate c1



-- gen new 
declare @dno varchar(15)

declare  c1 cursor for 
select CQMDNO from CQDM007
open c1
fetch  next from c1 into @dno
while @@fetch_status=0 
	begin
		exec sp_RcBatchIU @dno	
		fetch  next from c1 into @dno				
	end

close c1
deallocate c1