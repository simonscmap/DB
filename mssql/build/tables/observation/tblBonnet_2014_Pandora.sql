
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblBonnet_2014_Pandora](

                              [time] [datetime] NOT NULL,
                           [lat]    [float] NOT NULL,
                           [lon]    [float] NOT NULL,
                         [depth]      [int] NOT NULL,
      [ucyn_a1_nifh_genes_small]    [float]     NULL,
      [ucyn_a1_nifh_genes_large]    [float]     NULL,
   [ucyn_a2_a3_nifh_genes_small]    [float]     NULL,
   [ucyn_a2_a3_nifh_genes_large]    [float]     NULL,
       [ucyn_b_nifh_genes_small]    [float]     NULL,
       [ucyn_b_nifh_genes_large]    [float]     NULL,
       [ucyn_c_nifh_genes_small]    [float]     NULL,
[trichodesmium_nifh_genes_small]    [float]     NULL,
[trichodesmium_nifh_genes_large]    [float]     NULL,
        [het_1_nifh_genes_small]    [float]     NULL,
        [het_1_nifh_genes_large]    [float]     NULL,
        [het_2_nifh_genes_small]    [float]     NULL,
        [het_2_nifh_genes_large]    [float]     NULL,
      [gamma_a_nifh_genes_small]    [float]     NULL,
      [gamma_a_nifh_genes_large]    [float]      NULL


    ) ON [FG4]
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblBonnet_2014_Pandora_time_lat_lon_depth] ON [dbo].[tblBonnet_2014_Pandora]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]
