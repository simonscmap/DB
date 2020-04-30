USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblMGL1704_Gradients2_Trace_Metals](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
  [Sample num] [int] NULL,
  [Fe] [float] NULL,
  [Zn] [float] NULL,
  [Cd] [float] NULL,
  [Ni] [float] NULL,
  [Cu] [float] NULL,
  [Pb] [float] NULL,
  [Mn] [float] NULL,
  [Co] [float] NULL
) ON [FG2]
GO


-- indices
USE [Opedia]
GO

CREATE  NONCLUSTERED INDEX [IX_tblMGL1704_Gradients2_Trace_Metals_time_lat_lon_depth] ON [dbo].[tblMGL1704_Gradients2_Trace_Metals]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
GO
