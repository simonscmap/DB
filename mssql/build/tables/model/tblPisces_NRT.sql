USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblPisces_NRT](
	[depth] [float] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[time] [date] NOT NULL,
	[Fe] [float] NULL,
	[PP] [float] NULL,
	[Si] [float] NULL,
	[NO3] [float] NULL,
	[CHL] [float] NULL,
	[PHYC] [float] NULL,
	[PO4] [float] NULL,
	[O2] [float] NULL,
	[month] [int] NULL,
	[year] [int] NULL
) ON [PRIMARY]
GO


-- indices

USE [Opedia]
GO

CREATE NONCLUSTERED INDEX [IX_tblPisces_NRT_month_lat_lon_depth] ON [dbo].[tblPisces_NRT]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)
INCLUDE ([Fe],
	[PP],
	[NO3],
	[PHYC],
	[PO4],
	[O2]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



CREATE UNIQUE NONCLUSTERED INDEX [IX_tblPisces_NRT_time_lat_lon_depth] ON [dbo].[tblPisces_NRT]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)
INCLUDE ( 	[Fe],
	[PP],
	[NO3],
	[PHYC],
	[PO4],
	[O2]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


