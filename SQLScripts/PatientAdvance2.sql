alter FUNCTION fn_GetChqPayment ( @CSN varchar(15) )
RETURNS @ChqPayment  TABLE
   (
   CQSCSN varchar(15),
   CQMDUE datetime,
   CQSNPY decimal(18,2),
   INSCRN varchar(15),
   INSDUE datetime,
   INSITM int,
   INSIAM decimal(18,2),
   INSVAM decimal(18,2),
   WHT decimal(18,2),
   INSNET decimal(18,2),
   LSTPAY decimal(18,2),
   NETNWT decimal(18,2),
   NETWWT decimal(18,2),
   NETPAY1 decimal(18,2),
   NETPAY2 decimal(18,2)
   )
AS
BEGIN


--declare @CSN as varchar(15)
--set @CSN='8100002'--'8100053'

insert into @ChqPayment
select 
rcv.*,ins.*,(ISNULL( ins.NETNWT,0.00)-isnull(rcv.CQSNPY,0.00)) as NETPAY1,(isnull(ins.NETWWT,0.00)-isnull(rcv.CQSNPY,0.00)) as NETPAY2
from
(   --# RECEIVE
	select aa.CQSCSN,bb.CQMDUE,SUM(aa.CQSNPY) as CQSNPY 
	from 
	(
		select 
			b.CQMCNO,b.CQMCFA,a.CQSCSN,CQMDUE,a.CQSAMT,a.CQSVAT
			,a.CQSWHT,a.CQSNET,a.CQSRCT,a.CQSADF,a.CQSCFA,a.CQSWFA,a.CQSPFA
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
		a.CQSRCT<>'O' and a.CQSRCT='N'					   -- 'O' = Other , 'N' = Normal
		and b.CQMCFA<>'P'								   -- 'P' = Chq. Pass status
		and a.CQSCSN=@CSN
	) aa
	left join (
			 select max(b.CQMDUE) CQMDUE,a.CQSCSN from CQDS003 a 
			 left join CQDM007 b on a.CQSDNO=b.CQMDNO
			  where  a.CQSCSN=@CSN
			 group by a.CQSCSN
		) bb on aa.CQSCSN=bb.CQSCSN
	group by aa.CQSCSN,bb.CQMDUE
) rcv

--###################################################
right join
(	--## INSTALLMENT
	select 
		a.INSCRN,MIN(a.INSDUE) as INSDUE
		,MIN(a.INSITM) as INSITM,a.INSIAM,a.INSVAM
		,
		case 
		 when b.CONPER<36 then ((5*(a.INSIAM + a.INSVAM))/100) 
		 else 0 
		 end WHT
		,
		case 
		 when b.CONPER<36 then (a.INSIAM + a.INSVAM) - (5*(a.INSIAM + a.INSVAM))/100  
		else (a.INSIAM + a.INSVAM)
		end
		as INSNET
	,(
		select 
			case 
			when c.CONPER<36 then (SUM((b.INSIAM+b.INSVAM) - (5*(b.INSIAM+b.INSVAM))/100 ))
			else (SUM(b.INSIAM+b.INSVAM))		
			end
			as xx
		from HPTINS00 b 
		left join HPMCON00 c on b.INSCRN=c.CONRUN
		where b.INSCRN=@CSN and b.INSDUE<MIN(a.INSDUE)
		group by b.INSCRN,c.CONPER
	)as LSTPAY 
	,
	(    -- no wt
		select 
			case 
			when c.CONPER<36 then 
			(SUM((b.INSIAM+b.INSVAM) - (5*(b.INSIAM+b.INSVAM))/100 ))
			else (SUM(b.INSIAM+b.INSVAM))
			end
			as xx	
		from HPTINS00 b 
		left join HPMCON00 c on b.INSCRN=c.CONRUN
		where b.INSCRN=@CSN and b.INSDUE<=MIN(a.INSDUE)
		group by b.INSCRN,c.CONPER
	)+ ((5*(a.INSIAM + a.INSVAM))/100  ) + a.INSIRA
	 as NETNWT
	,
	(  -- with wt
		select 
			case 
			when c.CONPER<36 then 
			--(SUM((b.INSIAM+b.INSVAM) - (5*(b.INSIAM+b.INSVAM)/100) ))
			(SUM((b.INSIAM+b.INSVAM) - (5*(b.INSIAM+b.INSVAM))/100 ))
			else (SUM(b.INSIAM+b.INSVAM))
			end
			as xx	
		from HPTINS00 b 
		left join HPMCON00 c on b.INSCRN=c.CONRUN
		where b.INSCRN=@CSN and b.INSDUE<=MIN(a.INSDUE)
		group by b.INSCRN,c.CONPER
	)+a.INSIRA  as NETWWT
	from HPTINS00 a
	left join HPMCON00 b on a.INSCRN=b.CONRUN
	where a.INSCRN=@CSN and a.INSF11=3
	group by a.INSCRN,a.INSIAM,a.INSVAM,a.INSVAM,b.CONPER,a.INSIRA
) ins on rcv.CQSCSN=ins.INSCRN

return
end

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


/*
--select SUM(CQSNET) from CQDS003 where CQSCSN='8100053' and CQSRCT<>'O' --order by CQSETD
select 
--SUM(INSIAM+INSVAM)
SUM((INSIAM+INSVAM)-(5*(INSIAM+INSVAM))/100 ) as LASTPAYMENT
--,SUM(INSIAM+INSVAM)- SUM((INSIAM+INSVAM)-((INSIAM+INSVAM)*0.05))
from HPTINS00 where INSCRN='8100002' and INSITM<17 and INSITM<>0

--select * from CQDS003 where CQSCSN='8100053' and CQSRCT<>'O'
--select CONPER,* from HPMCON00 where CONRUN='8100053'

--select top 1 * from HPTINS00 where INSF11=3 and INSCRN='8100053'
--select * from HPTINS00 where INSCRN='8100002' and INSITM=17
*/