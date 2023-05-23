USE [Opedia]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblModis_CHL_cl1](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[chlor_a] [float] NULL,
	[year] [smallint] NULL,
	[month] [tinyint] NULL,
	[week] [tinyint] NULL,
	[dayofyear] [smallint] NULL
) ON [FG4]
GO



CREATE UNIQUE NONCLUSTERED INDEX [IX_tblModis_CHL_cl1_time_lat_lon] ON [dbo].[tblModis_CHL_cl1]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE ([chlor_a]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]
GO



CREATE NONCLUSTERED INDEX [IX_tblModis_CHL_cl1_year_lat_lon] ON [dbo].[tblModis_CHL_cl1]
(
	[year] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE ([chlor_a]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]
GO

CREATE NONCLUSTERED INDEX [IX_tblModis_CHL_cl1_month_lat_lon] ON [dbo].[tblModis_CHL_cl1]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE ([chlor_a]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]
GO

CREATE NONCLUSTERED INDEX [IX_tblModis_CHL_cl1_week_lat_lon] ON [dbo].[tblModis_CHL_cl1]
(
	[week] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE ([chlor_a]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]
GO


CREATE NONCLUSTERED INDEX [IX_tblModis_CHL_cl1_dayofyear_lat_lon] ON [dbo].[tblModis_CHL_cl1]
(
	[dayofyear] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE ([chlor_a]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]
GO
