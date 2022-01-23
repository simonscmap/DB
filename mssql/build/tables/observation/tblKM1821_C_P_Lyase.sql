
    USE [Opedia]

    SET ANSI_NULLS ON
    GO

    SET QUOTED_IDENTIFIER ON
    GO

    CREATE TABLE [dbo].[tblKM1821_C_P_Lyase](

                  [time]  [datetime]  NOT NULL,
               [lat]     [float]  NOT NULL,
               [lon]     [float]  NOT NULL,
             [depth]       [int]  NOT NULL,
 [CP_Lyase_Activity]     [float]      NULL,
           [station]       [int]      NULL,
              [cast]       [int]      NULL,
            [niskin]       [int]       NULL


    ) ON [Primary]

    GO

    
    USE [Opedia]
    GO

    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM1821_C_P_Lyase_time_lat_lon_depth] ON [dbo].[tblKM1821_C_P_Lyase]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]
    GO

    
