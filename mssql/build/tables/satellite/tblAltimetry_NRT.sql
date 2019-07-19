SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAltimetry_NRT](
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[time] [date] NOT NULL,
	[vgosa_nrt] [float] NULL,
	[vgos_nrt] [float] NULL,
	[sla_nrt] [float] NULL,
	[adt_nrt] [float] NULL,
	[ugosa_nrt] [float] NULL,
	[ugos_nrt] [float] NULL
) ON [PRIMARY]
GO


-- Indices
---- Caution
---- there is no unique constraint at the moment ... should be added
USE Opedia
GO

CREATE NONCLUSTERED COLUMNSTORE INDEX [IX_tblAltimetry_NRT_time_lat_lon] ON [dbo].[tblAltimetry_NRT]
(
	[time],
	[lat],
	[lon],
	[sla_nrt],
	[adt_nrt]
)WITH (DROP_EXISTING = OFF, COMPRESSION_DELAY = 0) ON [PRIMARY]
GO
