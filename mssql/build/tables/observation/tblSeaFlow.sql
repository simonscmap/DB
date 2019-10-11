USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblSeaFlow](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[cruise] [nvarchar](100) NULL,
	[prochloro_abundance] [float] NULL,
	[prochloro_diameter] [float] NULL,
	[prochloro_carbon_content] [float] NULL,
	[prochloro_biomass] [float] NULL,
	[synecho_abundance] [float] NULL,
	[synecho_diameter] [float] NULL,
	[synecho_carbon_content] [float] NULL,
	[synecho_biomass] [float] NULL,
	[croco_abundance] [float] NULL,
	[croco_diameter] [float] NULL,
	[croco_carbon_content] [float] NULL,
	[croco_biomass] [float] NULL,
	[picoeuk_abundance] [float] NULL,
	[picoeuk_diameter] [float] NULL,
	[picoeuk_carbon_content] [float] NULL,
	[picoeuk_biomass] [float] NULL,
	[unknown_abundance] [float] NULL,
	[unknown_diameter] [float] NULL,
	[unknown_carbon_content] [float] NULL,
	[unknown_biomass] [float] NULL,
	[total_biomass] [float] NULL) ON [PRIMARY]
GO



-- indices
---- Caution
---- there is no unique constraint at the moment ... should be added
USE [Opedia]
GO

CREATE NONCLUSTERED INDEX [IX_tblSeaFlow_time_lat_lon] ON [dbo].[tblSeaFlow]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE ([prochloro_abundance],
	[prochloro_diameter],
	[prochloro_carbon_content],
	[prochloro_biomass],
	[synecho_abundance],
	[synecho_diameter],
	[synecho_carbon_content],
	[synecho_biomass],
	[croco_abundance],
	[croco_diameter],
	[croco_carbon_content],
	[croco_biomass],
	[picoeuk_abundance],
	[picoeuk_diameter],
	[picoeuk_carbon_content],
	[picoeuk_biomass],
	[unknown_abundance],
	[unknown_diameter],
	[unknown_carbon_content],
	[unknown_biomass],
	[total_biomass]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
