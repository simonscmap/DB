
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1709_MESOSCOPE_Bacterial_metaT](

                 [time]      [datetime] NOT NULL,
              [lat]         [float] NOT NULL,
              [lon]         [float] NOT NULL,
            [depth]           [int] NOT NULL,
      [Sample_name] [nvarchar](200)     NULL,
          [Station] [nvarchar](200)     NULL,
             [Cast]           [int]     NULL,
       [filter_max]         [float]     NULL,
       [filter_min]         [float]     NULL,
       [sra_sample] [nvarchar](200)     NULL,
          [sra_run] [nvarchar](200)     NULL,
   [sra_bioproject] [nvarchar](200)     NULL,
      [library_kit] [nvarchar](200)     NULL,
    [sequence_type] [nvarchar](200)     NULL,
[sequencing_method] [nvarchar](200)      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKM1709_MESOSCOPE_Bacterial_metaT_time_lat_lon_depth] ON [dbo].[tblKM1709_MESOSCOPE_Bacterial_metaT]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
