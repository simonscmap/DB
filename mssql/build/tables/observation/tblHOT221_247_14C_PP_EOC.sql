
    USE [Opedia]

    SET ANSI_NULLS ON
    GO

    SET QUOTED_IDENTIFIER ON
    GO

    CREATE TABLE [dbo].[tblHOT221_247_14C_PP_EOC](

                                 [time]  [datetime]  NOT NULL,
                              [lat]     [float]  NOT NULL,
                              [lon]       [int]  NOT NULL,
                            [depth]       [int]  NOT NULL,
                           [cruise]       [int]      NULL,
                          [station]       [int]      NULL,
                             [cast]       [int]      NULL,
       [C14_assimilation_light_EOC]     [float]      NULL,
 [C14_assimilation_light_EOC_stdev]     [float]       NULL


    ) ON [Primary]

    GO

    
    USE [Opedia]
    GO

    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblHOT221_247_14C_PP_EOC_time_lat_lon_depth] ON [dbo].[tblHOT221_247_14C_PP_EOC]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]
    GO

    
