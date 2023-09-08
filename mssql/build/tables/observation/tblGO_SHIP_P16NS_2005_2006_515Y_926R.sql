    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblGO_SHIP_P16NS_2005_2006_515Y_926R](

                                                        [time]     [datetime] NOT NULL,
                                                     [lat]        [float] NOT NULL,
                                                     [lon]        [float] NOT NULL,
                                                   [depth]        [float] NOT NULL,
                                                [ASV_hash] [nvarchar](32)     NULL,
                                               [qiime2_ID] [nvarchar](13)     NULL,
                                      [Relative_Abundance]        [float]     NULL,
                                         [Study_Max_Abund]        [float]     NULL,
                                         [Source_database] [nvarchar](11)     NULL,
                                                 [Kingdom] [nvarchar](14)     NULL,
                                              [Supergroup] [nvarchar](19)     NULL,
                                                [Division] [nvarchar](22)     NULL,
                                                  [Domain] [nvarchar](12)     NULL,
                                                  [Phylum] [nvarchar](32)     NULL,
                                                   [Class] [nvarchar](32)     NULL,
                                                   [Order] [nvarchar](38)     NULL,
                                                  [Family] [nvarchar](45)     NULL,
                                                   [Genus] [nvarchar](53)     NULL,
                                                 [Species] [nvarchar](51)     NULL,
                                               [Cast_Type] [nvarchar](12)     NULL,
                                                  [Cruise]  [nvarchar](4)     NULL,
                                         [UNOLS_Cruise_ID]  [nvarchar](8)     NULL,
                                                 [Station]  [nvarchar](4)     NULL,
                                                  [Niskin]  [nvarchar](3)     NULL,
                                       [Pressure_decibars]        [float]     NULL,
                             [Temperature_degrees_Celsius]        [float]     NULL,
                                            [Salinity_psu]        [float]     NULL,
                                          [Oxygen_umol_kg]        [float]     NULL,
                                       [Phosphate_umol_kg]        [float]     NULL,
                                        [Silicate_umol_kg]        [float]     NULL,
                                         [Nitrate_umol_kg]        [float]     NULL,
                                         [Nitrite_umol_kg]        [float]     NULL,
                                             [Photic_Zone] [nvarchar](12)     NULL,
                                 [DNA_concentration_ng_uL]        [float]     NULL,
[Eukaryotic_Fraction_from_Trimmed_Sequences_18Sdiv16S_18S]        [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblGO_SHIP_P16NS_2005_2006_515Y_926R_time_lat_lon_depth] ON [dbo].[tblGO_SHIP_P16NS_2005_2006_515Y_926R]
    (
        [time] ASC,
        [lat] ASC,
        [lon] ASC,
        [depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]