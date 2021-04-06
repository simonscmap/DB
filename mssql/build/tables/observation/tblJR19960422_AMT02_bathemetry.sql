
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblJR19960422_AMT02_bathemetry](

                       [time]       [datetime]  NOT NULL,
                    [lat]          [float]  NOT NULL,
                    [lon]          [float]  NOT NULL,
                [station]  [nvarchar](200)      NULL,
           [bottle_depth]          [float]      NULL,
          [velocity_east]  [nvarchar](200)      NULL,
     [velocity_east_flag]            [int]      NULL,
         [velocity_north]  [nvarchar](200)      NULL,
    [velocity_north_flag]            [int]      NULL,
      [distance_traveled]  [nvarchar](200)      NULL,
 [distance_traveled_flag]            [int]      NULL,
                [heading]  [nvarchar](200)      NULL,
           [heading_flag]            [int]      NULL,
      [bathymetric_depth]  [nvarchar](200)      NULL,
 [bathymetric_depth_flag]            [int]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblJR19960422_AMT02_bathemetry_time_lat_lon_] ON [dbo].[tblJR19960422_AMT02_bathemetry]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
