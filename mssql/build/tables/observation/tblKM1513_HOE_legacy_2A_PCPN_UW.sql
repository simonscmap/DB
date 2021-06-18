
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1513_HOE_legacy_2A_PCPN_UW](

            [time] [datetime] NOT NULL,
         [lat]    [float] NOT NULL,
         [lon]    [float] NOT NULL,
       [depth]      [int] NOT NULL,
         [sst]    [float]     NULL,
         [sss]    [float]     NULL,
          [pc]    [float]     NULL,
          [pn]    [float]     NULL,
[c_to_n_molar]    [float]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKM1513_HOE_legacy_2A_PCPN_UW_time_lat_lon_depth] ON [dbo].[tblKM1513_HOE_legacy_2A_PCPN_UW]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
