
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblHOT_TSG_Time_Series](

                [time]      [datetime] NOT NULL,
             [lat]         [float] NOT NULL,
             [lon]         [float] NOT NULL,
     [temperature]         [float]     NULL,
        [salinity]         [float]     NULL,
[temperature_flag]         [float]     NULL,
   [salinity_flag]         [float]     NULL,
          [cruise] [nvarchar](200)      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  UNIQUE CLUSTERED INDEX [IX_tblHOT_TSG_Time_Series_time_lat_lon] ON [dbo].[tblHOT_TSG_Time_Series]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
