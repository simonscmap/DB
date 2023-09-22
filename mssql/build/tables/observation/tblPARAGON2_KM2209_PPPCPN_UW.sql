
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblPARAGON2_KM2209_PPPCPN_UW](

     [time] [datetime] NOT NULL,
  [lat]    [float] NOT NULL,
  [lon]    [float] NOT NULL,
[depth]      [int] NOT NULL,
  [sst]    [float]     NULL,
  [sss]    [float]     NULL,
   [pp]    [float]     NULL,
   [pc]    [float]     NULL,
   [pn]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblPARAGON2_KM2209_PPPCPN_UW_time_lat_lon_depth] ON [dbo].[tblPARAGON2_KM2209_PPPCPN_UW]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
