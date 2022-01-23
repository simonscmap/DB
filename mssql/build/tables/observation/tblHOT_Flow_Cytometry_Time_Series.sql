
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblHOT_Flow_Cytometry_Time_Series](

                   [time]       [datetime]  NOT NULL,
                [lat]          [float]  NOT NULL,
                [lon]            [int]  NOT NULL,
              [depth]            [int]  NOT NULL,
      [Pro_abundance]          [float]      NULL,
        [sbact_cmore]          [float]      NULL,
        [hbact_cmore]          [float]      NULL,
        [ebact_cmore]          [float]      NULL,
 [official_cruise_ID]  [nvarchar](200)      NULL,
      [HOT_cruise_ID]  [nvarchar](200)       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblHOT_Flow_Cytometry_Time_Series_time_lat_lon_depth] ON [dbo].[tblHOT_Flow_Cytometry_Time_Series]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
