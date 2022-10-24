
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblNOAA_COPEPOD](

                      [time]      [datetime] NOT NULL,
                   [lat]         [float] NOT NULL,
                   [lon]         [float] NOT NULL,
                 [depth]         [float] NOT NULL,
             [depth_min]         [float]     NULL,
             [cruise_ID] [nvarchar](200)     NULL,
                  [gear]           [int]     NULL,
                  [mesh]           [int]     NULL,
              [PGC_code]           [int]     NULL,
[Original_Biomass_Value]         [float]     NULL,
                 [units] [nvarchar](200)     NULL,
            [log_carbon]         [float]     NULL,
            [dataset_ID] [nvarchar](200)      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblNOAA_COPEPOD_time_lat_lon_depth] ON [dbo].[tblNOAA_COPEPOD]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
