select * from HPMCON00 where CONRUN='8100462'
select * from DBMADR00 where ADRCON='8100462'

select EMAIL from  DB2..HLCT_APP.HLTC_C_ADDRESS where CENTER_CODE='3624' and ADDR_TYPE=4
select * from  DB2..HLCT_APP.HLTC_C_ADDRESS where CENTER_CODE='3624'



select a.ADREMA as EMAIL,b.CONDEA,d.[DLR Name] as DEANAME,b.CONCUS
	--into #temp0001	
	from DBMADR00 a  
	left join HPMCON00 b on a.ADRCON=b.CONRUN	
	left join DEALER d on b.CONDEA= d.Code
where 	
	a.ADREMA is not null 
	and a.ADREMA='v.groupfandi@hotmail.com'
group by 
	a.ADREMA,b.CONDEA,b.CONCUS,d.[DLR Name]	
	

select * from 
select * from Menu