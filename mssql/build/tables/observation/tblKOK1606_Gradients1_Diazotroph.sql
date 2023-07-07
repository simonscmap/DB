
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1606_Gradients1_Diazotroph](

                              [time] [datetime] NOT NULL,
                           [lat]    [float] NOT NULL,
                           [lon]    [float] NOT NULL,
                         [depth]      [int] NOT NULL,
         [N2_fixation_rate_mean]    [float]     NULL,
        [N2_fixation_rate_stdev]    [float]     NULL,
        [fixation_rate_13C_mean]    [float]     NULL,
       [fixation_rate_13C_stdev]    [float]     NULL,
      [UCYN_A1_nifH_genes_small]    [float]     NULL,
      [UCYN_A1_nifH_genes_large]    [float]     NULL,
   [UCYN_A2_A3_nifH_genes_small]    [float]     NULL,
   [UCYN_A2_A3_nifH_genes_large]    [float]     NULL,
       [UCYN_B_nifH_genes_small]    [float]     NULL,
       [UCYN_B_nifH_genes_large]    [float]     NULL,
       [UCYN_C_nifH_genes_small]      [int]     NULL,
       [UCYN_C_nifH_genes_large]    [float]     NULL,
[Trichodesmium_nifH_genes_small]      [int]     NULL,
[Trichodesmium_nifH_genes_large]      [int]     NULL,
        [Het_1_nifH_genes_small]      [int]     NULL,
        [Het_1_nifH_genes_large]    [float]     NULL,
        [Het_2_nifH_genes_small]      [int]     NULL,
        [Het_2_nifH_genes_large]    [float]     NULL,
        [Het_3_nifH_genes_small]      [int]     NULL,
        [Het_3_nifH_genes_large]      [int]     NULL,
      [Gamma_A_nifH_genes_small]      [int]     NULL,
      [Gamma_A_nifH_genes_large]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblKOK1606_Gradients1_Diazotroph_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_Diazotroph]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
