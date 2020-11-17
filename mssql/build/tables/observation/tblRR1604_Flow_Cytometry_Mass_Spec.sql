
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblRR1604_Flow_Cytometry_Mass_Spec](

                             [time]  [datetime]  NOT NULL,
                          [lat]     [float]  NOT NULL,
                          [lon]     [float]  NOT NULL,
                        [depth]       [int]  NOT NULL,
                      [station]       [int]      NULL,
                         [urea]     [float]      NULL,
 [dissolved_organic_phosphorus]     [float]      NULL,
                [chlorophyll_a]     [float]      NULL,
    [low_nucleic_acid_bacteria]     [float]      NULL,
   [high_nucleic_acid_bacteria]     [float]      NULL,
              [prochlorococcus]       [int]      NULL,
                [synechococcus]       [int]      NULL,
               [picoeukaryotes]       [int]      NULL,
               [nanoeukaryotes]       [int]      NULL,
             [bacteria_biomass]     [float]      NULL,
      [prochlorococcus_biomass]     [float]      NULL,
        [synechococcus_biomass]     [float]      NULL,
      [small_eukaryote_biomass]     [float]      NULL,
               [diatom_biomass]     [float]      NULL,
       [dinoflagellate_biomass]     [float]      NULL,
              [ciliate_biomass]     [float]      NULL,
    [other_large_phyto_biomass]     [float]      NULL,
                        [NO3_V]     [float]      NULL,
                [NO3_V_std_dev]     [float]      NULL,
                      [NO3_rho]     [float]      NULL,
              [NO3_rho_std_dev]     [float]      NULL,
                        [NH4_V]     [float]      NULL,
                [NH4_V_std_dev]     [float]      NULL,
                      [NH4_rho]     [float]      NULL,
              [NH4_rho_std_dev]     [float]      NULL,
                       [urea_V]     [float]      NULL,
               [urea_V_std_dev]     [float]      NULL,
                     [urea_rho]     [float]      NULL,
             [urea_rho_std_dev]     [float]      NULL,
                          [C_V]     [float]      NULL,
                  [C_V_std_dev]     [float]      NULL,
                        [C_rho]     [float]      NULL,
                [C_rho_std_dev]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblRR1604_Flow_Cytometry_Mass_Spec_time_lat_lon_depth] ON [dbo].[tblRR1604_Flow_Cytometry_Mass_Spec]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
