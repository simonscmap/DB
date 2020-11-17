
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1709_MS_Fe_Leu_incorp](

                  [time]       [datetime]  NOT NULL,
               [lat]          [float]  NOT NULL,
               [lon]          [float]  NOT NULL,
             [depth]            [int]  NOT NULL,
             [event]  [nvarchar](200)      NULL,
              [eddy]  [nvarchar](200)      NULL,
    [iron_treatment]  [nvarchar](200)      NULL,
   [light_treatment]  [nvarchar](200)      NULL,
         [replicate]            [int]      NULL,
 [leu_incorporation]          [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKM1709_MS_Fe_Leu_incorp_time_lat_lon_depth] ON [dbo].[tblKM1709_MS_Fe_Leu_incorp]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
