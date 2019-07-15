USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDarwin_Nutrient_3day](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[FeT_darwin_3day] [float] NULL,
	[PO4_darwin_3day] [float] NULL,
	[DIN_darwin_3day] [float] NULL,
	[SiO2_darwin_3day] [float] NULL,
	[O2_darwin_3day] [float] NULL
) ON [PRIMARY]
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
INCLUDE ([FeT_darwin_3day],
	[PO4_darwin_3day],
	[DIN_darwin_3day],
	[SiO2_darwin_3day],
	[O2_darwin_3day]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


