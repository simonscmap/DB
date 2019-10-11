USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblHOT_LAVA](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[Station] [smallint] NULL,
	[Cast] [smallint] NULL,
	[RosPos] [smallint] NULL,
	[CTD_Temperature] [float] NULL,
	[CTD_Salinity] [float] NULL,
	[CTD_Oxygen] [float] NULL,
	[CTD_Chloropigment] [float] NULL,
	[Potential_Temperature] [float] NULL,
	[Potential_Density] [float] NULL,
	[Bottle_Oxygen] [float] NULL,
	[DIC] [float] NULL,
	[Alkalinity] [float] NULL,
	[pH] [float] NULL,
	[PO4] [float] NULL,
	[NO3+NO2] [float] NULL,
	[SiO4] [float] NULL,
	[LLN] [float] NULL,
	[LLP] [float] NULL,
	[PC] [float] NULL,
	[PN] [float] NULL,
	[PP] [float] NULL,
	[Psi] [float] NULL,
	[Chlorophyll] [float] NULL,
	[Pheopigment] [float] NULL,
	[Heterotrophic_Bacteria] [float] NULL,
	[Prochlorococcus] [float] NULL,
	[Synechococcus] [float] NULL,
	[Eukaryotes] [float] NULL
) ON [PRIMARY]
GO


-- indices
USE [Opedia]
GO

CREATE NONCLUSTERED INDEX [IX_tblHOT_LAVA_time_lat_lon_depth] ON [dbo].[tblHOT_LAVA]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
