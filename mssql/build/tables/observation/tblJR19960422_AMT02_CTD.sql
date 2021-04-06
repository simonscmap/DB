
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblJR19960422_AMT02_CTD](

                                  [time]       [datetime]  NOT NULL,
                               [lat]          [float]  NOT NULL,
                               [lon]          [float]  NOT NULL,
                           [station]  [nvarchar](200)      NULL,
                      [local_cdi_ID]            [int]      NULL,
                      [bottle_depth]          [float]      NULL,
                   [sensor_pressure]          [float]      NULL,
             [potential_temperature]          [float]      NULL,
        [potential_temperature_flag]            [int]      NULL,
                [practical_salinity]          [float]      NULL,
           [practical_salinity_flag]            [int]      NULL,
                       [sigma_theta]          [float]      NULL,
                  [sigma_theta_flag]            [int]      NULL,
      [uncalibrated_CTD_temperature]          [float]      NULL,
 [uncalibrated_CTD_temperature_flag]            [int]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblJR19960422_AMT02_CTD_time_lat_lon_] ON [dbo].[tblJR19960422_AMT02_CTD]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
