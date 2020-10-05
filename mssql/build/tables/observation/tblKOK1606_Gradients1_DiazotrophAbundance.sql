
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1606_Gradients1_DiazotrophAbundance](

                                        [time]       [datetime]  NOT NULL,
                                     [lat]          [float]  NOT NULL,
                                     [lon]            [int]  NOT NULL,
                                   [depth]            [int]  NOT NULL,
                                 [station]            [int]      NULL,
                                    [cast]            [int]      NULL,
                                  [niskin]            [int]      NULL,
                      [size_fractionation]  [nvarchar](200)      NULL,
 [heterocysts_associatedwith_rhizosolenia]          [float]      NULL,
    [heterocysts_associatedwith_hemiaulus]          [float]      NULL,
                           [free_richelia]          [float]      NULL,
                           [trichodesmium]          [float]      NULL,
                       [total_diazotrophs]          [float]      NULL,
                  [integrated_diazotrophs]          [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKOK1606_Gradients1_DiazotrophAbundance_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_DiazotrophAbundance]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
