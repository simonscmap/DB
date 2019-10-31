USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblMGL1704_Gradients2_Diazotroph](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
  [UCYN_A1_nifH_genes_mean] [float] NULL,
  [UCYN_A1_nifH_genes_stdev] [float] NULL,
  [N2_fixation_rate_mean] [float] NULL,
  [N2_fixation_rate_stdev] [float] NULL,
  [13C_fixation_rate_mean] [float] NULL,
  [13C_fixation_rate_stdev] [float] NULL,
  [Trichodesmium_nifH_genes_mean] [float] NULL,
  [Trichodesmium_nifH_genes_stdev] [float] NULL


) ON [PRIMARY]
GO


-- indices
USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblMGL1704_Gradients2_Diazotroph_time_lat_lon_depth] ON [dbo].[tblMGL1704_Gradients2_Diazotroph]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
