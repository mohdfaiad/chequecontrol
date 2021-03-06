USE [LLSUDTA]
GO
/****** Object:  Table [dbo].[CQDT003]    Script Date: 06/15/2012 16:35:56 ******/
DROP TABLE [dbo].[CQDT003]
GO
/****** Object:  Table [dbo].[CQDT001]    Script Date: 06/15/2012 16:35:52 ******/
DROP TABLE [dbo].[CQDT001]
GO
/****** Object:  Table [dbo].[CQDM014]    Script Date: 06/15/2012 16:35:41 ******/
DROP TABLE [dbo].[CQDM014]
GO
/****** Object:  Table [dbo].[CQDM013]    Script Date: 06/15/2012 16:35:39 ******/
DROP TABLE [dbo].[CQDM013]
GO
/****** Object:  Table [dbo].[CQDM001]    Script Date: 06/15/2012 16:35:19 ******/
DROP TABLE [dbo].[CQDM001]
GO
/****** Object:  Table [dbo].[CQDM011]    Script Date: 06/15/2012 16:35:36 ******/
DROP TABLE [dbo].[CQDM011]
GO
/****** Object:  Table [dbo].[CQDT002]    Script Date: 06/15/2012 16:35:54 ******/
DROP TABLE [dbo].[CQDT002]
GO
/****** Object:  Table [dbo].[CQDS003]    Script Date: 06/15/2012 16:35:46 ******/
DROP TABLE [dbo].[CQDS003]
GO
/****** Object:  Table [dbo].[CQDM007]    Script Date: 06/15/2012 16:35:28 ******/
DROP TABLE [dbo].[CQDM007]
GO
/****** Object:  Table [dbo].[CQDS001]    Script Date: 06/15/2012 16:35:43 ******/
DROP TABLE [dbo].[CQDS001]
GO
/****** Object:  Table [dbo].[CQDS002]    Script Date: 06/15/2012 16:35:44 ******/
DROP TABLE [dbo].[CQDS002]
GO
/****** Object:  Table [dbo].[CQDS004]    Script Date: 06/15/2012 16:35:49 ******/
DROP TABLE [dbo].[CQDS004]
GO
/****** Object:  Table [dbo].[CQDS005]    Script Date: 06/15/2012 16:35:51 ******/
DROP TABLE [dbo].[CQDS005]
GO
/****** Object:  Table [dbo].[CQDM010]    Script Date: 06/15/2012 16:35:34 ******/
DROP TABLE [dbo].[CQDM010]
GO
/****** Object:  Table [dbo].[CQDM003]    Script Date: 06/15/2012 16:35:22 ******/
DROP TABLE [dbo].[CQDM003]
GO
/****** Object:  Table [dbo].[CQDM004]    Script Date: 06/15/2012 16:35:23 ******/
DROP TABLE [dbo].[CQDM004]
GO
/****** Object:  Table [dbo].[CQDM005]    Script Date: 06/15/2012 16:35:25 ******/
DROP TABLE [dbo].[CQDM005]
GO
/****** Object:  Table [dbo].[CQDM006]    Script Date: 06/15/2012 16:35:27 ******/
DROP TABLE [dbo].[CQDM006]
GO
/****** Object:  Table [dbo].[CQDM008]    Script Date: 06/15/2012 16:35:30 ******/
DROP TABLE [dbo].[CQDM008]
GO
/****** Object:  Table [dbo].[CQDM009]    Script Date: 06/15/2012 16:35:33 ******/
DROP TABLE [dbo].[CQDM009]
GO
/****** Object:  Table [dbo].[CQDM012]    Script Date: 06/15/2012 16:35:38 ******/
DROP TABLE [dbo].[CQDM012]
GO
/****** Object:  Table [dbo].[CQDM002]    Script Date: 06/15/2012 16:35:20 ******/
DROP TABLE [dbo].[CQDM002]
GO
/****** Object:  Table [dbo].[CQDT004]    Script Date: 06/15/2012 16:35:57 ******/
DROP TABLE [dbo].[CQDT004]
GO
/****** Object:  Table [dbo].[CQDT004]    Script Date: 06/15/2012 16:35:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDT004](
	[CQTACT] [varchar](1) NOT NULL,
	[CQTSTS] [varchar](1) NOT NULL,
	[CQTBRN] [varchar](3) NOT NULL,
	[CQTPDM] [varchar](4) NOT NULL,
	[CQTPDT] [varchar](3) NOT NULL,
	[CQTDNO] [varchar](15) NOT NULL,
	[CQTMNO] [varchar](15) NOT NULL,
	[CQTSTN] [varchar](2) NOT NULL,
	[CQTBNK] [varchar](3) NULL,
	[CQTEGN] [varchar](30) NULL,
	[CQTBBR] [varchar](4) NULL,
	[CQTBRH] [varchar](20) NULL,
	[CQTNO1] [varchar](1) NULL,
	[CQTNO2] [varchar](7) NOT NULL,
	[CQTTYP] [varchar](1) NULL,
	[CQTCTY] [varchar](1) NULL,
	[CQTDAT] [datetime] NULL,
	[CQTAMT] [decimal](18, 2) NULL,
	[CQTDUE] [datetime] NULL,
	[CQTSTD] [datetime] NULL,
	[CQTPAT] [char](2) NULL,
	[CQTTRD] [datetime] NULL,
	[CQTCCQ] [varchar](2) NULL,
	[CQTCUS] [varchar](7) NULL,
	[CQTVTP] [char](1) NULL,
	[CQTGEN] [char](1) NULL,
	[CQTVBR] [char](2) NULL,
	[CQTVYY] [char](2) NULL,
	[CQTRUN] [char](6) NULL,
	[CQTITM] [char](3) NULL,
	[CQTPOS] [char](1) NULL,
	[CQTRED] [char](1) NULL,
	[CQTRTD] [char](1) NULL,
	[CQTEXC] [char](1) NULL,
	[CQTDIV] [varchar](4) NULL,
	[CQTACC] [varchar](12) NULL,
	[CQTPID] [datetime] NULL,
	[CQTPIN] [varchar](6) NULL,
	[CQTPBY] [char](1) NULL,
	[CQTRFN] [varchar](15) NULL,
	[CQTRS1] [varchar](50) NULL,
	[CQTRS2] [varchar](50) NULL,
	[CQTRS3] [varchar](50) NULL,
	[CQTRS4] [varchar](50) NULL,
	[CQTRS5] [varchar](50) NULL,
	[CQTRN1] [numeric](18, 2) NULL,
	[CQTRN2] [numeric](18, 2) NULL,
	[CQTRN3] [numeric](18, 2) NULL,
	[CQTRN4] [numeric](18, 2) NULL,
	[CQTRN5] [numeric](18, 2) NULL,
	[CQTMNS] [varchar](2) NULL,
	[CQTMMO] [text] NULL,
	[CQTNAT] [varchar](50) NULL,
	[CQTCON] [varchar](7) NULL,
	[CQTDEA] [varchar](255) NULL,
	[CQTACD] [datetime] NULL,
	[CQTMDL] [varchar](20) NULL,
	[CQTETD] [datetime] NOT NULL,
	[CQTETU] [varchar](20) NOT NULL,
	[CQTETW] [varchar](60) NOT NULL,
	[CQTMTD] [datetime] NULL,
	[CQTMTU] [varchar](20) NULL,
	[CQTMTW] [varchar](60) NULL,
	[CQTCRD] [datetime] NOT NULL,
	[CQTCRU] [varchar](20) NOT NULL,
	[CQTCRW] [varchar](60) NOT NULL,
 CONSTRAINT [PK_CQDT004_1] PRIMARY KEY CLUSTERED 
(
	[CQTACT] ASC,
	[CQTSTS] ASC,
	[CQTBRN] ASC,
	[CQTPDM] ASC,
	[CQTPDT] ASC,
	[CQTDNO] ASC,
	[CQTMNO] ASC,
	[CQTNO2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDM002]    Script Date: 06/15/2012 16:35:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM002](
	[CQMACT] [varchar](1) NOT NULL,
	[CQMSTS] [varchar](1) NOT NULL,
	[CQMBRN] [varchar](3) NOT NULL,
	[CQMPDM] [varchar](4) NOT NULL,
	[CQMPDT] [varchar](3) NOT NULL,
	[CQMCDE] [varchar](3) NOT NULL,
	[CQMNAT] [varchar](80) NULL,
	[CQMNAE] [varchar](80) NULL,
	[CQMDCT] [varchar](80) NULL,
	[CQMDCE] [varchar](80) NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [numeric](18, 2) NULL,
	[CQMRN2] [numeric](18, 2) NULL,
	[CQMRN3] [numeric](18, 2) NULL,
	[CQMRN4] [numeric](18, 2) NULL,
	[CQMRN5] [numeric](18, 2) NULL,
	[CQMETD] [datetime] NOT NULL,
	[CQMETW] [varchar](60) NOT NULL,
	[CQMETU] [varchar](20) NOT NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMMTW] [varchar](60) NULL,
	[CQMCRD] [datetime] NULL,
	[CQMCRU] [varchar](20) NULL,
	[CQMCRW] [varchar](60) NULL,
 CONSTRAINT [PK_CQDMOO2] PRIMARY KEY CLUSTERED 
(
	[CQMBRN] ASC,
	[CQMPDM] ASC,
	[CQMPDT] ASC,
	[CQMCDE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Record Status  ''A''=Active, ''I''=Inactive' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMACT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data Status  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMSTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Branch of Company' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMBRN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Main' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMPDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMPDT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMCDE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name Thai' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMNAT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name English' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMNAE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description Thai' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMDCT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description English' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMDCE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve String 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMRS1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve String 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMRS2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve String 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMRS3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve String 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMRS4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve String 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMRS5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve Number 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMRN1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve Number 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMRN2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve Number 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMRN3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve Number 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMRN4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve Number 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMRN5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entry Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMETD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entry Workstation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMETW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entry User' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMETU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Maintenance Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMMTD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Maintenance User' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMMTU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Maintanance Workstation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM002', @level2type=N'COLUMN',@level2name=N'CQMMTW'
GO
/****** Object:  Table [dbo].[CQDM012]    Script Date: 06/15/2012 16:35:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM012](
	[CQMDNO] [char](15) NOT NULL,
	[CQMACT] [varchar](1) NOT NULL,
	[CQMSTS] [varchar](1) NOT NULL,
	[CQMBRN] [varchar](3) NOT NULL,
	[CQMPDM] [varchar](4) NOT NULL,
	[CQMPDT] [varchar](3) NOT NULL,
	[CQMTYP] [varchar](1) NOT NULL,
	[CQMTLE] [varchar](50) NOT NULL,
	[CQMFTO] [varchar](60) NULL,
	[CQMSBJ] [varchar](60) NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [numeric](18, 2) NULL,
	[CQMRN2] [numeric](18, 2) NULL,
	[CQMRN3] [numeric](18, 2) NULL,
	[CQMRN4] [numeric](18, 2) NULL,
	[CQMRN5] [numeric](18, 2) NULL,
	[CQMETD] [datetime] NOT NULL,
	[CQMETU] [varchar](20) NOT NULL,
	[CQMETW] [varchar](60) NOT NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMMTW] [varchar](60) NULL,
	[CQMCRD] [datetime] NOT NULL,
	[CQMCRU] [varchar](20) NOT NULL,
	[CQMCRW] [varchar](60) NOT NULL,
 CONSTRAINT [PK_CQDM012] PRIMARY KEY CLUSTERED 
(
	[CQMACT] ASC,
	[CQMSTS] ASC,
	[CQMBRN] ASC,
	[CQMPDM] ASC,
	[CQMPDT] ASC,
	[CQMDNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDM009]    Script Date: 06/15/2012 16:35:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM009](
	[CQMACT] [varchar](1) NULL,
	[CQMSTS] [varchar](1) NULL,
	[CQMBRN] [varchar](3) NULL,
	[CQMPDM] [varchar](4) NULL,
	[CQMPDT] [varchar](3) NULL,
	[CQMDNO] [char](15) NULL,
	[CQMNME] [varchar](30) NULL,
	[CQMLNM] [varchar](30) NULL,
	[CQMADD] [varchar](80) NULL,
	[CQMADS] [varchar](80) NULL,
	[CQMTAM] [varchar](80) NULL,
	[CQMAMP] [varchar](80) NULL,
	[CQMPRO] [varchar](80) NULL,
	[CQMZIP] [varchar](80) NULL,
	[CQMDRC] [datetime] NULL,
	[CQMNCT] [varchar](15) NULL,
	[CQMNDC] [varchar](15) NULL,
	[CQMDRD] [datetime] NULL,
	[CQMTOT] [float] NULL,
	[CQMEML] [varchar](100) NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [numeric](18, 2) NULL,
	[CQMRN2] [numeric](18, 2) NULL,
	[CQMRN3] [numeric](18, 2) NULL,
	[CQMRN4] [numeric](18, 2) NULL,
	[CQMRN5] [numeric](18, 2) NULL,
	[CQMETD] [datetime] NULL,
	[CQMETU] [varchar](20) NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMCRD] [datetime] NULL,
	[CQMCRW] [varchar](60) NULL,
	[CQMCRU] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDM008]    Script Date: 06/15/2012 16:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM008](
	[CQMACT] [char](1) NULL,
	[CQMSTS] [char](1) NULL,
	[CQMABR] [varchar](20) NOT NULL,
	[CQMGRP] [varchar](20) NOT NULL,
	[CQMCDE] [varchar](20) NOT NULL,
	[CQMNME] [varchar](80) NULL,
	[CQMDES] [varchar](150) NULL,
	[CQMVA1] [varchar](100) NULL,
	[CQMVA2] [varchar](100) NULL,
	[CQMVA3] [varchar](100) NULL,
	[CQMVA4] [varchar](100) NULL,
	[CQMVA5] [varchar](100) NULL,
	[CQMNM1] [decimal](8, 0) NULL,
	[CQMNM2] [decimal](8, 0) NULL,
	[CQMNM3] [decimal](8, 0) NULL,
	[CQMNM4] [decimal](8, 0) NULL,
	[CQMNM5] [decimal](8, 0) NULL,
	[CQMETD] [datetime] NULL,
	[CQMETW] [varchar](60) NULL,
	[CQMETU] [varchar](20) NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMMTW] [varchar](60) NULL,
 CONSTRAINT [PK_CQDM008] PRIMARY KEY CLUSTERED 
(
	[CQMABR] ASC,
	[CQMGRP] ASC,
	[CQMCDE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDM006]    Script Date: 06/15/2012 16:35:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM006](
	[CQMACT] [varchar](1) NOT NULL,
	[CQMSTS] [varchar](1) NOT NULL,
	[CQMBRN] [varchar](3) NOT NULL,
	[CQMPDM] [varchar](4) NOT NULL,
	[CQMPDT] [varchar](3) NOT NULL,
	[CQMDNO] [char](15) NOT NULL,
	[CQMBSD] [datetime] NULL,
	[CQMCTN] [varchar](40) NULL,
	[CQMACC] [char](10) NULL,
	[CQMITS] [numeric](14, 0) NULL,
	[CQMLSS] [numeric](14, 0) NULL,
	[CQMHPS] [numeric](14, 0) NULL,
	[CQMERR] [numeric](14, 0) NULL,
	[CQMITA] [numeric](18, 2) NULL,
	[CQMLSA] [numeric](18, 2) NULL,
	[CQMHPA] [numeric](18, 2) NULL,
	[CQMERA] [numeric](18, 2) NULL,
	[CQMFNA] [varchar](80) NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [numeric](18, 2) NULL,
	[CQMRN2] [numeric](18, 2) NULL,
	[CQMRN3] [numeric](18, 2) NULL,
	[CQMRN4] [numeric](18, 2) NULL,
	[CQMRN5] [numeric](18, 2) NULL,
	[CQMETD] [datetime] NOT NULL,
	[CQMETU] [varchar](20) NOT NULL,
	[CQMETW] [varchar](60) NOT NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMMTW] [varchar](60) NULL,
	[CQMCRD] [datetime] NOT NULL,
	[CQMCRU] [varchar](20) NOT NULL,
	[CQMCRW] [varchar](60) NOT NULL,
 CONSTRAINT [PK_CQDM006] PRIMARY KEY CLUSTERED 
(
	[CQMBRN] ASC,
	[CQMPDM] ASC,
	[CQMPDT] ASC,
	[CQMDNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDM005]    Script Date: 06/15/2012 16:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM005](
	[CQMACT] [varchar](1) NOT NULL,
	[CQMSTS] [varchar](1) NOT NULL,
	[CQMBRN] [varchar](3) NOT NULL,
	[CQMPDM] [varchar](4) NOT NULL,
	[CQMPDT] [varchar](3) NOT NULL,
	[CQMDNO] [char](15) NOT NULL,
	[CQMBSD] [datetime] NULL,
	[CQMCTN] [varchar](40) NULL,
	[CQMACC] [char](10) NULL,
	[CQMITS] [numeric](14, 0) NULL,
	[CQMLSS] [numeric](14, 0) NULL,
	[CQMHPS] [numeric](14, 0) NULL,
	[CQMERR] [numeric](14, 0) NULL,
	[CQMITA] [numeric](18, 2) NULL,
	[CQMLSA] [numeric](18, 2) NULL,
	[CQMHPA] [numeric](18, 2) NULL,
	[CQMERA] [numeric](18, 2) NULL,
	[CQMFNA] [varchar](80) NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [numeric](18, 2) NULL,
	[CQMRN2] [numeric](18, 2) NULL,
	[CQMRN3] [numeric](18, 2) NULL,
	[CQMRN4] [numeric](18, 2) NULL,
	[CQMRN5] [numeric](18, 2) NULL,
	[CQMETD] [datetime] NOT NULL,
	[CQMETU] [varchar](20) NOT NULL,
	[CQMETW] [varchar](60) NOT NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMMTW] [varchar](60) NULL,
	[CQMCRD] [datetime] NOT NULL,
	[CQMCRU] [varchar](20) NOT NULL,
	[CQMCRW] [varchar](60) NOT NULL,
 CONSTRAINT [PK_CQDM005] PRIMARY KEY CLUSTERED 
(
	[CQMBRN] ASC,
	[CQMPDM] ASC,
	[CQMPDT] ASC,
	[CQMDNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDM004]    Script Date: 06/15/2012 16:35:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM004](
	[CQMACT] [varchar](1) NULL,
	[CQMSTS] [varchar](1) NULL,
	[CQMBRN] [varchar](3) NULL,
	[CQMPDM] [varchar](4) NULL,
	[CQMPDT] [varchar](3) NULL,
	[CQMABR] [varchar](20) NULL,
	[CQMABG] [varchar](20) NULL,
	[CQMCOD] [varchar](20) NULL,
	[CQMNME] [varchar](80) NULL,
	[CQMDCT] [varchar](150) NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [numeric](18, 2) NULL,
	[CQMRN2] [numeric](18, 2) NULL,
	[CQMRN3] [numeric](18, 2) NULL,
	[CQMRN4] [numeric](18, 2) NULL,
	[CQMRN5] [numeric](18, 2) NULL,
	[CQMETD] [datetime] NULL,
	[CQMETU] [varchar](20) NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMCRD] [datetime] NULL,
	[CQMCRW] [varchar](60) NULL,
	[CQMCRU] [varchar](20) NULL,
	[CQMVTR] [varchar](3) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDM003]    Script Date: 06/15/2012 16:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM003](
	[CQMACT] [varchar](1) NULL,
	[CQMSTS] [varchar](1) NOT NULL,
	[CQMBRN] [varchar](3) NOT NULL,
	[CQMPDM] [varchar](4) NOT NULL,
	[CQMPDT] [varchar](3) NOT NULL,
	[CQMCDE] [int] NOT NULL,
	[CQMNAT] [varchar](80) NULL,
	[CQMNAE] [varchar](80) NULL,
	[CQMDCT] [varchar](80) NULL,
	[CQMDCE] [varchar](80) NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [numeric](18, 2) NULL,
	[CQMRN2] [numeric](18, 2) NULL,
	[CQMRN3] [numeric](18, 2) NULL,
	[CQMRN4] [numeric](18, 2) NULL,
	[CQMRN5] [numeric](18, 2) NULL,
	[CQMETD] [datetime] NOT NULL,
	[CQMETW] [varchar](60) NOT NULL,
	[CQMETU] [varchar](20) NOT NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMMTW] [varchar](60) NULL,
	[CQMCRD] [datetime] NULL,
	[CQMCRU] [varchar](20) NULL,
	[CQMCRW] [varchar](60) NULL,
 CONSTRAINT [PK_CQDM003] PRIMARY KEY CLUSTERED 
(
	[CQMBRN] ASC,
	[CQMPDM] ASC,
	[CQMPDT] ASC,
	[CQMCDE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Record Status  ''A''=Active, ''I''=Inactive' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMACT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data Status  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMSTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Branch of Company' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMBRN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Main' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMPDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMPDT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code Explanation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMCDE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name Thai' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMNAT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name English' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMNAE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description Thai' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMDCT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description English' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMDCE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve String 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMRS1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve String 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMRS2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve String 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMRS3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve String 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMRS4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve String 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMRS5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve Number 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMRN1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve Number 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMRN2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve Number 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMRN3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve Number 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMRN4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserve Number 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMRN5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entry Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMETD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entry Workstation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMETW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entry User' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMETU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Maintenance Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMMTD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Maintenance User' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMMTU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Maintanance Workstation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CQDM003', @level2type=N'COLUMN',@level2name=N'CQMMTW'
GO
/****** Object:  Table [dbo].[CQDM010]    Script Date: 06/15/2012 16:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM010](
	[ID] [int] NULL,
	[PARENT] [int] NULL,
	[REPORT_ID] [varchar](15) NULL,
	[REPORT_NAME] [varchar](50) NULL,
	[UNID] [varchar](15) NOT NULL,
	[PARAMS] [text] NULL,
	[ROWORDER] [int] NULL,
	[UPDATE_ON] [datetime] NULL,
	[REPORT_CONTEXT] [image] NULL,
	[REPORT_DESCRIPTION] [text] NULL,
	[STRSQL] [text] NULL,
	[STRSQL1] [text] NULL,
	[STRSQL2] [text] NULL,
	[STRSQL3] [text] NULL,
	[STRSQL4] [text] NULL,
	[STRSQL5] [text] NULL,
	[SQLPARAM1] [text] NULL,
	[SQLPARAM] [text] NULL,
	[SQLPARAM2] [text] NULL,
	[SQLPARAM3] [text] NULL,
	[SQLPARAM4] [text] NULL,
	[SQLPARAM5] [text] NULL,
	[DATA] [image] NULL,
	[DSNAME] [text] NULL,
	[TYPE] [char](3) NULL,
	[SQLPOBJ] [image] NULL,
	[SQLPOBJPARAMS] [image] NULL,
	[REVISION] [int] NULL,
	[VERSION] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDS005]    Script Date: 06/15/2012 16:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDS005](
	[CQMDNO] [char](15) NOT NULL,
	[CQMACT] [varchar](1) NOT NULL,
	[CQMSTS] [varchar](1) NOT NULL,
	[CQMBRN] [varchar](3) NOT NULL,
	[CQMPDM] [varchar](4) NOT NULL,
	[CQMPDT] [varchar](3) NOT NULL,
	[CQMBNK] [varchar](3) NULL,
	[CQMBBR] [varchar](4) NULL,
	[CQMNO2] [varchar](7) NOT NULL,
	[CQMCTY] [varchar](1) NULL,
	[CQMDAT] [datetime] NULL,
	[CQMAMT] [numeric](18, 2) NULL,
	[CQMSTD] [datetime] NULL,
	[CQMTRD] [datetime] NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [numeric](18, 2) NULL,
	[CQMRN2] [numeric](18, 2) NULL,
	[CQMRN3] [numeric](18, 2) NULL,
	[CQMRN4] [numeric](18, 2) NULL,
	[CQMRN5] [numeric](18, 2) NULL,
	[CQMETD] [datetime] NOT NULL,
	[CQMETU] [varchar](20) NOT NULL,
	[CQMETW] [varchar](60) NOT NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMMTW] [varchar](60) NULL,
	[CQMCRD] [datetime] NOT NULL,
	[CQMCRU] [varchar](20) NOT NULL,
	[CQMCRW] [varchar](60) NOT NULL,
 CONSTRAINT [PK_CQDS005] PRIMARY KEY CLUSTERED 
(
	[CQMACT] ASC,
	[CQMSTS] ASC,
	[CQMBRN] ASC,
	[CQMPDM] ASC,
	[CQMPDT] ASC,
	[CQMDNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDS004]    Script Date: 06/15/2012 16:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDS004](
	[CQSACT] [varchar](1) NOT NULL,
	[CQSSTS] [varchar](1) NOT NULL,
	[CQSBRN] [varchar](3) NOT NULL,
	[CQSPDM] [varchar](4) NOT NULL,
	[CQSPDT] [varchar](3) NOT NULL,
	[CQSDNO] [char](15) NOT NULL,
	[CQSNUM] [int] NOT NULL,
	[CQSBBR] [char](15) NULL,
	[CQSCNO] [char](15) NOT NULL,
	[CQSDCH] [datetime] NOT NULL,
	[CQSTOT] [float] NOT NULL,
	[CQSEML] [varchar](50) NOT NULL,
	[CQSRS1] [varchar](50) NULL,
	[CQSRS2] [varchar](50) NULL,
	[CQSRS3] [varchar](50) NULL,
	[CQSRS4] [varchar](50) NULL,
	[CQSRS5] [varchar](50) NULL,
	[CQSRN1] [numeric](18, 2) NULL,
	[CQSRN2] [numeric](18, 2) NULL,
	[CQSRN3] [numeric](18, 2) NULL,
	[CQSRN4] [numeric](18, 2) NULL,
	[CQSRN5] [numeric](18, 2) NULL,
	[CQSETD] [datetime] NULL,
	[CQSETU] [varchar](20) NULL,
	[CQSETW] [varchar](60) NULL,
	[CQSMTD] [datetime] NULL,
	[CQSMTU] [varchar](20) NULL,
	[CQSMTW] [varchar](60) NULL,
	[CQSCRD] [datetime] NULL,
	[CQSCRU] [varchar](20) NULL,
	[CQSCRW] [varchar](60) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDS002]    Script Date: 06/15/2012 16:35:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDS002](
	[CQSACT] [varchar](1) NOT NULL,
	[CQSSTS] [varchar](1) NOT NULL,
	[CQSBRN] [varchar](3) NOT NULL,
	[CQSPDM] [varchar](4) NOT NULL,
	[CQSPDT] [varchar](3) NOT NULL,
	[CQSDNO] [char](15) NOT NULL,
	[CQSRNO] [int] NOT NULL,
	[CQSETY] [char](2) NULL,
	[CQSBTY] [char](2) NULL,
	[CQSRMK] [varchar](50) NULL,
	[CQSWSO] [varchar](2) NULL,
	[CQSCNO] [varchar](14) NULL,
	[CQSRTY] [char](1) NULL,
	[CQSCQD] [datetime] NULL,
	[CQSCQA] [numeric](18, 2) NULL,
	[CQSCQN] [varchar](10) NULL,
	[CQSCQC] [varchar](20) NULL,
	[CQSBKC] [varchar](3) NULL,
	[CQSBRC] [varchar](4) NULL,
	[CQSCQT] [varchar](3) NULL,
	[CQSDED] [datetime] NULL,
	[CQSDLC] [varchar](10) NULL,
	[CQSBKN] [varchar](4) NULL,
	[CQSBNN] [varchar](40) NULL,
	[CQSCQS] [varchar](1) NULL,
	[CQSREC] [varchar](2) NULL,
	[CQSRED] [varchar](40) NULL,
	[CQSPLO] [varchar](7) NULL,
	[CQSECD] [datetime] NULL,
	[CQSTNO] [varchar](6) NULL,
	[CQSEDD] [char](1) NULL,
	[CQSDEL] [char](1) NULL,
	[CQSLDF] [char](1) NULL,
	[CQSRFN] [varchar](15) NULL,
	[CQSRS1] [varchar](50) NULL,
	[CQSRS2] [varchar](50) NULL,
	[CQSRS3] [varchar](50) NULL,
	[CQSRS4] [varchar](50) NULL,
	[CQSRS5] [varchar](50) NULL,
	[CQSRN1] [numeric](18, 2) NULL,
	[CQSRN2] [numeric](18, 2) NULL,
	[CQSRN3] [numeric](18, 2) NULL,
	[CQSRN4] [numeric](18, 2) NULL,
	[CQSRN5] [numeric](18, 2) NULL,
	[CQSETD] [datetime] NOT NULL,
	[CQSETU] [varchar](20) NOT NULL,
	[CQSETW] [varchar](60) NOT NULL,
	[CQSMTD] [datetime] NULL,
	[CQSMTU] [varchar](20) NULL,
	[CQSMTW] [varchar](60) NULL,
	[CQSCRD] [datetime] NOT NULL,
	[CQSCRU] [varchar](20) NOT NULL,
	[CQSCRW] [varchar](60) NOT NULL,
 CONSTRAINT [PK_CQDS002] PRIMARY KEY CLUSTERED 
(
	[CQSBRN] ASC,
	[CQSPDM] ASC,
	[CQSPDT] ASC,
	[CQSDNO] ASC,
	[CQSRNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDS001]    Script Date: 06/15/2012 16:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDS001](
	[CQSACT] [varchar](1) NOT NULL,
	[CQSSTS] [varchar](1) NOT NULL,
	[CQSBRN] [varchar](3) NOT NULL,
	[CQSPDM] [varchar](4) NOT NULL,
	[CQSPDT] [varchar](3) NOT NULL,
	[CQSDNO] [char](15) NOT NULL,
	[CQSRNO] [int] NOT NULL,
	[CQSETY] [char](2) NULL,
	[CQSBTY] [char](2) NULL,
	[CQSRMK] [varchar](max) NULL,
	[CQSWSO] [varchar](2) NULL,
	[CQSCNO] [varchar](14) NULL,
	[CQSRTY] [char](1) NULL,
	[CQSCQD] [datetime] NULL,
	[CQSCQA] [numeric](18, 2) NULL,
	[CQSCQN] [varchar](10) NULL,
	[CQSCQC] [varchar](20) NULL,
	[CQSBKC] [varchar](3) NULL,
	[CQSBRC] [varchar](4) NULL,
	[CQSCQT] [varchar](3) NULL,
	[CQSDED] [datetime] NULL,
	[CQSDLC] [varchar](10) NULL,
	[CQSBKN] [varchar](4) NULL,
	[CQSBNN] [varchar](40) NULL,
	[CQSCQS] [varchar](1) NULL,
	[CQSREC] [varchar](2) NULL,
	[CQSRED] [varchar](40) NULL,
	[CQSPLO] [varchar](7) NULL,
	[CQSECD] [datetime] NULL,
	[CQSTNO] [varchar](6) NULL,
	[CQSEDD] [char](1) NULL,
	[CQSDEL] [char](1) NULL,
	[CQSLDF] [char](1) NULL,
	[CQSRFN] [varchar](15) NULL,
	[CQSRS1] [varchar](50) NULL,
	[CQSRS2] [varchar](50) NULL,
	[CQSRS3] [varchar](50) NULL,
	[CQSRS4] [varchar](50) NULL,
	[CQSRS5] [varchar](50) NULL,
	[CQSRN1] [numeric](18, 2) NULL,
	[CQSRN2] [numeric](18, 2) NULL,
	[CQSRN3] [numeric](18, 2) NULL,
	[CQSRN4] [numeric](18, 2) NULL,
	[CQSRN5] [numeric](18, 2) NULL,
	[CQSETD] [datetime] NOT NULL,
	[CQSETU] [varchar](20) NOT NULL,
	[CQSETW] [varchar](60) NOT NULL,
	[CQSMTD] [datetime] NULL,
	[CQSMTU] [varchar](20) NULL,
	[CQSMTW] [varchar](60) NULL,
	[CQSCRD] [datetime] NOT NULL,
	[CQSCRU] [varchar](20) NOT NULL,
	[CQSCRW] [varchar](60) NOT NULL,
 CONSTRAINT [PK_CQDS001] PRIMARY KEY CLUSTERED 
(
	[CQSBRN] ASC,
	[CQSPDM] ASC,
	[CQSPDT] ASC,
	[CQSDNO] ASC,
	[CQSRNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDM007]    Script Date: 06/15/2012 16:35:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM007](
	[CQMACT] [varchar](1) NOT NULL,
	[CQMSTS] [varchar](1) NOT NULL,
	[CQMDFG] [char](1) NULL,
	[CQMCFA] [char](3) NULL,
	[CQMBRN] [varchar](3) NOT NULL,
	[CQMPDM] [varchar](4) NOT NULL,
	[CQMPDT] [varchar](3) NOT NULL,
	[CQMDNO] [varchar](15) NOT NULL,
	[CQMTNO] [varchar](15) NULL,
	[CQMACC] [varchar](15) NULL,
	[CQMPAT] [char](2) NULL,
	[CQMBNK] [char](3) NULL,
	[CQMBBR] [char](4) NULL,
	[CQMLET] [char](1) NULL,
	[CQMCNO] [varchar](10) NOT NULL,
	[CQMTYP] [char](1) NULL,
	[CQMCTY] [char](7) NULL,
	[CQMDTE] [datetime] NULL,
	[CQMITM] [int] NOT NULL,
	[CQMAMT] [decimal](18, 2) NULL,
	[CQMDUE] [datetime] NULL,
	[CQMCSN] [varchar](7) NULL,
	[CQMRMK] [varchar](200) NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [decimal](18, 2) NULL,
	[CQMRN2] [decimal](18, 2) NULL,
	[CQMRN3] [decimal](18, 2) NULL,
	[CQMRN4] [decimal](18, 2) NULL,
	[CQMRN5] [decimal](18, 2) NULL,
	[CQMETD] [datetime] NOT NULL,
	[CQMETW] [varchar](60) NOT NULL,
	[CQMETU] [varchar](10) NOT NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](10) NULL,
	[CQMMTW] [varchar](60) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDS003]    Script Date: 06/15/2012 16:35:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDS003](
	[CQSACT] [varchar](1) NOT NULL,
	[CQSSTS] [varchar](1) NOT NULL,
	[CQSBRN] [varchar](3) NOT NULL,
	[CQSPDM] [varchar](4) NOT NULL,
	[CQSPDT] [varchar](3) NOT NULL,
	[CQSDNO] [varchar](15) NOT NULL,
	[CQSRNO] [int] NULL,
	[CQSSEQ] [int] NOT NULL,
	[CQSCBR] [char](4) NULL,
	[CQSCPD] [char](4) NULL,
	[CQSCTP] [char](3) NULL,
	[CQSRCT] [char](3) NULL,
	[CQSAMT] [decimal](18, 4) NULL,
	[CQSCSN] [char](7) NOT NULL,
	[CQSVAT] [decimal](18, 4) NULL,
	[CQSWHT] [decimal](18, 4) NULL,
	[CQSNET] [decimal](18, 4) NULL,
	[CQSADF] [decimal](18, 4) NULL,
	[CQSCFA] [decimal](18, 0) NULL,
	[CQSPFA] [char](3) NULL,
	[CQSWFA] [char](3) NULL,
	[CQSIWT] [char](1) NULL,
	[CQSRS1] [varchar](50) NULL,
	[CQSRS2] [varchar](50) NULL,
	[CQSRS3] [varchar](50) NULL,
	[CQSRS4] [varchar](50) NULL,
	[CQSRS5] [varchar](50) NULL,
	[CQSRN1] [decimal](18, 2) NULL,
	[CQSRN2] [decimal](18, 2) NULL,
	[CQSRN3] [decimal](18, 2) NULL,
	[CQSRN4] [decimal](18, 2) NULL,
	[CQSRN5] [decimal](18, 2) NULL,
	[CQSETD] [datetime] NOT NULL,
	[CQSETW] [varchar](60) NOT NULL,
	[CQSETU] [varchar](20) NOT NULL,
	[CQSMTD] [datetime] NULL,
	[CQSMTU] [varchar](20) NULL,
	[CQSMTW] [varchar](60) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDT002]    Script Date: 06/15/2012 16:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDT002](
	[CQTACT] [varchar](1) NOT NULL,
	[CQTSTS] [varchar](1) NOT NULL,
	[CQTBRN] [varchar](3) NOT NULL,
	[CQTPDM] [varchar](4) NOT NULL,
	[CQTPDT] [varchar](3) NOT NULL,
	[CQTDNO] [varchar](15) NOT NULL,
	[CQTCNO] [varchar](14) NOT NULL,
	[CQTBNK] [varchar](3) NULL,
	[CQTBBR] [varchar](4) NULL,
	[CQTNO1] [varchar](1) NULL,
	[CQTNO2] [varchar](7) NOT NULL,
	[CQTTYP] [varchar](1) NULL,
	[CQTCTY] [varchar](1) NULL,
	[CQTDAT] [datetime] NULL,
	[CQTAMT] [numeric](18, 2) NULL,
	[CQTDUE] [datetime] NULL,
	[CQTSTD] [datetime] NULL,
	[CQTPAT] [char](2) NULL,
	[CQTTRD] [datetime] NULL,
	[CQTCCQ] [varchar](2) NULL,
	[CQTCUS] [varchar](7) NULL,
	[CQTVTP] [char](1) NULL,
	[CQTGEN] [char](1) NULL,
	[CQTVBR] [char](2) NULL,
	[CQTVYY] [char](2) NULL,
	[CQTRUN] [char](6) NULL,
	[CQTITM] [char](3) NULL,
	[CQTPOS] [char](1) NULL,
	[CQTRED] [char](1) NULL,
	[CQTRTD] [char](1) NULL,
	[CQTEXC] [char](1) NULL,
	[CQTDIV] [varchar](4) NULL,
	[CQTACC] [varchar](12) NULL,
	[CQTPID] [datetime] NULL,
	[CQTPIN] [varchar](6) NULL,
	[CQTPBY] [char](1) NULL,
	[CQTRFN] [varchar](15) NULL,
	[CQTRS1] [varchar](50) NULL,
	[CQTRS2] [varchar](50) NULL,
	[CQTRS3] [varchar](50) NULL,
	[CQTRS4] [varchar](50) NULL,
	[CQTRS5] [varchar](50) NULL,
	[CQTRN1] [numeric](18, 2) NULL,
	[CQTRN2] [numeric](18, 2) NULL,
	[CQTRN3] [numeric](18, 2) NULL,
	[CQTRN4] [numeric](18, 2) NULL,
	[CQTRN5] [numeric](18, 2) NULL,
	[CQTETD] [datetime] NOT NULL,
	[CQTETU] [varchar](20) NOT NULL,
	[CQTETW] [varchar](60) NOT NULL,
	[CQTMTD] [datetime] NULL,
	[CQTMTU] [varchar](20) NULL,
	[CQTMTW] [varchar](60) NULL,
	[CQTCRD] [datetime] NOT NULL,
	[CQTCRU] [varchar](20) NOT NULL,
	[CQTCRW] [varchar](60) NOT NULL,
	[CQTRNO] [int] NOT NULL,
 CONSTRAINT [PK_CQDT002_1] PRIMARY KEY CLUSTERED 
(
	[CQTACT] ASC,
	[CQTSTS] ASC,
	[CQTBRN] ASC,
	[CQTPDM] ASC,
	[CQTPDT] ASC,
	[CQTDNO] ASC,
	[CQTCNO] ASC,
	[CQTRNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDM011]    Script Date: 06/15/2012 16:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM011](
	[CQMACT] [varchar](1) NOT NULL,
	[CQMSTS] [varchar](1) NOT NULL,
	[CQMBRN] [varchar](3) NOT NULL,
	[CQMPDM] [varchar](4) NOT NULL,
	[CQMPDT] [varchar](3) NOT NULL,
	[CQMDNO] [varchar](15) NOT NULL,
	[CQMCNO] [varchar](14) NOT NULL,
	[CQMBNK] [varchar](3) NULL,
	[CQMBBR] [varchar](4) NULL,
	[CQMNO1] [varchar](1) NULL,
	[CQMNO2] [varchar](7) NOT NULL,
	[CQMTYP] [varchar](1) NULL,
	[CQMCTY] [varchar](1) NULL,
	[CQMDAT] [datetime] NULL,
	[CQMAMT] [numeric](18, 2) NULL,
	[CQMDUE] [datetime] NULL,
	[CQMSTD] [datetime] NULL,
	[CQMPAT] [char](2) NULL,
	[CQMTRD] [datetime] NULL,
	[CQMCCQ] [varchar](2) NULL,
	[CQMCUS] [varchar](7) NULL,
	[CQMVTP] [char](1) NULL,
	[CQMGEN] [char](1) NULL,
	[CQMVBR] [char](2) NULL,
	[CQMVYY] [char](2) NULL,
	[CQMRUN] [char](6) NULL,
	[CQMITM] [char](3) NULL,
	[CQMPOS] [char](1) NULL,
	[CQMRED] [char](1) NULL,
	[CQMRTD] [char](1) NULL,
	[CQMEXC] [char](1) NULL,
	[CQMDIV] [varchar](4) NULL,
	[CQMACC] [varchar](12) NULL,
	[CQMPID] [datetime] NULL,
	[CQMPIN] [varchar](6) NULL,
	[CQMPBY] [char](1) NULL,
	[CQMRFN] [varchar](15) NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [numeric](18, 2) NULL,
	[CQMRN2] [numeric](18, 2) NULL,
	[CQMRN3] [numeric](18, 2) NULL,
	[CQMRN4] [numeric](18, 2) NULL,
	[CQMRN5] [numeric](18, 2) NULL,
	[CQMETD] [datetime] NOT NULL,
	[CQMETU] [varchar](20) NOT NULL,
	[CQMETW] [varchar](60) NOT NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMMTW] [varchar](60) NULL,
	[CQMCRD] [datetime] NOT NULL,
	[CQMCRU] [varchar](20) NOT NULL,
	[CQMCRW] [varchar](60) NOT NULL,
 CONSTRAINT [PK_CQDM011] PRIMARY KEY CLUSTERED 
(
	[CQMACT] ASC,
	[CQMSTS] ASC,
	[CQMBRN] ASC,
	[CQMPDM] ASC,
	[CQMPDT] ASC,
	[CQMDNO] ASC,
	[CQMCNO] ASC,
	[CQMNO2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDM001]    Script Date: 06/15/2012 16:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM001](
	[CQMACT] [varchar](1) NOT NULL,
	[CQMSTS] [varchar](1) NOT NULL,
	[CQMBRN] [varchar](3) NOT NULL,
	[CQMPDM] [varchar](4) NOT NULL,
	[CQMPDT] [varchar](3) NOT NULL,
	[CQMBNK] [varchar](3) NOT NULL,
	[CQMEGN] [varchar](100) NOT NULL,
	[CQMBAT] [varchar](50) NOT NULL,
	[CQMBRT] [varchar](50) NOT NULL,
	[CQMBRC] [varchar](80) NOT NULL,
	[CQMBRH] [varchar](100) NOT NULL,
	[CQMLOC] [varchar](60) NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [decimal](18, 2) NULL,
	[CQMRN2] [decimal](18, 2) NULL,
	[CQMRN3] [decimal](18, 2) NULL,
	[CQMRN4] [decimal](18, 2) NULL,
	[CQMRN5] [decimal](18, 2) NULL,
	[CQMETD] [datetime] NOT NULL,
	[CQMETW] [varchar](60) NOT NULL,
	[CQMETU] [varchar](20) NOT NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMMTW] [varchar](60) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDM013]    Script Date: 06/15/2012 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM013](
	[CQMACT] [varchar](1) NOT NULL,
	[CQMSTS] [varchar](1) NOT NULL,
	[CQMBRN] [varchar](3) NOT NULL,
	[CQMPDM] [varchar](4) NOT NULL,
	[CQMPDT] [varchar](3) NOT NULL,
	[CQMLNU] [varchar](50) NOT NULL,
	[CQMTYP] [char](1) NOT NULL,
	[CQMHOS] [varchar](50) NULL,
	[CQMPOT] [varchar](10) NULL,
	[CQMUSR] [varchar](50) NULL,
	[CQMPAS] [varchar](50) NULL,
	[CQMPRI] [varchar](20) NULL,
	[CQMAUT] [varchar](20) NULL,
	[CQMFRM] [varchar](50) NULL,
	[CQMCCC] [varchar](255) NULL,
	[CQMSUB] [varchar](255) NULL,
	[CQMMSG] [text] NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [numeric](18, 2) NULL,
	[CQMRN2] [numeric](18, 2) NULL,
	[CQMRN3] [numeric](18, 2) NULL,
	[CQMRN4] [numeric](18, 2) NULL,
	[CQMRN5] [numeric](18, 2) NULL,
	[CQMETD] [datetime] NULL,
	[CQMETU] [varchar](20) NULL,
	[CQMETW] [varchar](60) NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMMTW] [varchar](60) NULL,
	[CQMCRD] [datetime] NULL,
	[CQMCRU] [varchar](20) NULL,
	[CQMCRW] [varchar](60) NULL,
 CONSTRAINT [PK_CQDM013] PRIMARY KEY CLUSTERED 
(
	[CQMACT] ASC,
	[CQMSTS] ASC,
	[CQMBRN] ASC,
	[CQMPDM] ASC,
	[CQMPDT] ASC,
	[CQMLNU] ASC,
	[CQMTYP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDM014]    Script Date: 06/15/2012 16:35:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDM014](
	[CQMACT] [char](1) NULL,
	[CQMSTS] [char](1) NULL,
	[CQMBRN] [varchar](3) NOT NULL,
	[CQMPDM] [varchar](4) NOT NULL,
	[CQMPDT] [varchar](3) NOT NULL,
	[CQMGRP] [varchar](20) NOT NULL,
	[CQMDEA] [varchar](20) NOT NULL,
	[CQMNME] [varchar](80) NULL,
	[CQMDES] [varchar](150) NULL,
	[CQMRS1] [varchar](50) NULL,
	[CQMRS2] [varchar](50) NULL,
	[CQMRS3] [varchar](50) NULL,
	[CQMRS4] [varchar](50) NULL,
	[CQMRS5] [varchar](50) NULL,
	[CQMRN1] [numeric](18, 2) NULL,
	[CQMRN2] [numeric](18, 2) NULL,
	[CQMRN3] [numeric](18, 2) NULL,
	[CQMRN4] [numeric](18, 2) NULL,
	[CQMRN5] [numeric](18, 2) NULL,
	[CQMETD] [datetime] NULL,
	[CQMETW] [varchar](60) NULL,
	[CQMETU] [varchar](20) NULL,
	[CQMMTD] [datetime] NULL,
	[CQMMTU] [varchar](20) NULL,
	[CQMMTW] [varchar](60) NULL,
 CONSTRAINT [PK_CQDM014] PRIMARY KEY CLUSTERED 
(
	[CQMBRN] ASC,
	[CQMPDM] ASC,
	[CQMPDT] ASC,
	[CQMGRP] ASC,
	[CQMDEA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDT001]    Script Date: 06/15/2012 16:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDT001](
	[CQTACT] [varchar](1) NULL,
	[CQTSTS] [varchar](1) NULL,
	[CQTBRN] [varchar](3) NULL,
	[CQTPDM] [varchar](4) NULL,
	[CQTPDT] [varchar](3) NULL,
	[CQTDNO] [varchar](15) NULL,
	[CQTRFN] [varchar](15) NULL,
	[CQTRCD] [datetime] NULL,
	[CQTCSN] [varchar](7) NULL,
	[CQTEMA] [varchar](255) NULL,
	[CQTDEA] [varchar](10) NULL,
	[CQTDLN] [varchar](255) NULL,
	[CQTONN] [varchar](255) NULL,
	[CQTADR] [varchar](255) NULL,
	[CQTCTC] [varchar](20) NULL,
	[CQTBNK] [varchar](3) NULL,
	[CQTBBR] [varchar](4) NULL,
	[CQTCQN] [varchar](7) NULL,
	[CQTCQD] [datetime] NULL,
	[CQTCQA] [decimal](18, 2) NULL,
	[CQTSUN] [decimal](18, 2) NULL,
	[CQTSUO] [decimal](18, 2) NULL,
	[CQTRS1] [varchar](50) NULL,
	[CQTRS2] [varchar](50) NULL,
	[CQTRS3] [varchar](50) NULL,
	[CQTRS4] [varchar](50) NULL,
	[CQTRS5] [varchar](50) NULL,
	[CQTRN1] [numeric](18, 2) NULL,
	[CQTRN2] [numeric](18, 2) NULL,
	[CQTRN3] [numeric](18, 2) NULL,
	[CQTRN4] [numeric](18, 2) NULL,
	[CQTRN5] [numeric](18, 2) NULL,
	[CQTETD] [datetime] NULL,
	[CQTETU] [varchar](20) NULL,
	[CQTETW] [varchar](60) NULL,
	[CQTMTD] [datetime] NULL,
	[CQTMTU] [varchar](20) NULL,
	[CQTMTW] [varchar](60) NULL,
	[CQTCRD] [datetime] NULL,
	[CQTCRU] [varchar](20) NULL,
	[CQTCRW] [varchar](60) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CQDT003]    Script Date: 06/15/2012 16:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CQDT003](
	[CQTACT] [varchar](1) NOT NULL,
	[CQTSTS] [varchar](1) NOT NULL,
	[CQTBRN] [varchar](3) NOT NULL,
	[CQTPDM] [varchar](4) NOT NULL,
	[CQTPDT] [varchar](3) NOT NULL,
	[CQTDNO] [varchar](15) NOT NULL,
	[CQTRFN] [varchar](15) NULL,
	[CQTCSN] [varchar](7) NULL,
	[CQTCQD] [datetime] NULL,
	[CQTDEA] [varchar](10) NULL,
	[CQTDLN] [varchar](255) NULL,
	[CQTONN] [varchar](255) NULL,
	[CQTADR] [varchar](255) NULL,
	[CQTEMA] [varchar](255) NULL,
	[CQTITM] [int] NULL,
	[CQTDUE] [datetime] NULL,
	[CQTDAM] [decimal](18, 2) NULL,
	[CQTRS1] [varchar](50) NULL,
	[CQTRS2] [varchar](50) NULL,
	[CQTRS3] [varchar](50) NULL,
	[CQTRS4] [varchar](50) NULL,
	[CQTRS5] [varchar](50) NULL,
	[CQTRN1] [numeric](18, 2) NULL,
	[CQTRN2] [numeric](18, 2) NULL,
	[CQTRN3] [numeric](18, 2) NULL,
	[CQTRN4] [numeric](18, 2) NULL,
	[CQTRN5] [numeric](18, 2) NULL,
	[CQTETD] [datetime] NULL,
	[CQTETU] [varchar](20) NULL,
	[CQTETW] [varchar](60) NULL,
	[CQTMTD] [datetime] NULL,
	[CQTMTU] [varchar](20) NULL,
	[CQTMTW] [varchar](60) NULL,
	[CQTCRD] [datetime] NULL,
	[CQTCRU] [varchar](20) NULL,
	[CQTCRW] [varchar](60) NULL,
 CONSTRAINT [PK_CQDT003] PRIMARY KEY CLUSTERED 
(
	[CQTACT] ASC,
	[CQTSTS] ASC,
	[CQTBRN] ASC,
	[CQTPDM] ASC,
	[CQTPDT] ASC,
	[CQTDNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
