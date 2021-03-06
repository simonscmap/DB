
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1513_HOE_legacy_2A_ACS_Optics](

        [time] [datetime] NOT NULL,
     [lat]    [float] NOT NULL,
     [lon]    [float] NOT NULL,
   [depth]      [int] NOT NULL,
     [sst]    [float]     NULL,
     [sal]    [float]     NULL,
[chla_acs]    [float]     NULL,
[chlb_acs]    [float]     NULL,
     [poc]    [float]     NULL,
     [par]    [float]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM1513_HOE_legacy_2A_ACS_Optics_time_lat_lon_depth] ON [dbo].[tblKM1513_HOE_legacy_2A_ACS_Optics]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
