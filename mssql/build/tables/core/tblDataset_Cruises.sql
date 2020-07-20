
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDataset_Cruises](
	[Dataset_ID] [int] NOT NULL, -- foreign key link
  [Cruise_ID] [int] NOT NULL, -- foreign key link



 CONSTRAINT [PK_tblDataset_Cruises] PRIMARY KEY CLUSTERED
([Dataset_ID], [Cruise_ID])
 WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] -- TEXTIMAGE_ON [PRIMARY]
GO



-- foreign key linking to tblDatasets
ALTER TABLE [dbo].[tblDataset_Cruises]  WITH CHECK ADD  CONSTRAINT [FK_tblDataset_Cruises_tblDatasets] FOREIGN KEY([Dataset_ID])
REFERENCES [dbo].[tblDatasets] ([ID])
GO

ALTER TABLE [dbo].[tblDataset_Cruises] CHECK CONSTRAINT [FK_tblDataset_Cruises_tblDatasets]
GO

-- foreign key linking to tblCruises
ALTER TABLE [dbo].[tblDataset_Cruises]  WITH CHECK ADD  CONSTRAINT [FK_tblDataset_Cruises_tblCruise] FOREIGN KEY([Cruise_ID])
REFERENCES [dbo].[tblCruise] ([ID])
GO

ALTER TABLE [dbo].[tblDataset_Cruises] CHECK CONSTRAINT [FK_tblDataset_Cruises_tblCruise]
GO
