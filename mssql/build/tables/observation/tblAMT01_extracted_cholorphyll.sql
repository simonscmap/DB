
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblAMT01_extracted_cholorphyll](

                            [time]  [datetime]  NOT NULL,
                         [lat]     [float]  NOT NULL,
                         [lon]     [float]  NOT NULL,
                       [depth]       [int]  NOT NULL,
                     [station]       [int]      NULL,
             [extracted_chl_a]     [float]      NULL,
         [quality_value_chl_a]       [int]      NULL,
     [extracted_phaeopigments]     [float]      NULL,
 [quality_value_phaeopigments]       [int]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblAMT01_extracted_cholorphyll_time_lat_lon_depth] ON [dbo].[tblAMT01_extracted_cholorphyll]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
