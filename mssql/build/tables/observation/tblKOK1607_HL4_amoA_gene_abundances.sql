
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1607_HL4_amoA_gene_abundances](

                     [time]       [datetime]  NOT NULL,
                  [lat]          [float]  NOT NULL,
                  [lon]          [float]  NOT NULL,
                [depth]            [int]  NOT NULL,
              [station]  [nvarchar](200)      NULL,
 [archaea_amoA_clade_A]            [int]      NULL,
 [archaea_amoA_clade_B]            [int]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKOK1607_HL4_amoA_gene_abundances_time_lat_lon_depth] ON [dbo].[tblKOK1607_HL4_amoA_gene_abundances]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
