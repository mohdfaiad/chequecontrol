
select count(*) from [AS400].[S659577E].[HPPDTA].[HPMCON00]

select *  from LHPPDTA.dbo.TMP_INFOCOLLECTION where FSYSTEM='LS'


/*============================================*/
select * from CQDM007 201205090002

select * from HPTRCH00 where RCHDOC='201205090002'
select * from HPTRCD00 where RCDDOC='201205090002'

select max(INSDUE) from HPTINS00 where INSCRN= '8100595' 



declare @csn varchar(15) 
declare @NDate datetime 
set @csn='8100595'
set @NDate= {fn now()}   
--select @NDate 

select @NDate=max(INSDUE) from HPTINS00 where INSCRN= @csn
--set @NDate = DATEADD(month,12-MONTH({fn now()}),{fn now()}) --
--select @NDate

select  *,INSNET as NETAMT from fn_GetChqPayment(@csn,@NDate) 
--where  INSNET=11346.78 and PAYSTS=1 
order by INSITM 



declare @csn varchar(15) 
declare @NDate datetime 
set @csn='8100595'
set @NDate= {fn now()}   

select @NDate=max(INSDUE) from HPTINS00 where INSCRN= @csn

select  top 1 *,INSNET as NETAMT from fn_GetChqPayment(@csn,@NDate) 
where  INSNET=11346.78 and INSDUE>{fn now()}  
order by INSITM 


select CQMVA1 from CQDM008 where CQMCDE='WHT_RATE'
select CQMVA1 from CQDM008 where CQMCDE='VAT_RATE'

select * from CQDM008
