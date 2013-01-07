-- [AS400].[S659577E].[HPPDTA].[HPMCON01] contains no columns that can be selected or the current user does not have permissions on that object.
GO


--select * from [AS400].[S659577E].[HPPDTA].[HPMCON00]

use LLSUDTA

select * froj 


declare @aa as integer

select * from HPTRCD00 where RCDAMT<0 

select * from CQDM007 201205090002

select * from HPTRCH00 where RCHDOC='201205090002'
select * from HPTRCD00 where RCDDOC='201205090002'

select * from HPTINS00 where INSCRN= '8100595'

select * from CQDM007 where CQMDNO='201201205090002'



select * from HPTRCH00 where RCHDOC='201205090002'
select * from HPTRCD00 where RCDDOC='201205090002'
select * from HPTINS00 where INSCRN= '8100595'


select 

select a.CQMDNO,b.RCHDOC,a.CQMAMT,b.RCHAMT
from CQDM007 a
left join HPTRCH00 b on substring(a.CQMDNO,4,15)=b.RCHDOC
where a.CQMAMT<>b.RCHAMT


select * from CQDM008 


select * from CQDS003 where CQSDNO in ('201201205230001','300201205160002')
select * from HPTRCH00 where RCHDOC in ('201205230001','201205160002')
select * from HPTRCD00 where RCDDOC in ('201205230001','201205160002')




