
USE [Opedia]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMesoscale_Eddy](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[day] [int] NOT NULL,
	[track] [int] NULL,
	[eddy_age] [int] NULL,
	[eddy_polarity] [int] NOT NULL,
	[eddy_radius] [float] NULL,
	[eddy_A] [float] NULL,
	[eddy_U] [float] NULL
) ON [PRIMARY]
GO



CREATE 	UNIQUE CLUSTERED INDEX [IX_tblMesoscale_Eddy_time_lat_lon_year_month_day_polarity] ON [dbo].[tblMesoscale_Eddy]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[eddy_polarity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
--
CREATE NONCLUSTERED INDEX [IX_tablMesoscale_Eddy_eddy_track] ON [dbo].[tblMesoscale_Eddy]
(
	[track] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
