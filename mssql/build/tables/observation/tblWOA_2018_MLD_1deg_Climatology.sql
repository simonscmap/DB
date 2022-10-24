
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblWOA_2018_MLD_1deg_Climatology](
[lat] [float] NOT NULL, 
[lon] [float] NOT NULL, 
[month] [int] NOT NULL, 
[M_an_clim] [float] NULL, 
[M_dd_clim] [float] NULL, 
[M_gp_clim] [float] NULL, 
[M_ma_clim] [float] NULL, 
[M_mn_clim] [float] NULL, 
[M_oa_clim] [float] NULL, 
[M_sd_clim] [float] NULL, 
[M_se_clim] [float] NULL

) ON [FG4]
GO


CREATE UNIQUE CLUSTERED INDEX [IX_tblWOA_2018_MLD_1deg_Climatology_month_lat_lon] ON [dbo].[tblWOA_2018_MLD_1deg_Climatology]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC
)

	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
	ON [FG4]
GO