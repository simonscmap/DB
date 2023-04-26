
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMV1015_nutrients](

       [time]      [datetime] NOT NULL,
    [lat]         [float] NOT NULL,
    [lon]         [float] NOT NULL,
  [depth]           [int] NOT NULL,
    [sta]           [int]     NULL,
   [cast]           [int]     NULL,
    [bot] [nvarchar](200)     NULL,
    [PO4]         [float]     NULL,
[NO3_NO2] [nvarchar](200)     NULL,
   [SiO4] [nvarchar](200)     NULL,
    [NO2] [nvarchar](200)     NULL,
    [NH4] [nvarchar](200)      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblMV1015_nutrients_time_lat_lon_depth] ON [dbo].[tblMV1015_nutrients]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
