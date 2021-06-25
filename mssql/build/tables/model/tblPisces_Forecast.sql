USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblPisces_Forecast](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
    [chl] [float] NULL,
    [fe] [float] NULL,
    [no3] [float] NULL,
    [nppv] [float] NULL,
    [o2] [float] NULL,
    [ph] [float] NULL,
    [phyc] [float] NULL,
    [po4] [float] NULL,
    [si] [float] NULL,
    [spco2] [float] NULL,
	[year]       [smallint]      NULL,
	[month]       [tinyint]      NULL,
	[week]       [tinyint]      NULL,
	[dayofyear]       [smallint]       NULL
) ON [FG3]
GO



-- indices

USE [Opedia]
GO


CREATE UNIQUE CLUSTERED INDEX [IX_tblPisces_Forecast_time_lat_lon] ON [dbo].[tblPisces_Forecast]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC)
 WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
GO






CREATE NONCLUSTERED INDEX [IX_tblPisces_Forecast_dayofyear_lat_lon] ON [dbo].[tblPisces_Forecast]
(
	[dayofyear] ASC,
	[lat] ASC,
	[lon] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]


CREATE NONCLUSTERED INDEX [IX_tblPisces_Forecast_week_lat_lon] ON [dbo].[tblPisces_Forecast]
(
	[week] ASC,
	[lat] ASC,
	[lon] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]


CREATE NONCLUSTERED INDEX [IX_tblPisces_Forecast_month_lat_lon] ON [dbo].[tblPisces_Forecast]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]



CREATE NONCLUSTERED INDEX [IX_tblPisces_Forecast_year_lat_lon] ON [dbo].[tblPisces_Forecast]
(
	[year] ASC,
	[lat] ASC,
	[lon] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]
