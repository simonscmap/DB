
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblkm1513_pro_qpcr](

                   [time]      [datetime] NOT NULL,
                [lat]         [float] NOT NULL,
                [lon]         [float] NOT NULL,
              [depth]           [int] NOT NULL,
            [station]           [int]     NULL,
               [cast]         [float]     NULL,
             [exp_id] [nvarchar](200)     NULL,
        [pro_ecotype] [nvarchar](200)     NULL,
   [mean_qpcr_result]         [float]     NULL,
[std_dev_qpcr_result]         [float]     NULL,
        [low_bio_rep]           [int]      NULL


    ) ON [FG4]
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblkm1513_pro_qpcr_time_lat_lon_depth] ON [dbo].[tblkm1513_pro_qpcr]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]
