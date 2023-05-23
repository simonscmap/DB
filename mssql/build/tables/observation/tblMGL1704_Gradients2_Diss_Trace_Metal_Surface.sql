
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMGL1704_Gradients2_Diss_Trace_Metal_Surface](

            [time] [datetime] NOT NULL,
         [lat]    [float] NOT NULL,
         [lon]    [float] NOT NULL,
       [depth]      [int] NOT NULL,
[Cd_dissolved]    [float]     NULL,
[Fe_dissolved]    [float]     NULL,
[Ni_dissolved]    [float]     NULL,
[Cu_dissolved]    [float]     NULL,
[Zn_dissolved]    [float]     NULL,
[Mn_dissolved]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblMGL1704_Gradients2_Diss_Trace_Metal_Surface_time_lat_lon_depth] ON [dbo].[tblMGL1704_Gradients2_Diss_Trace_Metal_Surface]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
