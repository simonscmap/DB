USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCobalamin](
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[OH_PseudoCobalamin_Particulate_pM] [float] NULL,
	[Me_PseudoCobalamin_Particulate_pM] [float] NULL,
	[OH_Cobalamin_Particulate_pM] [float] NULL,
	[Me_Cobalamin_Particulate_pM] [float] NULL,
	[Ado_Cobalamin_Particulate_pM] [float] NULL
) ON [PRIMARY]
GO





-- Indices
USE Opedia
GO


USE [Opedia]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblCobalamin_time_lat_lon_depth] ON [dbo].[tblCobalamin]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


