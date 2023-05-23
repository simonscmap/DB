
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTN397_Gradients4_15N13C](

                          [time] [datetime] NOT NULL,
                       [lat]    [float] NOT NULL,
                       [lon]    [float] NOT NULL,
                     [depth]      [int] NOT NULL,
                   [station]    [float]     NULL,
                      [cast]    [float]     NULL,
                      [temp]    [float]     NULL,
                       [sal]    [float]     NULL,
         [avg_fix_rate_15N2]    [float]     NULL,
       [stdev_15N2_fix_rate]    [float]     NULL,
          [avg_fix_rate_13C]    [float]     NULL,
        [stdev_13C_fix_rate]    [float]     NULL,
[below_detection_limit_Nfix]    [float]     NULL,
[below_detection_limit_Cfix]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblTN397_Gradients4_15N13C_time_lat_lon_depth] ON [dbo].[tblTN397_Gradients4_15N13C]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
