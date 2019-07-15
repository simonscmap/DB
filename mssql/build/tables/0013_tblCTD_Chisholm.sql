USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCTD_Chisholm](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[theta_cmore] [float] NULL,
	[sigma_cmore] [float] NULL,
	[temp_cmore] [float] NULL,
	[csal_cmore] [float] NULL,
	[coxy_cmore] [float] NULL,
	[par_volts_cmore] [float] NULL,
	[chlpig_cmore] [float] NULL,
	[beamat_cmore] [float] NULL,
	[xmiss_cmore] [float] NULL
) ON [PRIMARY]
GO



-- indices

USE [Opedia]
GO

CREATE NONCLUSTERED INDEX [IX_tblCTD_Chisholm_time_lat_lon_depth] ON [dbo].[tblCTD_Chisholm]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


