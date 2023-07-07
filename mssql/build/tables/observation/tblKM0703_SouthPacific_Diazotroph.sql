
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM0703_SouthPacific_Diazotroph](

                        [time] [datetime] NOT NULL,
                     [lat]    [float] NOT NULL,
                     [lon]    [float] NOT NULL,
                   [depth]    [float] NOT NULL,
      [UCYN_A1_nifH_genes]    [float]     NULL,
       [UCYN_B_nifH_genes]    [float]     NULL,
[Trichodesmium_nifH_genes]    [float]     NULL,
        [Het_1_nifH_genes]    [float]     NULL,
      [Gamma_A_nifH_genes]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblKM0703_SouthPacific_Diazotroph_time_lat_lon_depth] ON [dbo].[tblKM0703_SouthPacific_Diazotroph]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
