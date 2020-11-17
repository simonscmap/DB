
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblJR16001_AMT26_flow_cytometry](

                                                                [time]       [datetime]  NOT NULL,
                                                             [lat]          [float]  NOT NULL,
                                                             [lon]          [float]  NOT NULL,
                                                           [depth]            [int]  NOT NULL,
                                                    [bodc_station]            [int]      NULL,
                                                [original_station]  [nvarchar](200)      NULL,
                                                     [water_depth]          [float]      NULL,
                                                 [bottle_pressure]          [float]      NULL,
                                                [BODC_bottle_code]            [int]      NULL,
                                                     [bottle_flag]            [int]      NULL,
                                                [rosette_position]            [int]      NULL,
                                                 [firing_sequence]            [int]      NULL,
       [bacteria_abundance_low_nucleic_acid_cell_content_C804B6A6]          [float]      NULL,
  [bacteria_abundance_low_nucleic_acid_cell_content_C804B6A6_flag]  [nvarchar](200)      NULL,
                                [cryptophyceae_abundance_J79A0596]          [float]      NULL,
      [bacteria_abundance_high_nucleic_acid_cell_content_P18318A9]          [float]      NULL,
 [bacteria_abundance_high_nucleic_acid_cell_content_P18318A9_flag]  [nvarchar](200)      NULL,
                             [prymnesiophyceae_abundance_P490A00Z]          [float]      NULL,
                        [prymnesiophyceae_abundance_P490A00Z_flag]  [nvarchar](200)      NULL,
                         [synechococcus_abundance_P700A90Z_Tarran]          [float]      NULL,
                    [synechococcus_abundance_P700A90Z_Tarran_flag]  [nvarchar](200)      NULL,
                       [prochlorococcus_abundance_P701A90Z_Tarran]          [float]      NULL,
                  [prochlorococcus_abundance_P701A90Z_Tarran_flag]  [nvarchar](200)      NULL,
                        [picoeukaryotic_abundance_PYEUA00A_Tarran]          [float]      NULL,
                               [nanoeukaryotic_abundance_X726A86B]          [float]      NULL,
                          [nanoeukaryotic_abundance_X726A86B_flag]  [nvarchar](200)       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblJR16001_AMT26_flow_cytometry_time_lat_lon_depth] ON [dbo].[tblJR16001_AMT26_flow_cytometry]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
