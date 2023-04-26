
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblHOT_N2_Fixation_2022](

           [time]      [datetime] NOT NULL,
        [lat]         [float] NOT NULL,
        [lon]           [int] NOT NULL,
      [depth]           [int] NOT NULL,
     [cruise] [nvarchar](200)     NULL,
       [cast]           [int]     NULL,
    [station]           [int]     NULL,
     [bottle] [nvarchar](200)     NULL,
[N2_fixation]         [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblHOT_N2_Fixation_2022_time_lat_lon_depth] ON [dbo].[tblHOT_N2_Fixation_2022]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
