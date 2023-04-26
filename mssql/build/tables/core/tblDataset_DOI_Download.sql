USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDataset_DOI_Download](
	[Reference_ID] [int] NOT NULL,
	[DOI_Download_Link] [nvarchar](500) NOT NULL,
	[Entity_Name] [nvarchar](300) NOT NULL,
	[CMAP_Format] [bit] NOT NULL
) ON [PRIMARY]
GO


-- indices
USE Opedia 
GO

CREATE NONCLUSTERED INDEX [IX_tblDataset_DOI_Download] ON [dbo].[tblDataset_DOI_Download]
(
	[Reference_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblDataset_DOI_Download]  WITH CHECK ADD  CONSTRAINT [FK_tblDataset_DOI_Download_tblDataset_References] FOREIGN KEY([Reference_ID])
REFERENCES [dbo].[tblDataset_References] ([Reference_ID])
GO

ALTER TABLE [dbo].[tblDataset_DOI_Download] CHECK CONSTRAINT [FK_tblDataset_DOI_Download_tblDataset_References]
GO
