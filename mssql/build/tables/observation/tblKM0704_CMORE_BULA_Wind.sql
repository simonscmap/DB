
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM0704_CMORE_BULA_Wind](

                               [time] [datetime] NOT NULL,
                            [lat]    [float] NOT NULL,
                            [lon]    [float] NOT NULL,
       [port_wind_relative_speed]      [int]     NULL,
     [port_wind_relative_heading]      [int]     NULL,
                            [SOG]    [float]     NULL,
                            [COG]    [float]     NULL,
                      [POSMV_HDG]    [float]     NULL,
                [wind_true_speed]    [float]     NULL,
              [wind_true_heading]    [float]     NULL,
  [starboard_wind_relative_speed]      [int]     NULL,
[starboard_wind_relative_heading]      [int]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKM0704_CMORE_BULA_Wind_time_lat_lon_] ON [dbo].[tblKM0704_CMORE_BULA_Wind]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
