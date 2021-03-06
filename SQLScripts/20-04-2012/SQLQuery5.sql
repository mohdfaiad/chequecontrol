USE [LLSPDTA_21]
GO
/****** Object:  Trigger [dbo].[updateKeyIn]    Script Date: 04/20/2012 16:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[updateKeyIn]
ON [dbo].[CQDM007]
AFTER INSERT, UPDATE, DELETE 
AS
	declare @DNO as  varchar(15)
	declare @USR as  varchar(20)
	declare @WK as  varchar(20)
	declare @BRN as  varchar(3)
	declare @PDM as  varchar(4)
	declare @PDT as  varchar(3)
	declare @DFG as varchar (1)
	declare @DT as Datetime
	
	set @DT={fn now()}
		
	
	select @DNO=CQMDNO,@USR=CQMETU,@WK=CQMETW,@BRN=CQMBRN,@PDM=CQMPDM,@PDT=CQMPDT,@DFG=CQMDFG from inserted	
	if @DFG='K'
	begin
		exec SP_UPDATEMASTERCHEQUE @DNO,@USR,@WK,@BRN,@PDM,@PDT,'A','',@DT
	end
