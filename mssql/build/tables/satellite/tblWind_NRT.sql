USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblWind_NRT](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[wind_speed] [float] NULL,
	[eastward_wind] [float] NULL,
	[northward_wind] [float] NULL,
	[wind_stress] [float] NULL,
	[surface_downward_eastward_stress] [float] NULL,
	[surface_downward_northward_stress] [float] NULL,
	[wind_speed_rms] [float] NULL,
	[eastward_wind_rms] [float] NULL,
	[northward_wind_rms] [float] NULL,
	[wind_vector_curl] [float] NULL,
	[wind_vector_divergence] [float] NULL,
	[wind_stress_curl] [float] NULL,
	[wind_stress_divergence] [float] NULL,
	[sampling_length] [float] NULL,
	[surface_type] [float] NULL,
	[height] [float] NULL,
	[hour] [tinyint] NULL,
	[year]       [smallint]      NULL,
	[month]       [tinyint]      NULL,
	[week]       [tinyint]      NULL,
	[dayofyear]       [smallint]       NULL
) ON [FG3]
GO



-- indices

USE [Opedia]
GO


CREATE UNIQUE CLUSTERED INDEX [IX_tblWind_NRT_time_lat_lon_hour] ON [dbo].[tblWind_NRT]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[hour] ASC
)
 WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
GO






CREATE NONCLUSTERED INDEX [IX_tblWind_NRT_dayofyear_lat_lon] ON [dbo].[tblWind_NRT]
(
	[dayofyear] ASC,
	[lat] ASC,
	[lon] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]


CREATE NONCLUSTERED INDEX [IX_tblWind_NRT_week_lat_lon] ON [dbo].[tblWind_NRT]
(
	[week] ASC,
	[lat] ASC,
	[lon] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]


CREATE NONCLUSTERED INDEX [IX_tblWind_NRT_month_lat_lon] ON [dbo].[tblWind_NRT]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]



CREATE NONCLUSTERED INDEX [IX_tblWind_NRT_year_lat_lon] ON [dbo].[tblWind_NRT]
(
	[year] ASC,
	[lat] ASC,
	[lon] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]
