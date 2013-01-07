USE [LLSODTA]
GO
/****** Object:  StoredProcedure [dbo].[sp_getEmailRelatedDtl]    Script Date: 06/07/2012 14:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec sp_getEmailRelatedDtl '8100492'
--exec sp_getEmailRelatedDtl '8100055'


ALTER procedure [dbo].[sp_getEmailRelatedDtl] 
	@ConNo varchar(10)  
as
begin

--declare @ConNo varchar(10)  
declare @email varchar(255)
declare @deaCode varchar(10)
declare @Taxrate decimal(18,0)
declare @centercode varchar(15)
--set @ConNo='8100004'--'8100055';
-- get Dealer Code
--

declare @DeaTBL  TABLE
(   
   EMAIL varchar(200),
   CONDEA varchar(20),
  -- DEANAME varchar(200),
   CONCUS int
)
   


select @deaCode=CONDEA,@centercode=CONCUS from HPMCON00 where CONRUN=@ConNo
select @Taxrate=CQMVA1 from CQDM008 where CQMCDE='WHT_RATE'



select @email=a.ADREMA
from DBMADR00 a where  ADRCON=@ConNo and a.ADREMA is not null 


if (@email is null) 
begin	
	select  top 1 @email=a.ADREMA
		from DBMADR00 a where  ADRCSN=@centercode and a.ADREMA is not null 
end


if (@email is null) 
begin
	select @email=EMAIL from DB2..HLCT_APP.HLTC_C_ADDRESS where CENTER_CODE=@centercode and ADDR_TYPE=4
end


if object_id( 'tempdb..#temp0001' ) is not  null drop table #temp0001

/*
select a.ADREMA as EMAIL,b.CONDEA,b.CONCUS
	into #temp0001	
	from DBMADR00 a  
	left join HPMCON00 b on a.ADRCON=b.CONRUN
where 	
	a.ADREMA is not null 
	and a.ADREMA=@email
group by 
	a.ADREMA,b.CONDEA,b.CONCUS	
		
*/	

/*******************************************/	

declare @DEAGRP  varchar(20)
declare @GRPCDE  varchar(20)

--set @DEAGRP='SMH'

select @DEAGRP=CONDEA from HPMCON00 where CONRUN=@ConNo

if exists(
	select CQMGRP from CQDM014 where CQMDEA=@DEAGRP
) 
begin

	select top 1 @GRPCDE=CQMGRP from CQDM014 where CQMDEA=@DEAGRP

	insert into @DeaTBL
	select isnull(a.ADREMA,'No-EMail') as EMAIL,b.CONDEA,b.CONCUS 
	--into #temp0001	
	from HPMCON00 b 
	left join DBMADR00 a on b.CONRUN=a.ADRCON
	left join DEALER d on b.CONDEA= d.Code
	where exists(
		select CQMDEA from CQDM014 where b.CONDEA=CQMDEA and CQMGRP=@GRPCDE
	)
	
	and a.ADREMA is not null
	
	
	group by 
	a.ADREMA,b.CONDEA,b.CONCUS,d.[DLR Name]	
		
	
	order by a.ADREMA,b.CONDEA,b.CONCUS
		
end else
begin

	insert into @DeaTBL
	select a.ADREMA as EMAIL,b.CONDEA,b.CONCUS
		--into #temp0001	
		from DBMADR00 a  
		left join HPMCON00 b on a.ADRCON=b.CONRUN
	where 	
		a.ADREMA is not null 
		and a.ADREMA=@email
	group by 
		a.ADREMA,b.CONDEA,b.CONCUS	
	
	
			
end	


--select * from @DeaTBL

--return 0
/*******************************************/	
	 
			--select * from #temp0001 a 

			declare @_email varchar(255)
			declare @_condea varchar(4)
			declare @_concus varchar(4)
			declare @rowcount int
			
			set @rowcount=0
			
			if object_id( 'tempdb..#temp0002' ) is not  null drop table #temp0002



			declare  c1 cursor for 
					select EMAIL,CONDEA,CONCUS from @DeaTBL a 
			open c1
			fetch  next from c1 into @_email,@_condea,@_concus
			while @@fetch_status=0 
			begin
					--print @_email
					if @rowcount=0 
					begin
						select @_email as EMAIL,a.CONDEA as CONDEA ,a.CONCUS as CONCUS,
							b.INSCRN,MIN(INSITM) INSITM	
						into #temp0002
						from HPMCON00 a  
						left join HPTINS00 b on a.CONRUN = b.INSCRN and INSF11=3 
						where a.CONDEA=@_condea
						and exists(
							select INSCRN from HPTINS00 where INSCRN=a.CONRUN and INSF11=3 
						)
						group by b.INSCRN,a.CONDEA,a.CONCUS
						order by b.INSCRN
					end else 
					begin
						insert #temp0002						
						select @_email as EMAIL,a.CONDEA as CONDEA ,a.CONCUS as CONCUS,
							b.INSCRN,MIN(INSITM) INSITM	
						from HPMCON00 a  
						left join HPTINS00 b on a.CONRUN = b.INSCRN and INSF11=3 
						where a.CONDEA=@_condea
						and exists(
							select INSCRN from HPTINS00 where INSCRN=a.CONRUN and INSF11=3 
						)
						group by b.INSCRN,a.CONDEA,a.CONCUS
						order by b.INSCRN					
					end
					
					set @rowcount=@rowcount+1

				fetch  next from c1 into @_email,@_condea,@_concus
			end

			close c1
			deallocate c1


--select * from #temp0002

--return 0

if object_id( 'tempdb..#temp0002' ) is not  null 
begin
	select 0 as CHK,a.*,b.*,e.CARMDL ,c.CONPER,
		case 
			when c.CONPER<36 then ((b.INSIAM*@Taxrate)/100) else 0
		end as WHT 
	,
		case 
			when c.CONPER<36 then (b.INSIAM-((b.INSIAM*@Taxrate)/100)+b.INSVAM) else (INSIAM+INSVAM)
		end as NET 		
	
	from #temp0002 a
	left join HPTINS00 b on a.INSCRN=b.INSCRN and a.INSITM=b.INSITM 
	left join DBMCOA03 d on b.INSCRN=d.COARUN 
	left join DBMCAR00 e on d.CARNUM=e.CARNUM	
	left join (
		select CONPER,CONRUN from HPMCON00 
		group by CONRUN,CONPER
	) as c on a.INSCRN=c.CONRUN 
	where a.EMAIL <>'No-EMail'
		--left join HPMCON00 c on a.INSCRN=c.CONRUN    -- exec sp_getEmailRelatedDtl '8100001'
		
	order by a.CONCUS
end else
	select 0 as CHK,
	a.* from HPTINS00 a
	where a.INSCRN='A'	
end
