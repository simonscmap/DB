USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[tblGlobalDrifterProgram](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
  [sst] [float] NULL,
  [velocity_u] [float] NULL,
  [velocity_v] [float] NULL,
  [drifter_speed] [float] NULL,
  [lat_uncertainty] [float] NULL,
  [lon_uncertainty] [float] NULL,
  [sst_uncertainty] [float] NULL,
  [drifter_ID] [int] NULL
) ON [PRIMARY]
GO



USE [Opedia]
GO

CREATE CLUSTERED INDEX [IX_tblGlobalDrifterProgram_time_lat_lon_depth] ON [dbo].[tblGlobalDrifterProgram]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
