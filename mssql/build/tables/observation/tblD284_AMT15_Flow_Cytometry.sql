
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblD284_AMT15_Flow_Cytometry](

                                          [time]       [datetime]  NOT NULL,
                                       [lat]          [float]  NOT NULL,
                                       [lon]          [float]  NOT NULL,
                                     [depth]          [float]  NOT NULL,
        [bacteria_abundance_HBCCAFTX_Zubkov]          [float]      NULL,
   [synechococcus_abundance_P700A90Z_Zubkov]          [float]      NULL,
 [prochlorococcus_abundance_P701A90Z_Zubkov]          [float]      NULL,
                              [bodc_station]            [int]      NULL,
                          [original_station]  [nvarchar](200)      NULL,
                                      [gear]  [nvarchar](200)      NULL,
                          [BODC_bottle_code]            [int]      NULL,
                               [bottle_flag]            [int]      NULL,
                          [rosette_position]            [int]      NULL,
                           [firing_sequence]            [int]      NULL,
                                   [w_depth]          [float]      NULL,
                           [bottle_pressure]          [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblD284_AMT15_Flow_Cytometry_time_lat_lon_depth] ON [dbo].[tblD284_AMT15_Flow_Cytometry]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
