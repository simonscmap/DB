USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDataset_Stats](
	[Dataset_ID] [int] UNIQUE NOT NULL, -- foreign key link
	[JSON_stats] [nvarchar](max) NOT NULL
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[tblDataset_Stats]  WITH CHECK ADD  CONSTRAINT [FK_tblDataset_Stats_tblDatasets] FOREIGN KEY([Dataset_ID])
REFERENCES [dbo].[tblDatasets] ([ID])
GO

ALTER TABLE [dbo].[tblDataset_Stats] CHECK CONSTRAINT [FK_tblDataset_Stats_tblDatasets]
GO



-- indices
USE Opedia
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblDataset_Stats] ON [dbo].[tblDataset_Stats]
(
	[Dataset_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
