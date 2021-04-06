
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1709_MesoSCOPE_APA](

                [time]       [datetime]  NOT NULL,
             [lat]          [float]  NOT NULL,
             [lon]          [float]  NOT NULL,
           [depth]            [int]  NOT NULL,
         [station]  [nvarchar](200)      NULL,
        [cast_num]            [int]      NULL,
 [volume_filtered]          [float]      NULL,
        [nmol_P_1]          [float]      NULL,
        [nmol_P_2]          [float]      NULL,
        [nmol_P_3]          [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM1709_MesoSCOPE_APA_time_lat_lon_depth] ON [dbo].[tblKM1709_MesoSCOPE_APA]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
