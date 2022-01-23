
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKNOX22RR_flow_cytometry](

                        [time]  [datetime]  NOT NULL,
                     [lat]     [float]  NOT NULL,
                     [lon]     [float]  NOT NULL,
                   [depth]     [float]  NOT NULL,
                 [station]       [int]      NULL,
                     [Syn]       [int]      NULL,
                     [Pro]       [int]      NULL,
                [Pico_Euk]       [int]      NULL,
             [Total_Cyano]     [float]      NULL,
 [Total_picophytoplankton]       [int]      NULL,
                      [HB]       [int]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKNOX22RR_flow_cytometry_time_lat_lon_depth] ON [dbo].[tblKNOX22RR_flow_cytometry]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
