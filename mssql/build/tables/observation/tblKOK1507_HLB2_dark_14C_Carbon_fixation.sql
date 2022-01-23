
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1507_HLB2_dark_14C_Carbon_fixation](

                       [time]  [datetime]  NOT NULL,
                    [lat]     [float]  NOT NULL,
                    [lon]     [float]  NOT NULL,
                  [depth]       [int]  NOT NULL,
                [station]       [int]      NULL,
       [C14_assimilation]     [float]      NULL,
 [C14_assimilation_stdev]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKOK1507_HLB2_dark_14C_Carbon_fixation_time_lat_lon_depth] ON [dbo].[tblKOK1507_HLB2_dark_14C_Carbon_fixation]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
