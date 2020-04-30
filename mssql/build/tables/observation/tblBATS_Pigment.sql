USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBATS_Pigment](

	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[pigment1] [float] NULL,
	[pigment2] [float] NULL,
	[pigment3] [float] NULL,
	[pigment4] [float] NULL,
	[pigment5] [float] NULL,
	[pigment6] [float] NULL,
	[pigment7] [float] NULL,
	[pigment8] [float] NULL,
	[pigment9] [float] NULL,
	[pigment10] [float] NULL,
	[pigment11] [float] NULL,
	[pigment12] [float] NULL,
	[pigment13] [float] NULL,
	[pigment14] [float] NULL,
	[pigment15] [float] NULL,
	[pigment16] [float] NULL,
	[pigment17] [float] NULL,
	[pigment18] [float] NULL,
	[pigment19] [float] NULL,
	[pigment20] [float] NULL,
	[pigment21] [float] NULL,
	[Cruise_ID] [varchar](20) NULL


) ON [FG2]
GO

-- indices
USE [Opedia]
GO

CREATE  NONCLUSTERED INDEX [IX_tblBATS_Pigment_time_lat_lon_depth] ON [dbo].[tblBATS_Pigment]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
GO
