
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM1709_Mesoscope_B12_HILIC_Incubations](

                 [time]       [datetime]  NOT NULL,
              [lat]            [int]  NOT NULL,
              [lon]          [float]  NOT NULL,
            [depth]            [int]  NOT NULL,
         [compound]  [nvarchar](200)      NULL,
   [treatment_type]  [nvarchar](200)      NULL,
   [eddy_vorticity]  [nvarchar](200)      NULL,
 [size_fraction_um]          [float]      NULL,
            [value]          [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKM1709_Mesoscope_B12_HILIC_Incubations_time_lat_lon_depth] ON [dbo].[tblKM1709_Mesoscope_B12_HILIC_Incubations]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
