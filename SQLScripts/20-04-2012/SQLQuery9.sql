USE [LLSPDTA]
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATEMASTERCHEQUE]    Script Date: 04/20/2012 17:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC SP_UPDATEMASTERCHEQUE 'RC201201230019'
--exec SP_UPDATEMASTERCHEQUE 'RC201201230019'
--select * from LLSPDTA_21.dbo.cqdm007
--select * from LLSPDTA_21.dbo.CQDS001 --where CQSDEL='T' and  CQSLDF='F'   >> CQSLDF=T

--declare @DT datetime set @DT={FN NOW()}  exec SP_UPDATEMASTERCHEQUE '201201204200016','admin','JONIR61','01','2','01','A','',@DT,'','333'
  declare @DT datetime set @DT={FN NOW()}  exec SP_UPDATEMASTERCHEQUE '201201204200018','admin','JONIR61','01','2','01','A','',@DT,'','333'
  declare @DT datetime set @DT={FN NOW()}  exec SP_UPDATEMASTERCHEQUE '201201204200022','admin','JONIR61','01','2','01','A','',@DT,'','20120120420002'


select * from CQDM007 where CQMDNO='201201204200018'


ALTER PROCEDURE [dbo].[SP_UPDATEMASTERCHEQUE]
	@DOCNO VARCHAR (15),
	@USER  VARCHAR (20),
	@WORK  VARCHAR (60),
	@BRN   VARCHAR (3),
	@PDM   VARCHAR (4),
	@PDT   VARCHAR (3),
	@CHEQUESTATUS CHAR (1),
	@RESONCODE	  CHAR (2),
	@DEPOSITDATE DATETIME,
	@ACCOUNTNUM  VARCHAR (10),
	@COLNO VARCHAR (14)
AS
BEGIN
	DECLARE @CQ_NO		VARCHAR	(7)
	DECLARE @CQ_DATE	DATETIME
	DECLARE @CQ_AMOUNT	NUMERIC	(18,2)
	DECLARE @CQ_BNK_C	CHAR	(3)
	DECLARE @CQ_BRR_C	CHAR	(4)
	DECLARE @CQ_ACCOUNT	VARCHAR (12)
	DECLARE	@CQ_C_TYPE	CHAR	(1)	
	DECLARE @PAT CHAR (2)
	DECLARE @EXPECDATE DATETIME
	SET @PAT = (SELECT BACPAT FROM DBMBAC00 WHERE BACBAC=@ACCOUNTNUM)
	IF LEN(@PAT) = 1 SET @PAT = '0' + @PAT
	
	SELECT @CQ_NO		=CQMCNO, 
		   @CQ_DATE		=CQMDTE,
		   @CQ_AMOUNT	=CQMAMT,
		   @CQ_BNK_C	=CQMBNK,
		   @CQ_BRR_C	=CQMBBR,
		   @CQ_ACCOUNT	=CQMACC,
		   @CQ_C_TYPE	=CQMCTY,
		   @EXPECDATE   =CQMDUE
	FROM CQDM007 
	WHERE CQMDNO=@DOCNO
	
	DECLARE @CHECKCOUNT INT
	DECLARE @NUM		INT
	DECLARE @N			INT
	IF @RESONCODE = '03' OR @RESONCODE = '42'
		SET @NUM = 2			
	ELSE
		SET @NUM = 1
	
	SET @N = 1
	WHILE @N <= @NUM
	BEGIN
		IF (@N = 2 AND @RESONCODE = '03' AND @CHEQUESTATUS = 'Y') 
		OR (@N = 2 AND @RESONCODE = '42' AND @CHEQUESTATUS = 'Y')
			SET @CHEQUESTATUS = 'N'
		
		SET @CHECKCOUNT = 0
		SELECT @CHECKCOUNT=COUNT(*) FROM CQDM011
		WHERE CQMNO2=@CQ_NO
		AND	  CQMDAT=@CQ_DATE
		AND	  CQMAMT=@CQ_AMOUNT
		AND	  CQMBNK=@CQ_BNK_C
		AND	  CQMBBR=@CQ_BRR_C
		AND	  CQMACC=@CQ_ACCOUNT
		AND	  CQMCTY=@CQ_C_TYPE
		AND   CQMCNO=@COLNO
		--AND	  CQMACT='A'
		
		IF @CHECKCOUNT>0
			BEGIN
				UPDATE CQDM011 SET
				CQMACT='A',
				CQMSTS=@CHEQUESTATUS,
				CQMCCQ=@RESONCODE,
				CQMMTD={FN NOW()},
				CQMMTU=@USER,
				CQMMTW=@WORK,
				CQMSTD={FN NOW()}	
				WHERE CQMNO2=@CQ_NO
				AND	  CQMDAT=@CQ_DATE
				AND	  CQMAMT=@CQ_AMOUNT
				AND	  CQMBNK=@CQ_BNK_C
				AND	  CQMBBR=@CQ_BRR_C
				AND	  CQMACC=@CQ_ACCOUNT
				AND	  CQMCTY=@CQ_C_TYPE 
				AND   CQMRFN=@DOCNO
				AND   CQMCNO=@COLNO
			END	
		ELSE
			BEGIN
				INSERT INTO CQDM011
				   ([CQMACT]
				   ,[CQMSTS]
				   ,[CQMBRN]
				   ,[CQMPDM]
				   ,[CQMPDT]
				   ,[CQMCNO]
				   ,[CQMBNK]
				   ,[CQMBBR]
				   --,[CQMNO1]
				   ,[CQMNO2]
				   --,[CQMTYP]
				   ,[CQMCTY]
				   ,[CQMDAT]
				   ,[CQMAMT]
				   ,[CQMDUE]
				   ,[CQMSTD]
				   ,[CQMPAT]
				   ,[CQMTRD]
				   ,[CQMCCQ]
				   --,[CQMCUS]
				   --,[CQMVTP]
				   --,[CQMGEN]
				   ,[CQMVBR]
				   --,[CQMVYY]
				   --,[CQMRUN]
				   --,[CQMITM]
				   --,[CQMPOS]
				   --,[CQMRED]
				   --,[CQMRTD]
				   --,[CQMEXC]
				   ,[CQMDIV]
				   ,[CQMACC]
				   --,[CQMPID]
				   --,[CQMPIN]
				   --,[CQMPBY]
				   ,[CQMRFN]
				   --,[CQMRS1]
				   --,[CQMRS2]
				   --,[CQMRS3]
				   --,[CQMRS4]
				   --,[CQMRS5]
				   --,[CQMRN1]
				   --,[CQMRN2]
				   --,[CQMRN3]
				   --,[CQMRN4]
				   --,[CQMRN5]
				   ,[CQMETD]
				   ,[CQMETU]
				   ,[CQMETW]
				   --,[CQMMTD]
				   --,[CQMMTU]
				   --,[CQMMTW]
				   ,[CQMCRD]
				   ,[CQMCRU]
				   ,[CQMCRW])
				VALUES
				   ('A'
				   ,@CHEQUESTATUS
				   ,@BRN
				   ,@PDM
				   ,@PDT
				   ,@COLNO
				   ,@CQ_BNK_C
				   ,@CQ_BRR_C
				   --,<CQMNO1, VARCHAR(1),>
				   ,@CQ_NO
				   --,<CQMTYP, VARCHAR(1),>
				   ,@CQ_C_TYPE
				   ,@CQ_DATE
				   ,@CQ_AMOUNT
				   ,@EXPECDATE
				   ,{FN NOW()}
				   ,@PAT
				   ,@DEPOSITDATE
				   ,@RESONCODE
				   --,<CQMCUS, VARCHAR(7),>
				   --,<CQMVTP, CHAR(1),>
				   --,<CQMGEN, CHAR(1),>
				   ,'01'
				   --,<CQMVYY, CHAR(2),>
				   --,<CQMRUN, CHAR(6),>
				   --,<CQMITM, CHAR(3),>
				   --,<CQMPOS, CHAR(1),>
				   --,<CQMRED, CHAR(1),>
				   --,<CQMRTD, CHAR(1),>
				   --,<CQMEXC, CHAR(1),>
				   ,'201'
				   ,@CQ_ACCOUNT
				   --,<CQMPID, DATETIME,>
				   --,<CQMPIN, VARCHAR(6),>
				   --,<CQMPBY, CHAR(1),>
				   ,@DOCNO
				   --,<CQMRS1, VARCHAR(50),>
				   --,<CQMRS2, VARCHAR(50),>
				   --,<CQMRS3, VARCHAR(50),>
				   --,<CQMRS4, VARCHAR(50),>
				   --,<CQMRS5, VARCHAR(50),>
				   --,<CQMRN1, NUMERIC(18,2),>
				   --,<CQMRN2, NUMERIC(18,2),>
				   --,<CQMRN3, NUMERIC(18,2),>
				   --,<CQMRN4, NUMERIC(18,2),>
				   --,<CQMRN5, NUMERIC(18,2),>
				   ,{FN NOW()}
				   ,@USER
				   ,@WORK
				   --,<CQMMTD, DATETIME,>
				   --,<CQMMTU, VARCHAR(20),>
				   --,<CQMMTW, VARCHAR(60),>
				   ,{FN NOW()}
				   ,@USER
				   ,@WORK
				   )	
			END
		INSERT INTO CQDT002 
			SELECT [CQMACT]
				  ,[CQMSTS]
				  ,[CQMBRN]
				  ,[CQMPDM]
				  ,[CQMPDT]
				  ,[CQMCNO]
				  ,[CQMBNK]
				  ,[CQMBBR]
				  ,[CQMNO1]
				  ,[CQMNO2]
				  ,[CQMTYP]
				  ,[CQMCTY]
				  ,[CQMDAT]
				  ,[CQMAMT]
				  ,[CQMDUE]
				  ,[CQMSTD]
				  ,[CQMPAT]
				  ,[CQMTRD]
				  ,[CQMCCQ]
				  ,[CQMCUS]
				  ,[CQMVTP]
				  ,[CQMGEN]
				  ,[CQMVBR]
				  ,[CQMVYY]
				  ,[CQMRUN]
				  ,[CQMITM]
				  ,[CQMPOS]
				  ,[CQMRED]
				  ,[CQMRTD]
				  ,[CQMEXC]
				  ,[CQMDIV]
				  ,[CQMACC]
				  ,[CQMPID]
				  ,[CQMPIN]
				  ,[CQMPBY]
				  ,[CQMRFN]
				  ,[CQMRS1]
				  ,[CQMRS2]
				  ,[CQMRS3]
				  ,[CQMRS4]
				  ,[CQMRS5]
				  ,[CQMRN1]
				  ,[CQMRN2]
				  ,[CQMRN3]
				  ,[CQMRN4]
				  ,[CQMRN5]
				  ,[CQMETD]={FN NOW()}
				  ,[CQMETU]=@USER
				  ,[CQMETW]=@WORK
				  ,[CQMMTD]=NULL
				  ,[CQMMTU]=NULL
				  ,[CQMMTW]=NULL
				  ,[CQMCRD]={FN NOW()}
				  ,[CQMCRU]=@USER
				  ,[CQMCRW]=@WORK
			FROM CQDM011  
			WHERE CQMNO2=@CQ_NO
			AND   CQMCNO=@COLNO
			AND	  CQMDAT=@CQ_DATE
			AND	  CQMAMT=@CQ_AMOUNT
			AND	  CQMBNK=@CQ_BNK_C
			AND	  CQMBBR=@CQ_BRR_C
			AND	  (
			CQMACC=@CQ_ACCOUNT OR (CQMACC IS NULL AND @CQ_ACCOUNT IS NULL)
				  )
			AND	  (
			CQMCTY=@CQ_C_TYPE OR (CQMCTY IS NULL AND @CQ_C_TYPE IS NULL)
				  )
		SET @N = @N + 1
	END
END
