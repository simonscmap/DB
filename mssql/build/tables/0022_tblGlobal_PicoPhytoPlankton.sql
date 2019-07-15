USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblGlobal_PicoPhytoPlankton](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[prochlorococcus_abundance] [float] NULL,
	[synechococcus_abundance] [float] NULL,
	[picoeukaryote_abundance] [float] NULL,
	[picophytoplankton_abundance] [float] NULL,
	[picophytoplankton_biomass] [float] NULL
) ON [PRIMARY]
GO





-- indices
USE [Opedia]
GO

CREATE NONCLUSTERED INDEX [IX_tblGlobal_PicoPhytoPlankton_time_lat_lon] ON [dbo].[tblGlobal_PicoPhytoPlankton]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

