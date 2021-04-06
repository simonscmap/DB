USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblRegions](
	[Region_ID] [int] IDENTITY(1,1) NOT NULL,
	[Region_Name] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_tblRegions] PRIMARY KEY CLUSTERED
(
	[Region_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



----- indices

USE [Opedia]
GO

SET ANSI_PADDING ON
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblRegion_Name] ON [dbo].[tblRegions]
(
	[Region_Name] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

