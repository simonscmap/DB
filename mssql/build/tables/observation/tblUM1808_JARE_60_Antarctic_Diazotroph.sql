
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblUM1808_JARE_60_Antarctic_Diazotroph](

                   [time]  [datetime]  NOT NULL,
                [lat]     [float]  NOT NULL,
                [lon]     [float]  NOT NULL,
 [UCYN_A1_nifH_genes]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblUM1808_JARE_60_Antarctic_Diazotroph_time_lat_lon_] ON [dbo].[tblUM1808_JARE_60_Antarctic_Diazotroph]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
