use LLSPDTA

select 
	b.CQMCNO,b.CQMCFA,a.CQSCSN,CQMDUE,a.CQSAMT,a.CQSVAT,a.CQSWHT,a.CQSNET,a.CQSRCT,a.CQSADF,a.CQSCFA,a.CQSWFA,a.CQSPFA
	,case 
	 when a.CQSWFA='Y' then 
		((a.CQSAMT+a.CQSVAT) - a.CQSWHT ) + (a.CQSADF*a.CQSCFA)
	  else 
	 a.CQSAMT+a.CQSVAT + (a.CQSADF*a.CQSCFA)
	 end
	 as CQSNPY
from CQDS003  a
left join CQDM007 b on a.CQSDNO=b.CQMDNO
where 
a.CQSRCT<>'O' and a.CQSRCT='N'
--and a.CQSDNO='RC201201260003'
and a.CQSCSN='8100053'

order by b.CQMDUE


--select * from HPTINS00 where INSCRN='8100053' and INSF11=3
/*
select * from CQDM007
update CQDM007 set CQMCFA='A'
select * from CQDS003
update CQDS003 set CQSWFA='Y'
update CQDS003 set CQSPFA='Y'
update CQDS003 set CQSCFA=1
update CQDS003 set CQSADF=0.00
*/

select INSCRN from HPTINS00 
where INSF11=3
group by INSCRN 



