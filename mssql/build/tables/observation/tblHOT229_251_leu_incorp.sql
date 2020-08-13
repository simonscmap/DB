
    USE [Opedia]

    SET ANSI_NULLS ON
    GO

    SET QUOTED_IDENTIFIER ON
    GO

    CREATE TABLE [dbo].[tblHOT229_251_leu_incorp](

                              [time]  [datetime]  NOT NULL,
                           [lat]     [float]  NOT NULL,
                           [lon]       [int]  NOT NULL,
                         [depth]       [int]  NOT NULL,
                        [cruise]       [int]      NULL,
                       [station]       [int]      NULL,
                          [cast]       [int]      NULL,
        [leu_incorporation_dark]     [float]      NULL,
  [leu_incorporation_dark_stdev]     [float]      NULL,
       [leu_incorporation_light]     [float]      NULL,
 [leu_incorporation_light_stdev]     [float]       NULL


    ) ON [Primary]

    GO

    
    USE [Opedia]
    GO

    CREATE  NONCLUSTERED INDEX [IX_tblHOT229_251_leu_incorp_time_lat_lon_depth] ON [dbo].[tblHOT229_251_leu_incorp]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]
    GO

    
