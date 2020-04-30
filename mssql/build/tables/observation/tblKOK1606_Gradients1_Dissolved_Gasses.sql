USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblKOK1606_Gradients1_Dissolved_Gasses](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[Station] [nchar](50) NULL
	[Cast] [smallint] NULL,
	[RosPos] [smallint] NULL,
	[CH4] [float] NULL,
  [CH4_stdev] [float] NULL,
  [N2O] [float] NULL,
  [N2O_stdev] [float] NULL
) ON [PRIMARY]
GO


-- indices
USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKOK1606_Gradients1_Dissolved_Gasses_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_Dissolved_Gasses]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
