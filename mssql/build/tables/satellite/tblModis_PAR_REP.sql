USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblModis_PAR](
  [time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[PAR] [float] NULL
) ON [FG2]
GO


-- indices
USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblModis_PAR_time_lat_lon] ON [dbo].[tblModis_PAR]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE ([PAR]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
GO
