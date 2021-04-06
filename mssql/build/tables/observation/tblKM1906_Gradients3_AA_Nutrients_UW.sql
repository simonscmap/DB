
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1906_Gradients3_AA_Nutrients_UW](

                                    [time] [datetime] NOT NULL,
                                 [lat]    [float] NOT NULL,
                                 [lon]      [int] NOT NULL,
                               [depth]      [int] NOT NULL,
                     [Nitrate_Nitrite]    [float]     NULL,
                                 [SRP]    [float]     NULL,
[Nitrate_Nitrite_below_detection_flag]    [float]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM1906_Gradients3_AA_Nutrients_UW_time_lat_lon_depth] ON [dbo].[tblKM1906_Gradients3_AA_Nutrients_UW]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
