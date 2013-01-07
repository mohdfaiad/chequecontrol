/*	
select a.ADREMA as EMAIL,b.CONDEA,d.[DLR Name] as DEANAME,b.CONCUS
	from DBMADR00 a  
	left join HPMCON00 b on a.ADRCON=b.CONRUN	
	left join DEALER d on b.CONDEA= d.Code
where 	
	--a.ADREMA is not null 
	 b.CONRUN in ('8100492','8100300','8100323','8100491','8100490','8100302','8100493','8100301')
	 
select * from HPMCON00 where CONRUN in ('8100492','8100300','8100323','8100491','8100490','8100302','8100493','8100301')	 
				
select * from LHPPDTA.dbo.TMP_INFOCOLLECTION where CONRUN in ('8100492','8100300','8100323','8100491','8100490','8100302','8100493','8100301')	 
				
				
							
--select EMAIL,* from DB2..HLCT_APP.HLTC_C_ADDRESS where CENTER_CODE='95101' and ADDR_TYPE=4			

*/

if object_id( 'tempdb..#temp0001' ) is not  null drop table #temp0001
select a.ADREMA as EMAIL,b.CONDEA,d.[DLR Name] as DEANAME,b.CONCUS
	into #temp0001	
	from DBMADR00 a  
	left join HPMCON00 b on a.ADRCON=b.CONRUN	
	left join DEALER d on b.CONDEA= d.Code
where 	
	a.ADREMA is not null 
	and a.ADREMA='busy@summithonda.co.th'
	--and ltrim(rtrim(@email))<>''	
	

select * from #temp0001








declare @DEAGRP  varchar(20)
declare @GRPCDE  varchar(20)

set @DEAGRP='SMH'
if exists(
	select CQMGRP from CQDM014 where CQMDEA=@DEAGRP
) 
begin
	select top 1 @GRPCDE=CQMGRP from CQDM014 where CQMDEA=@DEAGRP

	select isnull(a.ADREMA,'No-EMail') as EMAIL,b.CONDEA,d.[DLR Name] as DEANAME,b.CONCUS 
	from HPMCON00 b 
	left join DBMADR00 a on b.CONRUN=a.ADRCON
	left join DEALER d on b.CONDEA= d.Code
	where exists(
		select CQMDEA from CQDM014 where b.CONDEA=CQMDEA and CQMGRP=@GRPCDE
	)
	group by 
	a.ADREMA,b.CONDEA,b.CONCUS,d.[DLR Name]		
	
	order by a.ADREMA,b.CONDEA,b.CONCUS,d.[DLR Name]	
		
end else
begin
	select a.ADREMA as EMAIL,b.CONDEA,d.[DLR Name] as DEANAME,b.CONCUS
		--into #temp0001	
		from DBMADR00 a  
		left join HPMCON00 b on a.ADRCON=b.CONRUN	
		left join DEALER d on b.CONDEA= d.Code
	where 	
		a.ADREMA is not null 
		and a.ADREMA='busy@summithonda.co.th'
		--and ltrim(rtrim(@email))<>''
	group by 
	a.ADREMA,b.CONDEA,b.CONCUS,d.[DLR Name]			
			
end

/*
	
select * from CQDM014			
	
	
select * from CQDM007	
				
				
		
select * from HPTRCH00		
select * from HPTRCD00
select * from HPMRCV00

*/
