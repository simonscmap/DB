
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMGL1704_Gradients2_Diazotroph](

                              [time] [datetime] NOT NULL,
                           [lat]    [float] NOT NULL,
                           [lon]    [float] NOT NULL,
                         [depth]      [int] NOT NULL,
       [UCYN_A1_nifH_genes_mean]    [float]     NULL,
      [UCYN_A1_nifH_genes_stdev]    [float]     NULL,
         [N2_fixation_rate_mean]    [float]     NULL,
        [N2_fixation_rate_stdev]    [float]     NULL,
        [fixation_rate_13C_mean]    [float]     NULL,
       [fixation_rate_13C_stdev]    [float]     NULL,
 [Trichodesmium_nifH_genes_mean]    [float]     NULL,
[Trichodesmium_nifH_genes_stdev]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblMGL1704_Gradients2_Diazotroph_time_lat_lon_depth] ON [dbo].[tblMGL1704_Gradients2_Diazotroph]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
