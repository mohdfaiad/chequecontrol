USE [LLSPDTA]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetChqPayment]    Script Date: 03/19/2012 06:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[fn_GetChqPayment] ( @CSN varchar(15),@DT datetime = null )
RETURNS @ChqPayment  TABLE
   (
   CQSCSN varchar(15),
   CQMDTE datetime,
   PAYWT char(1),
   --CQMCNO varchar(7),   
   CQSADV decimal(18,2),
   INSCRN varchar(15),
   INSDUE datetime,
   INSITM int,
   INSIAM decimal(18,2),
   INSVAM decimal(18,2),
   INSIRA decimal(18,2),
   WHT decimal(18,2),
   INSNET decimal(18,2),
   LSTPAY decimal(18,2),   
   ACCUM decimal(18,2),
   OUTSTD decimal(18,2),      
   NETPAY decimal (18,2),
   PAYSTS int
   )
AS
BEGIN
-- version 1.0
declare   @CQSCSN varchar(15)
declare   @CQMDTE datetime
declare   @CQMCNO varchar(7)
declare   @CQSADV decimal(18,2)
declare   @INSCRN varchar(15)
declare   @INSDUE datetime
declare   @INSITM int
declare   @INSIAM decimal(18,2)
declare   @INSVAM decimal(18,2)
declare   @INSIRA decimal(18,2)
declare   @WHT decimal(18,2)
declare   @INSNET decimal(18,2)
declare   @LSTPAY decimal(18,2)
declare   @ACCUM decimal(18,2)
declare   @OUTSTD decimal(18,2)
declare   @NETPAY decimal (18,2)
declare	  @PAYWT char(1)
declare	  @STAT int


--declare @CSN as varchar(15)
--set @CSN='8100053'--'8100053'
declare @CurrDate as datetime

if @DT is null
	set @CurrDate ={fn now()}
else 
	set @CurrDate =@DT

declare  c1 cursor for 
select 
rcv.CQSCSN,rcv.CQMDTE,rcv.CQSWFA,rcv.CQSADV
,ins.INSCRN,ins.INSDUE,ins.INSITM,ins.INSIAM,ins.INSVAM,ins.INSIRA,ins.WHT
--###################################################
from
(   --# RECEIVE
	select aa.CQSCSN,bb.CQMDTE,aa.CQSWFA
	,SUM(aa.CQSADV) as CQSADV
	from 
	(
		select 
			b.CQMDNO, b.CQMCNO,b.CQMCFA,a.CQSCSN,CQMDTE,a.CQSAMT,a.CQSVAT
			,a.CQSWHT,a.CQSNET,a.CQSRCT,a.CQSADF,a.CQSCFA,a.CQSWFA,a.CQSPFA
			,case 
			 when a.CQSWFA='Y' then 
				((a.CQSAMT+a.CQSVAT) - a.CQSWHT )				
			  else 
				a.CQSAMT+a.CQSVAT 
			 end
			 as CQSADV
		from CQDS003  a
		left join CQDM007 b on a.CQSDNO=b.CQMDNO
		where 
		a.CQSRCT='N'								-- 'O' = Other , 'N' = Normal
		--and b.CQMSTS='A'
		and b.CQMACT='A'
		and left(b.CQMDNO,1)<>'#' and left(b.CQMDNO,1)<>'*'
		and (b.CQMCFA<>'P'  or  b.CQMCFA is null)	-- 'P' = Chq. Pass status
		and (
				(year(b.CQMDTE)< YEAR(@CurrDate) )  
				or ((year(b.CQMDTE)= YEAR(@CurrDate) ) and (month(b.CQMDTE)<= month(@CurrDate) ))
			)				
		and a.CQSACT='A' and a.CQSCSN=@CSN
		and not exists (
			select CQMNO2 from CQDM011 c where CQMNO2=b.CQMCNO and c.CQMSTS='P'  --in ('P'=pass,'N'=payin,'A'=deposit,'Y'=return)   -- master chq. status pass
			and  (
				day(@CurrDate)>day(c.CQMSTD) and
				 YEAR(@CurrDate)=YEAR(c.CQMSTD) and MONTH(@CurrDate)=MONTH(c.CQMSTD)
				 )				  		
		)
		
	) aa
	left join (
			 select b.CQMDNO,b.CQMDTE,a.CQSCSN from CQDS003 a 
			 left join CQDM007 b on a.CQSDNO=b.CQMDNO
			  where  a.CQSCSN=@CSN
			  and left(b.CQMDNO,1)<>'#' and left(b.CQMDNO,1)<>'*'
				and  (
						(year(b.CQMDTE)< YEAR(@CurrDate) )  or 
						((year(b.CQMDTE)= YEAR(@CurrDate) ) and (month(b.CQMDTE)<= month(@CurrDate) ))
					)
										
			 group by a.CQSCSN,b.CQMDTE,b.CQMDNO
		) bb on aa.CQSCSN=bb.CQSCSN and aa.CQMDNO=bb.CQMDNO
	group by aa.CQSCSN,bb.CQMDTE,aa.CQSWFA
) rcv

--###################################################
right join
(	--## INSTALLMENT
	select 
		a.INSCRN,a.INSDUE,a.INSITM,a.INSIAM,a.INSVAM,a.INSIRA,
		case 
		 when b.CONPER<=36 then ((5*a.INSIAM )/100)  --((5*(a.INSIAM + a.INSVAM))/100) 
		 else 0 
		 end WHT
		,
		case 
		 when b.CONPER<=36 then (a.INSIAM + a.INSVAM) - (5*(a.INSIAM))/100  
		else (a.INSIAM + a.INSVAM)
		end
		as INSNET
	,isnull((
		select 
			case 
			when c.CONPER<=36 then (SUM((b.INSIAM+b.INSVAM) - (5*(b.INSIAM))/100 ))
			else (SUM(b.INSIAM+b.INSVAM))		
			end
			as xx
		from HPTINS00 b 
		left join HPMCON00 c on b.INSCRN=c.CONRUN
		where b.INSCRN=@CSN 
		--and b.INSDUE<MIN(a.INSDUE)
		and  
		 (
			(year(b.INSDUE)< YEAR(MIN(a.INSDUE)) )  
			or ((year(b.INSDUE)= YEAR(MIN(a.INSDUE)) ) and (month(b.INSDUE)< month(MIN(a.INSDUE)) ))
			)		
		
		group by b.INSCRN,c.CONPER
	),0)as LSTPAY 
	 
		
	from HPTINS00 a
	left join HPMCON00 b on a.INSCRN=b.CONRUN
	where a.INSCRN=@CSN and a.INSF11=3		
	--and a.INSDUE<={fn NOW()}
	 and
	 (
		(year(a.INSDUE)< YEAR(@CurrDate) )  or 
		((year(a.INSDUE)= YEAR(@CurrDate) ) and (month(a.INSDUE)<= month(@CurrDate) ))
		)
	group by a.INSCRN,a.INSDUE,a.INSIAM,a.INSVAM,a.INSITM,a.INSVAM,a.INSVRA,a.INSIRA,b.CONPER
	--order by INSDUE
) ins on rcv.CQSCSN=ins.INSCRN and year(rcv.CQMDTE)=YEAR(ins.INSDUE) and MONTH(rcv.CQMDTE)=MONTH(ins.INSDUE)




declare @RAmount decimal(18,2)

	select @RAmount=
		isnull(
			case 
			when a.CQSWFA='Y' then 
				sum((a.CQSAMT+a.CQSVAT) - a.CQSWHT )		
			else 
				sum(a.CQSAMT+a.CQSVAT )
		 end
		 ,0)
	from CQDS003  a
	left join CQDM007 b on a.CQSDNO=b.CQMDNO
	where 
	--b.CQMSTS='A'
	b.CQMACT='A'	
	and a.CQSRCT='N'					   -- 'O' = Other , 'N' = Normal
	--and left(b.CQMDNO,1)<>'#' and left(b.CQMDNO,1)<>'*'
	and (b.CQMCFA<>'P'  or  b.CQMCFA is null)							   -- 'P' = Chq. Pass status
	and a.CQSACT='A'
	--and b.CQMDTE<=ins.INSDUE
	and  
	 (
		(year(b.CQMDTE)< YEAR(@CurrDate)  ) or  
		 ((year(b.CQMDTE)= YEAR(@CurrDate) ) and (month(b.CQMDTE)<= month(@CurrDate) ))
		)
		
		and not exists (
			select CQMNO2 from CQDM011 c where CQMNO2=b.CQMCNO and c.CQMSTS='P'   -- master chq. status pass
			and  (
				day(@CurrDate)>day(c.CQMSTD) and
				 YEAR(@CurrDate)=YEAR(c.CQMSTD) and MONTH(@CurrDate)=MONTH(c.CQMSTD)
				 )				  		
		)
							

	and a.CQSCSN=@CSN	
	group by CQSWFA

--##################

declare @ACM decimal(18,2)
declare @OUT decimal (18,2)
declare @count int
declare @RAmount2 decimal(18,2)
set @ACM=0
set @count=0
set @OUT=0.00
set @RAmount2=@RAmount
--##################

--select * from fn_GetChqPayment('8100001',DEFAULT)
open c1
fetch  next from c1 into @CQSCSN,@CQMDTE,@PAYWT,@CQSADV,@INSCRN,@INSDUE,@INSITM,@INSIAM,@INSVAM,@INSIRA,@WHT,@INSNET,@LSTPAY,@ACCUM,@OUTSTD,@NETPAY
	while @@fetch_status=0 
	begin

		set @ACM= @ACM+@INSNET

		--if @count>0  begin
			set @RAmount=isnull(@RAmount,0) - @INSNET	
			set @OUTSTD=isnull(@RAmount,0)
		--end
		
		set @NETPAY=@INSNET
		
		if @OUTSTD<0
		set @NETPAY=abs(@OUTSTD)+@INSNET
		
		if @OUTSTD>0
		set @NETPAY=@INSNET-abs(@OUTSTD)
		
		if @NETPAY<0  set @NETPAY=0.00  -- 
		
		set @ACCUM=@ACM
		set @count=@count+1
		
		if @ACM<=@RAmount2
			set @STAT=0 else set @STAT=1
				
		insert into @ChqPayment	
		select 
		 @CQSCSN as CQSCSN 	,@CQMDTE as CQMDTE 	,@PAYWT as PAYWT,@CQSADV as CQSADV 		,@INSCRN as INSCRN 		,@INSDUE as INSDUE
		,@INSITM as INSITM		,@INSIAM as INSIAM 		,@INSVAM as INSVAM 		,@INSIRA as INSIRA 		,@WHT as WHT
		,@INSNET as INSNET 		,@LSTPAY as LSTPAY		
		,@ACCUM as ACCUM,@OUTSTD as OUTSTD,@NETPAY as NETPAY,@STAT as STAT
		fetch  next from c1 into @CQSCSN,@CQMDTE,@CQSADV,@INSCRN,@INSDUE,@INSITM,@INSIAM,@INSVAM,@INSIRA,@WHT,@INSNET,@LSTPAY,@ACCUM,@OUTSTD,@NETPAY
	end
close c1
deallocate c1			



return
end