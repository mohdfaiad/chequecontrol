use LLSUDTA

select * from
(
select COUNT(*) as c,CQMBNK,CQMBRC from CQDM001 group by CQMBNK,CQMBRC
) aa where c>1 

select * from CQDM001 where CQMBNK='025' and CQMBRC='0503'
select * from CQDM001 where CQMBNK='065' and CQMBRC='0057'

select * from DBMCOA00
select * from DBMCAR00
