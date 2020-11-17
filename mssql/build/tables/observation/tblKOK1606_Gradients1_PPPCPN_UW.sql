
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1606_Gradients1_PPPCPN_UW](

                       [time]  [datetime]  NOT NULL,
                    [lat]     [float]  NOT NULL,
                    [lon]     [float]  NOT NULL,
                  [depth]       [int]  NOT NULL,
                    [sst]     [float]      NULL,
                    [sss]     [float]      NULL,
                     [pp]     [float]      NULL,
 [less_than_pt7_micron_P]     [float]      NULL,
                     [pc]     [float]      NULL,
 [less_than_pt7_micron_C]     [float]      NULL,
                     [pn]     [float]      NULL,
 [less_than_pt7_micron_N]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKOK1606_Gradients1_PPPCPN_UW_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_PPPCPN_UW]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
