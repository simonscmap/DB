
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblRCLV_atlas](

           [time]      [datetime] NOT NULL,
        [lat]         [float] NOT NULL,
        [lon]         [float] NOT NULL,
         [ID]           [int]     NULL,
   [polarity] [nvarchar](max)     NULL,
        [age]           [int]     NULL,
       [area]         [float]     NULL,
         [CD]         [float]     NULL,
      [flags]           [int]     NULL,
[coordinates] [nvarchar](max)      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblRCLV_atlas_time_lat_lon] ON [dbo].[tblRCLV_atlas]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
