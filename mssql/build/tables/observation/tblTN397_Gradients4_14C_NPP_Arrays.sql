
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTN397_Gradients4_14C_NPP_Arrays](

          [time] [datetime] NOT NULL,
       [lat]    [float] NOT NULL,
       [lon]    [float] NOT NULL,
     [depth]      [int] NOT NULL,
   [station]      [int]     NULL,
      [cast]      [int]     NULL,
      [Cfix]    [float]     NULL,
[stdev_Cfix]    [float]     NULL,
      [ChlA]    [float]     NULL,
      [PARz]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblTN397_Gradients4_14C_NPP_Arrays_time_lat_lon_depth] ON [dbo].[tblTN397_Gradients4_14C_NPP_Arrays]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
