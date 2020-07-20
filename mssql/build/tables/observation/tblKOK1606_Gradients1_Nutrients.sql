USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblKOK1606_Gradients1_Nutrients](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[Station] [nchar](50) NULL,
	[Cast] [smallint] NULL,
	[RosPos] [smallint] NULL,
	[SiO4] [float] NULL,
	[NO3_NO2] [float] NULL,
	[TN] [float] NULL,
	[TON] [float] NULL,
	[PO4] [float] NULL,
	[TP] [float] NULL,
	[TOP] [float] NULL,
	[TOC] [float] NULL,
	[NH4] [float] NULL

) ON [FG2]
GO

-- indices
USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKOK1606_Gradients1_Nutrients_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_Nutrients]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
GO
