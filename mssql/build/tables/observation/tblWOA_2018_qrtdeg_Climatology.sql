
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblWOA_2018_qrtdeg_Climatology](
[depth] [float] NOT NULL, 
[lat] [float] NOT NULL, 
[lon] [float] NOT NULL, 
[month] [int] NOT NULL, 
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


CREATE UNIQUE CLUSTERED INDEX [IX_tblWOA_2018_qrtdeg_Climatology_month_lat_lon_depth] ON [dbo].[tblWOA_2018_qrtdeg_Climatology]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)

	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
	ON [FG4]
GO