
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1709_Mesopscope_iron_ligand_concentrations](

                         [time] [datetime] NOT NULL,
                      [lat]    [float] NOT NULL,
                      [lon]    [float] NOT NULL,
                    [depth]      [int] NOT NULL,
              [FeL_RT14min]    [float]     NULL,
[FeL_RT16min_FerrioxamineE]    [float]     NULL,
              [FeL_RT25min]    [float]     NULL,
              [FeL_RT26min]    [float]     NULL,
              [FeL_RT27min]    [float]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM1709_Mesopscope_iron_ligand_concentrations_time_lat_lon_depth] ON [dbo].[tblKM1709_Mesopscope_iron_ligand_concentrations]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
