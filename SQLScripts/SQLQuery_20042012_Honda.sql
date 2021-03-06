USE [LLSPDTA_21]
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATEMASTERCHEQUE]    Script Date: 04/20/2012 16:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec SP_UPDATEMASTERCHEQUE 'RC201201230019'
--select * from LLSPDTA_21.dbo.cqdm007
--select * from LLSPDTA_21.dbo.CQDS001 --where CQSDEL='T' and  CQSLDF='F'   >> CQSLDF=T

--declare @DT datetime set @DT={FN NOW()}  exec SP_UPDATEMASTERCHEQUE '201201204200014','admin','JONIR61','01','2','01','A','',@DT,'',''
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
	@ACCOUNTNUM  VARCHAR (10)	
AS
BEGIN
	DECLARE @CQ_NO		VARCHAR	(7)
	DECLARE @CQ_DATE	DATETIME
	DECLARE @CQ_AMOUNT	NUMERIC	(18,2)
	DECLARE @CQ_BNK_C	CHAR	(3)
	DECLARE @CQ_BRR_C	CHAR	(4)
	DECLARE @CQ_ACCOUNT	VARCHAR (12)
	DECLARE	@CQ_C_TYPE	CHAR	(1)	
	declare @PAT char (2)
	declare @EXPECDATE datetime
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
			END	
		ELSE
			BEGIN
				INSERT INTO CQDM011
				   ([CQMACT]
				   ,[CQMSTS]
				   ,[CQMBRN]
				   ,[CQMPDM]
				   ,[CQMPDT]
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
				   ,@CQ_BNK_C
				   ,@CQ_BRR_C
				   --,<CQMNO1, varchar(1),>
				   ,@CQ_NO
				   --,<CQMTYP, varchar(1),>
				   ,@CQ_C_TYPE
				   ,@CQ_DATE
				   ,@CQ_AMOUNT
				   ,@EXPECDATE
				   ,{FN NOW()}
				   ,@PAT
				   ,@DEPOSITDATE
				   ,@RESONCODE
				   --,<CQMCUS, varchar(7),>
				   --,<CQMVTP, char(1),>
				   --,<CQMGEN, char(1),>
				   ,'01'
				   --,<CQMVYY, char(2),>
				   --,<CQMRUN, char(6),>
				   --,<CQMITM, char(3),>
				   --,<CQMPOS, char(1),>
				   --,<CQMRED, char(1),>
				   --,<CQMRTD, char(1),>
				   --,<CQMEXC, char(1),>
				   ,'201'
				   ,@CQ_ACCOUNT
				   --,<CQMPID, datetime,>
				   --,<CQMPIN, varchar(6),>
				   --,<CQMPBY, char(1),>
				   ,@DOCNO
				   --,<CQMRS1, varchar(50),>
				   --,<CQMRS2, varchar(50),>
				   --,<CQMRS3, varchar(50),>
				   --,<CQMRS4, varchar(50),>
				   --,<CQMRS5, varchar(50),>
				   --,<CQMRN1, numeric(18,2),>
				   --,<CQMRN2, numeric(18,2),>
				   --,<CQMRN3, numeric(18,2),>
				   --,<CQMRN4, numeric(18,2),>
				   --,<CQMRN5, numeric(18,2),>
				   ,{FN NOW()}
				   ,@USER
				   ,@WORK
				   --,<CQMMTD, datetime,>
				   --,<CQMMTU, varchar(20),>
				   --,<CQMMTW, varchar(60),>
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
