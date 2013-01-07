select * from CQDS003 where CQSDNO='201201204100126'

--exec sp_RCBatchIU '201201204100126'

select CQMCNO,CQMCSN,CQMBNK,CQMBBR,RIGHT(CQMTNO,12)  CQMTNO
,RIGHT(CQMDNO,12) CQMDNO
from CQDM007 where CQMDNO='201201204100126'


declare @DT datetime
set @DT={FN NOW()}
exec SP_UPDATEMASTERCHEQUE '','','','','','','A','',@DT,''


select * from CQDM007
select * from CQDS003
select * from CQDM011


select * from HPTRCB00
select * from HPTRCH00
select * from HPTRCD00



delete from CQDM007
delete from CQDS003
delete from CQDM011



/*
delete from HPTRCB00
delete from HPTRCH00
delete from HPTRCD00
*/
  declare @DT datetime set @DT={FN NOW()}  exec SP_UPDATEMASTERCHEQUE '201201204200012','admin','JONIR61','01','2','01','A','',now(),''
  
  
  
    declare @DT datetime set @DT={FN NOW()}  exec SP_UPDATEMASTERCHEQUE '201201204200014','admin','JONIR61','01','2','01','A','',@DT,''
    
    