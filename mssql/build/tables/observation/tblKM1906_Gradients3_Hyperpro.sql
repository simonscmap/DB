
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1906_Gradients3_Hyperpro](

           [time] [datetime] NOT NULL,
        [lat]    [float] NOT NULL,
        [lon]    [float] NOT NULL,
[surface_par]    [float]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM1906_Gradients3_Hyperpro_time_lat_lon_] ON [dbo].[tblKM1906_Gradients3_Hyperpro]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
