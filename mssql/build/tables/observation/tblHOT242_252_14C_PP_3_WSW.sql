
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblHOT242_252_14C_PP_3_WSW](

                            [time]       [datetime]  NOT NULL,
                         [lat]          [float]  NOT NULL,
                         [lon]            [int]  NOT NULL,
                       [depth]            [int]  NOT NULL,
                      [cruise]            [int]      NULL,
                     [station]            [int]      NULL,
                        [cast]            [int]      NULL,
  [C14_assimilation_nano_mean]          [float]      NULL,
 [C14_assimilation_nano_stdev]          [float]      NULL,
                  [filter_min]            [int]      NULL,
                      [bottle]  [nvarchar](200)       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblHOT242_252_14C_PP_3_WSW_time_lat_lon_depth] ON [dbo].[tblHOT242_252_14C_PP_3_WSW]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
