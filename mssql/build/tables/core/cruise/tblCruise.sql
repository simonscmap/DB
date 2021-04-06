USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCruise](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nickname] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](20) UNIQUE NOT NULL,
	[Ship_Name] [nvarchar](50) NULL,
	[Start_Time] [datetime] NOT NULL,
	[End_Time] [datetime] NOT NULL,
	[Lat_Min] [float] NOT NULL,
	[Lat_Max] [float] NOT NULL,
	[Lon_Min] [float] NOT NULL,
	[Lon_Max] [float] NOT NULL,
	[Chief_Name] [nvarchar](100) NULL,
	[Keywords] [nchar](100) NULL,
 CONSTRAINT [PK_tblCruise] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG1]
) ON [FG1]
GO

ALTER TABLE [tblCruise] ADD CONSTRAINT [FK_tblCruise_tblCruise_Series] FOREIGN KEY([Cruise_Series])
REFERENCES tblCruise_Series ([ID])
GO





----- indices

USE [Opedia]
GO

SET ANSI_PADDING ON
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblCruise_Name] ON [dbo].[tblCruise]
(
	[Name] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [FG1]
GO


CREATE NONCLUSTERED INDEX [IX_tblCruise_Ship] ON [dbo].[tblCruise]
(
	[Ship_Name] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [FG1]
GO

CREATE NONCLUSTERED INDEX [IX_tblCruise_Cruise_Series] ON [tblCruise]
(
	[Cruise_Series] ASC
)
ON [FG1]
GO
