
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTN412_Gradients5_FluorometricChlorophyll_CTD](

            [time] [datetime] NOT NULL,
         [lat]    [float] NOT NULL,
         [lon]    [float] NOT NULL,
       [depth]      [int] NOT NULL,
     [station]      [int]     NULL,
        [cast]      [int]     NULL,
      [niskin]      [int]     NULL,
     [avg_chl]    [float]     NULL,
[phaeopigment]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblTN412_Gradients5_FluorometricChlorophyll_CTD_time_lat_lon_depth] ON [dbo].[tblTN412_Gradients5_FluorometricChlorophyll_CTD]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
