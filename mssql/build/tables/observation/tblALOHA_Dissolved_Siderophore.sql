
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblALOHA_Dissolved_Siderophore](

                     [time]      [datetime] NOT NULL,
                  [lat]         [float] NOT NULL,
                  [lon]           [int] NOT NULL,
                [depth]           [int] NOT NULL,
[dissolved_siderophore]         [float]     NULL,
               [cruise] [nvarchar](200)      NULL


    ) ON [FG2]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblALOHA_Dissolved_Siderophore_time_lat_lon_depth] ON [dbo].[tblALOHA_Dissolved_Siderophore]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG2]
