USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDarwin_Ocean_Color](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[irradiance_reflectance_waveband_3] [float] NULL,
	[irradiance_reflectance_waveband_7] [float] NULL
) ON [FG1]
GO




---------------------
-- Indices
---------------------


USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblDarwin_Ocean_Color_time_lat_lon_depth] ON [dbo].[tblDarwin_Ocean_Color]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)
INCLUDE (
		[irradiance_reflectance_waveband_3],
		[irradiance_reflectance_waveband_7]
		) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG1]
GO


