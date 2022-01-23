
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1906_Gradients3](

                   [time]  [datetime]  NOT NULL,
                [lat]     [float]  NOT NULL,
                [lon]     [float]  NOT NULL,
              [depth]     [float]  NOT NULL,
               [temp]     [float]      NULL,
                [sal]     [float]      NULL,
         [potdensity]     [float]      NULL,
                [chl]     [float]      NULL,
                [bbp]     [float]      NULL,
    [uncalibrated_O2]     [float]      NULL,
 [uncalibrated_O2sat]     [float]      NULL,
      [ProfileNumber]       [int]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKM1906_Gradients3_time_lat_lon_depth] ON [dbo].[tblKM1906_Gradients3]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
