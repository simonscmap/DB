
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblHOT_PP](

                          [time]      [datetime] NOT NULL,
                       [lat]         [float] NOT NULL,
                       [lon]           [int] NOT NULL,
                     [depth]           [int] NOT NULL,
               [cruise_name] [nvarchar](200)     NULL,
                   [chl_hot]         [float]     NULL,
         [phaeopigments_hot]         [float]     NULL,
                     [itype]           [int]     NULL,
              [light_12_hot]         [float]     NULL,
               [dark_12_hot]         [float]     NULL,
              [salinity_hot]         [float]     NULL,
       [prochlorococcus_hot]         [float]     NULL,
[heterotrophic_bacteria_hot]         [float]     NULL,
         [synechococcus_hot]         [float]     NULL,
            [eukaryotes_hot]         [float]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblHOT_PP_time_lat_lon_depth] ON [dbo].[tblHOT_PP]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
