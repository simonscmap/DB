
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1606_Gradients1_PPPCPN](

                               [time]  [datetime]  NOT NULL,
                            [lat]     [float]  NOT NULL,
                            [lon]     [float]  NOT NULL,
                          [depth]       [int]  NOT NULL,
                        [station]       [int]      NULL,
                           [cast]       [int]      NULL,
       [PP_avg_less_than_3micron]     [float]      NULL,
 [Stdev_PP_avg_less_than_3micron]     [float]      NULL,
                   [PP_avg_total]     [float]      NULL,
             [Stdev_PP_avg_total]     [float]      NULL,
       [PC_avg_less_than_3micron]     [float]      NULL,
 [Stdev_PC_avg_less_than_3micron]     [float]      NULL,
                   [PC_avg_total]     [float]      NULL,
             [Stdev_PC_avg_total]     [float]      NULL,
       [PN_avg_less_than_3micron]     [float]      NULL,
 [Stdev_PN_avg_less_than_3micron]     [float]      NULL,
                   [PN_avg_total]     [float]      NULL,
             [Stdev_PN_avg_total]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKOK1606_Gradients1_PPPCPN_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_PPPCPN]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
