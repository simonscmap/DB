USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[tblAloha_Deep_Trap_Omics](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[start_time] [datetime] NOT NULL,
	[end_time] [datetime] NOT NULL,
	[sample_name] [nchar](20) NULL,
	[processed_sample_name] [nchar](50) NULL,
	[sra_experiment] [nchar](50) NULL,
	[sra_run] [nchar](50) NULL,
	[sra_bioproject] [nchar](50) NULL,
	[sequence_type] [nchar](50) NULL,
	[sequencing_method] [nchar](5d0) NULL


) ON [PRIMARY]
GO



-- indices

USE [Opedia]
GO

CREATE  NONCLUSTERED INDEX [IX_tblAloha_Deep_Trap_Omics_time_lat_lon_depth] ON [dbo].[tblAloha_Deep_Trap_Omics]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
