USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblHOT_Macrozooplankton](
	[cruise_number_HOT] [int] NOT NULL,
	[time] [date] NOT NULL,
	[date_time] [nvarchar](4) NULL,
	[frac] [int] NULL,
	[tow] [int] NULL,
	[depth] [float] NOT NULL,
	[volume_zooplank_hot] [float] NULL,
	[settled_volume_zooplank_hot] [float] NULL,
	[wet_weight_zooplank_hot] [float] NULL,
	[dry_weight_zooplank_hot] [float] NULL,
	[carbon_zooplank_hot] [float] NULL,
	[nitrogen_zooplank_hot] [float] NULL,
	[abundance_zooplank_hot] [float] NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL
) ON [PRIMARY]
GO


-- indices
USE [Opedia]
GO

CREATE NONCLUSTERED INDEX [IX_tblHOT_Macrozooplankton_time_lat_lon_depth] ON [dbo].[tblHOT_Macrozooplankton]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


