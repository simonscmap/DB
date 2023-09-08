
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTN412_Gradients5_LISST_DEEP_Profiles](

             [time] [datetime] NOT NULL,
          [lat]    [float] NOT NULL,
          [lon]    [float] NOT NULL,
        [depth]      [int] NOT NULL,
 [vol_lisst_sm]    [float]     NULL,
[vol_lisst_mid]    [float]     NULL,
 [vol_lisst_lg]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblTN412_Gradients5_LISST_DEEP_Profiles_time_lat_lon_depth] ON [dbo].[tblTN412_Gradients5_LISST_DEEP_Profiles]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
