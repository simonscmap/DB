USE [Opedia]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCPR_Phytoplankton](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[taxonID] [int] NOT NULL,
	[scientificNameID] [nvarchar](50) NULL,
	[scientificName] [nvarchar](50) NULL,
	[acceptedNameUsage] [nvarchar](50) NULL,
	[materialSampleID] [nvarchar](50) NULL,
	[id_occurrenceID_catalogNumber] [nvarchar](50) NULL,
	[eventID] [nvarchar](50) NULL,
	[fieldNumber] [nvarchar](50) NULL,
	[modified] [nvarchar](500) NULL,
	[taxonRemarks] [nvarchar](500) NULL
) ON [FG2]
GO






-- indices

USE [Opedia]
GO

CREATE NONCLUSTERED INDEX [IX_tblCPR_Phytoplankton_time_lat_lon_taxonID] ON [dbo].[tblCPR_Phytoplankton]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[taxonID]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
GO




USE Opedia
GO


CREATE NONCLUSTERED INDEX [IX_CPR_Phytoplankton_Scientific_Name] ON [dbo].[tblCPR_Phytoplankton]
(
	[scientificName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
