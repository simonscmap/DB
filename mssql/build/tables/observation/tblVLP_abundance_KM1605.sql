
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblVLP_abundance_KM1605](

        [time]  [datetime]  NOT NULL,
     [lat]     [float]  NOT NULL,
     [lon]     [float]  NOT NULL,
   [depth]       [int]  NOT NULL,
     [VLP]     [float]      NULL,
 [Station]       [int]      NULL,
    [Cast]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblVLP_abundance_KM1605_time_lat_lon_depth] ON [dbo].[tblVLP_abundance_KM1605]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
