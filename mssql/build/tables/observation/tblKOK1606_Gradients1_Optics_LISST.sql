
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1606_Gradients1_Optics_LISST](

                 [time]  [datetime]  NOT NULL,
              [lat]     [float]  NOT NULL,
              [lon]     [float]  NOT NULL,
            [depth]       [int]  NOT NULL,
             [temp]     [float]      NULL,
              [sal]     [float]      NULL,
    [vol_lisst_mid]     [float]      NULL,
 [particle_num_mid]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKOK1606_Gradients1_Optics_LISST_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_Optics_LISST]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
