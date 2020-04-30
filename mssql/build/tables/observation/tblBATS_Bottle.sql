USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBATS_Bottle](

	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[temp] [float] NULL,
	[CTD_salinity] [float] NULL,
	[salinity] [float] NULL,
	[sigma_theta] [float] NULL,
	[oxygen] [float] NULL,
	[oxygen_fix_temp] [float] NULL,
	[oxygen_anomaly] [float] NULL,
	[CO2] [float] NULL,
	[alkalinity] [float] NULL,
	[nitrate_nitrite] [float] NULL,
	[nitrite] [float] NULL,
	[phosphate] [float] NULL,
	[silicate] [float] NULL,
	[POC] [float] NULL,
	[PON] [float] NULL,
	[TOC] [float] NULL,
	[TN] [float] NULL,
	[bacteria_enumeration] [float] NULL,
	[POP] [float] NULL,
	[total_dissolved_phosphorus] [float] NULL,
	[low_level_phosphorus] [float] NULL,
	[particulate_biogenic_silica] [float] NULL,
	[particulate_lithogenic_silica] [float] NULL,
	[prochlorococcus] [float] NULL,
	[synechococcus] [float] NULL,
	[picoeukaryotes] [float] NULL,
	[nanoeukaryotes] [float] NULL,
	[cruise_ID] [varchar](20) NULL

) ON [FG2]
GO

-- indices
USE [Opedia]
GO

CREATE  NONCLUSTERED INDEX [IX_tblBATS_Bottle_time_lat_lon_depth] ON [dbo].[tblBATS_Bottle]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
GO
