USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblKOK1606_Gradients1_Diazotroph](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
  [N2_fixation_rate_mean] [float] NULL,
  [N2_fixation_rate_stdev] [float] NULL,
  [13C_fixation_rate_mean] [float] NULL,
  [13C_fixation_rate_stdev] [float] NULL,
  [UCYN_A1_nifH_genes_small] [float] NULL,
  [UCYN_A1_nifH_genes_large] [float] NULL,
  [UCYN_A2_A3_nifH_genes_small] [float] NULL,
  [UCYN_A2_A3_nifH_genes_large] [float] NULL,
  [UCYN_B_nifH_genes_small] [float] NULL,
  [UCYN_B_nifH_genes_large] [float] NULL,
  [UCYN_C_nifH_genes_small] [float] NULL,
  [UCYN_C_nifH_genes_large] [float] NULL,
  [Trichodesmium_nifH_genes_small] [float] NULL,
  [Trichodesmium_nifH_genes_large] [float] NULL,
  [Het_1_nifH_genes_small] [float] NULL,
  [Het_1_nifH_genes_large] [float] NULL,
  [Het_2_nifH_genes_small] [float] NULL,
  [Het_2_nifH_genes_large] [float] NULL,
  [Het_3_nifH_genes_small] [float] NULL,
  [Het_3_nifH_genes_large] [float] NULL,
  [Gamma_A_nifH_genes_small] [float] NULL,
  [Gamma_A_nifH_genes_large] [float] NULL


) ON [PRIMARY]
GO


-- indices
USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKOK1606_Gradients1_Diazotroph_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_Diazotroph]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
