
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTN397_Gradients4_Influx_Underway](

                        [time]      [datetime] NOT NULL,
                     [lat]         [float] NOT NULL,
                     [lon]         [float] NOT NULL,
                   [depth]           [int] NOT NULL,
                    [file] [nvarchar](200)     NULL,
             [count_beads]           [int]     NULL,
           [count_picoeuk]           [int]     NULL,
         [count_prochloro]           [int]     NULL,
           [count_synecho]           [int]     NULL,
           [count_unknown]           [int]     NULL,
           [scatter_beads]         [float]     NULL,
         [scatter_picoeuk]         [float]     NULL,
       [scatter_prochloro]         [float]     NULL,
         [scatter_synecho]         [float]     NULL,
         [scatter_unknown]         [float]     NULL,
               [red_beads]         [float]     NULL,
             [red_picoeuk]         [float]     NULL,
           [red_prochloro]         [float]     NULL,
             [red_synecho]         [float]     NULL,
             [red_unknown]         [float]     NULL,
            [orange_beads]         [float]     NULL,
          [orange_picoeuk]         [float]     NULL,
        [orange_prochloro]         [float]     NULL,
          [orange_synecho]         [float]     NULL,
          [orange_unknown]         [float]     NULL,
                  [volume]         [float]     NULL,
         [abundance_beads]         [float]     NULL,
       [abundance_picoeuk]         [float]     NULL,
     [abundance_prochloro]         [float]     NULL,
       [abundance_synecho]         [float]     NULL,
       [abundance_unknown]         [float]     NULL,
     [cell_diameter_beads]         [float]     NULL,
   [cell_diameter_picoeuk]         [float]     NULL,
 [cell_diameter_prochloro]         [float]     NULL,
   [cell_diameter_synecho]         [float]     NULL,
   [cell_diameter_unknown]         [float]     NULL,
    [carbon_content_beads]         [float]     NULL,
  [carbon_content_picoeuk]         [float]     NULL,
[carbon_content_prochloro]         [float]     NULL,
  [carbon_content_synecho]         [float]     NULL,
  [carbon_content_unknown]         [float]     NULL,
           [biomass_beads]         [float]     NULL,
         [biomass_picoeuk]         [float]     NULL,
       [biomass_prochloro]         [float]     NULL,
         [biomass_synecho]         [float]     NULL,
         [biomass_unknown]         [float]     NULL,
                    [flag]           [int]     NULL,
                   [stain]           [int]     NULL,
               [replicate] [nvarchar](200)     NULL,
                [comments] [nvarchar](200)      NULL


    ) ON [FG4]
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblTN397_Gradients4_Influx_Underway_time_lat_lon_depth] ON [dbo].[tblTN397_Gradients4_Influx_Underway]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]
