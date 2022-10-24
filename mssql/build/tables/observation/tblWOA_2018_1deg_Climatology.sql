
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblWOA_2018_1deg_Climatology](
[depth] [float] NOT NULL, 
[lat] [float] NOT NULL, 
[lon] [float] NOT NULL, 
[month] [int] NOT NULL, 
[A_an_clim] [float] NULL, 
[A_dd_clim] [float] NULL, 
[A_gp_clim] [float] NULL, 
[A_ma_clim] [float] NULL, 
[A_mn_clim] [float] NULL, 
[A_oa_clim] [float] NULL, 
[A_sd_clim] [float] NULL, 
[A_se_clim] [float] NULL, 
[C_an_clim] [float] NULL, 
[C_dd_clim] [float] NULL, 
[C_gp_clim] [float] NULL, 
[C_ma_clim] [float] NULL, 
[C_mn_clim] [float] NULL, 
[C_oa_clim] [float] NULL, 
[C_sd_clim] [float] NULL, 
[C_se_clim] [float] NULL, 
[I_an_clim] [float] NULL, 
[I_dd_clim] [float] NULL, 
[I_gp_clim] [float] NULL, 
[I_ma_clim] [float] NULL, 
[I_mn_clim] [float] NULL, 
[I_oa_clim] [float] NULL, 
[I_sd_clim] [float] NULL, 
[I_se_clim] [float] NULL, 
[O_an_clim] [float] NULL, 
[O_dd_clim] [float] NULL, 
[O_gp_clim] [float] NULL, 
[O_ma_clim] [float] NULL, 
[O_mn_clim] [float] NULL, 
[O_oa_clim] [float] NULL, 
[O_sd_clim] [float] NULL, 
[O_se_clim] [float] NULL, 
[si_an_clim] [float] NULL, 
[si_dd_clim] [float] NULL, 
[si_gp_clim] [float] NULL, 
[si_ma_clim] [float] NULL, 
[si_mn_clim] [float] NULL, 
[si_oa_clim] [float] NULL, 
[si_sd_clim] [float] NULL, 
[si_se_clim] [float] NULL, 
[n_an_clim] [float] NULL, 
[n_dd_clim] [float] NULL, 
[n_gp_clim] [float] NULL, 
[n_ma_clim] [float] NULL, 
[n_mn_clim] [float] NULL, 
[n_oa_clim] [float] NULL, 
[n_sd_clim] [float] NULL, 
[n_se_clim] [float] NULL, 
[p_an_clim] [float] NULL, 
[p_dd_clim] [float] NULL, 
[p_gp_clim] [float] NULL, 
[p_ma_clim] [float] NULL, 
[p_mn_clim] [float] NULL, 
[p_oa_clim] [float] NULL, 
[p_sd_clim] [float] NULL, 
[p_se_clim] [float] NULL, 
[s_an_clim] [float] NULL, 
[s_dd_clim] [float] NULL, 
[s_gp_clim] [float] NULL, 
[s_ma_clim] [float] NULL, 
[s_mn_clim] [float] NULL, 
[s_oa_clim] [float] NULL, 
[s_sd_clim] [float] NULL, 
[s_se_clim] [float] NULL, 
[t_an_clim] [float] NULL, 
[t_dd_clim] [float] NULL, 
[t_gp_clim] [float] NULL, 
[t_ma_clim] [float] NULL, 
[t_mn_clim] [float] NULL, 
[t_oa_clim] [float] NULL, 
[t_sd_clim] [float] NULL, 
[t_se_clim] [float] NULL
) ON [FG4]
GO


CREATE UNIQUE CLUSTERED INDEX [IX_tblWOA_2018_1deg_Climatology_month_lat_lon_depth] ON [dbo].[tblWOA_2018_1deg_Climatology]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)

	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
	ON [FG4]
GO