USE [LLSPDTA]
GO

ALTER TABLE [dbo].[CQDT003] DROP CONSTRAINT [PK_CQDT003]
GO
ALTER TABLE [dbo].[HPTPPR00] DROP CONSTRAINT [PK_HPTPPR00_1]
GO
ALTER TABLE [dbo].[sysdiagrams] DROP CONSTRAINT [PK__sysdiagr__C2B05B6170DDC3D8]
GO
DROP PROCEDURE [dbo].[SP_LS__CNV_HPSLED_071_START_2]
GO
DROP PROCEDURE [dbo].[SP_LS__CNV_HPSLED_071_START]
GO
DROP PROCEDURE [dbo].[SP_NETAMT]
GO
DROP PROCEDURE [dbo].[SP_LS__CNV_HPMCAD]
GO
DROP PROCEDURE [dbo].[SP_LS__CNV_HPSLED_071]
GO
DROP FUNCTION [dbo].[FN_LS_REALIZE_DEFER_INCOME_RPT]
GO
DROP FUNCTION [dbo].[DInToDTime]
GO
DROP FUNCTION [dbo].[FN_LS_PENALTY_AMT]
GO
DROP FUNCTION [dbo].[FN_LS_PENALTY_20]
GO
DROP TABLE [dbo].[NATPPV00]
GO
DROP TABLE [dbo].[Receipt_Tax_Invoice]
GO
DROP TABLE [dbo].[ParameterSystem]
GO
DROP TABLE [dbo].[ParameterHeader]
GO
DROP TABLE [dbo].[ParameterDetail]
GO
DROP TABLE [dbo].[HPXPVD00]
GO
DROP TABLE [dbo].[HPXPVB00]
GO
DROP TABLE [dbo].[System]
GO
DROP TABLE [dbo].[HPXPVH00]
GO
DROP TABLE [dbo].[NATPPT00]
GO
DROP TABLE [dbo].[NATPPI00]
GO
DROP TABLE [dbo].[NATPPH00]
GO
DROP TABLE [dbo].[Recording_Cheque_Process]
GO
DROP TABLE [dbo].[Test_Ton]
GO
DROP TABLE [dbo].[Temporary]
GO
DROP TABLE [dbo].[tbl_data2]
GO
DROP TABLE [dbo].[XXXXX]
GO
DROP TABLE [dbo].[TMPWHT00]
GO
DROP TABLE [dbo].[testmail]
GO
DROP TABLE [dbo].[REG_LAK4]
GO
DROP TABLE [dbo].[REG_LAK3]
GO
DROP TABLE [dbo].[REG_LAK2]
GO
DROP TABLE [dbo].[tbl_data1]
GO
DROP TABLE [dbo].[SMTP]
GO
DROP TABLE [dbo].[Section]
GO
DROP TABLE [dbo].[HPTINS07]
GO
DROP TABLE [dbo].[CQTFEE00]
GO
DROP TABLE [dbo].[CQTRSL00]
GO
DROP TABLE [dbo].[CQTCHQ00]
GO
DROP TABLE [dbo].[CQTETR00]
GO
DROP TABLE [dbo].[DBMCOA03]
GO
DROP TABLE [dbo].[DBMRTL00]
GO
DROP TABLE [dbo].[DBMACB00]
GO
DROP TABLE [dbo].[DBMCAB00]
GO
DROP TABLE [dbo].[CQMSTS00]
GO
DROP TABLE [dbo].[CQMCDE00]
GO
DROP TABLE [dbo].[CQMCHQ00]
GO
DROP TABLE [dbo].[CQMBNK00]
GO
DROP TABLE [dbo].[CQMBRN00]
GO
DROP TABLE [dbo].[CQMRSN00]
GO
DROP TABLE [dbo].[CONTRACT36_test]
GO
DROP TABLE [dbo].[CQMDTY00]
GO
DROP TABLE [dbo].[CQMRPT00]
GO
DROP TABLE [dbo].[HPMINP00]
GO
DROP TABLE [dbo].[HPDV00200]
GO
DROP TABLE [dbo].[Division]
GO
DROP TABLE [dbo].[Branch]
GO
DROP TABLE [dbo].[AdjResidualValue1]
GO
DROP TABLE [dbo].[CTDS00100]
GO
DROP TABLE [dbo].[DBMTHD00]
GO
DROP TABLE [dbo].[Deferinc_1CSV]
GO
DROP TABLE [dbo].[Deferinc_2CSV]
GO
DROP TABLE [dbo].[Department]
GO
ALTER TABLE [dbo].[CQDT003] ALTER COLUMN [CQTCSN] [varchar] (10) COLLATE Thai_CI_AS NULL
GO
ALTER TABLE [dbo].[CQDT003] ALTER COLUMN [CQTPDT] [varchar] (3) COLLATE Thai_CI_AS NULL
GO
ALTER TABLE [dbo].[CQDT003] ALTER COLUMN [CQTBRN] [varchar] (3) COLLATE Thai_CI_AS NULL
GO
ALTER TABLE [dbo].[CQDT003] ALTER COLUMN [CQTPDM] [varchar] (4) COLLATE Thai_CI_AS NULL
GO
ALTER TABLE [dbo].[CQDT003] ALTER COLUMN [CQTACT] [varchar] (1) COLLATE Thai_CI_AS NULL
GO
ALTER TABLE [dbo].[HPTPPR00] DROP COLUMN [PPRPGM],[PPRPTY],[PPRETW],[PPRMTW]
GO
ALTER TABLE [dbo].[HPTPPR00] ADD 
[PPRRFC] [varchar] (1) COLLATE Thai_CI_AS NULL,
[PPRACN] [varchar] (7) COLLATE Thai_CI_AS NULL,
[PPRRPT] [varchar] (3) COLLATE Thai_CI_AS NULL,
[PPRETT] [datetime] NULL,
[PPRMTT] [datetime] NULL
GO
ALTER TABLE [dbo].[HPTBTR00] ALTER COLUMN [BTRSTS] [varchar] (max) COLLATE Thai_CI_AS NULL
GO
ALTER TABLE [dbo].[NCB_HPMSCN00] ADD 
[SCNACA] [numeric] (12,2) NULL,
[SCNACV] [numeric] (12,2) NULL,
[SCNDSA] [numeric] (12,2) NULL,
[SCNDSV] [numeric] (12,2) NULL,
[SCNFSA] [numeric] (12,2) NULL,
[SCNDNT] [numeric] (12,2) NULL,
[SCNRRT] [numeric] (12,2) NULL,
[SCNCMT] [numeric] (12,2) NULL,
[SCNWHT] [numeric] (12,2) NULL,
[SCNNCV] [numeric] (12,2) NULL,
[SCNNCT] [numeric] (12,2) NULL,
[SCNINV] [varchar] (20) COLLATE Thai_CI_AS NULL,
[SCNIND] [datetime] NULL,
[SCNDCS] [varchar] (2) COLLATE Thai_CI_AS NULL
GO
ALTER TABLE [dbo].[HPTPPR00] ALTER COLUMN [PPRRFN] [varchar] (7) COLLATE Thai_CI_AS NULL
GO
ALTER TABLE [dbo].[HPTINS00] DROP COLUMN [INSF61],[INSF62],[INSSLD],[INSSAM],[INSSRM]
GO
ALTER TABLE [dbo].[HPTPPR00] ALTER COLUMN [PPRSBN] [varchar] (2) COLLATE Thai_CI_AS NULL
GO
ALTER TABLE [dbo].[HPTPPR00] ALTER COLUMN [PPRRCN] [varchar] (7) COLLATE Thai_CI_AS NULL
GO
CREATE TABLE [dbo].[NCB_HPTINS00_BACKUP]
(
	[INSACT] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSF11] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSF12] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSF21] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSF22] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSF31] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSF32] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSF41] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSF42] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSF51] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSF52] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSILD] [datetime] NULL,
	[INSVLD] [datetime] NULL,
	[INSDLD] [datetime] NULL,
	[INSCLD] [datetime] NULL,
	[INSPLD] [datetime] NULL,
	[INSCBR] [varchar] (2) COLLATE Thai_CI_AS NOT NULL,
	[INSCPM] [varchar] (1) COLLATE Thai_CI_AS NOT NULL,
	[INSCPT] [varchar] (2) COLLATE Thai_CI_AS NOT NULL,
	[INSCRN] [varchar] (7) COLLATE Thai_CI_AS NOT NULL,
	[INSITM] [int] NOT NULL,
	[INSDUE] [datetime] NULL,
	[INSIAM] [numeric] (11,2) NULL,
	[INSIRA] [numeric] (11,2) NULL,
	[INSVAM] [numeric] (10,2) NULL,
	[INSVPA] [numeric] (10,2) NULL,
	[INSVRA] [numeric] (10,2) NULL,
	[INSDAM] [numeric] (9,2) NULL,
	[INSDRM] [numeric] (9,2) NULL,
	[INSEAM] [numeric] (9,2) NULL,
	[INSERM] [numeric] (9,2) NULL,
	[INSPAM] [numeric] (9,2) NULL,
	[INSPRM] [numeric] (9,2) NULL,
	[INSVRF] [varchar] (15) COLLATE Thai_CI_AS NULL,
	[INSVP1] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSVP2] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSETD] [datetime] NULL,
	[INSETM] [datetime] NULL,
	[INSUET] [varchar] (10) COLLATE Thai_CI_AS NULL,
	[INSMTD] [datetime] NULL,
	[INSMTM] [datetime] NULL,
	[INSUTM] [varchar] (10) COLLATE Thai_CI_AS NULL,
	[INSPVD] [datetime] NULL,
	[INSIAD] [numeric] (11,2) NULL,
	[INSVAD] [numeric] (10,2) NULL,
	[INSPAD] [numeric] (9,2) NULL,
	[INSPVL] [numeric] (9,2) NULL,
	[INSPVR] [numeric] (9,2) NULL,
	[INSPVA] [numeric] (9,2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NCB_HPDT01600]
(
	[INSACT] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSF51] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSF52] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSPLD] [datetime] NULL,
	[INSPVD] [datetime] NULL,
	[INSCBR] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[INSCPM] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSCPT] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[INSCRN] [varchar] (7) COLLATE Thai_CI_AS NULL,
	[INSITM] [int] NULL,
	[INSDUE] [datetime] NULL,
	[INSFRD] [datetime] NULL,
	[INSTOD] [datetime] NULL,
	[INSOLD] [datetime] NULL,
	[INSPAM] [numeric] (9,2) NULL,
	[INSPRM] [numeric] (9,2) NULL,
	[INSETD] [datetime] NULL,
	[INSETM] [datetime] NULL,
	[INSUET] [varchar] (10) COLLATE Thai_CI_AS NULL,
	[INSMTD] [datetime] NULL,
	[INSMTM] [datetime] NULL,
	[INSUTM] [varchar] (10) COLLATE Thai_CI_AS NULL,
	[INSRF1] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSRF2] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[INSRF3] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[INSRT1] [varchar] (10) COLLATE Thai_CI_AS NULL,
	[INSRT2] [varchar] (20) COLLATE Thai_CI_AS NULL,
	[INSRA1] [numeric] (11,2) NULL,
	[INSRA2] [numeric] (11,2) NULL,
	[INSRD1] [int] NULL,
	[INSRD2] [int] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HPMSCN00_BACKUP]
(
	[SCNACT] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNSTS] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNBRN] [varchar] (2) COLLATE Thai_CI_AS NOT NULL,
	[SCNPDM] [varchar] (1) COLLATE Thai_CI_AS NOT NULL,
	[SCNPDT] [varchar] (2) COLLATE Thai_CI_AS NOT NULL,
	[SCNRUN] [varchar] (7) COLLATE Thai_CI_AS NOT NULL,
	[SCNDCN] [varchar] (10) COLLATE Thai_CI_AS NULL,
	[SCNDCT] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNDIB] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNHOC] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNHC1] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNHC2] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNHC3] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNHC4] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNHC5] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNCOE] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNHCR] [numeric] (8,2) NULL,
	[SCNFOP] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNPAY] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNGR1] [varchar] (15) COLLATE Thai_CI_AS NULL,
	[SCNGR2] [varchar] (15) COLLATE Thai_CI_AS NULL,
	[SCNGR3] [varchar] (15) COLLATE Thai_CI_AS NULL,
	[SCNGR4] [varchar] (15) COLLATE Thai_CI_AS NULL,
	[SCNGR5] [varchar] (15) COLLATE Thai_CI_AS NULL,
	[SCNRL1] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNRL2] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNRL3] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNRL4] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNRL5] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNPPM] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNFUS] [varchar] (3) COLLATE Thai_CI_AS NULL,
	[SCNETD] [datetime] NULL,
	[SCNETT] [datetime] NULL,
	[SCNETU] [varchar] (10) COLLATE Thai_CI_AS NULL,
	[SCNMTD] [datetime] NULL,
	[SCNMTT] [datetime] NULL,
	[SCNMTU] [varchar] (10) COLLATE Thai_CI_AS NULL,
	[SCNPIN] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNPI1] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNPI2] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNPI3] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNPI4] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNPI5] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNATY] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNACD] [varchar] (4) COLLATE Thai_CI_AS NULL,
	[SCNLCT] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNINS] [varchar] (3) COLLATE Thai_CI_AS NULL,
	[SCNNIR] [varchar] (10) COLLATE Thai_CI_AS NULL,
	[SCNTPM] [numeric] (8,2) NULL,
	[SCNPPC] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNIPC] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNCDT] [datetime] NULL,
	[SCNAT2] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNAC2] [varchar] (4) COLLATE Thai_CI_AS NULL,
	[SCNAT3] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNAC3] [varchar] (4) COLLATE Thai_CI_AS NULL,
	[SCNRTE] [numeric] (6,4) NULL,
	[SCNFEE] [numeric] (11,2) NULL,
	[SCNRTA] [numeric] (11,2) NULL,
	[SCNRTN] [numeric] (11,2) NULL,
	[SCNRTV] [numeric] (11,2) NULL,
	[SCNNIA] [numeric] (11,2) NULL,
	[SCNRTY] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNRCT] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNDWT] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNPSL] [numeric] (13,2) NULL,
	[SCNDWI] [numeric] (13,2) NULL,
	[SCNAM1] [numeric] (13,2) NULL,
	[SCNCFT] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNCFR] [numeric] (6,4) NULL,
	[SCNCFA] [numeric] (11,2) NULL,
	[SCNCFF] [numeric] (11,2) NULL,
	[SCNCIT] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[SCNCIR] [numeric] (6,4) NULL,
	[SCNCIA] [numeric] (11,2) NULL,
	[SCNCIF] [numeric] (11,2) NULL,
	[SCNCIS] [numeric] (11,2) NULL,
	[SCNCST] [numeric] (11,2) NULL,
	[SCNRT1] [numeric] (6,4) NULL,
	[SCNRT2] [numeric] (6,4) NULL,
	[SCNRT3] [numeric] (6,4) NULL,
	[SCNFL1] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNFL2] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNFL3] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[SCNFLD] [varchar] (15) COLLATE Thai_CI_AS NULL,
	[SCNDT1] [datetime] NULL,
	[SCNDT2] [datetime] NULL,
	[SCNDT3] [datetime] NULL,
	[SCNRA1] [numeric] (11,2) NULL,
	[SCNRA2] [numeric] (11,2) NULL,
	[SCNRA3] [numeric] (11,2) NULL,
	[SCNRAG] [numeric] (11,2) NULL,
	[SCNISA] [numeric] (11,2) NULL,
	[SCNOTA] [numeric] (11,2) NULL,
	[SCNASA] [numeric] (11,2) NULL,
	[SCNASV] [numeric] (11,2) NULL,
	[SCNSSA] [numeric] (11,2) NULL,
	[SCNSSR] [numeric] (11,4) NULL,
	[SCNACA] [numeric] (12,2) NULL,
	[SCNACV] [numeric] (12,2) NULL,
	[SCNDSA] [numeric] (12,2) NULL,
	[SCNDSV] [numeric] (12,2) NULL,
	[SCNFSA] [numeric] (12,2) NULL,
	[SCNDNT] [numeric] (12,2) NULL,
	[SCNRRT] [numeric] (12,2) NULL,
	[SCNCMT] [numeric] (12,2) NULL,
	[SCNWHT] [numeric] (12,2) NULL,
	[SCNNCV] [numeric] (12,2) NULL,
	[SCNNCT] [numeric] (12,2) NULL,
	[SCNINV] [varchar] (20) COLLATE Thai_CI_AS NULL,
	[SCNIND] [datetime] NULL,
	[SCNDCS] [varchar] (2) COLLATE Thai_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[GLMACM00_BACKUP]
(
	[ACMACT] [varchar] (1) COLLATE Thai_CI_AS NOT NULL,
	[ACMPST] [varchar] (1) COLLATE Thai_CI_AS NOT NULL,
	[ACMBRN] [varchar] (2) COLLATE Thai_CI_AS NOT NULL,
	[ACMPDM] [varchar] (1) COLLATE Thai_CI_AS NOT NULL,
	[ACMPDT] [varchar] (2) COLLATE Thai_CI_AS NOT NULL,
	[ACMPRC] [varchar] (3) COLLATE Thai_CI_AS NOT NULL,
	[ACMTYP] [varchar] (3) COLLATE Thai_CI_AS NOT NULL,
	[ACMRPF] [varchar] (1) COLLATE Thai_CI_AS NOT NULL,
	[ACMTRN] [varchar] (3) COLLATE Thai_CI_AS NOT NULL,
	[ACMPDS] [varchar] (3) COLLATE Thai_CI_AS NOT NULL,
	[ACMPAT] [varchar] (2) COLLATE Thai_CI_AS NOT NULL,
	[ACMPRB] [varchar] (1) COLLATE Thai_CI_AS NOT NULL,
	[ACMNAT] [varchar] (3) COLLATE Thai_CI_AS NOT NULL,
	[ACMCLR] [varchar] (1) COLLATE Thai_CI_AS NOT NULL,
	[ACMCHQ] [varchar] (1) COLLATE Thai_CI_AS NOT NULL,
	[ACMRES] [varchar] (2) COLLATE Thai_CI_AS NOT NULL,
	[ACMCOD] [varchar] (20) COLLATE Thai_CI_AS NOT NULL,
	[ACMNAM] [varchar] (80) COLLATE Thai_CI_AS NOT NULL,
	[ACMDCC] [varchar] (1) COLLATE Thai_CI_AS NOT NULL,
	[ACMGRP] [varchar] (1) COLLATE Thai_CI_AS NOT NULL,
	[ACMITM] [decimal] (2,0) NOT NULL,
	[ACMETD] [decimal] (8,0) NOT NULL,
	[ACMETM] [decimal] (6,0) NOT NULL,
	[ACMUET] [varchar] (10) COLLATE Thai_CI_AS NOT NULL,
	[ACMMTD] [decimal] (8,0) NOT NULL,
	[ACMMTM] [decimal] (6,0) NOT NULL,
	[ACMUTM] [varchar] (10) COLLATE Thai_CI_AS NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempHPTPPD00]
(
	[PPDACT] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[PPDSTS] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[PPDSBN] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[PPDRCN] [varchar] (7) COLLATE Thai_CI_AS NULL,
	[PPDITM] [int] NULL,
	[PPDAMT] [numeric] (13,2) NULL,
	[PPDETD] [datetime] NULL,
	[PPDETT] [datetime] NULL,
	[PPDRPT] [varchar] (3) COLLATE Thai_CI_AS NULL,
	[PPDETU] [varchar] (10) COLLATE Thai_CI_AS NULL,
	[PPDMTD] [datetime] NULL,
	[PPDMTT] [datetime] NULL,
	[PPDMTU] [varchar] (10) COLLATE Thai_CI_AS NULL,
	[PPDAM1] [numeric] (13,2) NULL,
	[PPDAM2] [numeric] (13,2) NULL,
	[PPDRTE] [numeric] (6,4) NULL,
	[PPDFG1] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[PPDFG2] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[PPDTXC] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[PPDTAX] [numeric] (11,2) NULL,
	[PPDAJT] [varchar] (1) COLLATE Thai_CI_AS NULL,
	[PPDAJC] [varchar] (2) COLLATE Thai_CI_AS NULL,
	[PPDAJA] [numeric] (11,2) NULL,

) ON [PRIMARY]
GO

INSERT INTO [dbo].[TempHPTPPD00] ([PPDACT],[PPDSTS],[PPDSBN],[PPDRCN],[PPDITM],[PPDRPT],[PPDAMT],[PPDRTE],[PPDTAX],[PPDTXC],[PPDAJT],[PPDAJC],[PPDAJA],[PPDFG1],[PPDFG2],[PPDAM1],[PPDAM2],[PPDETD],[PPDETU],[PPDMTD],[PPDMTU]) SELECT [PPDACT],[PPDSTS],[PPDSBN],[PPDRCN],[PPDITM],[PPDRPT],[PPDAMT],[PPDRTE],[PPDTAX],[PPDTXC],[PPDAJT],[PPDAJC],[PPDAJA],[PPDFG1],[PPDFG2],[PPDAM1],[PPDAM2],[PPDETD],[PPDETU],[PPDMTD],[PPDMTU] FROM [dbo].[HPTPPD00]
DROP TABLE [dbo].[HPTPPD00]
GO
EXEC sp_rename N'[dbo].[TempHPTPPD00]',N'HPTPPD00', 'OBJECT'
GO


--SELECT * FROM FN_CALCUGOODS (14900,'8100415')
--SELECT * FROM FN_CALCUGOODS (14816.82,'8100593')
CREATE FUNCTION [DBO].[FN_CALCUGOODS]
(	
	@GOODS DECIMAL (18,2),
	@CONTRACT VARCHAR (8)
)
RETURNS TABLE 
AS
RETURN 
	SELECT @GOODS AS GOODS
	      ,(@GOODS * (SELECT CQMVA1  
					  FROM CQDM008 
					  WHERE CQMABR='PREFERENCE' 
					    AND CQMGRP='PREFERENCE'
					    AND CQMCDE='VAT_RATE')
			)/100 AS VAT
	      ,((
	       @GOODS * (SELECT TOP 1 CASE WHEN CONPER <= 36 THEN 
								(SELECT CQMVA1  
								 FROM CQDM008 
								 WHERE CQMABR='PREFERENCE' 
								   AND CQMGRP='PREFERENCE'
								   AND CQMCDE='WHT_RATE')
						   ELSE
								0
						   END
					 FROM HPMCON00 WHERE CONRUN=@CONTRACT) 	
	        )/100) AS WHT
	       ,(@GOODS + (
	       (
			@GOODS * (SELECT CQMVA1 FROM CQDM008 WHERE CQMABR='PREFERENCE' AND CQMGRP='PREFERENCE' AND CQMCDE='VAT_RATE')
		   )/100
		   ) - (
		   (
			@GOODS * (SELECT TOP 1 
			                  CASE WHEN CONPER <= 36 THEN 
									(SELECT CQMVA1  
									 FROM CQDM008 
									 WHERE CQMABR='PREFERENCE' 
									   AND CQMGRP='PREFERENCE'
									   AND CQMCDE='WHT_RATE')
							   ELSE
									0
							   END
					   FROM HPMCON00 WHERE CONRUN=@CONTRACT) 	
	        )/100
	        )
	        ) AS NET
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[FN_LS_PENALTY_10](
	@PRM_BRN_I varchar(2),
	@PRM_PDM_I varchar(1),
	@PRM_PDT_I varchar(2),
	@PRM_RUN_I varchar(7),
	@PRM_EFD_I datetime,
	@PRM_MOD_I varchar(1)
)
RETURNS @Table_Var TABLE(
	SLGRBR varchar(2),
	SLGCPD varchar(1),
	SLGCPT varchar(2),
	SLGCRU varchar(7),
	SLGFRI int,
	SLGDTE datetime,
	SLGRPT varchar(3),
	SLGFDT datetime,
	SLGTDT datetime,
	SLGPRT numeric(11,2),
	SLGBAM numeric(11,2),
	SLGTRM numeric(11,0),
	MLGAMT numeric(11,2)
)
AS
BEGIN
	declare @SLGRBR		varchar(2);
	declare @SLGCPD		varchar(1);
	declare @SLGCPT		varchar(2);
	declare @SLGCRU		varchar(7);
	declare @SLGFRI		integer;
	declare @SLGDTE		datetime;
	declare @SLGRPT		varchar(3);
	declare @SLGFDT		datetime;
	declare @SLGTDT		datetime;
	declare @SLGPRT		numeric(11,2);
	declare @SLGBAM		numeric(11,2);
	declare @SLGTRM		numeric(11,0);
	declare @MLGAMT		numeric(11,2);

	declare @GRED_PERIOD		integer;
	declare @GRED_PERIOD_DATE	datetime;
	declare @SLGTRM2			numeric(11,0);
	declare @INSDUE				datetime;

	Set		@GRED_PERIOD = 7;
--  Set @GRED_PERIOD_DATE = dateadd(day, (@GRED_PERIOD * -1), @PRM_EFD_I);
	Set		@SLGPRT = 16.37;

	DECLARE		CUR_HPTINS CURSOR FOR 
	SELECT	INSCBR,INSCPM,INSCPT,INSCRN,INSITM,INSDUE,INSPLD,
			((INSIAM+INSVAM)-(INSIRA+INSVRA))
    FROM	HPTINS00
    WHERE	INSCBR = @PRM_BRN_I
      AND	INSCPM = @PRM_PDM_I
      AND	INSCPT = @PRM_PDT_I
      AND	INSCRN = @PRM_RUN_I
      AND	INSITM > 0
      AND	INSDUE <= @PRM_EFD_I
      AND	((INSF12 <> '0') OR (INSF22 <> '0'))
      AND	((INSPLD is NULL ) OR (INSPLD < @PRM_EFD_I))
    ORDER BY INSITM;
  
	open	CUR_HPTINS;
	fetch next from CUR_HPTINS
	into @SLGRBR,@SLGCPD,@SLGCPT,@SLGCRU,@SLGFRI,@INSDUE,@SLGFDT,@SLGBAM;

	while (@@fetch_status = 0)
	begin		
		Set @SLGRPT = '071';
		Set @SLGFDT = coalesce(@SLGFDT, @INSDUE);
		Set @SLGTDT = @PRM_EFD_I - 1;
		Set @SLGTRM = datediff(day,@SLGFDT,@SLGTDT);        
		--Set @MLGAMT = ((@SLGBAM * @SLGPRT * @SLGTRM)/ 36500);
		Set @MLGAMT = ceiling( ((@SLGBAM * @SLGPRT * @SLGTRM)/ 36500) );


		Set @SLGDTE = @PRM_EFD_I;
		Set @SLGTRM2 = datediff(day,@INSDUE,@SLGTDT);    
		if (@SLGTRM2 > @GRED_PERIOD)
		begin
			INSERT INTO @Table_Var 
			VALUES(@SLGRBR,@SLGCPD,@SLGCPT,@SLGCRU,@SLGFRI,@SLGDTE,@SLGRPT,
				@SLGFDT,@SLGTDT,@SLGPRT,@SLGBAM,@SLGTRM,@MLGAMT);
		end;

		fetch next from CUR_HPTINS
		into @SLGRBR,@SLGCPD,@SLGCPT,@SLGCRU,@SLGFRI,@INSDUE,@SLGFDT,@SLGBAM;
	end;
	close CUR_HPTINS;
	deallocate CUR_HPTINS;

	RETURN 
END
GO
--select * from fn_GetChqPayment('8100497','2012-03-03') 
--select * from fn_GetChqPayment ('8100497',DEFAULT)
CREATE FUNCTION [dbo].[fn_GetChqPayment] ( @CSN varchar(15),@DT datetime = null )
RETURNS @ChqPayment  TABLE
   (
   CQSCSN varchar(15),
   CQMDTE datetime,
   --CQMCNO varchar(7),   
   CQSADV decimal(18,2),
   INSCRN varchar(15),
   INSDUE datetime,
   INSITM int,
   INSIAM decimal(18,2),
   INSVAM decimal(18,2),
   INSIRA decimal(18,2),
   WHT decimal(18,2),
   INSNET decimal(18,2),
   LSTPAY decimal(18,2),   
   ACCUM decimal(18,2),
   OUTSTD decimal(18,2),      
   NETPAY decimal (18,2),
   PAYSTS int
   )
AS
BEGIN
-- version 1.0
declare   @CQSCSN varchar(15)
declare   @CQMDTE datetime
declare   @CQMCNO varchar(7)
declare   @CQSADV decimal(18,2)
declare   @INSCRN varchar(15)
declare   @INSDUE datetime
declare   @INSITM int
declare   @INSIAM decimal(18,2)
declare   @INSVAM decimal(18,2)
declare   @INSIRA decimal(18,2)
declare   @WHT decimal(18,2)
declare   @INSNET decimal(18,2)
declare   @LSTPAY decimal(18,2)
declare   @ACCUM decimal(18,2)
declare   @OUTSTD decimal(18,2)
declare   @NETPAY decimal (18,2)
declare	  @STAT int


--declare @CSN as varchar(15)
--decclare @DT as datetime
--set @CSN='8100053'--'8100053'
declare @CurrDate as datetime

if @DT is null
	set @CurrDate ={fn now()}
else 
	set @CurrDate =@DT

declare  c1 cursor for 
select 
rcv.*,ins.*,0 as ACCUM,0 as OUTSTD,0 as ADVDIFF
--###################################################
from
(   --# RECEIVE
	select aa.CQSCSN,bb.CQMDTE--,aa.CQSADV--,aa.CQMCNO
	,SUM(aa.CQSADV) as CQSADV
	from 
	(
		select 
			b.CQMDNO, b.CQMCNO,b.CQMCFA,a.CQSCSN,CQMDTE,a.CQSAMT,a.CQSVAT
			,a.CQSWHT,a.CQSNET,a.CQSRCT,a.CQSADF,a.CQSCFA,a.CQSWFA,a.CQSPFA
			,case 
			 when a.CQSWFA='Y' then 
				((a.CQSAMT+a.CQSVAT) - a.CQSWHT )				
			  else 
				a.CQSAMT+a.CQSVAT 
			 end
			 as CQSADV
		from CQDS003  a
		left join CQDM007 b on a.CQSDNO=b.CQMDNO
		where 
		a.CQSRCT='N'								-- 'O' = Other , 'N' = Normal
		--and b.CQMSTS='A'
		and b.CQMACT='A'
		and left(b.CQMDNO,1)<>'#' and left(b.CQMDNO,1)<>'*'
		and (b.CQMCFA<>'P'  or  b.CQMCFA is null)	-- 'P' = Chq. Pass status
		and (
				(year(b.CQMDTE)< YEAR(@CurrDate) )  
				or ((year(b.CQMDTE)= YEAR(@CurrDate) ) and (month(b.CQMDTE)<= month(@CurrDate) ))
			)				
		and a.CQSACT='A' and a.CQSCSN=@CSN
		and not exists (
			select CQMNO2 from CQDM011 c where CQMNO2=b.CQMCNO and c.CQMSTS='P'  --in ('P'=pass,'N'=payin,'A'=deposit,'Y'=return)   -- master chq. status pass
			and  (
				day(@CurrDate)>day(c.CQMSTD) and
				 YEAR(@CurrDate)=YEAR(c.CQMSTD) and MONTH(@CurrDate)=MONTH(c.CQMSTD)
				 )				  		
		)
		
	) aa
	left join (
			 select b.CQMDNO,b.CQMDTE,a.CQSCSN from CQDS003 a 
			 left join CQDM007 b on a.CQSDNO=b.CQMDNO
			  where  a.CQSCSN=@CSN
			  and left(b.CQMDNO,1)<>'#' and left(b.CQMDNO,1)<>'*'
				and  (
						(year(b.CQMDTE)< YEAR(@CurrDate) )  or 
						((year(b.CQMDTE)= YEAR(@CurrDate) ) and (month(b.CQMDTE)<= month(@CurrDate) ))
					)
										
			 group by a.CQSCSN,b.CQMDTE,b.CQMDNO
		) bb on aa.CQSCSN=bb.CQSCSN and aa.CQMDNO=bb.CQMDNO
	group by aa.CQSCSN,bb.CQMDTE--,aa.CQSADV--,aa.CQMCNO
) rcv

--###################################################
right join
(	--## INSTALLMENT
	select 
		a.INSCRN,a.INSDUE,a.INSITM,a.INSIAM,a.INSVAM,a.INSIRA,
		case 
		 when b.CONPER<=36 then ((5*a.INSIAM )/100)  --((5*(a.INSIAM + a.INSVAM))/100) 
		 else 0 
		 end WHT
		,
		case 
		 when b.CONPER<=36 then (a.INSIAM + a.INSVAM) - (5*(a.INSIAM))/100  
		else (a.INSIAM + a.INSVAM)
		end
		as INSNET
	,isnull((
		select 
			case 
			when c.CONPER<=36 then (SUM((b.INSIAM+b.INSVAM) - (5*(b.INSIAM))/100 ))
			else (SUM(b.INSIAM+b.INSVAM))		
			end
			as xx
		from HPTINS00 b 
		left join HPMCON00 c on b.INSCRN=c.CONRUN
		where b.INSCRN=@CSN 
		--and b.INSDUE<MIN(a.INSDUE)
		and  
		 (
			(year(b.INSDUE)< YEAR(MIN(a.INSDUE)) )  
			or ((year(b.INSDUE)= YEAR(MIN(a.INSDUE)) ) and (month(b.INSDUE)< month(MIN(a.INSDUE)) ))
			)		
		
		group by b.INSCRN,c.CONPER
	),0)as LSTPAY 
	 
		
	from HPTINS00 a
	left join HPMCON00 b on a.INSCRN=b.CONRUN
	where a.INSCRN=@CSN and a.INSF11=3		
	--and a.INSDUE<={fn NOW()}
	 and
	 (
		(year(a.INSDUE)< YEAR(@CurrDate) )  or 
		((year(a.INSDUE)= YEAR(@CurrDate) ) and (month(a.INSDUE)<= month(@CurrDate) ))
		)
	group by a.INSCRN,a.INSDUE,a.INSIAM,a.INSVAM,a.INSITM,a.INSVAM,a.INSVRA,a.INSIRA,b.CONPER
	--order by INSDUE
) ins on rcv.CQSCSN=ins.INSCRN and year(rcv.CQMDTE)=YEAR(ins.INSDUE) and MONTH(rcv.CQMDTE)=MONTH(ins.INSDUE)




declare @RAmount decimal(18,2)

	select @RAmount=
		isnull(
			case 
			when a.CQSWFA='Y' then 
				sum((a.CQSAMT+a.CQSVAT) - a.CQSWHT )		
			else 
				sum(a.CQSAMT+a.CQSVAT )
		 end
		 ,0)
	from CQDS003  a
	left join CQDM007 b on a.CQSDNO=b.CQMDNO
	where 
	--b.CQMSTS='A'
	b.CQMACT='A'	
	and a.CQSRCT='N'					   -- 'O' = Other , 'N' = Normal
	--and left(b.CQMDNO,1)<>'#' and left(b.CQMDNO,1)<>'*'
	and (b.CQMCFA<>'P'  or  b.CQMCFA is null)							   -- 'P' = Chq. Pass status
	and a.CQSACT='A'
	--and b.CQMDTE<=ins.INSDUE
	and  
	 (
		(year(b.CQMDTE)< YEAR(@CurrDate)  ) or  
		 ((year(b.CQMDTE)= YEAR(@CurrDate) ) and (month(b.CQMDTE)<= month(@CurrDate) ))
		)
		
		and not exists (
			select CQMNO2 from CQDM011 c where CQMNO2=b.CQMCNO and c.CQMSTS='P'   -- master chq. status pass
			and  (
				day(@CurrDate)>day(c.CQMSTD) and
				 YEAR(@CurrDate)=YEAR(c.CQMSTD) and MONTH(@CurrDate)=MONTH(c.CQMSTD)
				 )				  		
		)
							

	and a.CQSCSN=@CSN	
	group by CQSWFA

--##################

declare @ACM decimal(18,2)
declare @OUT decimal (18,2)
declare @count int
declare @RAmount2 decimal(18,2)
set @ACM=0
set @count=0
set @OUT=0.00
set @RAmount2=@RAmount
--##################

--select * from fn_GetChqPayment('8100001',DEFAULT)
open c1
fetch  next from c1 into @CQSCSN,@CQMDTE,@CQSADV,@INSCRN,@INSDUE,@INSITM,@INSIAM,@INSVAM,@INSIRA,@WHT,@INSNET,@LSTPAY,@ACCUM,@OUTSTD,@NETPAY
	while @@fetch_status=0 
	begin

		set @ACM= @ACM+@INSNET

		if @count>0  begin
			set @RAmount=isnull(@RAmount,0) - @INSNET	
			set @OUTSTD=isnull(@RAmount,0)
		end
		
		set @NETPAY=@INSNET
		
		if @OUTSTD<0
		set @NETPAY=abs(@OUTSTD)+@INSNET
		
		if @OUTSTD>0
		set @NETPAY=@INSNET-abs(@OUTSTD)
		
		if @NETPAY<0  set @NETPAY=0.00  -- 
		
		set @ACCUM=@ACM
		set @count=@count+1
		
		if @ACM<=@RAmount2
			set @STAT=0 else set @STAT=1
				
		insert into @ChqPayment	
		select 
		 @CQSCSN as CQSCSN 	,@CQMDTE as CQMDTE 	,@CQSADV as CQSADV 		,@INSCRN as INSCRN 		,@INSDUE as INSDUE
		,@INSITM as INSITM		,@INSIAM as INSIAM 		,@INSVAM as INSVAM 		,@INSIRA as INSIRA 		,@WHT as WHT
		,@INSNET as INSNET 		,@LSTPAY as LSTPAY		
		,@ACCUM as ACCUM,@OUTSTD as OUTSTD,@NETPAY as NETPAY,@STAT as STAT
		fetch  next from c1 into @CQSCSN,@CQMDTE,@CQSADV,@INSCRN,@INSDUE,@INSITM,@INSIAM,@INSVAM,@INSIRA,@WHT,@INSNET,@LSTPAY,@ACCUM,@OUTSTD,@NETPAY
	end
close c1
deallocate c1			



return
end
GO
ALTER PROCEDURE [dbo].[sp_Mail] @param1  varchar(15) ,@param2 varchar(80) ,@paramDate1 varchar(30) ,@paramDate2 varchar(30) 

AS
BEGIN
	declare @CCC int
	declare @CONTRACT VARCHAR (8)
	DECLARE @DateNaVoy DATETIME
	declare @DNO VARCHAR (15)
	
	UPDATE CQDT001 SET CQTCON=NULL,CQTREM='W' WHERE CQTSTS='W'
	
	IF OBJECT_ID( 'TEMPDB..#mail' ) IS NOT NULL DROP TABLE #mail
	CREATE TABLE #mail (
		DateNaVoy DATETIME,
		Con varchar (8),
		CountData int
	)
	DECLARE db_cursor1 CURSOR FOR 
	SELECT CONVERT(DATETIME,CONVERT(VARCHAR,A.CQTETD,101),101) AS DATENAVOY
	FROM LLSPDTA.dbo.CQDT001 A
	LEFT JOIN LLSPDTA.dbo.CQDM007 B ON A.CQTDNO=B.CQMDNO
	LEFT JOIN LLSPDTA.dbo.CQDS003 C ON B.CQMDNO=C.CQSDNO
	WHERE A.CQTSTS='W'
	group by CONVERT(DATETIME,CONVERT(VARCHAR,A.CQTETD,101),101)
	OPEN db_cursor1  
	FETCH NEXT FROM db_cursor1 INTO @DateNaVoy	
	WHILE @@FETCH_STATUS = 0  
	BEGIN  		
		DECLARE db_cursor2 CURSOR FOR 
		SELECT F.CQSCSN
		FROM LLSPDTA.dbo.CQDT001 D
		LEFT JOIN LLSPDTA.dbo.CQDM007 E ON D.CQTDNO=E.CQMDNO
		LEFT JOIN LLSPDTA.dbo.CQDS003 F ON E.CQMDNO=F.CQSDNO
		WHERE D.CQTSTS='W'
		group by F.CQSCSN
		OPEN db_cursor2  
		FETCH NEXT FROM db_cursor2 INTO @CONTRACT	
		WHILE @@FETCH_STATUS = 0  
		BEGIN  
			SELECT @CCC=COUNT(H.CQMDNO)
			FROM LLSPDTA.dbo.CQDT001 G
			LEFT JOIN LLSPDTA.dbo.CQDM007 H ON G.CQTDNO=H.CQMDNO
			LEFT JOIN LLSPDTA.dbo.CQDS003 I ON H.CQMDNO=I.CQSDNO
			where DAY(G.CQTETD)=DAY(@DateNaVoy) 
			  and month(G.CQTETD)=month(@DateNaVoy) 
			  and year(G.CQTETD)=year(@DateNaVoy) 
			  and I.CQSCSN=@CONTRACT 
			  and G.CQTSTS='W'
			INSERT INTO #mail VALUES(@DateNaVoy,@CONTRACT,@CCC)
			
		FETCH NEXT FROM db_cursor2 INTO @CONTRACT 
		END 
		CLOSE db_cursor2  
		DEALLOCATE db_cursor2 
	FETCH NEXT FROM db_cursor1 INTO @DateNaVoy  
	END	
	CLOSE db_cursor1  
	DEALLOCATE db_cursor1
	
	--SELECT * FROM #MAIL
	
	DECLARE db_cursor3 CURSOR FOR 
	SELECT DateNaVoy,con FROM #mail order by countdata,CAST(CON AS INTEGER) desc
	OPEN db_cursor3  
	FETCH NEXT FROM db_cursor3 INTO @DateNaVoy,@CONTRACT
	WHILE @@FETCH_STATUS = 0  
	BEGIN
		DECLARE db_cursor4 CURSOR FOR
		SELECT H.CQMDNO
		FROM LLSPDTA.dbo.CQDT001 G
		LEFT JOIN LLSPDTA.dbo.CQDM007 H ON G.CQTDNO=H.CQMDNO
		LEFT JOIN LLSPDTA.dbo.CQDS003 I ON H.CQMDNO=I.CQSDNO
		where DAY(G.CQTETD)=DAY(@DateNaVoy) 
		 and month(G.CQTETD)=month(@DateNaVoy) 
		 and year(G.CQTETD)=year(@DateNaVoy) 
		 and CQSCSN=@CONTRACT 
		 and G.CQTSTS='W'  
		OPEN db_cursor4  
		FETCH NEXT FROM db_cursor4 INTO @DNO
		WHILE @@FETCH_STATUS = 0  
		  BEGIN
			 
			update LLSPDTA.dbo.CQDT001 set CQTCON=@CONTRACT Where CQTDNO=@DNO AND (CQTCON='' OR CQTCON IS NULL)
			
			FETCH NEXT FROM db_cursor4 INTO @DNO
		  END	
		CLOSE db_cursor4  
		DEALLOCATE db_cursor4
		FETCH NEXT FROM db_cursor3 INTO @DateNaVoy,@CONTRACT 
	END	
	CLOSE db_cursor3  
	DEALLOCATE db_cursor3
	
	select c.EMAIL
	     ,A.CQTSTS
		 ,A.CQTSTS AS FT
	     ,A.CQTRNO
	     ,A.CQTREM
	     ,convert(datetime,CONVERT(DATE,A.CQTETD))as DRC
	     ,(d.TH_FIRST_NAME + ' ' + d.TH_LAST_NAME)as FullName
	     ,b.CONDEA
	     ,A.CQTCON	  
	     ,COUNT(a.cqtcon)as item
	     ,SUM(e.cqmamt) as totalamount
	from LLSPDTA.dbo.CQDT001 A
	left join LLSPDTA.dbo.HPMCON00 b on A.CQTCON=b.CONRUN
	left join HTLC_APP.dbo.HLTC_C_ADDRESS c on b.CONCUS=c.CENTER_CODE
	left join HTLC_APP.dbo.HLTC_C_CENTER d on b.CONCUS=d.CENTER_CODE
	left join LLSPDTA.dbo.CQDM007 e on A.CQTDNO=e.CQMDNO
	--where CQTSTS='W'  
	where 
	(
	(rtrim(ltrim(@param1))='CQTCON') and (a.CQTCON  like '%'+@param2+'%' )and CQTDRC between @paramDate1 and @paramDate2 
	)
	or 
	(
	((rtrim(ltrim(@param1))='FULLNAME') and 
	(d.TH_FIRST_NAME + ' ' + d.TH_LAST_NAME) like '%'+@param2+'%' )and CQTDRC between @paramDate1 and @paramDate2
	)
	or 
	(
	((rtrim(ltrim(@param1))='CONDEA') and (b.CONDEA  like '%'+@param2+'%' )and CQTDRC between @paramDate1 and @paramDate2
	)
	)
	or 
	(
	((rtrim(ltrim(@param1))='Email') and (c .email  like '%'+@param2+'%' )and CQTDRC between @paramDate1 and @paramDate2
	)
	)
	or 
	(
	((rtrim(ltrim(@param1))='')and CQTDRC between @paramDate1 and @paramDate2
	)
	)
	-- or 
	-- (
	-- ((rtrim(ltrim(@param1))='')
	-- )
	 --)
--exec sp_mail '','8100053','1/1/2000','4/4/2012'
	
	group by c.EMAIL,(d.TH_FIRST_NAME + ' ' + d.TH_LAST_NAME),b.CONDEA,A.CQTCON,CONVERT(DATE,A.CQTETD),A.CQTSTS,A.CQTRNO,A.CQTREM
	order by cqtcon 

END
GO
ALTER PROCEDURE [dbo].[SP_PROCESSRESULT]
				@CHEQUEDATE			DATETIME,
				@CHEQUEAMOUNT		NUMERIC (18,2),
				@CHEQUENO			VARCHAR (10),
				@CHEQUEBNKCODE		VARCHAR (3),
				@CHEQUEBNKBRANCH	VARCHAR (4),
				@CHEQUESTATUS		CHAR (1),
				@CHEQUECTYPE		CHAR (1),
				@RESONCODE			CHAR (2),
				@CONT				VARCHAR (7),
				@COLNO				VARCHAR (14)			
AS
BEGIN
	DECLARE @ACT CHAR (1)
	DECLARE @STS CHAR (1)
	DECLARE @CTY CHAR (1)
	DECLARE @CST CHAR (2)
	DECLARE @ETY CHAR (3)
	DECLARE @RMK VARCHAR (20)
	DECLARE @RFN VARCHAR (15)
	DECLARE @CNO VARCHAR (14)
	
	--IF OBJECT_ID( 'TEMPDB..#RESULT' ) IS NOT NULL DROP TABLE #RESULT
	
	SELECT @ACT		  = CQMACT
		  ,@STS		  = CQMSTS
		  ,@CTY		  = CQMCTY
		  ,@RFN		  = CQMRFN
		  ,@CNO		  = CQMCNO
	FROM CQDM011
    WHERE CQMDAT=@CHEQUEDATE
    AND   CQMAMT=@CHEQUEAMOUNT
    AND   CQMNO2=@CHEQUENO
    AND   CQMBNK=@CHEQUEBNKCODE
    AND   CQMBBR=@CHEQUEBNKBRANCH
    AND	  CQMCNO=@COLNO
        
    IF @ACT = '' OR @ACT IS NULL
		BEGIN
			SET @ETY = 'ECF'
			SET @RMK = 'CHEQUE NOT FOUND'
		END
    ELSE
		BEGIN
			IF  @CHEQUESTATUS = 'N' AND @ACT = 'A' AND @STS = 'A'
			OR  @CHEQUESTATUS = 'P' AND @ACT = 'A' AND @STS = 'N'
			OR  @CHEQUESTATUS = 'P' AND @ACT = 'A' AND @STS = 'R'
			OR  @CHEQUESTATUS = 'Y' AND @ACT = 'A' AND @STS = 'N'
									AND @CHEQUECTYPE = @CTY
									AND @RESONCODE <> '99'
				BEGIN
					SET @ETY = 'E  '
					SET @RMK = ''
					IF @CONT = '' SET @CONT = (SELECT TOP 1 CQSDLC FROM CQDS001 WHERE CQSCNO=@CNO)
				END
			ELSE
				BEGIN
					SET @ETY = 'EFI'
					SET @RMK = 'FORMAT INVALID'					
				END			
		END
	SET @CST = ISNULL(@ACT,'') + ISNULL(@STS,'') 
	SELECT @ETY AS ETY,@RMK AS RMK,@CST AS CST,@RFN AS RFN,@CONT AS CON
END
GO
ALTER PROCEDURE [dbo].[SP_UPDATERECEIVE]
		@CHQ_NUM VARCHAR (10),
		@CHQ_DAT DATETIME,
		@CHQ_AMT NUMERIC (18,2),
		@CHQ_CTY CHAR (1),
		@CHQ_ACC VARCHAR (12),
		@CHQ_BNK CHAR (3),
		@CHQ_BBR CHAR (4),
		@REC_DNO VARCHAR (15),
		@CONTRACT VARCHAR (10),
		@BRN VARCHAR (3),
		@PDM VARCHAR (4),
		@PDT VARCHAR (3),
		@ETW VARCHAR (60),
		@ETU VARCHAR (20),
		@GOODS DECIMAL (18,2),
		@VAT DECIMAL (18,2),
		@WT DECIMAL (18,2),
		@EXPECDATE datetime
AS
BEGIN
	DECLARE @CCC INT
	SELECT @CCC=COUNT(*) 
	FROM CQDM007 A
	LEFT JOIN CQDS003 B ON A.CQMDNO=B.CQSDNO
	WHERE A.CQMDNO=@REC_DNO
	  AND A.CQMBBR=@CHQ_BBR
	  AND A.CQMBNK=@CHQ_BNK
	  AND A.CQMCNO=@CHQ_NUM
	  AND A.CQMDTE=@CHQ_DAT
	  AND A.CQMAMT=@CHQ_AMT
	  AND B.CQSCSN=@CONTRACT
	  
	IF @CCC > 0
		BEGIN
			UPDATE CQDM007 SET 
				CQMACC=@CHQ_ACC,
				CQMCTY=@CHQ_CTY,
				CQMDUE=@EXPECDATE,
				CQMDFG='R'
			WHERE CQMDNO=@REC_DNO	
		END
	ELSE
		BEGIN
			INSERT INTO CQDM007 
			   ([CQMACT]
			   ,[CQMSTS]
			   ,[CQMDFG]
			   ,[CQMBRN]
			   ,[CQMPDM]
			   ,[CQMPDT]
			   ,[CQMDNO]
			   ,[CQMACC]
			   ,[CQMBNK]
			   ,[CQMBBR]
			   ,[CQMCNO]
			   ,[CQMCTY]
			   ,[CQMDTE]
			   ,[CQMDUE]
			   ,[CQMITM]
			   ,[CQMAMT]
			   ,[CQMCSN]
			   ,[CQMETD]
			   ,[CQMETW]
			   ,[CQMETU])
			VALUES 
			   ('A'
			   ,'D'
			   ,'R'
			   ,@BRN
			   ,@PDM
			   ,@PDT
			   ,@REC_DNO
			   ,@CHQ_ACC
			   ,@CHQ_BNK
			   ,@CHQ_BBR
			   ,@CHQ_NUM
			   ,@CHQ_CTY
			   ,@CHQ_DAT
			   ,@EXPECDATE
			   ,1
			   ,@CHQ_AMT
			   ,@CONTRACT
			   ,{FN NOW()}
			   ,@ETW
			   ,@ETU)
			
			INSERT INTO CQDS003
			   ([CQSACT]
			   ,[CQSSTS]
			   ,[CQSBRN]
			   ,[CQSPDM]
			   ,[CQSPDT]
			   ,[CQSDNO]
			   ,[CQSSEQ]
			   ,[CQSRCT]
			   ,[CQSAMT]
			   ,[CQSCSN]
			   ,[CQSVAT]
			   ,[CQSWHT]
			   ,[CQSNET]
			   ,[CQSADF]
			   ,[CQSCFA]
			   ,[CQSPFA]
			   ,[CQSWFA]           
			   ,[CQSETD]
			   ,[CQSETW]
			   ,[CQSETU])
	           
			VALUES
			   ('A'
			   ,'A'
			   ,@BRN
			   ,@PDM
			   ,@PDT
			   ,@REC_DNO
			   ,1
			   ,'N'
			   ,@GOODS
			   ,@CONTRACT
			   ,@VAT
			   ,@WT
			   ,@CHQ_AMT
			   ,0
			   ,1
			   ,'Y'
			   ,'Y'
			   ,{FN NOW()}
			   ,@ETW
			   ,@ETU)
		END	
END
GO
--EXEC SP_UPDATEMASTERCHEQUE 'RC201201230019'

CREATE PROCEDURE [dbo].[SP_UPDATEMASTERCHEQUE]
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
	EXEC SP_RCBATCHIU @DOCNO
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_LS_UPD_HPMRCV00](
@PRM_RCVBRN varchar(2),
@PRM_RCVPDM varchar(1),
@PRM_RCVPDT varchar(2),
@PRM_RCVDOC varchar(12),
@PRM_ASDATE datetime 
)
AS
BEGIN
	declare @RCVACT		varchar(1)
	declare @RCVPST		varchar(1)
	declare @RCVPSD		datetime
	declare @RCVPTS		varchar(1)
	declare @RCVUPS		varchar(1)
	declare @RCVPTD		datetime
	declare @RCVBRN		varchar(2)
	declare @RCVPDM		varchar(1)
	declare @RCVPDT		varchar(2)
	declare @RCVDOC		varchar(12)
	declare @RCVITM		varchar(2)
	declare @RCVCBR		varchar(2)
	declare @RCVCRN		varchar(7)
	declare @RCVRTY		varchar(3)
	declare @RCVAMT		numeric(11, 2)
	declare @RCVICA		numeric(11, 2)
	declare @RCVRFR		int
	declare @RCVRTO		int
	declare @RCVDTE		datetime
	declare @RCVRBY		varchar(1)
	declare @RCVBCD		varchar(2)
	declare @RCVBBN		varchar(3)
	declare @RCVCQN		varchar(15)
	declare @RCVCQD		datetime
	declare @RCVGRC		varchar(7)
	declare @RCVPAT		int
	declare @RCVF04		varchar(1)
	declare @RCVF01		varchar(1)

	declare @ACDSTS		varchar(1)
	declare @ACDFL1		varchar(1)
	declare @ACDFL2		varchar(1)
	declare @ACDFL3		varchar(1)
	declare @ACDNET		varchar(1)

	declare @RstCount	int
	declare @UpdFlag	varchar(1)
	declare @BBFAMT		numeric(11, 2)

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare CUR_HPMRCV cursor for 
	SELECT RCVACT,RCVPST,RCVPSD,RCVPTS,RCVUPS,RCVPTD,
		RCVBRN,RCVPDM,RCVPDT,RCVDOC,RCVITM,RCVCBR,
		RCVCRN,RCVRTY,RCVAMT,RCVICA,RCVRFR,RCVRTO,
		RCVDTE,RCVRBY,RCVBCD,RCVBBN,RCVCQN,RCVCQD,
		RCVGRC,RCVPAT,ACDSTS,ACDFL1,ACDFL2,ACDFL3,
		ACDNET,RCVF04,RCVF01
	FROM [dbo].[HPMRCV00] R
	left join [dbo].[hpmacd00] A
	 ON(R.RCVPDM = A.ACDAPD)
	and(R.RCVPDT = A.ACDAPT) 
	and(R.RCVRTY = A.ACDACD) 
	WHERE R.RCVBRN = @PRM_RCVBRN
	AND R.RCVPDM = @PRM_RCVPDM
	AND R.RCVPDT = @PRM_RCVPDT
	AND R.RCVDOC = @PRM_RCVDOC
	AND R.RCVACT = 'A'
	AND R.RCVUPS <> '0'
	ORDER BY 
	R.RCVDOC, R.RCVITM, R.RCVCBR, R.RCVCRN 
	;
    -- Insert statements for procedure here
	-- SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>
	open CUR_HPMRCV;
	fetch next from CUR_HPMRCV
	into @RCVACT,@RCVPST,@RCVPSD,@RCVPTS,@RCVUPS,@RCVPTD,
		 @RCVBRN,@RCVPDM,@RCVPDT,@RCVDOC,@RCVITM,@RCVCBR,
	     @RCVCRN,@RCVRTY,@RCVAMT,@RCVICA,@RCVRFR,@RCVRTO,
		 @RCVDTE,@RCVRBY,@RCVBCD,@RCVBBN,@RCVCQN,@RCVCQD,
		 @RCVGRC,@RCVPAT,@ACDSTS,@ACDFL1,@ACDFL2,@ACDFL3,
		 @ACDNET,@RCVF04,@RCVF01
	; 
	while (@@fetch_status = 0)
	begin	
		set @UpdFlag = 'N'

		if (@ACDFL1 = '1')
		--1) Calulate Pennalty Option '6' => 'ADD' 
		--2) UPDATE HPTINS00		
		--3) UPDATE HPMLED00
		--4) UPDATE HPMCAD00 
		begin
			if @RCVF04 = '1' -->Normal
			begin
				if @RCVRTY in('012','013','092','094','072','074')
				begin
					exec	@RstCount = [dbo].[SP_LS_ADD_UPD_VIW_PENALTY]
						@RCVCBR,@RCVPDM,@RCVPDT,@RCVCRN,@RCVCQD,'6';
				end
				exec	@RstCount = [dbo].[SP_LS_UPD_INS_CAD_LED]
					@RCVACT,@RCVPST,@RCVPSD,@RCVPTS,@RCVUPS,@RCVPTD,
					@RCVBRN,@RCVPDM,@RCVPDT,@RCVDOC,@RCVITM,@RCVCBR,
					@RCVCRN,@RCVRTY,@RCVAMT,@RCVICA,@RCVRFR,@RCVRTO,
					@RCVDTE,@RCVRBY,@RCVBCD,@RCVBBN,@RCVCQN,@RCVCQD,
					@RCVGRC,@RCVPAT;
			end			
			else if @RCVF04 = '2' -->Cancel
			begin
				exec	@RstCount = [dbo].[SP_LS_UPD_INS_CAD_LED_CANCEL]
					@RCVACT,@RCVPST,@RCVPSD,@RCVPTS,@RCVUPS,@RCVPTD,
					@RCVBRN,@RCVPDM,@RCVPDT,@RCVDOC,@RCVITM,@RCVCBR,
					@RCVCRN,@RCVRTY,@RCVAMT,@RCVICA,@RCVRFR,@RCVRTO,
					@RCVDTE,@RCVRBY,@RCVBCD,@RCVBBN,@RCVCQN,@RCVCQD,
					@RCVGRC,@RCVPAT,@RCVF04;
			end
			if @RstCount = 0 set @UpdFlag = 'Y'
		end 

		else if (@ACDFL1 = '2')
		--2) UPDATE HPMCAD00
		--3) UPDATE HPMLED00 
		begin
			if @RCVF04 = '1' -->Normal
			begin
				exec	@RstCount = [dbo].[SP_LS_UPD_CAD_LED]
					@RCVACT,@RCVPST,@RCVPSD,@RCVPTS,@RCVUPS,@RCVPTD,
					@RCVBRN,@RCVPDM,@RCVPDT,@RCVDOC,@RCVITM,@RCVCBR,
					@RCVCRN,@RCVRTY,@RCVAMT,@RCVICA,@RCVRFR,@RCVRTO,
					@RCVDTE,@RCVRBY,@RCVBCD,@RCVBBN,@RCVCQN,@RCVCQD,
					@RCVGRC,@RCVPAT;
			end 
			else if @RCVF04 = '2' -->Cancel
			begin
				exec	@RstCount = [dbo].[SP_LS_UPD_CAD_LED_CANCEL]
					@RCVACT,@RCVPST,@RCVPSD,@RCVPTS,@RCVUPS,@RCVPTD,
					@RCVBRN,@RCVPDM,@RCVPDT,@RCVDOC,@RCVITM,@RCVCBR,
					@RCVCRN,@RCVRTY,@RCVAMT,@RCVICA,@RCVRFR,@RCVRTO,
					@RCVDTE,@RCVRBY,@RCVBCD,@RCVBBN,@RCVCQN,@RCVCQD,
					@RCVGRC,@RCVPAT,@RCVF04;
			end
			if @RstCount = 0 set @UpdFlag = 'Y'
		end 

		else if (@ACDFL1 = '3')
		--3) UPDATE HPMLED00 
		begin
			if @RCVF04 = '1' -->Normal
			begin
				EXEC	@RstCount = [dbo].[SP_LS_INS_OR_UPD_HPMLED] 
					'A',@RCVCBR,@RCVCBR,@RCVPDM,@RCVPDT,@RCVCRN,@RCVRFR,@RCVPTD,@RCVRTY,@RCVF04,
					@ACDNET,@RCVRBY,@RCVPAT,@RCVAMT,@RCVBCD,@RCVBBN,@RCVCQN,@RCVDOC,'','0';
			end
			else if @RCVF04 = '2' -->Cancel
			begin
				EXEC	@RstCount = [dbo].[SP_LS_INS_OR_UPD_HPMLED] 
					'A',@RCVCBR,@RCVCBR,@RCVPDM,@RCVPDT,@RCVCRN,@RCVRFR,@RCVPTD,@RCVRTY,@RCVF04,
					@ACDNET,@RCVRBY,@RCVPAT,@RCVAMT,@RCVBCD,@RCVBBN,@RCVCQN,@RCVDOC,'','0';
			end
			if @RstCount = 0 set @UpdFlag = 'Y'
		end

		-- UPDATE HPMRCV00
		-- set @UpdFlag = 'N'
		if (@UpdFlag = 'Y')
		begin
			UPDATE [dbo].[HPMRCV00]
			SET		RCVUPS = '0'
			,		RCVPTS = '0'
			WHERE RCVBRN = @RCVBRN
			AND RCVPDM = @RCVPDM
			AND RCVPDT = @RCVPDT
			AND RCVDOC = @RCVDOC
			AND RCVITM = @RCVITM
			AND RCVCBR = @RCVCBR
			AND RCVCRN = @RCVCRN
			AND RCVRTY = @RCVRTY
			AND RCVUPS <> '0';
		end

		-- UPDATE HPMRCV00
		if 	((@RCVF01 = '1')	OR (@RCVRTY in('012','013')))
		begin
			set		@BBFAMT = 0;
			SELECT	@BBFAMT = SUM(CADDBF + CADDDB - CADDCR) 
			  FROM	[dbo].[HPMCAD00]
			 WHERE	CADABR	= @RCVCBR
			   AND	CADAPD	= @RCVPDM
			   AND	CADAPT	= @RCVPDT
			   AND	CADARN	= @RCVCRN
			   AND	CADRPT	= '010';

			--if (@BBFAMT = 0)
			--begin
			--	EXEC	@RstCount = [dbo].[SP_LS_UPD_CONSTS]
			--			@RCVBRN,@RCVPDM,@RCVPDT,@RCVDOC,@RCVITM,@RCVCBR,@RCVCRN,@RCVRTY
			--end
		end
		--
		fetch next from CUR_HPMRCV
		into @RCVACT,@RCVPST,@RCVPSD,@RCVPTS,@RCVUPS,@RCVPTD,
			@RCVBRN,@RCVPDM,@RCVPDT,@RCVDOC,@RCVITM,@RCVCBR,
			@RCVCRN,@RCVRTY,@RCVAMT,@RCVICA,@RCVRFR,@RCVRTO,
			@RCVDTE,@RCVRBY,@RCVBCD,@RCVBBN,@RCVCQN,@RCVCQD,
			@RCVGRC,@RCVPAT,@ACDSTS,@ACDFL1,@ACDFL2,@ACDFL3,
			@ACDNET,@RCVF04,@RCVF01
		; 
	end
	close CUR_HPMRCV;
	deallocate CUR_HPMRCV;
END
GO
ALTER PROCEDURE [dbo].[SP_PAYDUE]
	@DT DATETIME,
	@CON varchar(7),
	@NET decimal(18,2)OUTPUT,
	@NETDUE decimal(18,2)OUTPUT,
	@PA decimal(18,2)OUTPUT,
	@GOODS decimal(18,2)OUTPUT,
    @VAT decimal(18,2)OUTPUT,
    @WHT decimal(18,2)OUTPUT

AS
BEGIN
	select @NETDUE=NET from FN_CalcuGoods((SELECT (CONINA-CONINV) FROM HPMCON00 WHERE CONRUN=@CON),@CON)


	IF OBJECT_ID( 'TEMPDB..#GOD' ) IS NOT NULL DROP TABLE #GOD

	select SUM(isnull(INSIAM,0))as GODINS,sum(ISNULL(INSIRA,0))as IRA,GODREC
	into #GOD
	from (
	select SUM(isnull(b.CQSAMT,0))as GODREC 
	from CQDM007 a
	left join CQDS003 b on a.CQMDNO=b.CQSDNO
	left join CQDM011 c on a.CQMDNO=c.CQMRFN
	/*where (
		  (
	      (
				(
				b.CQSCSN=@CON and YEAR(a.CQMDTE)<YEAR(@DT)
				or b.CQSCSN=@CON and YEAR(a.CQMDTE)=YEAR(@DT) and MONTH(a.CQMDTE)<=MONTH(@DT)
				)	       
	      and c.CQMSTS = 'P' 
	      and DAY(c.CQMSTD)= DAY({FN NOW()}) 
	      and month(c.CQMSTD)= month({FN NOW()}) 
	      and year(c.CQMSTD)= year({FN NOW()})
	      ) or
	      (
				(
				b.CQSCSN=@CON and YEAR(a.CQMDTE)<YEAR(@DT)
				or b.CQSCSN=@CON and YEAR(a.CQMDTE)=YEAR(@DT) and MONTH(a.CQMDTE)<=MONTH(@DT)
				)	       
	      and c.CQMSTS = 'N'
	      ) or
	      (
				(
				b.CQSCSN=@CON and YEAR(a.CQMDTE)<YEAR(@DT)
				or b.CQSCSN=@CON and YEAR(a.CQMDTE)=YEAR(@DT) and MONTH(a.CQMDTE)<=MONTH(@DT)
				)	       
	      and c.CQMSTS = 'Y'
	      ) or
	      (
				(
				b.CQSCSN=@CON and YEAR(a.CQMDTE)<YEAR(@DT)
				or b.CQSCSN=@CON and YEAR(a.CQMDTE)=YEAR(@DT) and MONTH(a.CQMDTE)<=MONTH(@DT)
				)	       
	      and c.CQMSTS = 'A'
	      )
	      )and c.CQMACT = 'A'
	      )or 
	      (
	      (
			b.CQSCSN=@CON and YEAR(a.CQMDTE)<YEAR(@DT)
			or b.CQSCSN=@CON and YEAR(a.CQMDTE)=YEAR(@DT) and MONTH(a.CQMDTE)<=MONTH(@DT)
		  )and DAY(a.CQMETD)= DAY({FN NOW()}) 
	      and month(a.CQMETD)= month({FN NOW()}) 
	      and year(a.CQMETD)= year({FN NOW()})
		  )*/
	where (
			(b.CQSCSN=@CON and YEAR(a.CQMDTE)<YEAR(@DT))
			or (b.CQSCSN=@CON and YEAR(a.CQMDTE)=YEAR(@DT) and MONTH(a.CQMDTE)<=MONTH(@DT))
		  )
		  and
		  
		  (
		    (
		    (
			( c.CQMSTS = 'P' 
			  and DAY(c.CQMSTD)= DAY({FN NOW()}) 
			  and month(c.CQMSTD)= month({FN NOW()}) 
			  and year(c.CQMSTD)= year({FN NOW()})
	        ) 
	        or 
			  c.CQMSTS = 'N' 
	        or 
	          c.CQMSTS = 'Y' 
	        or 
	          c.CQMSTS = 'A'
	        ) 
	        and c.CQMACT = 'A'
	        )
	        or
	        --( 
	        --( DAY(a.CQMETD)= DAY({FN NOW()}) 
			--  and month(a.CQMETD)= month({FN NOW()}) 
	        --  and year(a.CQMETD)= year({FN NOW()})	          	        
	        --) 
	        --and
	        --( 
	        --( c.CQMACT <> 'I' 	          
			--  and c.CQMSTS <> 'P' 
	        --  and c.CQMSTS <> 'A' 
	        --  and c.CQMSTS <> 'N' 
	        --  and c.CQMSTS <> 'Y'
	        --)
	        --or 
	          c.CQMACT IS NULL
	        --)
	        --)  
		  ) 
		  and 
		  (
			(
			  a.CQMACT = 'A' and a.CQMDFG = 'R' --and a.CQMSTS <> 'K'
			)
			or
			(
			  a.CQMACT = 'A' and a.CQMDFG = 'I' and a.CQMSTS = 'K'
			  --and DAY(a.CQMETD)= DAY({FN NOW()}) 
			  --and month(a.CQMETD)= month({FN NOW()}) 
	          --and year(a.CQMETD)= year({FN NOW()})	
			)
		  )
		  and b.CQSRCT = 'N'	  	      
		) as REC , HPTINS00
	where INSCRN=@CON and YEAR(INSDUE)<YEAR(@DT)
	   or INSCRN=@CON and YEAR(INSDUE)=YEAR(@DT) and MONTH(INSDUE)<=MONTH(@DT)
	group by GODREC

	select @GOODS=ABS(GOODS),@VAT=ABS(VAT),@WHT=ABS(WHT),@NET=NET from FN_CalcuGoods(
								(select (isnull(GODREC,0)+isnull(IRA,0)) - GODINS from #GOD)
								,@CON)
								
								
	declare @CC int
	select @cc=count(*) 
	from CQDM007 A
	LEFT JOIN CQDS003 B ON A.CQMDNO=B.CQSDNO
	where month(A.CQMDTE) = MONTH(@DT) 
	  And YEAR(A.cqmdte)=YEAR(@DT)
	  AND B.CQSCSN=@CON
	if @CC > 0
		begin		
			IF @NET>0 
				BEGIN
					SET @PA=@NET
					SET @NET=0 
					SET @GOODS=0
					SET @VAT=0
					SET @WHT=0
				END
			ELSE IF @NET<0 
				SET @PA = @NETDUE+@NET
			ELSE 
				SET @PA = 0 
		end
	else
		SET @PA=@NETDUE+@NET 
	SET @NET=ABS(@NET)
	--SELECT @GOODS as GOODS,@VAT AS VAT,@WHT AS WHT,@NET AS NET,@NETDUE AS NETDUE,@PA AS PA
	
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_LS_GEN_HPMRCV00]
(
@PRM_RCDBRN varchar(2),
@PRM_RCDPDM varchar(1),
@PRM_RCDPDT varchar(2),
@PRM_RCDDOC varchar(12),
@PRM_ASDATE datetime 
)
AS
BEGIN
Declare @HPMRCV00_TMP TABLE (
	RCVACT varchar(1),
	RCVPST varchar(1),
	RCVPSD datetime,
	RCVPTS varchar(1),
	RCVUPS varchar(1),
	RCVPTD datetime,
	RCVBRN varchar(2),
	RCVPDM varchar(1),
	RCVPDT varchar(2),
	RCVDOC varchar(12),
	RCVITM varchar(2),
	RCVCBR varchar(2),
	RCVCRN varchar(7),
	RCVRTY varchar(3),
	RCVAMT numeric(11, 2),
	RCVRFR int,
	RCVRTO int,
	RCVDTE datetime,
	RCVRBY nvarchar(1),
	RCVBCD varchar(2),
	RCVBBN varchar(3),
	RCVCQN varchar(15),
	RCVCQD datetime,
	RCVPAN varchar(15),
	RCVPNM varchar(50),
	RCVCQT varchar(1),
	RCVTRC varchar(12),
	RCVRCN varchar(15),
	RCVETD datetime,
	RCVETM datetime,
	RCVUET varchar(10),
	RCVMTD datetime,
	RCVMTM datetime,
	RCVUTM varchar(10),
	RCVCLC varchar(7),
	RCVPAT int,
	RCVCHQ varchar(7),
	RCVTCD varchar(3),
	RCVCBY varchar(1),
	RCVRPF varchar(1),
	RCVICA numeric(11, 2),
	RCVLPD datetime,
	RCVSEQ varchar(2),
	RCVGRC varchar(7),
	RCVCQS varchar(1),
	RCVVDT datetime,
	RCVGLP varchar(1),
	RCVF01 varchar(1),
	RCVF02 varchar(1),
	RCVF03 varchar(1),
	RCVF04 varchar(1),
	RCVF05 varchar(1),
	RCVF06 varchar(1),
	RCVF07 varchar(1),
	RCVF08 varchar(1),
	RCVF09 varchar(1),
	RCVF10 varchar(1),
	RCVAM1 numeric(11, 2),
	RCVAM2 numeric(11, 2),
	RCVAM3 numeric(11, 2),
	RCVDT1 datetime,
	RCVDT2 datetime,
	RCVDT3 datetime
)
declare @RCDACT varchar(1)
declare @RCDPST varchar(1)
declare @RCDPSD datetime
declare @RCDFL1 varchar(1)
declare @RCDFL2 varchar(1)
declare @RCDFL3 varchar(1)
declare @RCDBRN varchar(2)
declare @RCDPDM varchar(1)
declare @RCDPDT varchar(2)
declare @RCDDOC varchar(12)
declare @RCDITM varchar(2)
declare @RCDSEQ varchar(2)
declare @RCDCBN varchar(2)
declare @RCDCPM varchar(1)
declare @RCDCPT varchar(2)
declare @RCDCRN varchar(7)
declare @RCDRTY varchar(3)
declare @RCDAMT numeric(11,2)
declare @RCDRFR int
declare @RCDRTO int
declare @RCDETD datetime
declare @RCDETM datetime
declare @RCDUET varchar(10)
declare @RCDMTD datetime
declare @RCDMTM datetime
declare @RCDUTM varchar(10)
declare @RCDREF varchar(15)
declare @RCDICA numeric(11,2)

declare @RCHRBY varchar(1)
declare @RCHBBN varchar(2)
declare @RCHBBR varchar(3)
declare @RCHRFN varchar(15)
declare @RCHRFD datetime
declare @RCHAMT numeric(11,2)
declare @RCHACN varchar(15)
declare @RCHCQP varchar(50)
declare @RCHCQT varchar(1)
declare @RCBCLC varchar(7)
declare @RCBDDT datetime
declare @CONCAC varchar(10)
declare @CONCUS varchar(7)
declare @CONSTS varchar(2)
declare @ADFR07 varchar(1)

declare @ARRAY_AMT11 numeric(11,2);
declare @ARRAY_AMT12 numeric(11,2);
declare @ARRAY_AMT13 numeric(11,2);
declare @ARRAY_AMT14 numeric(11,2);
declare @ARRAY_AMT15 numeric(11,2);
declare @ARRAY_AMT16 numeric(11,2);
declare @ARRAY_AMT17 numeric(11,2);
declare @ARRAY_AMT18 numeric(11,2);
declare @ARRAY_AMT19 numeric(11,2);
declare @ARRAY_AMT20 numeric(11,2);
declare @ARRAY_AMT21 numeric(11,2);
declare @ARRAY_DTE21 datetime;
declare @ARRAY_DTE22 datetime;
declare @ARRAY_DTE23 datetime;
declare @ARRAY_DTE24 datetime;
declare @ARRAY_DTE25 datetime;
declare @ARRAY_DTE26 datetime;
declare @ARRAY_DTE27 datetime;
declare @ARRAY_DTE28 datetime;
declare @ARRAY_DTE29 datetime;
declare @ARRAY_DTE30 datetime;

declare @NET_AMT numeric(11,2);
declare @VAT_AMT numeric(11,2);

declare CUR_HPTRCD cursor for 
SELECT    
  RCDACT, RCDPST, RCDPSD, RCDFL1, RCDFL2, RCDFL3, RCDBRN, RCDPDM, RCDPDT
, RCDDOC, RCDITM, RCDSEQ, RCDCBN, RCDCPM, RCDCPT, RCDCRN, RCDRTY, RCDAMT
, RCDRFR, RCDRTO, RCDETD, RCDETM, RCDUET, RCDMTD, RCDMTM, RCDUTM, RCDREF
, RCDICA, RCBDDT, RCBCLC, RCHRBY, RCHBBN, RCHBBR, RCHRFN, RCHRFD, RCHAMT
, RCHACN, RCHCQP, RCHCQT, CONCAC, CONCUS, CONSTS, ADFR07
FROM [dbo].[HPTRCD00] D
INNER JOIN [HPTRCH00] H
 ON(D.RCDBRN = H.RCHBRN)
AND(D.RCDPDM = H.RCHPDM)
AND(D.RCDPDT = H.RCHPDT)
AND(D.RCDDOC = H.RCHDOC)
INNER JOIN [dbo].[HPTRCB00] B
 ON(D.RCDBRN = B.RCBBRN)
AND(D.RCDPDM = B.RCBPDM)
AND(D.RCDPDT = B.RCBPDT)
AND(D.RCDDOC = B.RCBDOC)
INNER JOIN [dbo].[HPMCON00] C
 ON(D.RCDCBN = C.CONBRN)
AND(D.RCDCPM = C.CONPDM)
AND(D.RCDCPT = C.CONPDT)
AND(D.RCDCRN = C.CONRUN)
LEFT JOIN [dbo].[HPMADF00] A
 ON(D.RCDCPM = A.ADFPDM)
AND(D.RCDCPT = A.ADFPDT)
AND(D.RCDRTY = A.ADFRTY)
WHERE D.RCDBRN = @PRM_RCDBRN
AND D.RCDPDM = @PRM_RCDPDM
AND D.RCDPDT = @PRM_RCDPDT
AND D.RCDDOC = @PRM_RCDDOC
AND B.RCBPST = '2'
ORDER BY 
D.RCDDOC, D.RCDITM, D.RCDSEQ
;
set @ARRAY_AMT11 = 0;
set @ARRAY_AMT12 = 0;
set @ARRAY_AMT13 = 0;
set @ARRAY_AMT14 = 0;
set @ARRAY_AMT15 = 0;
set @ARRAY_AMT16 = 0;
set @ARRAY_AMT17 = 0;
set @ARRAY_AMT18 = 0;
set @ARRAY_AMT19 = 0;
set @ARRAY_AMT20 = 0;
set @ARRAY_AMT21 = 0;
set @ARRAY_DTE21 = @PRM_ASDATE;
set @ARRAY_DTE22 = @PRM_ASDATE;
set @ARRAY_DTE23 = @PRM_ASDATE;
set @ARRAY_DTE24 = @PRM_ASDATE;
set @ARRAY_DTE25 = @PRM_ASDATE;
set @ARRAY_DTE26 = @PRM_ASDATE;
set @ARRAY_DTE27 = NULL;
set @ARRAY_DTE28 = NULL;
set @ARRAY_DTE29 = NULL;
set @ARRAY_DTE30 = NULL;

open CUR_HPTRCD;
fetch next from CUR_HPTRCD
into 
  @RCDACT, @RCDPST, @RCDPSD, @RCDFL1, @RCDFL2, @RCDFL3, @RCDBRN, @RCDPDM, @RCDPDT
, @RCDDOC, @RCDITM, @RCDSEQ, @RCDCBN, @RCDCPM, @RCDCPT, @RCDCRN, @RCDRTY, @RCDAMT
, @RCDRFR, @RCDRTO, @RCDETD, @RCDETM, @RCDUET, @RCDMTD, @RCDMTM, @RCDUTM, @RCDREF
, @RCDICA, @RCBDDT, @RCBCLC, @RCHRBY, @RCHBBN, @RCHBBR, @RCHRFN, @RCHRFD, @RCHAMT
, @RCHACN, @RCHCQP, @RCHCQT, @CONCAC, @CONCUS, @CONSTS, @ADFR07
;
while (@@fetch_status = 0)
begin	
	Set @VAT_AMT = (@RCDAMT * 7.00)/107.00;
	Set @NET_AMT = (@RCDAMT - @VAT_AMT);
	set @ARRAY_AMT11 = 0;
	set @ARRAY_AMT12 = 0;
	set @ARRAY_AMT13 = @VAT_AMT;
	set @ARRAY_AMT14 = @NET_AMT;
	set @ARRAY_AMT15 = 0;
	set @ARRAY_AMT16 = @ARRAY_AMT11 + @ARRAY_AMT13;
	set @ARRAY_AMT17 = @ARRAY_AMT12 + @ARRAY_AMT14;
	set @ARRAY_AMT18 = @ARRAY_AMT13 + @ARRAY_AMT14;
	set @ARRAY_AMT19 = 0;
	set @ARRAY_AMT20 = 0;
	set @ARRAY_AMT21 = @RCDAMT;

	set @ARRAY_DTE21 = @PRM_ASDATE;
	set @ARRAY_DTE22 = @RCBDDT;
	set @ARRAY_DTE23 = @RCHRFD;
	set @ARRAY_DTE24 = @PRM_ASDATE;
	set @ARRAY_DTE25 = @PRM_ASDATE;
	set @ARRAY_DTE26 = @PRM_ASDATE;
/*
    if (@ADFR07 = '2') 
      begin       
      end 
    ELSE
      begin
      end -- if (@ADFR07 = '2') 
---
[dbo].[FN_LS_GET_DTE_VAL](RPDDT1, NULL, 
	@ARRAY_DTE21, @ARRAY_DTE22, @ARRAY_DTE23, @ARRAY_DTE24, @ARRAY_DTE25, 
	@ARRAY_DTE26, @ARRAY_DTE27, @ARRAY_DTE28, @ARRAY_DTE29, @ARRAY_DTE30) AS dddd
[dbo].[FN_LS_GET_NUM_VAL](RPDAM1, @RCDAMT, 
	@ARRAY_AMT11, @ARRAY_AMT12, @ARRAY_AMT13, @ARRAY_AMT14, @ARRAY_AMT15,
	@ARRAY_AMT16, @ARRAY_AMT17, @ARRAY_AMT18, @ARRAY_AMT19, @ARRAY_AMT20) AS aaa
---
*/
INSERT INTO @HPMRCV00_TMP
SELECT 
  'A' AS RCVACT --, varchar(1),>
, '1' AS RCVPST --, varchar(1),>
, [dbo].[FN_LS_GET_DTE_VAL](RPDDT1, NULL, 
		@ARRAY_DTE21, @ARRAY_DTE22, @ARRAY_DTE23, @ARRAY_DTE24, @ARRAY_DTE25, 
		@ARRAY_DTE26, @ARRAY_DTE27, @ARRAY_DTE28, @ARRAY_DTE29, @ARRAY_DTE30)	AS RCVPSD --, datetime,>	
, RCVPTS AS RCVPTS --, varchar(1),>
, RCVUPS AS RCVUPS --, varchar(1),>
, [dbo].[FN_LS_GET_DTE_VAL](RPDDT2, NULL, 
		@ARRAY_DTE21, @ARRAY_DTE22, @ARRAY_DTE23, @ARRAY_DTE24, @ARRAY_DTE25, 
		@ARRAY_DTE26, @ARRAY_DTE27, @ARRAY_DTE28, @ARRAY_DTE29, @ARRAY_DTE30)	AS RCVPTD --, datetime,>	
, @RCDBRN AS RCVBRN --, varchar(2),>
, @RCDPDM AS RCVPDM --, varchar(1),>
, @RCDPDT AS RCVPDT --, varchar(2),>
, @RCDDOC AS RCVDOC --, varchar(12),>
, @RCDITM AS RCVITM --, varchar(2),>
, @RCDCBN AS RCVCBR --, varchar(2),>
, @RCDCRN AS RCVCRN --, varchar(7),>
, case
	when (RCVRTY = 'XXX') then @RCDRTY
	else  RCVRTY
  end AS RCVRTY --, varchar(3),> 
, [dbo].[FN_LS_GET_NUM_VAL](RPDAM1, @RCDAMT, 
		@ARRAY_AMT11, @ARRAY_AMT12, @ARRAY_AMT13, @ARRAY_AMT14, @ARRAY_AMT15,
		@ARRAY_AMT16, @ARRAY_AMT17, @ARRAY_AMT18, @ARRAY_AMT19, @ARRAY_AMT20)	AS RCVAMT --, numeric(11,2),>	
, @RCDRFR AS RCVRFR --, int,>
, @RCDRTO AS RCVRTO --, int,>
, [dbo].[FN_LS_GET_DTE_VAL](RPDDT3, NULL, 
		@ARRAY_DTE21, @ARRAY_DTE22, @ARRAY_DTE23, @ARRAY_DTE24, @ARRAY_DTE25, 
		@ARRAY_DTE26, @ARRAY_DTE27, @ARRAY_DTE28, @ARRAY_DTE29, @ARRAY_DTE30)	AS RCVDTE --, datetime,>	
, @RCHRBY AS RCVRBY --, nvarchar(1),>
, @RCHBBN AS RCVBCD --, varchar(2),>
, @RCHBBR AS RCVBBN --, varchar(3),>
, @RCHRFN AS RCVCQN --, varchar(15),>
, [dbo].[FN_LS_GET_DTE_VAL](RPDDT4, NULL, 
		@ARRAY_DTE21, @ARRAY_DTE22, @ARRAY_DTE23, @ARRAY_DTE24, @ARRAY_DTE25, 
		@ARRAY_DTE26, @ARRAY_DTE27, @ARRAY_DTE28, @ARRAY_DTE29, @ARRAY_DTE30)	AS RCVCQD --, datetime,>
, '' AS RCVPAN --, varchar(15),>
, '' AS RCVPNM --, varchar(50),>
, '' AS RCVCQT --, varchar(1),>
, '201' AS RCVTRC --, varchar(12),>
, '' AS RCVRCN --, varchar(15),>
, GETDATE() AS RCVETD --, datetime,>
, GETDATE() AS RCVETM --, datetime,>
, '' AS RCVUET --, varchar(10),>
, NULL AS RCVMTD --, datetime,>
, NULL AS RCVMTM --, datetime,>
, '' AS RCVUTM --, varchar(10),>
, @RCBCLC AS RCVCLC --, varchar(7),>
, coalesce(Right(@RCHACN,2),0)  AS RCVPAT --, int,>
, '' AS RCVCHQ --, varchar(7),>
, '330' AS RCVTCD --, varchar(3),>
, RCVCBY AS RCVCBY --, varchar(1),>
, '2' AS RCVRPF --, varchar(1),>
, [dbo].[FN_LS_GET_NUM_VAL](RPDAM2, @RCDAMT, 
		@ARRAY_AMT11, @ARRAY_AMT12, @ARRAY_AMT13, @ARRAY_AMT14, @ARRAY_AMT15,
		@ARRAY_AMT16, @ARRAY_AMT17, @ARRAY_AMT18, @ARRAY_AMT19, @ARRAY_AMT20)	AS RCVICA --, numeric(11,2),>
, [dbo].[FN_LS_GET_DTE_VAL](RPDDT5, NULL, 
		@ARRAY_DTE21, @ARRAY_DTE22, @ARRAY_DTE23, @ARRAY_DTE24, @ARRAY_DTE25, 
		@ARRAY_DTE26, @ARRAY_DTE27, @ARRAY_DTE28, @ARRAY_DTE29, @ARRAY_DTE30)	AS RCVLPD --, datetime,>	
, '' AS RCVSEQ --, varchar(2),>
, Right('0000000' +@CONCUS, 7) AS RCVGRC --, varchar(7),>
, RCVCQS AS RCVCQS --, varchar(1),>
, [dbo].[FN_LS_GET_DTE_VAL](RPDDT6, NULL, 
		@ARRAY_DTE21, @ARRAY_DTE22, @ARRAY_DTE23, @ARRAY_DTE24, @ARRAY_DTE25, 
		@ARRAY_DTE26, @ARRAY_DTE27, @ARRAY_DTE28, @ARRAY_DTE29, @ARRAY_DTE30)	AS RCVVDT --, datetime,>	
, RCVGLP AS RCVGLP --, varchar(1),>

, '' AS RCVF01 --, varchar(1),>
, '' AS RCVF02 --, varchar(1),>
, '' AS RCVF03 --, varchar(1),>

, '1' AS RCVF04 --, varchar(1),>
, '2' AS RCVF05 --, varchar(1),>
, '' AS RCVF06 --, varchar(1),>
, 'C' AS RCVF07 --, varchar(1),>
, '' AS RCVF08 --, varchar(1),>
, '' AS RCVF09 --, varchar(1),>
, '' AS RCVF10 --, varchar(1),>
, [dbo].[FN_LS_GET_NUM_VAL](RPDAM3, @RCDAMT, 
		@ARRAY_AMT11, @ARRAY_AMT12, @ARRAY_AMT13, @ARRAY_AMT14, @ARRAY_AMT15,
		@ARRAY_AMT16, @ARRAY_AMT17, @ARRAY_AMT18, @ARRAY_AMT19, @ARRAY_AMT20)	AS RCVAM1 --, numeric(11,2),>
, [dbo].[FN_LS_GET_NUM_VAL](RPDAM4, @RCDAMT, 
		@ARRAY_AMT11, @ARRAY_AMT12, @ARRAY_AMT13, @ARRAY_AMT14, @ARRAY_AMT15,
		@ARRAY_AMT16, @ARRAY_AMT17, @ARRAY_AMT18, @ARRAY_AMT19, @ARRAY_AMT20)	AS RCVAM2 --, numeric(11,2),>
, [dbo].[FN_LS_GET_NUM_VAL](RPDAM5, @RCDAMT, 
		@ARRAY_AMT11, @ARRAY_AMT12, @ARRAY_AMT13, @ARRAY_AMT14, @ARRAY_AMT15,
		@ARRAY_AMT16, @ARRAY_AMT17, @ARRAY_AMT18, @ARRAY_AMT19, @ARRAY_AMT20)	AS RCVAM3 --, numeric(11,2),>
, [dbo].[FN_LS_GET_DTE_VAL](RPDDT7, NULL, 
		@ARRAY_DTE21, @ARRAY_DTE22, @ARRAY_DTE23, @ARRAY_DTE24, @ARRAY_DTE25, 
		@ARRAY_DTE26, @ARRAY_DTE27, @ARRAY_DTE28, @ARRAY_DTE29, @ARRAY_DTE30)	AS RCVDT1 --, datetime,>	
, [dbo].[FN_LS_GET_DTE_VAL](RPDDT8, NULL, 
		@ARRAY_DTE21, @ARRAY_DTE22, @ARRAY_DTE23, @ARRAY_DTE24, @ARRAY_DTE25, 
		@ARRAY_DTE26, @ARRAY_DTE27, @ARRAY_DTE28, @ARRAY_DTE29, @ARRAY_DTE30)	AS RCVDT2 --, datetime,>	
, [dbo].[FN_LS_GET_DTE_VAL](RPDDT9, NULL, 
		@ARRAY_DTE21, @ARRAY_DTE22, @ARRAY_DTE23, @ARRAY_DTE24, @ARRAY_DTE25, 
		@ARRAY_DTE26, @ARRAY_DTE27, @ARRAY_DTE28, @ARRAY_DTE29, @ARRAY_DTE30)	AS RCVDT3 --, datetime,>)
FROM FN_LS_GET_RPH_RPD('L','N','N','2',@RCDRTY);

fetch next from CUR_HPTRCD
into 
  @RCDACT, @RCDPST, @RCDPSD, @RCDFL1, @RCDFL2, @RCDFL3, @RCDBRN, @RCDPDM, @RCDPDT
, @RCDDOC, @RCDITM, @RCDSEQ, @RCDCBN, @RCDCPM, @RCDCPT, @RCDCRN, @RCDRTY, @RCDAMT
, @RCDRFR, @RCDRTO, @RCDETD, @RCDETM, @RCDUET, @RCDMTD, @RCDMTM, @RCDUTM, @RCDREF
, @RCDICA, @RCBDDT, @RCBCLC, @RCHRBY, @RCHBBN, @RCHBBR, @RCHRFN, @RCHRFD, @RCHAMT
, @RCHACN, @RCHCQP, @RCHCQT, @CONCAC, @CONCUS, @CONSTS, @ADFR07
;
end  --while (@@fetch_status = 0)
close CUR_HPTRCD;
deallocate CUR_HPTRCD;

--UPDATE [HPMRCV00_TMP]  For Update CONSTS And Closing Normal '91'
--SELECT * FROM @HPMRCV00_TMP
UPDATE	@HPMRCV00_TMP	SET		RCVF01 = '1', 	RCVF02 = '9', 	RCVF03 = '1'	
	WHERE	RCVAMT > 0 AND RCVRTY = 'P12';

--INSERT [HPMRCV00]
INSERT INTO [dbo].[HPMRCV00] 
  SELECT * FROM @HPMRCV00_TMP WHERE RCVAMT > 0;


--UPDATE [dbo].[HPTRCB00]
UPDATE [dbo].[HPTRCB00] SET
	RCBPST = '0', 
	RCBPSD = GETDATE()
WHERE RCBBRN = @PRM_RCDBRN
and RCBPDM = @PRM_RCDPDM
and RCBPDT = @PRM_RCDPDT
and RCBDOC = @PRM_RCDDOC;

-- for test store procedure
--select * from @HPMRCV00_TMP where rcvamt > 0;
--return
END
GO
ALTER PROCEDURE [dbo].[SP_PROCESSDEPOSIT]
	@CONTRACT   VARCHAR (8),
	@NETAMOUNT  NUMERIC (18,2),
	@CHEQUEDATE DATETIME,
	@CHEQUENUM	VARCHAR (10),
	@BANK		VARCHAR (3),
	@BANKBRANCH VARCHAR (4),
	@COLNO		VARCHAR (14)
	
AS
BEGIN
	DECLARE @CST CHAR (2)
	DECLARE @ETY CHAR (3)
	DECLARE @RMK VARCHAR (50)
	DECLARE @RFN VARCHAR (15)
	DECLARE @DUE DATETIME
	
	DECLARE @NET DECIMAL (18,2)
	DECLARE @NETN DECIMAL (18,2)
	DECLARE @PA DECIMAL (18,2)
	DECLARE @GOODS DECIMAL (18,2)
	DECLARE @VAT DECIMAL (18,2)
	DECLARE @WT DECIMAL (18,2)
	
	DECLARE @ACT CHAR (1)
	SELECT @ACT = CQMACT,@CST=(CQMACT + CQMSTS) FROM CQDM011 
	WHERE CQMNO2 = @CHEQUENUM
	  AND CQMDAT = @CHEQUEDATE
	  AND CQMBNK = @BANK
	  AND CQMBBR = @BANKBRANCH
	  AND CQMAMT = @NETAMOUNT	
	  AND CQMCNO = @COLNO
	IF @ACT <> '' OR @ACT IS NOT NULL
		BEGIN
			SET @ETY = 'EDC'
			SET @RMK = 'DUPLICATE'	
		END
	ELSE
		BEGIN			
			DECLARE @CCC INT
			SELECT @DUE=MAX(INSDUE) FROM HPTINS00 WHERE INSCRN=@CONTRACT
			IF @DUE IS NULL
				BEGIN
					SET @ETY = 'ENI'
					SET @RMK = 'NOT FOUND INSTALLMENT'
				END
			ELSE
				BEGIN
					EXEC SP_PAYDUE @DUE,@CONTRACT,@NET OUTPUT,@NETN  OUTPUT,@PA  OUTPUT,@GOODS  OUTPUT	,@VAT  OUTPUT,@WT  OUTPUT			
					IF @NET = 0
						BEGIN
							SELECT @ACT=CQMACT,@RFN=CQMDNO 
							FROM CQDM007 A
							LEFT JOIN LLSPDTA.DBO.CQDS003 B ON A.CQMDNO=B.CQSDNO
							WHERE A.CQMCNO=@CHEQUENUM
								AND A.CQMDTE=@CHEQUEDATE
								AND A.CQMAMT=@NETAMOUNT
								AND A.CQMBNK=@BANK
								AND A.CQMBBR=@BANKBRANCH
								AND B.CQSCSN=@CONTRACT
							IF @ACT <> '' OR @ACT IS NOT NULL
								BEGIN
									SET @ETY = 'E  '
									SET @RMK = 'RECEIVED(' + @RFN + ')'	
								END
							ELSE
								BEGIN
									SET @ETY = 'EFU'
									SET @RMK = 'FULL'
								END							
						END			
					ELSE
						BEGIN
							/*SELECT @CCC=COUNT(*) 
							FROM CQDM007 A
							LEFT JOIN CQDS003 B ON A.CQMDNO=B.CQSDNO
							WHERE MONTH(A.CQMDTE) = MONTH(@CHEQUEDATE) 
							  AND YEAR(A.CQMDTE) = YEAR(@CHEQUEDATE)
							  AND B.CQSCSN=@CONTRACT*/
							
							DECLARE @DATE  DATETIME
							SET @DATE = DATEADD(DAY,DAY(@DUE) - DAY({FN NOW()}),{FN NOW()})
							EXEC SP_PAYDUE @DATE,@CONTRACT,@NET OUTPUT,@NETN  OUTPUT,@PA  OUTPUT,@GOODS  OUTPUT	,@VAT  OUTPUT,@WT  OUTPUT
							SET @DUE = CONVERT(DATETIME,CONVERT(VARCHAR,@DATE,101),101)
							IF @NET = @NETAMOUNT AND @PA = 0 AND @DUE >= @CHEQUEDATE
								BEGIN
									SET @ETY = 'E  '
									SET @RMK = ''									
								END
							ELSE IF @NET = @NETAMOUNT AND @PA <> 0
								BEGIN
									SELECT @ACT=CQMACT,@RFN=CQMDNO 
									FROM CQDM007 A
									LEFT JOIN CQDS003 B ON A.CQMDNO=B.CQSDNO
									WHERE A.CQMCNO=@CHEQUENUM
									  AND A.CQMDTE=@CHEQUEDATE
									  AND A.CQMAMT=@NETAMOUNT
									  AND A.CQMBNK=@BANK
									  AND A.CQMBBR=@BANKBRANCH
									  AND B.CQSCSN=@CONTRACT
									IF @ACT <> '' OR @ACT IS NOT NULL
										BEGIN
											SET @ETY = 'E  '
											SET @RMK = 'RECEIVED(' + @RFN + ')'	
										END
									ELSE
										BEGIN
											SET @ETY = 'ECA'
											SET @RMK = 'COLLECTION AMOUNTS'
										END
								END
							ELSE
								BEGIN
									SET @NET = 0
									WHILE @NET = 0
									BEGIN																
										EXEC SP_PAYDUE @DATE,@CONTRACT,@NET OUTPUT,@NETN  OUTPUT,@PA  OUTPUT,@GOODS  OUTPUT	,@VAT  OUTPUT,@WT  OUTPUT
										IF @NET = 0 
											SET @DATE = DATEADD(MONTH,1,@DATE)	
										ELSE IF @NET <> 0 AND @NET > @NETN
											BEGIN
												SET @DATE = DATEADD(MONTH,-1,@DATE)
												SET @NET = 0
											END
									END								
									SET @DUE = CONVERT(DATETIME,CONVERT(VARCHAR,@DATE,101),101)
										
									/*ELSE IF @NET = @NETAMOUNT AND @PA = 0 AND @DUE > @CHEQUEDATE AND @CCC > 0
										BEGIN
											SET @ETY = 'EDD'
											SET @RMK = 'DOUPICATE DUE'									
										END*/
										
									IF @DUE < @CHEQUEDATE AND @NETN = @NETAMOUNT-- AND @PA = 0 
										BEGIN
											SET @ETY = 'E'
											SET @RMK = 'OVER DUE'		
										END
									ELSE --IF @NET <> @NETAMOUNT
										BEGIN
											SELECT @ACT=CQMACT,@RFN=CQMDNO  
											FROM CQDM007 A
											LEFT JOIN CQDS003 B ON A.CQMDNO=B.CQSDNO
											WHERE A.CQMCNO=@CHEQUENUM
											  AND A.CQMDTE=@CHEQUEDATE
											  AND A.CQMAMT=@NETAMOUNT
											  AND A.CQMBNK=@BANK
											  AND A.CQMBBR=@BANKBRANCH
											  AND B.CQSCSN=@CONTRACT
											IF @ACT <> '' OR @ACT IS NOT NULL
												BEGIN
													SET @ETY = 'E  '
													SET @RMK = 'RECEIVED(' + @RFN + ')'		
												END
											ELSE
												BEGIN
													SELECT @CCC=COUNT(*) 
													FROM CQDM007 A
													LEFT JOIN CQDS003 B ON A.CQMDNO=B.CQSDNO
													WHERE A.CQMAMT=@NETAMOUNT
													  AND B.CQSCSN=@CONTRACT
													  AND (A.CQMACC IS NULL OR RTRIM(LTRIM(A.CQMACC))='')
													  AND LEFT(A.CQMDNO,1) <> '#' 
													  AND LEFT(A.CQMDNO,1) <> '*'
													  AND NOT EXISTS (SELECT * FROM CQDM011 C WHERE A.CQMDNO = C.CQMRFN)
													IF @CCC > 0 
														BEGIN
															SET @ETY = 'ESR'
															SET @RMK = 'SIMILAR RECEIVED'	
														END
													ELSE
														BEGIN
															SET @ETY = 'EAI'
															SET @RMK = 'AMOUNTS INVALID'
														END
												END
										END
								END
						END
				END
		END
	IF @RMK = 'OVER DUE'
		select @GOODS=Goods, @VAT=VAT, @WT=WHT, @NET=NET 
		from FN_CalcuGoods((select INSIAM from HPTINS00 where INSCRN=@CONTRACT AND INSITM=1),@CONTRACT)
	SELECT @ETY AS ETY
	      ,@RMK AS RMK
	      ,@CST AS CST
	      ,@RFN AS RFN
	      ,@GOODS AS GOODS
	      ,@VAT AS VAT
	      ,@WT  AS WT
	      ,@NET AS NET
	      ,@PA  AS PA
	      ,@DUE AS DUE
END
GO
-- exec sp_RCBatchIU '201201204100125'
CREATE procedure [dbo].[sp_RCBatchIU]
--ON [dbo].[CQDM011]
--AFTER INSERT, UPDATE, DELETE 
@RFDNO as  varchar(15)

AS
	--declare @RFDNO as  varchar(15)

		
	
--select @RFDNO=CQMRFN from inserted	
	--select * from CQDM011
	
declare @DNO varchar(15)  --12
declare @CNO varchar(7)
declare @CSN varchar(7)
declare @RTM varchar(12)

declare @BNK varchar(12)
declare @BBR varchar(12)

declare @ACT varchar(1)
declare @STS varchar(1)
declare @MTD datetime
declare @CQP varchar(50) 



declare @NEWDOCNO varchar(12)

set @DNO=@RFDNO

select @CNO=CQMCNO,@CSN=CQMCSN,@BNK=CQMBNK,@BBR=CQMBBR,@RTM=RIGHT(CQMTNO,12) 
,@NEWDOCNO=RIGHT(CQMDNO,12)
from CQDM007 where CQMDNO=@DNO


if  exists(
	select * from HPTRCH00 where RCHRFN = @CNO and RCHBBN=@BNK and RCHBBR=@BBR
)
begin  -- update
	/*
	select 
		@CQP=c.CQMNAE,@STS=b.CQMSTS
	from CQDM007 a
	left join CQDM011 b on a.CQMCNO=b.CQMNO2
	left join CQDM002 c on b.CQMSTS=c.CQMCDE  -- master chq code
	where a.CQMDNO=@DNO
	and a.CQMACT='A'
	*/
	
	select 
		@CQP=c.CQMNAE,@STS=a.CQMSTS,@ACT=a.CQMACT,@MTD=a.CQMMTD
	from CQDM011 a
	left join CQDM002 c on a.CQMSTS=c.CQMCDE  -- master chq code
	where a.CQMNO2=@CNO and a.CQMBNK=@BNK and a.CQMBBR=@BBR
	--and a.CQMACT='A'	
		
	
	--update HPTRCH00 set RCHCQT=@STS,RCHCQP=@CQP,RCHACT=@ACT,RCHMTM=@MTD  where RCHRFN = @CNO and RCHBBN=@BNK and RCHBBR=@BBR
    update HPTRCH00 set RCHCQT=@STS,RCHACT=@ACT,RCHMTM=@MTD  where RCHRFN = @CNO and RCHBBN=@BNK and RCHBBR=@BBR	
end
else
begin -- insert new record

	--insert into HPTRCB00   --RCB
	select 
	CQMACT,'2' as CQMPST,null as CQMPSD
	,'2' as CQMFL1,'2' as CQMFL2,'I' as  CQMFL3,CQMBRN,CQMPDM,CQMPDT
	,@NEWDOCNO as CQMDNO1,@RTM as CQMTNO,CQMETD
	,CQMETU,'2' as CQMDCT,CQMAMT,CQMETD,CQMETD,CQMETU,CQMMTD,CQMMTD,CQMMTU
	from CQDM007 where CQMDNO=@DNO
	and CQMACT='A'


	/*
	insert into HPTRCH00   --RCH
	select 
	CQMACT,'2' as CQMPST,null as CQMPSD,'2' as CQMFL1,'2' as CQMFL2
	,'I' as  CQMFL3,CQMBRN,CQMPDM,CQMPDT,@NEWDOCNO as CQMDNO,'00' as CQMITM
	,'1' as CQMRBY,CQMBNK,CQMBBR,CQMCNO,CQMDTE,CQMAMT,'01' as CQMACN,'' as CQMCQP
	,null as CQMCQT,CQMETD,CQMETD,CQMETU,CQMMTD,CQMMTD,CQMMTU
	from CQDM007 where CQMDNO=@DNO
	and CQMACT='A'
	*/
	
	--insert into HPTRCH00   --RCH
	select 
		a.CQMACT,'2' as CQMPST,null as CQMPSD,'2' as CQMFL1,'2' as CQMFL2
		,'I' as  CQMFL3,a.CQMBRN,a.CQMPDM,a.CQMPDT,@NEWDOCNO as CQMDNO,'00' as CQMITM
		,'1' as CQMRBY,a.CQMBNK,a.CQMBBR,a.CQMCNO,CQMDTE,a.CQMAMT,'01' as CQMACN,
		--c.CQMNAE as  CQMCQP
		'' as  CQMCQP
		,b.CQMSTS as CQMCQT,a.CQMETD,a.CQMETD,a.CQMETU,a.CQMMTD,a.CQMMTD,a.CQMMTU
	from CQDM007 a
	left join CQDM011 b on a.CQMCNO=b.CQMNO2
	left join CQDM002 c on b.CQMSTS=c.CQMCDE  -- master chq code
	where a.CQMDNO=@DNO
	and a.CQMACT='A'
	
	


	--insert into HPTRCD00
	/*
	select 
	'A' as CQSACT,'2' as CQMPST,null as CQMPSD,'D' as CQMFL1,'' as CQMFL2,null as CQMFL3
	,CQSBRN,CQSPDM,CQSPDT,@NEWDOCNO as CQMDNO
	,'00' as CQSITM,CQSSEQ
	,'01' as CQSCBN,'2' as CQSCPM,'01' as CQSCPT
	,CQSCSN,'013' as CQSRTY,CQSNET -- amount
	,'1' as CQSRFR,'1' as CQSRTO
	,CQSETD,CQSETD,CQSETU
	,CQSMTD,CQSMTD,CQSMTU
	,null as CQSREF
	,0 as CQSICA
	from CQDS003 where  CQSDNO=@DNO
	*/
	
	select 
	'A' as CQSACT,'2' as CQMPST,null as CQMPSD,'D' as CQMFL1,'' as CQMFL2,null as CQMFL3
	,CQSBRN,CQSPDM,CQSPDT,@NEWDOCNO as CQMDNO
	,'00' as CQSITM,1 as CQSSEQ
	,'01' as CQSCBN,'2' as CQSCPM,'01' as CQSCPT
	,CQSCSN,'013' as CQSRTY,CQSAMT -- amount
	,'1' as CQSRFR,'1' as CQSRTO
	,CQSETD,CQSETD,CQSETU
	,CQSMTD,CQSMTD,CQSMTU
	,null as CQSREF
	,0 as CQSICA
	from CQDS003 where  CQSDNO=@DNO and CQSRCT='N'
	
	union
	select 
	'A' as CQSACT,'2' as CQMPST,null as CQMPSD,'D' as CQMFL1,'' as CQMFL2,null as CQMFL3
	,CQSBRN,CQSPDM,CQSPDT,@NEWDOCNO as CQMDNO
	,'00' as CQSITM,2 as CQSSEQ
	,'01' as CQSCBN,'2' as CQSCPM,'01' as CQSCPT
	,CQSCSN,'094' as CQSRTY,CQSVAT -- amount
	,'1' as CQSRFR,'1' as CQSRTO
	,CQSETD,CQSETD,CQSETU
	,CQSMTD,CQSMTD,CQSMTU
	,null as CQSREF
	,0 as CQSICA
	from CQDS003 where  CQSDNO=@DNO and CQSRCT='N'	
		
	union
	select 
	'A' as CQSACT,'2' as CQMPST,null as CQMPSD,'D' as CQMFL1,'' as CQMFL2,null as CQMFL3
	,CQSBRN,CQSPDM,CQSPDT,@NEWDOCNO as CQMDNO
	,'00' as CQSITM,3 as CQSSEQ
	,'01' as CQSCBN,'2' as CQSCPM,'01' as CQSCPT
	,CQSCSN,'F81' as CQSRTY,CQSWHT -- amount
	,'1' as CQSRFR,'1' as CQSRTO
	,CQSETD,CQSETD,CQSETU
	,CQSMTD,CQSMTD,CQSMTU
	,null as CQSREF
	,0 as CQSICA
	from CQDS003 where  CQSDNO=@DNO and CQSRCT='N'	 and CQSWHT<>0
	
	union
	select 
	'A' as CQSACT,'2' as CQMPST,null as CQMPSD,'D' as CQMFL1,'' as CQMFL2,null as CQMFL3
	,CQSBRN,CQSPDM,CQSPDT,@NEWDOCNO as CQMDNO
	,'00' as CQSITM,4 as CQSSEQ
	,'01' as CQSCBN,'2' as CQSCPM,'01' as CQSCPT
	,CQSCSN,CQSRS1 as CQSRTY,CQSNET -- amount
	,'1' as CQSRFR,'1' as CQSRTO
	,CQSETD,CQSETD,CQSETU
	,CQSMTD,CQSMTD,CQSMTU
	,null as CQSREF
	,0 as CQSICA
	from CQDS003 where  CQSDNO=@DNO and CQSRCT='O' and CQSNET<>0	


end
GO
CREATE VIEW [dbo].[HPDV00200] AS SELECT * FROM HPTINS00 WHERE INSF11
<> '0' AND INSF21 <> 0
GO
CREATE view [dbo].[HPTINS07] as
(
select *
from [HPTINS00]
--where (INSF12 <> 0 or INSF22 <> 0)
where ((INSF11 <> '0') or (INSF12 <> '0') or (INSF21 <> '0') or (INSF22 <> '0'))
  and (INSITM <> 0)
--order by INSCBR, INSCPM, INSCPT, INSCRN, INSITM
)
GO
create view [dbo].[DBMCOA03] 
as
( select *
  from [DBMCOA00]
  left join [DBMCAR00] on (COACON = CARNUM)
  where COATYP= 'C' )
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
--CREATE FUNCTION [dbo].[FN_LS_GET_NUM_VAL](
CREATE FUNCTION [dbo].[FN_LS_GET_NUM_VAL](
@OPT	INT,
@NUM	NUMERIC(13, 2),
@NUM01	NUMERIC(13, 2),
@NUM02	NUMERIC(13, 2),
@NUM03	NUMERIC(13, 2),
@NUM04	NUMERIC(13, 2),
@NUM05	NUMERIC(13, 2),
@NUM06	NUMERIC(13, 2),
@NUM07	NUMERIC(13, 2),
@NUM08	NUMERIC(13, 2),
@NUM09	NUMERIC(13, 2),
@NUM10	NUMERIC(13, 2)
)
RETURNS numeric(13, 2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultAmt numeric(11, 2);

    --DECLARE @FNC_STR VARCHAR(256); 
	SELECT @ResultAmt = 
	case @OPT
		when 00 then	0.00
		when 11 then	@NUM01
		when 12 then	@NUM02
		when 13 then	@NUM03
		when 14 then	@NUM04
		when 15 then	@NUM05
		when 16 then	@NUM06
		when 17 then	@NUM07
		when 18 then	@NUM08
		when 19 then	@NUM09
		when 20 then	@NUM10 
		else			@NUM
	END

    RETURN coalesce(@ResultAmt, 0.00);
END
GO
CREATE FUNCTION [dbo].[FN_GET_DPD_FLOODING]
(				@PRM_BRN			VARCHAR(2),		-- BRANCH
				@PRM_PDM			VARCHAR(1),		-- PROGRAM SYSTEM
				@PRM_PDT			VARCHAR(2),		-- PROGRAM TYPE
				@PRM_RUN			VARCHAR(7),		-- CONTRACT NO
				@PRM_DTE			DATETIME,		-- AS OF DATE
                @PRM_RST			INT				-- TYPE RESULT ('1' : DPD, '2' : DLQ)
)	
RETURNS			INT
AS
BEGIN
    DECLARE		@RESULT			INT;

    SELECT @RESULT = (CASE WHEN @PRM_RST = 1 THEN 
                                CASE WHEN (TB_RESULT.DPD - TB_RESULT.FLOODING_DAY) <= 0 THEN 0
                                     ELSE (TB_RESULT.DPD - TB_RESULT.FLOODING_DAY) END
                           WHEN @PRM_RST = 2 THEN
                                CASE WHEN (TB_RESULT.DPD - TB_RESULT.FLOODING_DAY) <= 0 THEN 0
                                     ELSE CONVERT(INT,CONVERT(VARCHAR,DATEADD(DAY,1,TB_RESULT.FLOODING_INSDUE),112)) END
                           ELSE 0 END)
    FROM (
    SELECT TB_FLOODING.INSCRN
         , MIN(TB_FLOODING.INSDUE) AS INSDUE 
         , MIN(TB_FLOODING.FLOODING_INSDUE) AS FLOODING_INSDUE 
         , MAX(TB_FLOODING.DPD) AS DPD
         , DATEDIFF(DAY
                   ,CASE WHEN (MIN(TB_FLOODING.INSDUE) <= MIN(TB_FLOODING.FLOODING_INSFRD)) THEN
                               MIN(TB_FLOODING.FLOODING_INSFRD)
                         ELSE  MIN(TB_FLOODING.INSDUE         ) END
                   ,CASE WHEN (MIN(TB_FLOODING.FLOODING_INSDUE) <= @PRM_DTE) THEN
                               MIN(TB_FLOODING.FLOODING_INSDUE)
                         ELSE  @PRM_DTE END) AS FLOODING_DAY
         --, SUM(TB_FLOODING.FLOODING_DAY) AS FLOODING_DAY
         --, MAX(TB_FLOODING.DPD) - SUM(TB_FLOODING.FLOODING_DAY) AS DPD_FLOODING
    FROM (
    SELECT HPTINS00_1.INSCRN AS INSCRN
         , HPTINS00_1.INSITM AS INSITM
         , HPTINS00_1.INSDUE AS INSDUE
         , ISNULL(HPTINS00_2.INSDUE,NULL) AS FLOODING_INSDUE
         , ISNULL(HPTINS00_2.INSFRD,NULL) AS FLOODING_INSFRD
         , ISNULL(HPTINS00_2.INSTOD,NULL) AS FLOODING_INSTOD
         , DATEDIFF(DAY
                   ,HPTINS00_1.INSDUE
                   ,@PRM_DTE) AS DPD
/*
         , CASE WHEN (ISNULL(HPTINS00_2.INSFRD,0) = 0) OR (ISNULL(HPTINS00_2.INSDUE,0) = 0) THEN 0
                WHEN (HPTINS00_2.INSDUE <= @PRM_DTE) THEN
                     DATEDIFF(DAY
                             ,HPTINS00_2.INSFRD
                             ,HPTINS00_2.INSDUE)
                WHEN (HPTINS00_2.INSFRD <= @PRM_DTE) THEN
                      DATEDIFF(DAY
                             ,HPTINS00_2.INSFRD
                             ,@PRM_DTE)
                ELSE 0 END AS FLOODING_DAY
*/
      FROM LLSPDTA.dbo.NCB_HPTINS00 HPTINS00_1
      LEFT JOIN (SELECT HPDT01600_SUB.INSCBR
                      , HPDT01600_SUB.INSCPM
                      , HPDT01600_SUB.INSCPT
                      , HPDT01600_SUB.INSCRN
                      , HPDT01600_SUB.INSITM
                      , HPDT01600_SUB.INSDUE
                      , HPDT01600_SUB.INSOLD
                      , CASE WHEN HPDT01600_SUB.INSFRD IS NOT NULL THEN HPDT01600_SUB.INSFRD
                             ELSE ISNULL((SELECT HPDT01600_FRD.INSFRD
                                            FROM LLSPDTA.dbo.NCB_HPDT01600 HPDT01600_FRD
                                           WHERE HPDT01600_FRD.INSCBR  = HPDT01600_SUB.INSCBR
                                             AND HPDT01600_FRD.INSCPM  = HPDT01600_SUB.INSCPM
                                             AND HPDT01600_FRD.INSCPT  = HPDT01600_SUB.INSCPT
                                             AND HPDT01600_FRD.INSCRN  = HPDT01600_SUB.INSCRN
                                             AND HPDT01600_SUB.INSOLD >= HPDT01600_FRD.INSFRD
                                             AND HPDT01600_SUB.INSOLD <= HPDT01600_FRD.INSTOD),NULL)
                        END AS INSFRD
                      , HPDT01600_SUB.INSTOD
                   FROM LLSPDTA.dbo.NCB_HPDT01600 HPDT01600_SUB
                  WHERE HPDT01600_SUB.INSCBR = @PRM_BRN
                    AND HPDT01600_SUB.INSCPM = @PRM_PDM
                    AND HPDT01600_SUB.INSCPT = @PRM_PDT
                    AND HPDT01600_SUB.INSCRN = @PRM_RUN) HPTINS00_2 ON (HPTINS00_1.INSCBR = HPTINS00_2.INSCBR
                                                                    AND HPTINS00_1.INSCPM = HPTINS00_2.INSCPM
                                                                    AND HPTINS00_1.INSCPT = HPTINS00_2.INSCPT
                                                                    AND HPTINS00_1.INSCRN = HPTINS00_2.INSCRN
                                                                    AND HPTINS00_1.INSITM = HPTINS00_2.INSITM)
     WHERE HPTINS00_1.INSCBR = @PRM_BRN
       AND HPTINS00_1.INSCPM = @PRM_PDM
       AND HPTINS00_1.INSCPT = @PRM_PDT
       AND HPTINS00_1.INSCRN = @PRM_RUN
       AND ((HPTINS00_1.INSF11 <> 0) OR (HPTINS00_1.INSF21 <> 0))
       AND HPTINS00_1.INSDUE <= @PRM_DTE
    ) TB_FLOODING
    GROUP BY TB_FLOODING.INSCRN
    ) TB_RESULT

	RETURN ISNULL(@RESULT,0);
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[FN_LS_GET_DTE_VAL](
--ALTER FUNCTION [dbo].[FN_LS_GET_DTE_VAL](
@OPT	INT,
@DTE	DATETIME,
@DTE01	DATETIME,
@DTE02	DATETIME,
@DTE03	DATETIME,
@DTE04	DATETIME,
@DTE05	DATETIME,
@DTE06	DATETIME,
@DTE07	DATETIME,
@DTE08	DATETIME,
@DTE09	DATETIME,
@DTE10	DATETIME
)
RETURNS DATETIME
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultDte DATETIME;

    --DECLARE @FNC_STR VARCHAR(256); 
	SELECT @ResultDte = 
	case @OPT
		when 00 then	NULL
		when 11 then	@DTE01
		when 12 then	@DTE02
		when 13 then	@DTE03
		when 14 then	@DTE04
		when 15 then	@DTE05
		when 16 then	@DTE06
		when 17 then	@DTE07
		when 18 then	@DTE08
		when 19 then	@DTE09
		when 20 then	@DTE10 
		else			@DTE
	END

    RETURN coalesce(@ResultDte, NULL);
END
GO
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagrams__2F2FFC0C] PRIMARY KEY CLUSTERED
	(
		[diagram_id] ASC
	) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY  = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CQDT003] ADD CONSTRAINT [PK_CQDT003] PRIMARY KEY CLUSTERED
	(
		[CQTDNO] ASC
	) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY  = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE SYNONYM [dbo].[DBMRUN00] FOR [LCTPDTA].[dbo].[DBMRUN00]
GO
CREATE SYNONYM [dbo].[Branch] FOR [LCTPDTA].[dbo].[Branch]
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_LS_GET_DBMRUN00](
--Create PROCEDURE [dbo].[SP_LS_GET_DBMRUN00](
	@PRM_RUNBRN		varchar(2),
	@PRM_RUNAP1		varchar(1),
	@PRM_RUNAP2		varchar(2),
	@PRM_RUNCOD		varchar(6),
	@PRM_FUNC		varchar(1)
)
AS
BEGIN
	Declare		@Count_Rec		Int;
	Declare		@RUNACT			varchar(1);
    Declare		@RUNBRN			varchar(2);
    Declare		@RUNAP1			varchar(1);
    Declare		@RUNAP2			varchar(2);
    Declare		@RUNCOD			varchar(6);
    Declare		@RUNDSC			varchar(30);
    Declare		@RUNNUM			int;
    Declare		@RUNPFX			varchar(15);
    Declare		@RUNSFX			varchar(5);
    Declare		@RUNUPD			int;

	SET NOCOUNT ON;

	set	@Count_Rec	= 0;
	set	@RUNNUM		= 0;
	IF (@PRM_FUNC	=	'U')
	begin
		SELECT	@RUNACT	= RUNACT
			,	@RUNBRN = RUNBRN
			,	@RUNAP1 = RUNAP1
			,	@RUNAP2 = RUNAP2
			,	@RUNCOD = RUNCOD
			,	@RUNDSC = RUNDSC
			,	@RUNNUM = RUNNUM
			,	@RUNPFX = RUNPFX
			,	@RUNSFX = RUNSFX
			,	@RUNUPD = RUNUPD
			,	@Count_Rec	= 1 
		FROM	[dbo].[DBMRUN00]
		WHERE	[RUNBRN]	=	@PRM_RUNBRN
			AND [RUNAP1]	=	@PRM_RUNAP1
			AND [RUNAP2]	=	@PRM_RUNAP2
			AND [RUNCOD]	=	@PRM_RUNCOD;

		set	@RUNNUM		=	@RUNNUM + 1;

		IF  (@Count_Rec  > 0)
		begin
			--UPDATE [LCTPDTA].[dbo].[DBMRUN00]
			UPDATE	[dbo].[DBMRUN00]
			SET		[RUNNUM]	=	@RUNNUM
				,	[RUNUPD]	=	Convert(Int, Convert(Varchar, Getdate(), 112))
			WHERE	[RUNBRN]	=	@PRM_RUNBRN
				AND [RUNAP1]	=	@PRM_RUNAP1
				AND [RUNAP2]	=	@PRM_RUNAP2
				AND [RUNCOD]	=	@PRM_RUNCOD;
		end else 
		begin
			INSERT INTO [dbo].[DBMRUN00]
				([RUNACT],[RUNBRN],[RUNAP1],[RUNAP2],[RUNCOD],[RUNDSC],[RUNNUM],[RUNPFX],[RUNSFX],[RUNUPD])
			VALUES
				('A',@PRM_RUNBRN,@PRM_RUNAP1,@PRM_RUNAP2,@PRM_RUNCOD,'Dummy',1,'','', Convert(Int, Convert(Varchar, Getdate(), 112)) )
		end
	end

	SELECT	Rtrim([RUNPFX]) +
			Right('X000000000000' + Convert(Varchar, RUNNUM) + RUNSFX, 10)
	FROM	[dbo].[DBMRUN00]
	WHERE	[RUNBRN]	=	@PRM_RUNBRN
		AND [RUNAP1]	=	@PRM_RUNAP1
		AND [RUNAP2]	=	@PRM_RUNAP2
		AND [RUNCOD]	=	@PRM_RUNCOD;

/*
Select * FROM	[dbo].[DBMRUN00]
*/
END
GO
CREATE PROCEDURE [dbo].[SP_LS_OVERDUE](
@PRM_BRN VARCHAR(2),
@PRM_PDM VARCHAR(1),
@PRM_PDT VARCHAR(2),
@PRM_DTE DATETIME
)
AS
BEGIN

  SET NOCOUNT ON;


  select LLSPDTA.dbo.HPMCON00.CONRUN as "ContractNumber"
       , ltrim(rtrim(HLTC_C_CENTER.TH_TITLE_NAME)) + ' ' +
         ltrim(rtrim(HLTC_C_CENTER.TH_FIRST_NAME)) + ' ' +
         ltrim(rtrim(HLTC_C_CENTER.TH_LAST_NAME )) as "CustomerName"
       , LLSPDTA.dbo.HPMCON00.CONDEA as "Dealer"
       , LLSPDTA.dbo.DBMCOA03.CARMDL as "Type"
       , LLSPDTA.dbo.HPMCON00.CONPER as "Tenor"
       , LLSPDTA.dbo.HPMCON00.CONFDT as "FirstDue"
       , LLSPDTA.dbo.HPMCON00.CONLDT as "EndDue"
       , LLSPDTA.dbo.HPMSCN00.SCNRTN as "ResidaulValue"
       , LLSPDTA.dbo.HPMCON00.CONFCA as "AmountFinance"
       , LLSPDTA.dbo.HPMCON00.CONINA as "InstallmentAmount"
       , isnull(HPTINS00.INSAMT,0) as "OverdueAmount"
       , isnull(HPTINS00.INSVAT,0) as "OverdueVAT"
       , isnull(HPTINS00.INSAMT,0) + isnull(HPTINS00.INSVAT,0) as "OverdueTotal"
    from LLSPDTA.dbo.HPMCON00
    left join LLSPDTA.dbo.HPMSCN00 on (LLSPDTA.dbo.HPMCON00.CONBRN = LLSPDTA.dbo.HPMSCN00.SCNBRN
                                   and LLSPDTA.dbo.HPMCON00.CONPDM = LLSPDTA.dbo.HPMSCN00.SCNPDM
                                   and LLSPDTA.dbo.HPMCON00.CONPDT = LLSPDTA.dbo.HPMSCN00.SCNPDT
                                   and LLSPDTA.dbo.HPMCON00.CONRUN = LLSPDTA.dbo.HPMSCN00.SCNRUN)
    left join LLSPDTA.dbo.DBMCOA03 on (LLSPDTA.dbo.DBMCOA03.COATYP = 'C'
                                   and LLSPDTA.dbo.HPMCON00.CONBRN = LLSPDTA.dbo.DBMCOA03.COABRN
                                   and LLSPDTA.dbo.HPMCON00.CONPDM = LLSPDTA.dbo.DBMCOA03.COAPDM
                                   and LLSPDTA.dbo.HPMCON00.CONPDT = LLSPDTA.dbo.DBMCOA03.COAPDT
                                   and LLSPDTA.dbo.HPMCON00.CONRUN = LLSPDTA.dbo.DBMCOA03.COARUN)
    left join (select LLSPDTA.dbo.HPTINS00.INSCRN
                    , sum(LLSPDTA.dbo.HPTINS00.INSIAM)-sum(LLSPDTA.dbo.HPTINS00.INSIRA) as INSAMT
                    , sum(LLSPDTA.dbo.HPTINS00.INSVAM)-sum(LLSPDTA.dbo.HPTINS00.INSVRA) as INSVAT
                 from LLSPDTA.dbo.HPTINS00
               where (LLSPDTA.dbo.HPTINS00.INSIAM-LLSPDTA.dbo.HPTINS00.INSIRA > 0 or LLSPDTA.dbo.HPTINS00.INSVAM-LLSPDTA.dbo.HPTINS00.INSVRA > 0)
                 and LLSPDTA.dbo.HPTINS00.INSDUE < @PRM_DTE
               group by LLSPDTA.dbo.HPTINS00.INSCRN) HPTINS00 on (LLSPDTA.dbo.HPMCON00.CONRUN =  HPTINS00.INSCRN)
    left join DB2..HLCT_APP.HLTC_C_CENTER on (HLTC_C_CENTER.CENTER_CODE = HPMCON00.CONCUS)
   where LLSPDTA.dbo.HPMCON00.CONBRN = @PRM_BRN
     and LLSPDTA.dbo.HPMCON00.CONPDM = @PRM_PDM
     and LLSPDTA.dbo.HPMCON00.CONPDT = @PRM_PDT
     and isnull(HPTINS00.INSAMT,0) + isnull(HPTINS00.INSVAT,0) > 0
   order by LLSPDTA.dbo.HPMCON00.CONRUN;

  RETURN;
END

--EXEC [SP_LS_OVERDUE] '01','2','01','2010-08-31'
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_LS_UPD_CONSTS](
@PRM_RCVBRN		varchar(2)
,@PRM_RCVPDM	varchar(1)
,@PRM_RCVPDT	varchar(2)
,@PRM_RCVDOC	varchar(12)
,@PRM_RCVITM	varchar(2)
,@PRM_RCVCBR	varchar(2)
,@PRM_RCVCRN	varchar(7)
,@PRM_RCVRTY	varchar(3)
)
AS
BEGIN

	declare  @CONSTS Varchar(2)

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	-- SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>

	IF  EXISTS (SELECT TOP 1 * --@CONSTS = CONSTS 
		FROM	[dbo].[HPMCON00]
		WHERE	CONBRN	=	@PRM_RCVBRN
		AND		CONPDM	=	@PRM_RCVPDM
		AND		CONPDT	=	@PRM_RCVPDT
		AND		CONRUN	=	@PRM_RCVCRN
	)
	begin
		UPDATE	[dbo].[HPMCON00] 
			SET	CONSTS	=	'81'
			,	CONCDT	=	GetDAte() --@PRM_RCVDTE
			,	CONMTN	=	getdate() --@PRM_RCVPTD
			,	CONMTT	=	getdate() --@PRM_RCVPTD
			,	CONMTU	=	'USER_ID'
		WHERE	CONBRN	=	@PRM_RCVBRN
			AND	CONPDM	=	@PRM_RCVPDM
			AND	CONPDT	=	@PRM_RCVPDT
			AND	CONRUN	=	@PRM_RCVCRN;

-- INSERT INTO [dbo].[HPTCH00]
		INSERT INTO [dbo].[HPTCH00]
			([TCHOUS],[TCHOUD],[TCHOBR],[TCHOTG],[TCHOTT],[TCHORN],[TCHORS],[TCHDTE],[TCHAOC],[TCHCBR]
			,[TCHCPD],[TCHCPT],[TCHCRN],[TCHPRC],[TCHTYP],[TCHCDE],[TCHSUB],[TCHADB],[TCHADC],[TCHRPD]
			,[TCHRPC],[TCHNAD],[TCHNRR],[TCHR01],[TCHR02],[TCHR03],[TCHETD],[TCHETM],[TCHUET])
		VALUES
			('0',GetDate() -- @RCVPTD
			,@PRM_RCVBRN,@PRM_RCVPDM,@PRM_RCVPDT
			,'99999999' --,SP_LS_GET_DBMRUN00(@PRM_RCVBRN, @PRM_RCVPDM, @PRM_RCVPDT, 'CHGSTS','U')c			
			,'0',Getdate() --@RCVDTE
			,'C',@PRM_RCVCBR,@PRM_RCVPDM,@PRM_RCVPDT,@PRM_RCVCRN,'','90'
			,'81','',0,0,0,0,0,0,'',@CONSTS,'',GETDATE(),NULL,'USER_ID')
	end 

END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_LS_GEN_HPTINS00] (
@PRM_CONBRN		varchar(2),
@PRM_CONPDM		varchar(1),
@PRM_CONPDT		varchar(2),
@PRM_CONRUN		varchar(7)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Declare @CONBRN			varchar(2);
Declare @CONPDM			varchar(1);
Declare @CONPDT			varchar(2);
Declare @CONRUN			varchar(7);
Declare @CONDTE			datetime;
Declare @CONHPA			numeric(18, 2);
Declare @CONINA			numeric(18, 2);
Declare @CONHPV			numeric(18, 2);
Declare @CONINV			numeric(18, 2);
Declare @CONDEF			numeric(18, 2);
Declare @CONCMN			numeric(18, 2);
Declare @CONPER			int;
Declare @CONFDT			datetime;
Declare @CONLDT			datetime;
Declare @COUNTER   		int;
Declare @INSDUE_NEXT	datetime;

	declare @HPTINS	table(
	xINSACT varchar(1),
	xINSF11 varchar(1),
	xINSF12 varchar(1),
	xINSF21 varchar(1),
	xINSF22 varchar(1),
	xINSF31 varchar(1),
	xINSF32 varchar(1),
	xINSF41 varchar(1),
	xINSF42 varchar(1),
	xINSF51 varchar(1),
	xINSF52 varchar(1),
	xINSILD datetime,
	xINSVLD datetime,
	xINSDLD datetime,
	xINSCLD datetime,
	xINSPLD datetime,
	xINSCBR varchar(2),
	xINSCPM varchar(1),
	xINSCPT varchar(2),
	xINSCRN varchar(7),
	xINSITM int,
	xINSDUE datetime,
	xINSIAM numeric(11, 2),
	xINSIRA numeric(11, 2),
	xINSVAM numeric(10, 2),
	xINSVPA numeric(10, 2),
	xINSVRA numeric(10, 2),
	xINSDAM numeric(9, 2),
	xINSDRM numeric(9, 2),
	xINSEAM numeric(9, 2),
	xINSERM numeric(9, 2),
	xINSPAM numeric(9, 2),
	xINSPRM numeric(9, 2),
	xINSVRF varchar(15),
	xINSVP1 varchar(1),
	xINSVP2 varchar(1),
	xINSETD datetime,
	xINSETM datetime,
	xINSUET varchar(10),
	xINSMTD datetime,
	xINSMTM datetime,
	xINSUTM varchar(10),
	xINSPVD datetime,
	xINSIAD numeric(11, 2),
	xINSVAD numeric(10, 2),
	xINSPAD numeric(9, 2),
	xINSPVL numeric(9, 2),
	xINSPVR numeric(9, 2),
	xINSPVA numeric(9, 2)
);
declare CUR_HPMCON cursor for 
SELECT	CONBRN,CONPDM,CONPDT,CONRUN,CONDTE,
		CONHPA,CONINA,CONHPV,CONINV,CONDEF,CONCMN,
		CONPER,CONFDT,CONLDT
FROM [dbo].[HPMCON00] C
WHERE C.CONBRN = @PRM_CONBRN
AND C.CONPDM = @PRM_CONPDM
AND C.CONPDT = @PRM_CONPDT
AND C.CONRUN = @PRM_CONRUN
AND C.CONACT = 'A';

open CUR_HPMCON;
fetch next from CUR_HPMCON
 into @CONBRN,@CONPDM,@CONPDT,@CONRUN,@CONDTE,
	  @CONHPA,@CONINA,@CONHPV,@CONINV,@CONDEF,@CONCMN,
	  @CONPER,@CONFDT,@CONLDT;

while (@@fetch_status = 0)
begin	
	set @COUNTER = 0;
	while (@COUNTER <= @CONPER)
	begin
		if (@COUNTER > 0) 
		begin
			insert	into @HPTINS
			VALUES( 'A','3','','3','3','','','','','','',NULL,NULL,NULL,NULL,NULL,
			@CONBRN,@CONPDM,@CONPDT,@CONRUN,@COUNTER,@INSDUE_NEXT,(@CONINA - @CONINV),0,
			@CONINV,0,0,0,0,0,0,0,0,'','','',getdate(), --Date,
			NULL,'EDP',NULL,NULL,'',NULL,0,0,0,0,0,0);

			set @INSDUE_NEXT = dateadd(month, 1, @INSDUE_NEXT);
		end else 
		begin
			insert	into @HPTINS
			VALUES( 'A','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,
			@CONBRN,@CONPDM,@CONPDT,@CONRUN,@COUNTER,NULL,0,0,
			0,0,0,0,0,0,0,0,0,'','','',getdate(), --Date,
			NULL,'EDP',NULL,NULL,'',NULL,0,0,0,0,0,0);
			set @INSDUE_NEXT = @CONFDT;
		end
		set		@COUNTER = @COUNTER + 1;
	end;

	fetch next from CUR_HPMCON
	into @CONBRN,@CONPDM,@CONPDT,@CONRUN,@CONDTE,
	  @CONHPA,@CONINA,@CONHPV,@CONINV,@CONDEF,@CONCMN,
	  @CONPER,@CONFDT,@CONLDT;
end

close CUR_HPMCON;
deallocate CUR_HPMCON;
	
	insert into [dbo].[HPTINS00] SELECT * FROM @HPTINS;

    -- Insert statements for procedure here
	SELECT * FROM @HPTINS;

	-- exec [dbo].[SP_LS_GEN_HPTINS00] '01','2','01','8100245'
	-- exec [dbo].[SP_LS_GEN_HPTINS00] '01','2','01','8100256'
	-- select * from hptins00 where inscrn = '8100244'
END
GO
DROP ASSEMBLY [Microsoft.SqlServer.Types]
GO
