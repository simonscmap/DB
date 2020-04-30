
USE [Opedia]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOceans_Melting_Greenland_CTD](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
  [depth] [float] NOT NULL,
	[temperature] [float] NULL,
	[conductivity] [float] NULL,
	[salinity] [float] NULL,
	[sound_velocity] [float] NULL,
	[density] [float] NULL


) ON [PRIMARY]
GO



CREATE UNIQUE NONCLUSTERED INDEX [IX_tblCHL_REP_time_lat_lon_depth] ON [dbo].[tblOceans_Melting_Greenland_CTD]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
  [Depth] ASC
)
INCLUDE ([temperature], [conductivity], [salinity], [sound_velocity],[density])
WITH (DATA_COMPRESSION = PAGE, PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [Primary]
GO
