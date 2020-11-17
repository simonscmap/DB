
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblLA35A3_flow_cytometry](

         [time]  [datetime]  NOT NULL,
      [lat]     [float]  NOT NULL,
      [lon]     [float]  NOT NULL,
    [depth]     [float]  NOT NULL,
     [cast]       [int]      NULL,
   [bottle]       [int]      NULL,
      [pro]     [float]      NULL,
      [syn]     [float]      NULL,
     [peuk]     [float]      NULL,
 [bacteria]     [float]      NULL,
 [protists]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblLA35A3_flow_cytometry_time_lat_lon_depth] ON [dbo].[tblLA35A3_flow_cytometry]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
