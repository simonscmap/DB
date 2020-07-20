USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblKM1906_Gradients3_uwayCTD](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,

	[temperature] [float] NULL,
	[salinity] [float] NULL,
	[adjusted_salinity] [float] NULL,
	[density] [float] NULL,
	[fluorescense] [float] NULL,
	[turbidity] [float] NULL,
	[oxygen] [float] NULL,
	[oxygen_saturation] [float] NULL,
	[CTD_num] [smallint] NULL


) ON [PRIMARY]
GO


-- indices
USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM1906_Gradients3_uwayCTD_time_lat_lon_depth] ON [dbo].[tblKM1906_Gradients3_uwayCTD]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
