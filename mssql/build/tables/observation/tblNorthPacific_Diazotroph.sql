
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblNorthPacific_Diazotroph](

                         [time]  [datetime]  NOT NULL,
                      [lat]     [float]  NOT NULL,
                      [lon]     [float]  NOT NULL,
       [UCYN_A1_nifH_genes]     [float]      NULL,
 [Trichodesmium_nifH_genes]     [float]      NULL,
       [Gamma_A_nifH_genes]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblNorthPacific_Diazotroph_time_lat_lon_] ON [dbo].[tblNorthPacific_Diazotroph]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
