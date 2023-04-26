
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1606_Gradients1_14C_NPP](

                 [time]      [datetime] NOT NULL,
              [lat]         [float] NOT NULL,
              [lon]         [float] NOT NULL,
            [depth]           [int] NOT NULL,
          [station]           [int]     NULL,
             [cast] [nvarchar](200)     NULL,
           [niskin]           [int]     NULL,
           [PP_12D]         [float]     NULL,
     [PP_12D_stdev]         [float]     NULL,
           [PP_24D]         [float]     NULL,
     [PP_24D_stdev]         [float]     NULL,
           [PP_12L]         [float]     NULL,
     [PP_12L_stdev]         [float]     NULL,
           [PP_24L]         [float]     NULL,
     [PP_24L_stdev]         [float]     NULL,
          [PP_12SL]         [float]     NULL,
    [PP_12SL_stdev]         [float]     NULL,
          [PP_24SL]         [float]     NULL,
    [PP_24SL_stdev]         [float]     NULL,
         [PP_12L_D]         [float]     NULL,
 [PP_12L_D_stdev_p]         [float]     NULL,
         [PP_24L_D]         [float]     NULL,
 [PP_24L_D_stdev_p]         [float]     NULL,
        [PP_12SL_D]         [float]     NULL,
[PP_12SL_D_stdev_p]         [float]     NULL,
        [PP_24SL_D]         [float]     NULL,
[PP_24SL_D_stdev_p]         [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblKOK1606_Gradients1_14C_NPP_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_14C_NPP]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
