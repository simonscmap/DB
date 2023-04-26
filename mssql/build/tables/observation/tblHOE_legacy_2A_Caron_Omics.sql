
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblHOE_legacy_2A_Caron_Omics](

                 [time]      [datetime] NOT NULL,
              [lat]         [float] NOT NULL,
              [lon]         [float] NOT NULL,
            [depth]           [int] NOT NULL,
      [sample_name] [nvarchar](200)     NULL,
             [cast]         [float]     NULL,
   [sra_experiment] [nvarchar](200)     NULL,
          [sra_run] [nvarchar](200)     NULL,
   [sra_bioproject] [nvarchar](200)     NULL,
       [filter_max]           [int]     NULL,
       [filter_min]         [float]     NULL,
    [sequence_type] [nvarchar](200)     NULL,
[sequencing_method] [nvarchar](200)      NULL


    ) ON [FG2]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblHOE_legacy_2A_Caron_Omics_time_lat_lon_depth] ON [dbo].[tblHOE_legacy_2A_Caron_Omics]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
