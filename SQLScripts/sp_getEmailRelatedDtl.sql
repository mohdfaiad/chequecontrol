USE [LLSPDTA]
GO
/****** Object:  StoredProcedure [dbo].[sp_getEmailRelatedDtl]    Script Date: 03/28/2012 15:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec sp_getEmailRelatedDtl '8100053'
ALTER procedure [dbo].[sp_getEmailRelatedDtl] 
@ConNo varchar(10)  
as
begin
--declare @ConNo varchar(10)  
declare @email varchar(255)
declare @deaCode varchar(10)
declare @Taxrate decimal(18,0)
--set @ConNo='8100004'--'8100055';
-- get Dealer Code
--
select @deaCode=CONDEA from HPMCON00 where CONRUN=@ConNo
select @Taxrate=CQMVA1 from CQDM008 where CQMCDE='WHT_RATE'


select @email=a.ADREMA
from DBMADR00 a where  ADRCON=@ConNo and a.ADREMA is not null 

if object_id( 'tempdb..#temp0001' ) is not  null drop table #temp0001

select a.ADREMA as EMAIL,b.CONDEA,b.CONCUS
	into #temp0001	
	from DBMADR00 a  	
	left join HPMCON00 b on a.ADRCON=b.CONRUN
where 	
	a.ADREMA is not null 
	and a.ADREMA=@email
group by 
	a.ADREMA,b.CONDEA,b.CONCUS	
	 
			--select * from #temp0001 a 

			declare @_email varchar(255)
			declare @_condea varchar(4)
			declare @_concus varchar(4)
			declare @rowcount int
			
			set @rowcount=0
			
			if object_id( 'tempdb..#temp0002' ) is not  null drop table #temp0002


			declare  c1 cursor for 
					select * from #temp0001 a 
			open c1
			fetch  next from c1 into @_email,@_condea,@_concus
			while @@fetch_status=0 
			begin
					--print @_email
					if @rowcount=0 
					begin
						select @_email as EMAIL,@_condea as CONDEA ,@_concus as CONCUS,
							b.INSCRN,MIN(INSITM) INSITM	
						into #temp0002
						from HPMCON00 a  
						left join HPTINS00 b on a.CONRUN = b.INSCRN and INSF11=3 
						where a.CONDEA=@_condea
						and exists(
							select INSCRN from HPTINS00 where INSCRN=a.CONRUN and INSF11=3 
						)
						group by b.INSCRN
						order by b.INSCRN
					end else 
					begin
						insert #temp0002
						select @_email as EMAIL,@_condea as CONDEA ,@_concus as CONCUS,
							b.INSCRN,MIN(INSITM) INSITM	
						from HPMCON00 a  
						left join HPTINS00 b on a.CONRUN = b.INSCRN and INSF11=3 
						where a.CONDEA=@_condea
						and exists(
							select INSCRN from HPTINS00 where INSCRN=a.CONRUN and INSF11=3 
						)
						group by b.INSCRN
						order by b.INSCRN					
					end
					
					set @rowcount=@rowcount+1

				fetch  next from c1 into @_email,@_condea,@_concus
			end

			close c1
			deallocate c1


if object_id( 'tempdb..#temp0002' ) is not  null 
begin


	select 0 as CHK,a.*
		,d.CARMDL
		,b.* ,
		case 
			when c.CONPER<36 then ((b.INSIAM*@Taxrate)/100) else 0
		end as WHT 
	,
		case 
			when c.CONPER<36 then (b.INSIAM-((b.INSIAM*@Taxrate)/100)+b.INSVAM) else (INSIAM+INSVAM)
		end as NET  		
	
	from #temp0002 a
	left join HPTINS00 b on a.INSCRN=b.INSCRN and a.INSITM=b.INSITM 
	left join DBMCOA03 d on a.INSCRN=d.COARUN
	left join (
		select top 1 * from HPMCON00 
	) as c on a.INSCRN=c.CONRUN 
	--left join HPMCON00 c on a.INSCRN=c.CONRUN 
	order by a.CONCUS
end else
	select 0 as CHK,
	a.* from HPTINS00 a
	where a.INSCRN='A'	
end

