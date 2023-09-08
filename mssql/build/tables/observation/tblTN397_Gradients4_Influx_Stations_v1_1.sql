
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTN397_Gradients4_Influx_Stations_v1_1](

                        [time] [datetime] NOT NULL,
                     [lat]    [float] NOT NULL,
                     [lon]    [float] NOT NULL,
                   [depth]      [int] NOT NULL,
                 [station]      [int]     NULL,
                    [cast]      [int]     NULL,
 [cell_abundance_bacteria]    [float]     NULL,
  [cell_abundance_picoeuk]    [float]     NULL,
[cell_abundance_prochloro]    [float]     NULL,
  [cell_abundance_synecho]    [float]     NULL,
       [diameter_bacteria]    [float]     NULL,
        [diameter_picoeuk]    [float]     NULL,
      [diameter_prochloro]    [float]     NULL,
        [diameter_synecho]    [float]     NULL,
   [carbon_quota_bacteria]    [float]     NULL,
    [carbon_quota_picoeuk]    [float]     NULL,
  [carbon_quota_prochloro]    [float]     NULL,
    [carbon_quota_synecho]    [float]     NULL,
 [carbon_biomass_bacteria]    [float]     NULL,
  [carbon_biomass_picoeuk]    [float]     NULL,
[carbon_biomass_prochloro]    [float]     NULL,
  [carbon_biomass_synecho]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblTN397_Gradients4_Influx_Stations_v1_1_time_lat_lon_depth] ON [dbo].[tblTN397_Gradients4_Influx_Stations_v1_1]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
