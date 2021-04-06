
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDataset_Regions](
	[Dataset_ID] [int] NOT NULL, -- foreign key link
  [Region_ID] [int] NOT NULL, -- foreign key link



 CONSTRAINT [PK_tblDataset_Regions] PRIMARY KEY CLUSTERED
([Dataset_ID], [Region_ID])
 WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] -- TEXTIMAGE_ON [PRIMARY]
GO



-- foreign key linking to tblDatasets
ALTER TABLE [dbo].[tblDataset_Regions]  WITH CHECK ADD  CONSTRAINT [FK_tblDataset_Regions_tblDatasets] FOREIGN KEY([Dataset_ID])
REFERENCES [dbo].[tblDatasets] ([ID])
GO

ALTER TABLE [dbo].[tblDataset_Regions] CHECK CONSTRAINT [FK_tblDataset_Regions_tblDatasets]
GO

-- foreign key linking to tblRegions
ALTER TABLE [dbo].[tblDataset_Regions]  WITH CHECK ADD  CONSTRAINT [FK_tblDataset_Regions_tblRegions] FOREIGN KEY([Region_ID])
REFERENCES [dbo].[tblRegions] ([Region_ID])
GO

ALTER TABLE [dbo].[tblDataset_Regions] CHECK CONSTRAINT [FK_tblDataset_Regions_tblRegions]
GO
