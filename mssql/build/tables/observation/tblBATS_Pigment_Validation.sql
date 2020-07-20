USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBATS_Pigment_Validation](

	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[Pigment1] [float] NULL,
	[Pigment2] [float] NULL,
	[Pigment3] [float] NULL,
	[Pigment4] [float] NULL,
	[Pigment5] [float] NULL,
	[Pigment6] [float] NULL,
	[Pigment7] [float] NULL,
	[Pigment8] [float] NULL,
	[Pigment9] [float] NULL,
	[Pigment10] [float] NULL,
	[Pigment11] [float] NULL,
	[Pigment12] [float] NULL,
	[Pigment13] [float] NULL,
	[Pigment14] [float] NULL,
	[Pigment15] [float] NULL,
	[Pigment16] [float] NULL,
	[Pigment17] [float] NULL,
	[Pigment18] [float] NULL,
	[Pigment19] [float] NULL,
	[Pigment20] [float] NULL,
	[Pigment21] [float] NULL,
	[Cruise_ID] [varchar](20) NULL


) ON [FG2]
GO

-- indices
USE [Opedia]
GO

CREATE  NONCLUSTERED INDEX [IX_tblBATS_Pigment_Validation_time_lat_lon_depth] ON [dbo].[tblBATS_Pigment_Validation]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
GO
