
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1513_HOE_legacy_2A_Microzooplankton_Abundance](

                     [time] [datetime] NOT NULL,
                  [lat]    [float] NOT NULL,
                  [lon]    [float] NOT NULL,
                [depth]    [float] NOT NULL,
              [station]      [int]     NULL,
                 [cast]    [float]     NULL,
               [niskin]      [int]     NULL,
                  [sst]    [float]     NULL,
                  [sal]    [float]     NULL,
          [total_cells]    [float]     NULL,
              [total_C]    [float]     NULL,
       [ciliates_cells]    [float]     NULL,
           [ciliates_C]    [float]     NULL,
[dinoflagellates_cells]    [float]     NULL,
    [dinoflagellates_C]    [float]     NULL,
     [integrated_cells]    [float]     NULL,
         [integrated_C]    [float]     NULL,
                [mld_l]      [int]     NULL,
                [mld_h]      [int]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM1513_HOE_legacy_2A_Microzooplankton_Abundance_time_lat_lon_depth] ON [dbo].[tblKM1513_HOE_legacy_2A_Microzooplankton_Abundance]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
