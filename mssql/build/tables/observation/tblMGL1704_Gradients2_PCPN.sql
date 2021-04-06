
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMGL1704_Gradients2_PCPN](

         [time]  [datetime]  NOT NULL,
      [lat]     [float]  NOT NULL,
      [lon]     [float]  NOT NULL,
    [depth]       [int]  NOT NULL,
  [station]       [int]      NULL,
     [cast]       [int]      NULL,
   [niskin]       [int]      NULL,
       [pc]     [float]      NULL,
 [stdev_pc]     [float]      NULL,
       [pn]     [float]      NULL,
 [stdev_pn]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblMGL1704_Gradients2_PCPN_time_lat_lon_depth] ON [dbo].[tblMGL1704_Gradients2_PCPN]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
