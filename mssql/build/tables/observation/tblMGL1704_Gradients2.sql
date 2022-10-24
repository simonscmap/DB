
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMGL1704_Gradients2](

           [time] [datetime] NOT NULL,
        [lat]    [float] NOT NULL,
        [lon]    [float] NOT NULL,
      [depth]    [float] NOT NULL,
     [stnnbr]      [int]     NULL,
     [castno]      [int]     NULL,
    [rosette]      [int]     NULL,
     [ctdprs]    [float]     NULL,
     [ctdtmp]    [float]     NULL,
     [ctdsal]    [float]     NULL,
     [ctdoxy]    [float]     NULL,
     [ctdchl]    [float]     NULL,
      [theta]    [float]     NULL,
      [sigma]    [float]     NULL,
     [oxygen]    [float]     NULL,
       [chla]    [float]     NULL,
       [pheo]    [float]     NULL,
[ctdtmp_flag]      [int]     NULL,
[ctdsal_flag]      [int]     NULL,
[ctdoxy_flag]      [int]     NULL,
[ctdchl_flag]      [int]     NULL,
 [theta_flag]      [int]     NULL,
 [sigma_flag]      [int]     NULL,
[oxygen_flag]      [int]     NULL,
  [chla_flag]      [int]     NULL,
  [pheo_flag]      [int]      NULL


    ) ON [FG1]
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblMGL1704_Gradients2_time_lat_lon_depth] ON [dbo].[tblMGL1704_Gradients2]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG1]
