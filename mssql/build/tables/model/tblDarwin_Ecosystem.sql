USE [Opedia]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDarwin_Ecosystem](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[phytoplankton_diversity_shannon_index] [float] NULL,
	[phytoplankton] [float] NULL,
	[zooplankton] [float] NULL,
	[CHL] [float] NULL,
	[primary_production] [float] NULL
) ON [FG1]
GO





-- indices

USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblDarwin_Ecosystem_time_lat_lon_depth] ON [dbo].[tblDarwin_Ecosystem]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)
INCLUDE (
	[phytoplankton_diversity_shannon_index],
	[phytoplankton],
	[zooplankton],
	[CHL],
	[primary_production]) 
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
	ON [FG2]
GO


