
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblSeaFlow_v1_5](

                   [time]      [datetime] NOT NULL,
                [lat]         [float] NOT NULL,
                [lon]         [float] NOT NULL,
              [depth]           [int] NOT NULL,
             [cruise] [nvarchar](200)     NULL,
[abundance_prochloro]         [float]     NULL,
  [abundance_synecho]         [float]     NULL,
  [abundance_picoeuk]         [float]     NULL,
    [abundance_croco]         [float]     NULL,
     [diam_prochloro]         [float]     NULL,
       [diam_synecho]         [float]     NULL,
       [diam_picoeuk]         [float]     NULL,
         [diam_croco]         [float]     NULL,
       [Qc_prochloro]         [float]     NULL,
         [Qc_synecho]         [float]     NULL,
         [Qc_picoeuk]         [float]     NULL,
           [Qc_croco]         [float]     NULL,
  [biomass_prochloro]         [float]     NULL,
    [biomass_synecho]         [float]     NULL,
    [biomass_picoeuk]         [float]     NULL,
      [biomass_croco]         [float]      NULL


    ) ON [FG2]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblSeaFlow_v1_5_time_lat_lon_depth] ON [dbo].[tblSeaFlow_v1_5]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
