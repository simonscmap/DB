
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1906_Gradients3_15N13C](

                    [time]  [datetime]  NOT NULL,
                 [lat]     [float]  NOT NULL,
                 [lon]     [float]  NOT NULL,
               [depth]       [int]  NOT NULL,
                [temp]     [float]      NULL,
                 [sal]     [float]      NULL,
   [avg_fix_rate_15N2]     [float]      NULL,
 [stdev_15N2_fix_rate]     [float]      NULL,
               [LOD_1]     [float]      NULL,
               [LOD_2]     [float]      NULL,
                 [LOQ]     [float]      NULL,
    [avg_fix_rate_13C]     [float]      NULL,
  [stdev_13C_fix_rate]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM1906_Gradients3_15N13C_time_lat_lon_depth] ON [dbo].[tblKM1906_Gradients3_15N13C]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
