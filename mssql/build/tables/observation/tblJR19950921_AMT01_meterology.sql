
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblJR19950921_AMT01_meterology](

                         [time]       [datetime]  NOT NULL,
                      [lat]          [float]  NOT NULL,
                      [lon]          [float]  NOT NULL,
                  [station]  [nvarchar](200)      NULL,
             [air_pressure]          [float]      NULL,
        [air_pressure_flag]            [int]      NULL,
          [air_temperature]          [float]      NULL,
     [air_temperature_flag]            [int]      NULL,
          [solar_radiation]          [float]      NULL,
     [solar_radiation_flag]            [int]      NULL,
                 [SurfVPAR]          [float]      NULL,
            [SurfVPAR_flag]            [int]      NULL,
        [relative_wind_dir]          [float]      NULL,
   [relative_wind_dir_flag]            [int]      NULL,
      [relative_wind_speed]          [float]      NULL,
 [relative_wind_speed_flag]            [int]      NULL,
      [wind_direction_from]          [float]      NULL,
 [wind_direction_from_flag]            [int]      NULL,
               [wind_speed]          [float]      NULL,
          [wind_speed_flag]            [int]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblJR19950921_AMT01_meterology_time_lat_lon_] ON [dbo].[tblJR19950921_AMT01_meterology]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
