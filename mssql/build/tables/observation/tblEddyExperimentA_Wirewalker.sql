
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblEddyExperimentA_Wirewalker](

                          [time]  [datetime]  NOT NULL,
                       [lat]     [float]  NOT NULL,
                       [lon]     [float]  NOT NULL,
                     [depth]     [float]  NOT NULL,
                      [cast]       [int]      NULL,
                  [pressure]     [float]      NULL,
               [temperature]     [float]      NULL,
  [conservative_temperature]     [float]      NULL,
         [absolute_salinity]     [float]      NULL,
        [practical_salinity]     [float]      NULL,
 [potential_density_anomaly]     [float]      NULL,
              [fluorescence]     [float]      NULL,
            [backscattering]     [float]      NULL,
                      [CDOM]     [float]      NULL,
                       [PAR]     [float]      NULL,
            [irradiance_380]     [float]      NULL,
            [irradiance_412]     [float]      NULL,
            [irradiance_490]     [float]      NULL,
                    [oxygen]     [float]      NULL,
         [oxygen_saturation]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblEddyExperimentA_Wirewalker_time_lat_lon_depth] ON [dbo].[tblEddyExperimentA_Wirewalker]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
