
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblSosik_flow_cytometry_NES_LTER](

                                       [time]     [datetime] NOT NULL,
                                    [lat]        [float] NOT NULL,
                                    [lon]        [float] NOT NULL,
                                  [depth]        [float] NOT NULL,
                                 [cruise]  [nvarchar](6)     NULL,
                       [syn_cells_per_ml]        [float]     NULL,
            [redeuk_leq_2um_cells_per_ml]        [float]     NULL,
            [redeuk_leq_3um_cells_per_ml]        [float]     NULL,
            [redeuk_leq_5um_cells_per_ml]        [float]     NULL,
           [redeuk_leq_10um_cells_per_ml]        [float]     NULL,
           [redeuk_leq_20um_cells_per_ml]        [float]     NULL,
            [syn_biovolume_concentration]        [float]     NULL,
 [redeuk_leq_2um_biovolume_concentration]        [float]     NULL,
 [redeuk_leq_3um_biovolume_concentration]        [float]     NULL,
 [redeuk_leq_5um_biovolume_concentration]        [float]     NULL,
[redeuk_leq_10um_biovolume_concentration]        [float]     NULL,
[redeuk_leq_20um_biovolume_concentration]        [float]     NULL,
               [syn_carbon_concentration]        [float]     NULL,
    [redeuk_leq_2um_carbon_concentration]        [float]     NULL,
    [redeuk_leq_3um_carbon_concentration]        [float]     NULL,
    [redeuk_leq_5um_carbon_concentration]        [float]     NULL,
   [redeuk_leq_10um_carbon_concentration]        [float]     NULL,
   [redeuk_leq_20um_carbon_concentration]        [float]     NULL,
                     [volume_analyzed_ml]        [float]     NULL,
                               [filename] [nvarchar](58)     NULL,
                  [size_calibration_flag]          [int]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblSosik_flow_cytometry_NES_LTER_time_lat_lon_depth] ON [dbo].[tblSosik_flow_cytometry_NES_LTER]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
