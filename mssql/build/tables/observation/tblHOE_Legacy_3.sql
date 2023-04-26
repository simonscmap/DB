
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblHOE_Legacy_3](

                     [time] [datetime] NOT NULL,
                  [lat]    [float] NOT NULL,
                  [lon]    [float] NOT NULL,
                [depth]    [float] NOT NULL,
              [Station]      [int]     NULL,
                 [Cast]    [float]     NULL,
               [RosPos]      [int]     NULL,
      [CTD_Temperature]    [float]     NULL,
         [CTD_Salinity]    [float]     NULL,
           [CTD_Oxygen]    [float]     NULL,
    [CTD_Chloropigment]    [float]     NULL,
[Potential_Temperature]    [float]     NULL,
    [Potential_Density]    [float]     NULL,
        [Bottle_Oxygen]    [float]     NULL,
                  [PO4]    [float]     NULL,
              [NO3_NO2]    [float]     NULL,
                 [SiO4]    [float]     NULL,
                  [LLN]    [float]     NULL,
                   [PC]    [float]     NULL,
                   [PN]    [float]     NULL,
          [Chlorophyll]    [float]     NULL,
         [Phaeopigment]    [float]      NULL


    ) ON [Primary]
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblHOE_Legacy_3_time_lat_lon_depth] ON [dbo].[tblHOE_Legacy_3]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]
