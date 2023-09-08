
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTara_nutrients_flow_cytometry](

                           [time]     [datetime] NOT NULL,
                        [lat]        [float] NOT NULL,
                        [lon]        [float] NOT NULL,
                      [depth]        [float] NOT NULL,
                  [sample_ID] [nvarchar](15)     NULL,
           [Mean_Temperature]        [float]     NULL,
              [Mean_Salinity]        [float]     NULL,
                [Mean_Oxygen]        [float]     NULL,
              [Mean_Nitrates]        [float]     NULL,
                        [NO2]        [float]     NULL,
                        [PO4]        [float]     NULL,
                     [NO2NO3]        [float]     NULL,
                         [SI]        [float]     NULL,
               [AMODIS_PAR8d]        [float]     NULL,
                [Okubo_Weiss]        [float]     NULL,
               [Lyapunov_exp]        [float]     NULL,
               [grad_SST_adv]        [float]     NULL,
                  [retention]        [float]     NULL,
       [Mean_Depth_MLD_Sigma]        [float]     NULL,
        [Mean_Depth_Max_Fluo]        [float]     NULL,
          [Mean_Depth_Max_N2]        [float]     NULL,
          [Mean_Depth_Max_O2]        [float]     NULL,
          [Mean_Depth_Min_O2]        [float]     NULL,
      [Mean_Depth_Nitracline]        [float]     NULL,
       [miTAG_SILVA_Richness]        [float]     NULL,
[miTAG_SILVA_Phylo_Diversity]        [float]     NULL,
           [miTAG_SILVA_Chao]        [float]     NULL,
            [miTAG_SILVA_ace]        [float]     NULL,
        [miTAG_SILVA_Shannon]        [float]     NULL,
                 [OG_Shannon]        [float]     NULL,
                [OG_Richness]        [float]     NULL,
                [OG_Evenness]        [float]     NULL,
            [FC_heterotrophs]        [float]     NULL,
              [FC_autotrophs]        [float]     NULL,
                [FC_bacteria]        [float]     NULL,
          [FC_picoeukaryotes]        [float]     NULL,
    [minimum_generation_time]        [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblTara_nutrients_flow_cytometry_time_lat_lon_depth] ON [dbo].[tblTara_nutrients_flow_cytometry]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
