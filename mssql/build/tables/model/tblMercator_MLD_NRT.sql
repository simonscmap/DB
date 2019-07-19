USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblMercator_MLD_NRT](
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[time] [date] NOT NULL,
	[mld_nrt] [float] NULL
) ON [PRIMARY]
GO


-- indices
USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblMercator_MLD_NRT_time_lat_lon] ON [dbo].[tblMercator_MLD_NRT]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE ([mld_nrt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


