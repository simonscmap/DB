USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBATS_Zooplankton_Biomass](

	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[time_in] [smallint] NULL,
	[time_out] [smallint] NULL,
	[duration_minutes] [smallint] NULL,
	[volume_water] [float] NULL,
	[sieve_size] [float] NULL,
	[wet_weight] [float] NULL,
	[dry_weight] [float] NULL,
	[wet_weight_vol_water_ratio] [float] NULL,
	[dry_weight_vol_water_ratio] [float] NULL,
	[total_wet_weight_volume_all_size_fractions_ratio] [float] NULL,
	[total_dry_weight_volume_all_size_fractions_ratio] [float] NULL,
	[wet_weight_vol_water_ratio_200m_depth] [float] NULL,
	[dry_weight_vol_water_ratio_200m_depth] [float] NULL,
	[total_wet_weight_volume_all_size_fractions_ratio_200m_depth] [float] NULL,
	[total_dry_weight_volume_all_size_fractions_ratio_200m_depth] [float] NULL,
	[Cruise_ID] [varchar](20) NULL

) ON [FG2]
GO

-- indices
USE [Opedia]
GO

CREATE  NONCLUSTERED INDEX [IX_tblBATS_Zooplankton_Biomass_time_lat_lon_depth] ON [dbo].[tblBATS_Zooplankton_Biomass]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
GO
