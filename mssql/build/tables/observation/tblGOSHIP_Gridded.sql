
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblGOSHIP_Gridded](

                         [time]       [datetime]  NOT NULL,
                      [lat]          [float]  NOT NULL,
                      [lon]          [float]  NOT NULL,
                    [depth]            [int]  NOT NULL,
                 [pressure]            [int]      NULL,
              [temperature]          [float]      NULL,
       [practical_salinity]          [float]      NULL,
                   [oxygen]          [float]      NULL,
 [conservative_temperature]          [float]      NULL,
        [absolute_salinity]          [float]      NULL,
                   [region]  [nvarchar](200)      NULL,
          [gridded_section]          [float]      NULL,
      [goship_woce_line_id]  [nvarchar](200)       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblGOSHIP_Gridded_time_lat_lon_depth] ON [dbo].[tblGOSHIP_Gridded]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
