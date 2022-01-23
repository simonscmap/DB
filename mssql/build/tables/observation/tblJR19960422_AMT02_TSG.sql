
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblJR19960422_AMT02_TSG](

                  [time]       [datetime]  NOT NULL,
               [lat]          [float]  NOT NULL,
               [lon]          [float]  NOT NULL,
             [depth]            [int]  NOT NULL,
           [station]  [nvarchar](200)      NULL,
             [chl_a]  [nvarchar](200)      NULL,
        [chl_a_flag]            [int]      NULL,
      [fluorescence]  [nvarchar](200)      NULL,
 [fluorescence_flag]            [int]      NULL,
          [salinity]  [nvarchar](200)      NULL,
     [salinity_flag]            [int]      NULL,
       [temperature]  [nvarchar](200)      NULL,
  [temperature_flag]            [int]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblJR19960422_AMT02_TSG_time_lat_lon_depth] ON [dbo].[tblJR19960422_AMT02_TSG]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
