
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1906_Gradients3_Organic_Inorganic_Nutrients](

            [time]      [datetime] NOT NULL,
         [lat]         [float] NOT NULL,
         [lon]         [float] NOT NULL,
       [depth]         [float] NOT NULL,
     [Station] [nvarchar](200)     NULL,
        [Cast]         [float]     NULL,
      [RosPos]         [float]     NULL,
        [SiO4]         [float]     NULL,
[NO3_plus_NO2]         [float]     NULL,
          [TN]         [float]     NULL,
         [TON]         [float]     NULL,
         [PO4]         [float]     NULL,
          [TP]         [float]     NULL,
         [TOP]         [float]     NULL,
         [TOC]         [float]     NULL,
         [NH4]         [float]     NULL,
         [NO2]         [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblKM1906_Gradients3_Organic_Inorganic_Nutrients_time_lat_lon_depth] ON [dbo].[tblKM1906_Gradients3_Organic_Inorganic_Nutrients]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
