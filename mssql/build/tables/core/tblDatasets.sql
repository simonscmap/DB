
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDatasets](
	[ID] [int] NOT NULL,
	[DB] [nvarchar](50) NOT NULL,
	[Dataset_Name] [nvarchar](100) NOT NULL,
	[Dataset_Long_Name] [nvarchar](500) NULL,
	[Variables] [nvarchar](max) NULL,
	[Data_Source] [nvarchar](100) NULL,
	[Distributor] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[Climatology] [bit] NULL,
	[Acknowledgement] [nvarchar](max) NULL,
	[Doc_URL] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblDatasets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO





-- indices 
USE Opedia
GO


CREATE UNIQUE NONCLUSTERED INDEX [IX_tblDatasets_Dataset_Names] ON [dbo].[tblDatasets]
(
	[Dataset_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
