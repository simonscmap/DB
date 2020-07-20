USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblMGL1704_Gradients2_uway_optics](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
  [SST] [float] NULL,
  [LISST_small] [float] NULL,
  [LISST_medium] [float] NULL,
  [LISST_large] [float] NULL,
  [Chl_fl] [float] NULL,
  [Scattering] [float] NULL,
  [CDOM_fl] [float] NULL


) ON [PRIMARY]
GO



-- indices
USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblMGL1704_Gradients2_uway_optics_time_lat_lon_depth] ON [dbo].[tblMGL1704_Gradients2_uway_optics]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
