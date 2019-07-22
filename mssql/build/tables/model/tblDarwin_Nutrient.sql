USE [Opedia]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDarwin_Nutrient](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[FeT] [float] NULL,
	[PO4] [float] NULL,
	[DIN] [float] NULL,
	[SiO2] [float] NULL,
	[O2] [float] NULL
) ON [FG1]
GO






-- indices

USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblDarwin_Nutrient_3day_time_lat_lon_depth] ON [dbo].[tblDarwin_Nutrient_3day]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)
INCLUDE ([FeT],
	[PO4],
	[DIN],
	[SiO2],
	[O2]) 
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
	ON [FG1]
GO


