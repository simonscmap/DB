USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblWind_NRT_hourly](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
    [hour] [tinyint] NOT NULL,
	[eastward_wind] [float] NULL,
	[eastward_wind_bias] [float] NULL,
	[eastward_wind_sdd] [float] NULL,
	[northward_wind] [float] NULL,
	[northward_wind_bias] [float] NULL,
	[northward_wind_sdd] [float] NULL,
	[wind_divergence] [float] NULL,
	[wind_divergence_bias] [float] NULL,
	[wind_divergence_dv] [float] NULL,
	[wind_curl] [float] NULL,
	[wind_curl_bias] [float] NULL,
	[wind_curl_dv] [float] NULL,
	[eastward_stress] [float] NULL,
	[eastward_stress_bias] [float] NULL,
	[eastward_stress_sdd] [float] NULL,
	[northward_stress] [float] NULL,
	[northward_stress_bias] [float] NULL,
	[northward_stress_sdd] [float] NULL,
	[stress_divergence] [float] NULL,
	[stress_divergence_bias] [float] NULL,
	[stress_divergence_dv] [float] NULL,
	[stress_curl] [float] NULL,
	[stress_curl_bias] [float] NULL,
	[stress_curl_dv] [float] NULL,
	[air_density] [float] NULL,
	[number_of_observations] [smallint] NULL,
	[number_of_observations_divcurl] [smallint] NULL,
	[year] [smallint] NULL,
	[month] [tinyint] NULL,
	[week] [tinyint] NULL,
	[dayofyear] [smallint] NULL
) ON [FG6]
GO

CREATE UNIQUE CLUSTERED INDEX [IX_tblWind_NRT_hourly_time_lat_lon_hour] ON [dbo].[tblWind_NRT_hourly]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[hour] ASC
)
 WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG6]
GO
