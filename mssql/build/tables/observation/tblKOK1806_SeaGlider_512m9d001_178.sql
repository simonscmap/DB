
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1806_SeaGlider_512m9d001_178](

                        [time]  [datetime]  NOT NULL,
                     [lat]     [float]  NOT NULL,
                     [lon]     [float]  NOT NULL,
                   [depth]     [float]  NOT NULL,
                    [Dive]       [int]      NULL,
            [Elapsed_Time]     [float]      NULL,
                 [Heading]     [float]      NULL,
             [Pitch_Angle]     [float]      NULL,
              [Roll_Angle]     [float]      NULL,
                [Pressure]     [float]      NULL,
       [Potential_Density]     [float]      NULL,
             [Temperature]     [float]      NULL,
                [Salinity]     [float]      NULL,
            [SBE43_Oxygen]     [float]      NULL,
          [Aandera_Oxygen]     [float]      NULL,
   [Red_Backscatter_700nm]     [float]      NULL,
  [Blue_Backscatter_470nm]     [float]      NULL,
        [BB2F_Chlorophyll]     [float]      NULL,
 [Green_Backscatter_660nm]     [float]      NULL,
        [BBF2_Chlorophyll]     [float]      NULL,
              [CDOM_460nm]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKOK1806_SeaGlider_512m9d001_178_time_lat_lon_depth] ON [dbo].[tblKOK1806_SeaGlider_512m9d001_178]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
