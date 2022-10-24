SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAltimetry_REP_Signal](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[sla] [float] NULL,
	[err_sla] [float] NULL,
	[ugosa] [float] NULL,
	[err_ugosa] [float] NULL,
	[vgosa] [float] NULL,
	[err_vgosa] [float] NULL,
	[adt] [float] NULL,
	[ugos] [float] NULL,
	[vgos] [float] NULL,
	[flag_ice] [bit] NULL,
	[tpa_correction] [float] NULL,
	[year] [smallint] NULL,
	[month] [tinyint] NULL,
	[week] [tinyint] NULL,
	[dayofyear] [smallint] NULL
) ON [FG4]
GO

CREATE UNIQUE CLUSTERED INDEX [IX_tblAltimetry_REP_Signal_time_lat_lon] ON [dbo].[tblAltimetry_REP_Signal]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]
GO


CREATE NONCLUSTERED INDEX [IX_tblAltimetry_REP_Signal_dayofyear_lat_lon] ON [dbo].[tblAltimetry_REP_Signal]
(
	[dayofyear] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE([sla],[ugosa],[vgosa],[adt],[ugos],[vgos]) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG4]


CREATE NONCLUSTERED INDEX [IX_tblAltimetry_REP_Signal_week_lat_lon] ON [dbo].[tblAltimetry_REP_Signal]
(
	[week] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE([sla],[ugosa],[vgosa],[adt],[ugos],[vgos]) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG4]


CREATE NONCLUSTERED INDEX [IX_tblAltimetry_REP_Signal_month_lat_lon] ON [dbo].[tblAltimetry_REP_Signal]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE([sla],[ugosa],[vgosa],[adt],[ugos],[vgos]) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG4]


CREATE NONCLUSTERED INDEX [IX_tblAltimetry_REP_Signal_year_lat_lon] ON [dbo].[tblAltimetry_REP_Signal]
(
	[year] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE([sla],[ugosa],[vgosa],[adt],[ugos],[vgos]) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG4]
