
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMarineMicroplastics_NCEI](

                [time]      [datetime] NOT NULL,
             [lat]         [float] NOT NULL,
             [lon]         [float] NOT NULL,
             [FID]           [int]     NULL,
          [Oceans] [nvarchar](200)     NULL,
         [Regions] [nvarchar](200)     NULL,
      [SubRegions] [nvarchar](200)     NULL,
     [Measurement]         [float]     NULL,
   [Density_Range] [nvarchar](200)     NULL,
   [Density_Class] [nvarchar](200)     NULL,
 [Sampling_Method] [nvarchar](200)     NULL,
 [Short_Reference] [nvarchar](200)     NULL,
             [DOI] [nvarchar](200)     NULL,
    [Organization] [nvarchar](200)     NULL,
[Accession_Number]           [int]     NULL,
  [Accession_Link] [nvarchar](200)     NULL,
        [GlobalID] [nvarchar](200)     NULL,
    [CreationDate] [nvarchar](200)     NULL,
         [Creator] [nvarchar](200)     NULL,
        [EditDate] [nvarchar](200)     NULL,
          [Editor] [nvarchar](200)     NULL,
  [Long_Reference] [nvarchar](200)      NULL


    ) ON [FG4]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblMarineMicroplastics_NCEI_time_lat_lon] ON [dbo].[tblMarineMicroplastics_NCEI]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]
