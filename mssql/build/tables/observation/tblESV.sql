USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblESV](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[centroid] [nchar](50) NULL,
	[relative_abundance] [float] NULL,
	[max_abundance] [float] NULL,
	[cluster_level] [smallint] NULL,
	[num_cluster_members] [int] NULL,
	[domain] [nchar](50) NULL,
	[phylum] [nchar](50) NULL,
	[class] [nchar](50) NULL,
	[order] [nchar](50) NULL,
	[genus] [nchar](60) NULL,
	[species] [nchar](60) NULL,
	[esv_temperature] [float] NULL,
	[esv_salinity] [float] NULL,
	[esv_chl] [float] NULL,
	[size_frac_lower] [float] NULL,
	[size_frac_upper] [float] NULL,
	[cruise_name] [nchar](30) NULL,
	[prok_cells_10E05_per_ml] [float] NULL
) ON [PRIMARY]
GO




-- indices 
USE Opedia
GO

SET ANSI_PADDING ON
GO

CREATE NONCLUSTERED INDEX [IX_tblESV_centroid] ON [dbo].[tblESV]
(
	[centroid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED COLUMNSTORE INDEX [IX_ColumnStore_tblESV_time_lat_lon_depth_levels_and_members] ON [dbo].[tblESV]
(
	[time],
	[lat],
	[lon],
	[depth],
	[cluster_level],
	[num_cluster_members]
)WITH (DROP_EXISTING = OFF, COMPRESSION_DELAY = 0) ON [PRIMARY]
GO
