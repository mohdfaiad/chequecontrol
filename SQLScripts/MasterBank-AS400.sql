select  THDTB2,* from  [AS400].[S659577E].[DBPDTA].[DBMTHD00]  where THDTB1='BNKCOD'
select  THDTB2,* from  [AS400].[S659577E].[DBPDTA].[DBMTHD00]  where THDTB1='BNKBRN' and ltrim(rtrim(THDTB2)) like '%702'

select  THDTB2,* from  [AS400].[S659577E].[DBPDTA].[DBMTHD00]  where THDTB1='BNKBRN' and ltrim(rtrim(THDTB2)) like '%065'


