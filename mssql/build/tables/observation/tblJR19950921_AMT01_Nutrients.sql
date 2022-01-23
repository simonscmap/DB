
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblJR19950921_AMT01_Nutrients](

                     [time]       [datetime]  NOT NULL,
                  [lat]          [float]  NOT NULL,
                  [lon]          [float]  NOT NULL,
                [depth]          [float]  NOT NULL,
              [station]  [nvarchar](200)      NULL,
         [local_cdi_ID]            [int]      NULL,
         [bottle_depth]          [float]      NULL,
              [nitrate]  [nvarchar](200)      NULL,
         [nitrate_flag]            [int]      NULL,
      [nitrate_nitrite]          [float]      NULL,
 [nitrate_nitrite_flag]            [int]      NULL,
            [phosphate]  [nvarchar](200)      NULL,
       [phosphate_flag]            [int]      NULL,
     [sample_reference]            [int]      NULL,
             [silicate]          [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblJR19950921_AMT01_Nutrients_time_lat_lon_depth] ON [dbo].[tblJR19950921_AMT01_Nutrients]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
