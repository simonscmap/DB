
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblJC079_AMT22_CTD](

                                [time]      [datetime] NOT NULL,
                             [lat]         [float] NOT NULL,
                             [lon]         [float] NOT NULL,
                           [depth]           [int] NOT NULL,
                         [Station] [nvarchar](200)     NULL,
                    [LOCAL_CDI_ID]           [int]     NULL,
                    [bottom_depth]           [int]     NULL,
                        [Pressure]           [int]     NULL,
                       [Record_No]           [int]     NULL,
                   [Attn_Red_25cm]         [float]     NULL,
              [Attn_Red_25cm_Flag]           [int]     NULL,
     [chl_a_water_ISfluor_sampcal]         [float]     NULL,
[chl_a_water_ISfluor_sampcal_Flag]           [int]     NULL,
                 [WC_dissO2_calib]         [float]     NULL,
            [WC_dissO2_calib_Flag]           [int]     NULL,
                   [DWIrr_2_piPAR]         [float]     NULL,
              [DWIrr_2_piPAR_Flag]           [int]     NULL,
                        [BK_SBE43]         [float]     NULL,
                   [BK_SBE43_Flag]           [int]     NULL,
                  [Trans_Red_25cm]         [float]     NULL,
             [Trans_Red_25cm_Flag]           [int]     NULL,
                       [WC_Potemp]         [float]     NULL,
                  [WC_Potemp_Flag]           [int]     NULL,
                 [P_sal_CTD_calib]         [float]     NULL,
            [P_sal_CTD_calib_Flag]           [int]     NULL,
                        [SigTheta]         [float]     NULL,
                   [SigTheta_Flag]           [int]     NULL,
                     [WC_temp_CTD]         [float]     NULL,
                [WC_temp_CTD_Flag]           [int]     NULL,
                   [ScalarUwirPAR]         [float]     NULL,
              [ScalarUwirPAR_Flag]           [int]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblJC079_AMT22_CTD_time_lat_lon_depth] ON [dbo].[tblJC079_AMT22_CTD]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
