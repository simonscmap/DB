
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCruise_Regions](
	[Cruise_ID] [int] NOT NULL, -- foreign key link
  [Region_ID] [int] NOT NULL, -- foreign key link



 CONSTRAINT [PK_tblCruise_Regions] PRIMARY KEY CLUSTERED
([Cruise_ID], [Region_ID])
 WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] -- TEXTIMAGE_ON [PRIMARY]
GO



-- foreign key linking to tblCruises
ALTER TABLE [dbo].[tblCruise_Regions]  WITH CHECK ADD  CONSTRAINT [FK_tblCruise_Regions_tblCruises] FOREIGN KEY([Cruise_ID])
REFERENCES [dbo].[tblCruise] ([ID])
GO

ALTER TABLE [dbo].[tblCruise_Regions] CHECK CONSTRAINT [FK_tblCruise_Regions_tblCruises]
GO

-- foreign key linking to tblRegions
ALTER TABLE [dbo].[tblCruise_Regions]  WITH CHECK ADD  CONSTRAINT [FK_tblCruise_Regions_tblRegions] FOREIGN KEY([Region_ID])
REFERENCES [dbo].[tblRegions] ([Region_ID])
GO

ALTER TABLE [dbo].[tblCruise_Regions] CHECK CONSTRAINT [FK_tblCruise_Regions_tblRegions]
GO
