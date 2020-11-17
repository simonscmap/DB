
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblJR19950921_AMT01_CTD](

                                  [time]       [datetime]  NOT NULL,
                               [lat]          [float]  NOT NULL,
                               [lon]          [float]  NOT NULL,
                             [depth]          [float]  NOT NULL,
                           [station]  [nvarchar](200)      NULL,
                      [local_cdi_ID]            [int]      NULL,
                      [bottle_depth]          [float]      NULL,
                   [sensor_pressure]          [float]      NULL,
             [potential_temperature]  [nvarchar](200)      NULL,
        [potential_temperature_flag]            [int]      NULL,
                [practical_salinity]  [nvarchar](200)      NULL,
           [practical_salinity_flag]            [int]      NULL,
                       [sigma_theta]  [nvarchar](200)      NULL,
                  [sigma_theta_flag]            [int]      NULL,
      [uncalibrated_CTD_temperature]  [nvarchar](200)      NULL,
 [uncalibrated_CTD_temperature_flag]            [int]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblJR19950921_AMT01_CTD_time_lat_lon_depth] ON [dbo].[tblJR19950921_AMT01_CTD]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
