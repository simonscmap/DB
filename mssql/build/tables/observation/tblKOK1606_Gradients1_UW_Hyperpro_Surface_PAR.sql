
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1606_Gradients1_UW_Hyperpro_Surface_PAR](

            [time]  [datetime]  NOT NULL,
         [lat]     [float]  NOT NULL,
         [lon]     [float]  NOT NULL,
       [depth]       [int]  NOT NULL,
 [par_surface]     [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKOK1606_Gradients1_UW_Hyperpro_Surface_PAR_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_UW_Hyperpro_Surface_PAR]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
