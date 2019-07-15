SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAltimetry_REP](
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[time] [date] NOT NULL,
	[vgosa] [float] NULL,
	[vgos] [float] NULL,
	[sla] [float] NULL,
	[adt] [float] NULL,
	[ugosa] [float] NULL,
	[ugos] [float] NULL
) ON [PRIMARY]
GO


-- Indices
---- Caution
---- there is no unique constraint at the moment ... should be added
USE Opedia
GO

CREATE NONCLUSTERED COLUMNSTORE INDEX [IX_tblAltimetry_REP_time_lat_lon] ON [dbo].[tblAltimetry_REP]
(
	[time],
	[lat],
	[lon],
	[sla],
	[adt]
)WITH (DROP_EXISTING = OFF, COMPRESSION_DELAY = 0) ON [PRIMARY]
GO
