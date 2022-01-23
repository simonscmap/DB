
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMGL1704_Gradients2_HPLC](

          [time]  [datetime]  NOT NULL,
       [lat]     [float]  NOT NULL,
       [lon]     [float]  NOT NULL,
     [depth]       [int]  NOT NULL,
   [avg_chl]     [float]      NULL,
 [stdev_chl]     [float]      NULL,
   [station]       [int]      NULL,
      [cast]       [int]      NULL,
    [niskin]       [int]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblMGL1704_Gradients2_HPLC_time_lat_lon_depth] ON [dbo].[tblMGL1704_Gradients2_HPLC]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
