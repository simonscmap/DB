
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblHOT221_247_14C_PP_02um](

                             [time]       [datetime]  NOT NULL,
                          [lat]          [float]  NOT NULL,
                          [lon]          [float]  NOT NULL,
                        [depth]            [int]  NOT NULL,
                   [hot_cruise]            [int]      NULL,
                         [cast]            [int]      NULL,
       [C14_assimilation_light]          [float]      NULL,
 [C14_assimilation_light_stdev]  [nvarchar](200)       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblHOT221_247_14C_PP_02um_time_lat_lon_depth] ON [dbo].[tblHOT221_247_14C_PP_02um]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
