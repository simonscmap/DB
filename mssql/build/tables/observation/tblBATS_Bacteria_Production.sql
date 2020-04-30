USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBATS_Bacteria_Production](

	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[salinity] [float] NULL,
	[thy1] [float] NULL,
	[thy2] [float] NULL,
	[thy3] [float] NULL,
	[thy] [float] NULL,
	[cruise_ID] [bigint] NULL,

) ON [FG2]
GO

-- indices
USE [Opedia]
GO

CREATE  NONCLUSTERED INDEX [IX_tblBATS_Bacteria_Production_time_lat_lon_depth] ON [dbo].[tblBATS_Bacteria_Production]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
GO
