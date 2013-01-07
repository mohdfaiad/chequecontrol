use LLSODTA
declare @DOC varchar(15)

set @DOC='201206050089'

select * from HPTRCB00 where RCBDOC=@DOC
select * from HPTRCH00 where RCHDOC=@DOC
select * from HPTRCD00 where RCDDOC=@DOC

select * from HPTRCH00 where RCHCQT='P'
select * from CQDM011 where CQMSTS='P'

select * from HPTRCB00
