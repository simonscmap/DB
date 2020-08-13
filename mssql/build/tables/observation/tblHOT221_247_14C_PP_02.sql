
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblHOT221_247_14C_PP_02](

                               [time]       [datetime]  NOT NULL,
                            [lat]          [float]  NOT NULL,
                            [lon]            [int]  NOT NULL,
                          [depth]            [int]  NOT NULL,
                         [cruise]            [int]      NULL,
                        [station]            [int]      NULL,
                           [cast]            [int]      NULL,
       [primary_production_light]          [float]      NULL,
 [primary_production_light_stdev]          [float]      NULL,
                     [filter_min]          [float]      NULL,
                    [filter_type]  [nvarchar](200)       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblHOT221_247_14C_PP_02_time_lat_lon_depth] ON [dbo].[tblHOT221_247_14C_PP_02]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
