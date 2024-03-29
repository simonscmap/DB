USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDataset_References](
	[Reference_ID] [int] NOT NULL,
	[Dataset_ID] [int] NOT NULL,
	[Reference] [nvarchar](700) NOT NULL,
	[Data_DOI] [bit] NOT NULL
	 CONSTRAINT [PK_tblDataset_References] PRIMARY KEY CLUSTERED
(
	[Reference_ID] ASC
)
) ON [PRIMARY]
GO



-- indices
USE Opedia 
GO

CREATE NONCLUSTERED INDEX [IX_tblDataset_References] ON [dbo].[tblDataset_References]
(
	[Dataset_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblDataset_References]  WITH CHECK ADD  CONSTRAINT [FK_tblDataset_References_tblDatasets] FOREIGN KEY([Dataset_ID])
REFERENCES [dbo].[tblDatasets] ([ID])
GO

ALTER TABLE [dbo].[tblDataset_References] CHECK CONSTRAINT [FK_tblDataset_References_tblDatasets]
GO
