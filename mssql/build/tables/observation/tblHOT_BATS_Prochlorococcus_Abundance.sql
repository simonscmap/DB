USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblHOT_BATS_Prochlorococcus_Abundance](

	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
  [site_Chisholm] [nchar](50) NULL,
  [Pro_eMED4_abundance] [float] NULL,
  [Pro_eMED4_stdev] [float] NULL,
  [Pro_eMIT9312_abundance] [float] NULL,
  [Pro_eMIT9312_stdev] [float] NULL,
  [Pro_eMIT9313_abundance] [float] NULL,
  [Pro_eMIT9313_stdev] [float] NULL,
  [Pro_eNATL_abundance] [float] NULL,
  [Pro_eNATL_stdev] [float] NULL,
  [Pro_eSS120_abundance] [float] NULL,
  [Pro_eSS120_stdev] [float] NULL,
  [temp_C_cmore] [float] NULL,
  [csal_cmore] [float] NULL,
  [sigma_cmore] [float] NULL,
  [time_quality_Chisholm] [smallint] NULL,
  [Pro_eMED4_abundance_quality] [float] NULL,
  [Pro_eMIT9312_abundance_quality] [float] NULL,
  [Pro_eMIT9313_abundance_quality] [float] NULL,
  [Pro_eNATL_abundance_quality] [float] NULL,
  [Pro_eSS120_abundance_quality] [float] NULL,
  [Pro_total_ecotype_abundance] [float] NULL,
  [Pro_total_ecotype_abundance_quality[float] NULL

) ON [FG2]
GO

-- indices
USE [Opedia]
GO

CREATE  UNIQUE NONCLUSTERED INDEX [IX_tblHOT_BATS_Prochlorococcus_Abundance_time_lat_lon_depth] ON [dbo].[tblHOT_BATS_Prochlorococcus_Abundance]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
GO
