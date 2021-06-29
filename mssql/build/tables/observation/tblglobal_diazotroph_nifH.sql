
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblglobal_diazotroph_nifH](

                       [time]      [datetime] NOT NULL,
                    [lat]         [float] NOT NULL,
                    [lon]         [float] NOT NULL,
                  [depth]         [float] NOT NULL,
      [UCYN_A1_nifH_gene] [nvarchar](200)     NULL,
[UCYN_A2_A3_A4_nifH_gene]         [float]     NULL,
[total_UCYN_A__nifH_gene]         [float]     NULL,
       [UCYN_B_nifH_gene]         [float]     NULL,
       [UCYN_C_nifH_gene]         [float]     NULL,
[trichodesmium_nifH_gene]         [float]     NULL,
     [richelia_nifH_gene]         [float]     NULL,
    [calothrix_nifH_gene]         [float]     NULL,
                  [notes] [nvarchar](200)     NULL,
            [source_data] [nvarchar](200)     NULL,
[source_location_of_data] [nvarchar](200)     NULL,
[UCYN_A_qPCR_assays_used] [nvarchar](200)      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblglobal_diazotroph_nifH_time_lat_lon_depth] ON [dbo].[tblglobal_diazotroph_nifH]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
