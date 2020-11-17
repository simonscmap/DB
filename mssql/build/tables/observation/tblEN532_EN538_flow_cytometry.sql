
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblEN532_EN538_flow_cytometry](

                                 [time]       [datetime]  NOT NULL,
                              [lat]          [float]  NOT NULL,
                              [lon]          [float]  NOT NULL,
                            [depth]            [int]  NOT NULL,
                        [cruise_id]  [nvarchar](200)      NULL,
                             [cast]            [int]      NULL,
                  [Syn_biomass_nMC]          [float]      NULL,
                 [Syn_cells_per_ml]          [float]      NULL,
            [Syn_cells_per_ml_flag]            [int]      NULL,
              [picoEuk_biomass_nMC]          [float]      NULL,
             [picoEuk_cells_per_ml]          [float]      NULL,
        [picoEuk_cells_per_ml_flag]            [int]      NULL,
               [PE_Euk_biomass_nMC]          [float]      NULL,
              [PE_Euk_cells_per_ml]          [float]      NULL,
         [PE_Euk_cells_per_ml_flag]            [int]      NULL,
           [totnanoEuk_biomass_nMC]          [float]      NULL,
          [totnanoEuk_cells_per_ml]          [float]      NULL,
     [totnanoEuk_cells_per_ml_flag]            [int]      NULL,
                [cocco_biomass_nMC]          [float]      NULL,
               [cocco_cells_per_ml]          [float]      NULL,
          [cocco_cells_per_ml_flag]            [int]      NULL,
             [Prochlor_biomass_nMC]          [float]      NULL,
            [Prochlor_cells_per_ml]          [float]      NULL,
       [Prochlor_cells_per_ml_flag]            [int]      NULL,
       [total_FC_phyto_biomass_nMC]          [float]      NULL,
      [total_FC_phyto_cells_per_ml]          [float]      NULL,
 [total_FC_phyto_cells_per_ml_flag]            [int]      NULL,
      [total_het_bact_cells_per_ml]          [float]      NULL,
 [total_het_bact_cells_per_ml_flag]            [int]      NULL,
                          [comment]  [nvarchar](200)       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblEN532_EN538_flow_cytometry_time_lat_lon_depth] ON [dbo].[tblEN532_EN538_flow_cytometry]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
