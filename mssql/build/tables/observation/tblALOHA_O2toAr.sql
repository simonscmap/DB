
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblALOHA_O2toAr](

              [time]  [datetime]  NOT NULL,
           [lat]     [float]  NOT NULL,
           [lon]     [float]  NOT NULL,
         [depth]     [float]  NOT NULL,
    [HOT_cruise]       [int]      NULL,
       [Station]       [int]      NULL,
          [Cast]       [int]      NULL,
   [Temperature]     [float]      NULL,
      [Salinity]     [float]      NULL,
        [O2toAr]     [float]      NULL,
  [O2toAr_stdev]     [float]      NULL,
       [DO2toAr]     [float]      NULL,
 [DO2toAr_stdev]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblALOHA_O2toAr_time_lat_lon_depth] ON [dbo].[tblALOHA_O2toAr]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
