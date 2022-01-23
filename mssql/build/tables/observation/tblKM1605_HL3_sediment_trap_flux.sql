
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1605_HL3_sediment_trap_flux](

                                [time]  [datetime]  NOT NULL,
                             [lat]     [float]  NOT NULL,
                             [lon]     [float]  NOT NULL,
                           [depth]       [int]  NOT NULL,
                         [station]       [int]      NULL,
         [particulate_carbon_flux]     [float]      NULL,
   [particulate_carbon_flux_stdev]     [float]      NULL,
       [particulate_nitrogen_flux]     [float]      NULL,
 [particulate_nitrogen_flux_stdev]     [float]      NULL,
         [particulate_silica_flux]     [float]      NULL,
   [particulate_silica_flux_stdev]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM1605_HL3_sediment_trap_flux_time_lat_lon_depth] ON [dbo].[tblKM1605_HL3_sediment_trap_flux]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
