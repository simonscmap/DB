USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDataset_Stats](
	[Dataset_Name] [nvarchar](100) NOT NULL,
	[JSON_stats] [nvarchar](max) NOT NULL
) ON [PRIMARY]
GO
