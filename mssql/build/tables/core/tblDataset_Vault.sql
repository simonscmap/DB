USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[tblDataset_Vault](
	[Dataset_ID] int NOT NULL,
    [Vault_Path] nvarchar(500) NULL,
    [Vault_URL] nvarchar(300) NULL
) ON [PRIMARY]
GO

-- foreign key linking to tblDatasets
ALTER TABLE [dbo].[tblDataset_Vault]  WITH CHECK ADD CONSTRAINT [FK_tblDataset_Vault_tblDatasets] FOREIGN KEY([Dataset_ID])
REFERENCES [dbo].[tblDatasets] ([ID])
GO