
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblArgoCore_REP](
[time]                  [datetime] NOT NULL,
[lat]                   [float] NOT NULL,
[lon]                   [float] NOT NULL,
[depth]                 [float] NOT NULL,
[year]                  [int]     NULL,
[month]                 [int]     NULL,
[week]                  [int]     NULL,
[dayofyear]             [int]     NULL,
[float_id]              [int]     NULL,
[cycle]                 [int]     NULL,
[POSITION_QC]           [int]    NULL,
[DIRECTION]             [nvarchar](150)     NULL,
[DATA_MODE]             [nvarchar](150)     NULL,
[DATA_CENTRE]           [nvarchar](150)     NULL,
[JULD_QC]               [int]      NULL,
[JULD_LOCATION]         [float]     NULL,
[PROFILE_PRES_QC]       [nvarchar](150)     NULL,
[PROFILE_TEMP_QC]       [nvarchar](150)     NULL,
[PROFILE_PSAL_QC]       [nvarchar](150)     NULL,
[PRES]                  [float]     NULL,
[PRES_QC]               [nvarchar](150)     NULL,
[PRES_ADJUSTED]         [float]     NULL,
[PRES_ADJUSTED_QC]      [nvarchar](150)     NULL,
[PRES_ADJUSTED_ERROR]   [float]     NULL,
[TEMP]                  [float]     NULL,
[TEMP_QC]               [nvarchar](150)     NULL,
[TEMP_ADJUSTED]         [float]     NULL,
[TEMP_ADJUSTED_QC]      [nvarchar](150)     NULL,
[TEMP_ADJUSTED_ERROR]   [float]     NULL,
[PSAL]                  [float]     NULL,
[PSAL_QC]               [nvarchar](150)     NULL,
[PSAL_ADJUSTED]         [float]     NULL,
[PSAL_ADJUSTED_QC]      [nvarchar](150)     NULL,
[PSAL_ADJUSTED_ERROR]   [float]     NULL
 
) ON [FG3]
GO




USE Opedia
GO


CREATE UNIQUE CLUSTERED INDEX [IX_tblArgoCore_REP_time_lat_lon_depth] ON [dbo].[tblArgoCore_REP]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
GO



CREATE NONCLUSTERED INDEX [IX_tblArgoCore_REP_float_id] ON [dbo].[tblArgoCore_REP]
(
	[float_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
GO




CREATE NONCLUSTERED INDEX [IX_tblArgoCore_REP_dayofyear_lat_lon] ON [dbo].[tblArgoCore_REP]
(
	[dayofyear] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC

)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]
GO


CREATE NONCLUSTERED INDEX [IX_tblArgoCore_REP_week_lat_lon] ON [dbo].[tblArgoCore_REP]
(
	[week] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC

)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]
GO


CREATE NONCLUSTERED INDEX [IX_tblArgoCore_REP_month_lat_lon] ON [dbo].[tblArgoCore_REP]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC

)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]
GO


CREATE NONCLUSTERED INDEX [IX_tblArgoCore_REP_year_lat_lon] ON [dbo].[tblArgoCore_REP]
(
	[year] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC

)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]
GO
