USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBATS_Sediment_Trap](

	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[time_recovery] [date] NULL,
	[lat_recovery] [float] NULL,
	[lon_recovery] [float] NULL,
	[M1] [float] NULL,
	[M2] [float] NULL,
	[M3] [float] NULL,
	[M_avg] [float] NULL,
	[C1] [float] NULL,
	[C2] [float] NULL,
	[C3] [float] NULL,
	[C_avg] [float] NULL,
	[N1] [float] NULL,
	[N2] [float] NULL,
	[N3] [float] NULL,
	[N_avg] [float] NULL,
	[P1] [float] NULL,
	[P2] [float] NULL,
	[P3] [float] NULL,
	[P_avg] [float] NULL,
	[FBC1] [float] NULL,
	[FBC2] [float] NULL,
	[FBC3] [float] NULL,
	[FBC_avg] [float] NULL,
	[FBN1] [float] NULL,
	[FBN2] [float] NULL,
	[FBN3] [float] NULL,
	[FBN_avg] [float] NULL,
	[Cruise_ID] [varchar](20) NULL

) ON [FG2]
GO

-- indices
USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblBATS_Sediment_Trap_time_lat_lon_depth] ON [dbo].[tblBATS_Sediment_Trap]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
GO
