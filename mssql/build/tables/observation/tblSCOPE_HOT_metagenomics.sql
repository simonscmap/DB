USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[tblSCOPE_HOT_metagenomics](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[sample_name] [nchar](50) NULL,
	[HOT_cruise_#] [smallint] NULL,
	[cruise_name] [nchar](50) NULL,
	[station] [smallint] NULL,
	[cast] [smallint] NULL,
	[BottleID] [bigint] NULL,
	[filter_max] [float] NULL,
	[filter_min] [float] NULL,
	[filter_type] [nchar](50) NULL,
	[sra_sample] [nchar](50) NULL,
	[sra_run] [nchar](50) NULL,
	[sra_bioproject] [nchar](50) NULL,
	[library_kit] [nchar](50) NULL,
	[sequence_type] [nchar](50) NULL,
	[DNA_prep_method] [nchar](50) NULL,
	[sequencing_method] [nchar](50) NULL

) ON [PRIMARY]
GO


-- indices

USE [Opedia]
GO

CREATE  NONCLUSTERED INDEX [IX_tblSCOPE_HOT_metagenomics_time_lat_lon_depth] ON [dbo].[tblSCOPE_HOT_metagenomics]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
