
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMV1015_Prochlorococcus_FCM_QPCR](

                       [time] [datetime] NOT NULL,
                    [lat]    [float] NOT NULL,
                    [lon]    [float] NOT NULL,
                  [depth]      [int] NOT NULL,
                [Station]      [int]     NULL,
                   [Cast]      [int]     NULL,
                 [Bottle]      [int]     NULL,
           [botid_number]      [int]     NULL,
        [Prochlorococcus]    [float]     NULL,
[Prochlorococcus_quality]      [int]     NULL,
                 [ProChl]    [float]     NULL,
                 [ProFSC]    [float]     NULL,
               [eMIT9312]    [float]     NULL,
       [eMIT9312_quality]    [float]     NULL,
                  [eMED4]    [float]     NULL,
          [eMED4_quality]    [float]     NULL,
                  [HLIII]    [float]     NULL,
          [HLIII_quality]    [float]     NULL,
                   [HLIV]    [float]     NULL,
           [HLIV_quality]    [float]     NULL,
                [eNATL2A]    [float]     NULL,
        [eNATL2A_quality]    [float]     NULL,
               [eMIT9313]    [float]     NULL,
       [eMIT9313_quality]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblMV1015_Prochlorococcus_FCM_QPCR_time_lat_lon_depth] ON [dbo].[tblMV1015_Prochlorococcus_FCM_QPCR]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
