USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBATS_CTD](

	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NULL,
	[pressure] [float] NULL,
	[temperature] [float] NULL,
	[conductivity] [float] NULL,
	[salinity] [float] NULL,
	[dissolved_oxygen] [float] NULL,
	[beam_attenuation_coefficient] [float] NULL,
	[fluorescence] [float] NULL,
	[PAR] [float] NULL,
	[cruise_ID] [int] NULL,

) ON [FG2]
GO


-- indices
USE [Opedia]
GO

CREATE  NONCLUSTERED INDEX [IX_tblBATS_CTD_time_lat_lon_depth] ON [dbo].[tblBATS_CTD]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
GO
