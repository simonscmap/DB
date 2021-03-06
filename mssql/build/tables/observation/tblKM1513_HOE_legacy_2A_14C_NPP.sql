
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1513_HOE_legacy_2A_14C_NPP](

          [time] [datetime] NOT NULL,
       [lat]    [float] NOT NULL,
       [lon]    [float] NOT NULL,
     [depth]      [int] NOT NULL,
   [station]      [int]     NULL,
      [cast]    [float]     NULL,
    [niskin]      [int]     NULL,
       [L12]    [float]     NULL,
 [stdev_L12]    [float]     NULL,
[LminusD_12]    [float]     NULL,
  [stdev_12]    [float]     NULL,
       [L24]    [float]     NULL,
 [stdev_L24]    [float]     NULL,
[LminusD_24]    [float]     NULL,
  [stdev_24]    [float]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM1513_HOE_legacy_2A_14C_NPP_time_lat_lon_depth] ON [dbo].[tblKM1513_HOE_legacy_2A_14C_NPP]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
