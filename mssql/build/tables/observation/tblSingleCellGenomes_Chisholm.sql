USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblSingleCellGenomes_Chisholm](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[Source_Name_singleCell] [nchar](50) NULL,
	[organism_singleCell] [nchar](50) NULL,
	[geographical_location_singleCell] [nchar](50) NULL,
	[project_singleCell] [nchar](50) NULL,
	[cruise_name_singleCell] [nchar](50) NULL,
	[cruise_id_singleCell] [nchar](50) NULL,
	[longhurst_province_singleCell] [nchar](10) NULL,
	[Sample_Name_singleCell] [nchar](50) NULL,
	[Sample_Type_singleCell] [nchar](50) NULL,
	[16S_ITS_Assay_Name_singleCell] [nchar](50) NULL,
	[16S_ITS_Raw_Data_File_singleCell] [nchar](50) NULL,
	[16S_ITS_Raw_Data_Repository_singleCell] [nchar](50) NULL,
	[16S_ITS_Raw_Data_Record_Accession_singleCell] [nchar](50) NULL,
	[Genome_Sequencing_or_Annotation_Assay_Name_singleCell] [nchar](50) NULL,
	[Genome_Sequencing_Raw_Data_File_singleCell] [nchar](50) NULL,
	[Genome_Sequencing_Raw_Data_Repository_singleCell] [nchar](50) NULL,
	[Genome_Sequencing_Raw_Data_Record_Accession_singleCell] [nchar](50) NULL,
	[Genome_Sequencing_Derived_Data_File_singleCell] [nchar](50) NULL,
	[Genome_Sequencing_Derived_Data_Repository_singleCell] [nchar](50) NULL,
	[Genome_Sequencing_Derived_Data_Record_Accession_singleCell] [nchar](50) NULL,
	[Genome_Annotation_Derived_Data_File_singleCell] [nchar](50) NULL,
	[Genome_Annotation_Derived_Data_Repository_singleCell] [nchar](10) NULL,
	[Genome_Annotation_Derived_Data_Record_Accession_singleCell] [float] NULL,
	[time_quality_Chisholm] [float] NULL
) ON [PRIMARY]
GO


-- indices
USE [Opedia]
GO

CREATE NONCLUSTERED INDEX [IX_tblSingleCellGenomes_Chisholm_time_lat_lon_depth] ON [dbo].[tblSingleCellGenomes_Chisholm]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

