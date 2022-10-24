
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTN397_Gradients4_uw_par](

    [time] [datetime] NOT NULL,
 [lat]    [float] NOT NULL,
 [lon]    [float] NOT NULL,
 [par]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblTN397_Gradients4_uw_par_time_lat_lon_] ON [dbo].[tblTN397_Gradients4_uw_par]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
