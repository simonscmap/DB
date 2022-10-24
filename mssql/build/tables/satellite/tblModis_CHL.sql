USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblModis_CHL](

[time] [date] NOT NULL, 
[lat] [float] NOT NULL, 
[lon] [float] NOT NULL, 
[chlor_a] [float] NULL
) ON [FG4]
GO

USE [Opedia]
GO

CREATE UNIQUE CLUSTERED INDEX [IX_tblModis_CHL_time_lat_lon] ON [dbo].[tblModis_CHL]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]
GO