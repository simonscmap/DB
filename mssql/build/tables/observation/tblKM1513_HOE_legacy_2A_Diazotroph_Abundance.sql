
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1513_HOE_legacy_2A_Diazotroph_Abundance](

                                       [time] [datetime] NOT NULL,
                                    [lat]    [float] NOT NULL,
                                    [lon]    [float] NOT NULL,
                                  [depth]    [float] NOT NULL,
                                [station]      [int]     NULL,
                                   [cast]    [float]     NULL,
                                 [niskin]      [int]     NULL,
                                    [sst]    [float]     NULL,
                                    [sal]    [float]     NULL,
[heterocysts_associatedwith_rhizosolenia]      [int]     NULL,
   [heterocysts_associatedwith_hemiaulus]      [int]     NULL,
           [climacodium_with_cyanobionts]      [int]     NULL,
                          [free_richelia]      [int]     NULL,
                          [trichodesmium]      [int]     NULL,
                              [total_dda]      [int]     NULL,
                      [total_diazotrophs]      [int]     NULL,
                 [integrated_diazotrophs]    [float]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKM1513_HOE_legacy_2A_Diazotroph_Abundance_time_lat_lon_depth] ON [dbo].[tblKM1513_HOE_legacy_2A_Diazotroph_Abundance]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
