
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTN412_Gradients5_uw_tsg](

    [time] [datetime] NOT NULL,
 [lat]    [float] NOT NULL,
 [lon]    [float] NOT NULL,
  [TS]    [float]     NULL,
[SSPS]    [float]     NULL,
[CNDC]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblTN412_Gradients5_uw_tsg_time_lat_lon] ON [dbo].[tblTN412_Gradients5_uw_tsg]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
