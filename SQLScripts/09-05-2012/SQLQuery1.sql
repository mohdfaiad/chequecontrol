use LLSUDTA

--select * from CQDs003
--update CQDs003 set CQSRS1='A01' where CQSRS1='A001'



/*
select * from HPTRCB00
select * from HPTRCH00
select * from HPTRCD00


delete from HPTRCB00
delete from HPTRCH00
delete from HPTRCD00


select * from CQDM007
select * from CQDS003
*/


--select * from CQDM008

declare @cno varchar(15)


			declare  c1 cursor for 
					select cqmdno from CQDM007
			open c1
			fetch  next from c1 into @cno
			while @@fetch_status=0 
			begin
					print @cno
					exec sp_RCBatchIU @cno

				fetch  next from c1 into @cno
			end

			close c1
			deallocate c1

--exec sp_RCBatchIU '201201205090058'
--exec sp_RCBatchIU  '201201205090008'
