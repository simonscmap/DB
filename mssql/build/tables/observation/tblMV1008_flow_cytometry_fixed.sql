
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMV1008_flow_cytometry_fixed](

         [time]       [datetime]  NOT NULL,
      [lat]          [float]  NOT NULL,
      [lon]          [float]  NOT NULL,
    [depth]            [int]  NOT NULL,
    [event]            [int]      NULL,
     [cast]            [int]      NULL,
    [cycle]  [nvarchar](200)      NULL,
   [niskin]            [int]      NULL,
 [coccus_p]            [int]      NULL,
 [coccus_s]            [int]      NULL,
     [peuk]            [int]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblMV1008_flow_cytometry_fixed_time_lat_lon_depth] ON [dbo].[tblMV1008_flow_cytometry_fixed]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
