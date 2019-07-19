USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblHOT_ParticleFlux](
	[cruise_number_HOT] [int] NOT NULL,
	[time] [date] NOT NULL,
	[start_time] [nvarchar](4) NULL,
	[time2] [date] NOT NULL,
	[end_time] [nvarchar](4) NULL,
	[depth] [float] NOT NULL,
	[carbon_hot] [float] NULL,
	[nitrogen_hot] [float] NULL,
	[phosphorus_hot] [float] NULL,
	[silica_hot] [float] NULL,
	[mass_hot] [float] NULL,
	[d15n_hot] [float] NULL,
	[d13c_hot] [float] NULL,
	[pic_hot] [float] NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL
) ON [PRIMARY]
GO


-- indices
USE [Opedia]
GO

CREATE NONCLUSTERED INDEX [IX_tblHOT_ParticleFlux_time_lat_lon_depth] ON [dbo].[tblHOT_ParticleFlux]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC,
	[time2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


