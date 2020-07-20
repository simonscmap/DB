USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[tblKM1906_Gradients3_uw_tsg](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[SST] [float] NULL,
	[salinity] [float] NULL


) ON [PRIMARY]
GO



USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM1906_Gradients3_uw_tsg_time_lat_lon_depth] ON [dbo].[tblKM1906_Gradients3_uw_tsg]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
