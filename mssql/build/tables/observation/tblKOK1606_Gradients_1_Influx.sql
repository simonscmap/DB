
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1606_Gradients_1_Influx](

           [time]       [datetime]  NOT NULL,
        [lat]          [float]  NOT NULL,
        [lon]          [float]  NOT NULL,
      [depth]            [int]  NOT NULL,
       [file]  [nvarchar](200)      NULL,
 [population]  [nvarchar](200)      NULL,
      [count]            [int]      NULL,
    [scatter]          [float]      NULL,
        [red]          [float]      NULL,
     [orange]          [float]      NULL,
     [volume]            [int]      NULL,
  [abundance]          [float]      NULL,
       [flag]            [int]      NULL,
      [stain]            [int]      NULL,
  [replicate]  [nvarchar](200)      NULL,
   [comments]  [nvarchar](200)       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKOK1606_Gradients_1_Influx_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients_1_Influx]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
