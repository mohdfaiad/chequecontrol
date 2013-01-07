
declare @email varchar(255)
declare @deaCode varchar(10)
declare @centercode varchar(15)
declare @ConNo varchar(7)

set @ConNo='8100624'

select @deaCode=CONDEA,@centercode=CONCUS from HPMCON00 where CONDEA=@deaCode


select CONRUN,CONDEA,CONCUS,* from HPMCON00 where CONRUN in ('8100624','8100334','8100623')

select *   from DBMADR00 a where ADRCON  in ('8100624','8100334','8100623')




select @deaCode as DEACODE,@centercode as CENTERCODE

select @email=a.ADREMA
from DBMADR00 a where  ADRCON=@ConNo and a.ADREMA is not null 

select * from DBMADR00 where 


if (@email is null) 
begin
	select @email=EMAIL from DB2..HLCT_APP.HLTC_C_ADDRESS where CENTER_CODE=@centercode and ADDR_TYPE=4
end

select @email as EMAIL

select a.ADREMA as EMAIL,b.CONDEA,d.[DLR Name] as DEANAME,b.CONCUS
	from DBMADR00 a  
	left join HPMCON00 b on a.ADRCON=b.CONRUN	
	left join DEALER d on b.CONDEA= d.Code
where 	
	a.ADREMA is not null 
	and a.ADREMA=@email
	and ltrim(rtrim(@email))<>''
group by 
	a.ADREMA,b.CONDEA,b.CONCUS,d.[DLR Name]		

--select *  from LHPPDTA.dbo.TMP_INFOCOLLECTION where FSYSTEM='LS'
