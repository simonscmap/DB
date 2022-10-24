
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTN397_Gradients4_CTD](

                      [time] [datetime] NOT NULL,
                   [lat]    [float] NOT NULL,
                   [lon]    [float] NOT NULL,
                 [depth]    [float] NOT NULL,
               [station]      [int]     NULL,
                  [cast]      [int]     NULL,
              [Pressure]      [int]     NULL,
           [Temperature]    [float]     NULL,
              [Salinity]    [float]     NULL,
                [Oxygen]    [float]     NULL,
                   [PAR]    [float]     NULL,
                 [Fluor]    [float]     NULL,
      [Beam_Attenuation]    [float]     NULL,
     [Beam_Transmission]    [float]     NULL,
          [Observations]      [int]     NULL,
         [Pressure_Flag]      [int]     NULL,
      [Temperature_Flag]      [int]     NULL,
         [Salinity_Flag]      [int]     NULL,
           [Oxygen_Flag]      [int]     NULL,
              [PAR_Flag]      [int]     NULL,
            [Fluor_Flag]      [int]     NULL,
 [Beam_Attenuation_Flag]      [int]     NULL,
[Beam_Transmission_Flag]      [int]      NULL


    ) ON [FG1]
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblTN397_Gradients4_CTD_time_lat_lon_depth] ON [dbo].[tblTN397_Gradients4_CTD]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG1]
