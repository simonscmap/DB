USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[tblKM1709_mesoscope_CTD](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,


	[Station] [smallint] NOT NULL,
	[Cast] [smallint] NOT NULL,
	[Pressure] [float] NULL,
	[Pres_Flag] [smallint] NULL,
	[Temperature] [float] NULL,
	[Temp_Flag] [smallint] NULL,
	[Salinity] [float] NULL,
	[Sal_Flag] [smallint] NULL,
	[Oxygen] [float] NULL,
	[Oxy_Flag] [smallint] NULL,
	[Chloropigment] [float] NULL,
	[Chlorop_Flag] [smallint] NULL,
	[Beam_Attenuation] [float] NULL,
	[BeamAt_Flag] [smallint] NULL,
	[Beam_Transmission] [float] NULL,
	[Xmiss_Flag] [smallint] NULL,
	[Observations] [smallint] NULL

) ON [PRIMARY]
GO



-- indices

USE [Opedia]
GO

CREATE  NONCLUSTERED INDEX [IX_tblKM1709_mesoscope_CTD_time_lat_lon_depth] ON [dbo].[tblKM1709_mesoscope_CTD]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
