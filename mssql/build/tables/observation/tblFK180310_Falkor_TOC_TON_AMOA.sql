
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblFK180310_Falkor_TOC_TON_AMOA](

                       [time]       [datetime]  NOT NULL,
                    [lat]          [float]  NOT NULL,
                    [lon]          [float]  NOT NULL,
                  [depth]            [int]  NOT NULL,
                    [TOC]          [float]      NULL,
                     [TN]          [float]      NULL,
     [amoA_group_A_genes]          [float]      NULL,
     [amoA_group_B_genes]          [float]      NULL,
 [bacterioplankton_cells]          [float]      NULL,
         [sra_experiment]  [nvarchar](200)      NULL,
                [sra_run]  [nvarchar](200)      NULL,
         [sra_bioproject]  [nvarchar](200)      NULL,
            [filter_type]  [nvarchar](200)      NULL,
             [filter_min]          [float]      NULL,
          [sequence_type]  [nvarchar](200)      NULL,
      [sequencing_method]  [nvarchar](200)       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblFK180310_Falkor_TOC_TON_AMOA_time_lat_lon_depth] ON [dbo].[tblFK180310_Falkor_TOC_TON_AMOA]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
