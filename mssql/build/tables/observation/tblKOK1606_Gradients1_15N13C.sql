
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1606_Gradients1_15N13C](

                        [time]       [datetime]  NOT NULL,
                     [lat]          [float]  NOT NULL,
                     [lon]            [int]  NOT NULL,
                   [depth]            [int]  NOT NULL,
                 [station]            [int]      NULL,
                    [cast]          [float]      NULL,
               [treatment]  [nvarchar](200)      NULL,
        [avg_fix_rate_13C]          [float]      NULL,
  [avg_fix_rate_13C_stdev]          [float]      NULL,
       [avg_fix_rate_15N2]  [nvarchar](200)      NULL,
 [avg_fix_rate_15N2_stdev]          [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKOK1606_Gradients1_15N13C_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_15N13C]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
