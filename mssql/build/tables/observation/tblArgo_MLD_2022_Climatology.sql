USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblArgo_MLD_2022_Climatology](
	[month] [smallint] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[mld_da_mean_argo_clim] [float] NULL,
	[mld_dt_mean_argo_clim] [float] NULL,
	[mld_da_median_argo_clim] [float] NULL,
	[mld_dt_median_argo_clim] [float] NULL,
	[mld_da_std_argo_clim] [float] NULL,
	[mld_dt_std_argo_clim] [float] NULL,
	[mld_da_max_argo_clim] [float] NULL,
	[mld_dt_max_argo_clim] [float] NULL,
	[mlpd_da_argo_clim] [float] NULL,
	[mlpd_dt_argo_clim] [float] NULL,
	[mlt_da_argo_clim] [float] NULL,
	[mlt_dt_argo_clim] [float] NULL,
	[mls_da_argo_clim] [float] NULL,
	[mls_dt_argo_clim] [float] NULL,
	[num_profiles_argo_clim] [float] NULL
) ON [FG3]
GO


CREATE UNIQUE NONCLUSTERED INDEX [IX_tblArgo_MLD_2022_Climatology_month_lat_lon] ON [dbo].[tblArgo_MLD_2022_Climatology]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
GO


k,lmmm