-- cheque รับมา 
select 
	b.CQSCSN,a.CQMAMT,b.CQSAMT,b.CQSVAT,b.* 
from CQDM007 a
left join CQDS003 b on b.CQSDNO=a.CQMDNO
where a.CQMTNO='T201205090001'


-- install ment
select CONPER,* from HPMCON00 where CONRUN='8100595'
select INSCRN,INSIAM,INSVAM,* from HPTINS00 where INSCRN='8100595'