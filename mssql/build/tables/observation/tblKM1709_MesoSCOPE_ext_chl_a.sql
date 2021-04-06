
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1709_MesoSCOPE_ext_chl_a](

                 [time]       [datetime]  NOT NULL,
              [lat]          [float]  NOT NULL,
              [lon]          [float]  NOT NULL,
            [depth]            [int]  NOT NULL,
          [station]  [nvarchar](200)      NULL,
      [sample_name]  [nvarchar](200)      NULL,
 [filter_pore_size]          [float]      NULL,
            [Chl_a]          [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKM1709_MesoSCOPE_ext_chl_a_time_lat_lon_depth] ON [dbo].[tblKM1709_MesoSCOPE_ext_chl_a]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
