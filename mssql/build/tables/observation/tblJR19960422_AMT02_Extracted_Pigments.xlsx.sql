
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblJR19960422_AMT02_Extracted_Pigments.xlsx](

                                  [time]       [datetime]  NOT NULL,
                               [lat]          [float]  NOT NULL,
                               [lon]          [float]  NOT NULL,
                           [station]  [nvarchar](200)      NULL,
                       [alloxanthin]          [float]      NULL,
                  [alloxanthin_flag]            [int]      NULL,
                    [alloxanthin_SD]          [float]      NULL,
               [alloxanthin_SD_flag]            [int]      NULL,
                [beta_beta_carotine]          [float]      NULL,
           [beta_beta_carotine_flag]            [int]      NULL,
             [beta_beta_carotine_SD]          [float]      NULL,
        [beta_beta_carotine_SD_flag]            [int]      NULL,
         [butanoyloxyfucoxanthin_19]          [float]      NULL,
    [butanoyloxyfucoxanthin_19_flag]            [int]      NULL,
      [butanoyloxyfucoxanthin_19_SD]          [float]      NULL,
 [butanoyloxyfucoxanthin_19_SD_flag]            [int]      NULL,
                     [chlorophyll_b]          [float]      NULL,
                [chlorophyll_b_flag]            [int]      NULL,
                  [chlorophyll_b_SD]          [float]      NULL,
             [chlorophyll_b_SD_flag]            [int]      NULL,
                     [chlorophyll_c]          [float]      NULL,
                [chlorophyll_c_flag]            [int]      NULL,
                  [chlorophyll_c_SD]          [float]      NULL,
             [chlorophyll_c_SD_flag]            [int]      NULL,
                  [chlorophyllide_a]          [float]      NULL,
             [chlorophyllide_a_flag]            [int]      NULL,
               [chlorophyllide_a_SD]          [float]      NULL,
          [chlorophyllide_a_SD_flag]            [int]      NULL,
                  [chlorophyllide_b]          [float]      NULL,
             [chlorophyllide_b_flag]            [int]      NULL,
               [chlorophyllide_b_SD]          [float]      NULL,
          [chlorophyllide_b_SD_flag]            [int]      NULL,
             [chlorophyll_a_allomer]          [float]      NULL,
        [chlorophyll_a_allomer_flag]            [int]      NULL,
          [chlorophyll_a_allomer_SD]          [float]      NULL,
     [chlorophyll_a_allomer_SD_flag]            [int]      NULL,
              [chlorophyll_a_epimer]          [float]      NULL,
         [chlorophyll_a_epimer_flag]            [int]      NULL,
           [chlorophyll_a_epimer_SD]          [float]      NULL,
      [chlorophyll_a_epimer_SD_flag]            [int]      NULL,
      [chlorophyll_a_SD_fluorometer]          [float]      NULL,
 [chlorophyll_a_SD_fluorometer_flag]            [int]      NULL,
         [chlorophyll_a_fluorometer]          [float]      NULL,
                     [chlorophyll_a]          [float]      NULL,
                [chlorophyll_a_flag]            [int]      NULL,
                    [diadinoxanthin]          [float]      NULL,
               [diadinoxanthin_flag]            [int]      NULL,
                 [diadinoxanthin_SD]          [float]      NULL,
            [diadinoxanthin_SD_flag]            [int]      NULL,
                      [diatoxanthin]          [float]      NULL,
                 [diatoxanthin_flag]            [int]      NULL,
                   [diatoxanthin_SD]          [float]      NULL,
              [diatoxanthin_SD_flag]            [int]      NULL,
                       [dinoxanthin]          [float]      NULL,
                  [dinoxanthin_flag]            [int]      NULL,
                    [dinoxanthin_SD]          [float]      NULL,
               [dinoxanthin_SD_flag]            [int]      NULL,
             [divinyl_chlorophyll_a]          [float]      NULL,
        [divinyl_chlorophyll_a_flag]            [int]      NULL,
          [divinyl_chlorophyll_a_SD]          [float]      NULL,
     [divinyl_chlorophyll_a_SD_flag]            [int]      NULL,
                       [fucoxanthin]          [float]      NULL,
                  [fucoxanthin_flag]            [int]      NULL,
                    [fucoxanthin_SD]          [float]      NULL,
               [fucoxanthin_SD_flag]            [int]      NULL,
         [hexanoyloxyfucoxanthin_19]          [float]      NULL,
    [hexanoyloxyfucoxanthin_19_flag]            [int]      NULL,
      [hexanoyloxyfucoxanthin_19_SD]          [float]      NULL,
 [hexanoyloxyfucoxanthin_19_SD_flag]            [int]      NULL,
           [monovinyl_chlorophyll_a]          [float]      NULL,
      [monovinyl_chlorophyll_a_flag]            [int]      NULL,
        [monovinyl_chlorophyll_a_SD]          [float]      NULL,
   [monovinyl_chlorophyll_a_SD_flag]            [int]      NULL,
                   [phaeophorbide_a]          [float]      NULL,
              [phaeophorbide_a_flag]            [int]      NULL,
                [phaeophorbide_a_SD]          [float]      NULL,
           [phaeophorbide_a_SD_flag]            [int]      NULL,
                         [peridinin]          [float]      NULL,
                    [peridinin_flag]            [int]      NULL,
                      [peridinin_SD]          [float]      NULL,
                 [peridinin_SD_flag]            [int]      NULL,
         [phaeopigments_fluorometer]          [float]      NULL,
    [phaeopigments_fluorometer_flag]            [int]      NULL,
      [phaeopigments_SD_fluorometer]          [float]      NULL,
 [phaeopigments_SD_fluorometer_flag]            [int]      NULL,
                    [prasinoxanthin]          [float]      NULL,
               [prasinoxanthin_flag]            [int]      NULL,
                 [prasinoxanthin_SD]          [float]      NULL,
            [prasinoxanthin_SD_flag]            [int]      NULL,
                     [phaeophytin_a]          [float]      NULL,
                [phaeophytin_a_flag]            [int]      NULL,
                  [phaeophytin_a_SD]          [float]      NULL,
             [phaeophytin_a_SD_flag]            [int]      NULL,
                     [phaeophytin_b]          [float]      NULL,
                [phaeophytin_b_flag]            [int]      NULL,
                  [phaeophytin_b_SD]          [float]      NULL,
             [phaeophytin_b_SD_flag]            [int]      NULL,
                  [chlorophyll_a_SD]          [float]      NULL,
             [chlorophyll_a_SD_flag]            [int]      NULL,
                 [zeaxanthin_lutein]          [float]      NULL,
            [zeaxanthin_lutein_flag]            [int]      NULL,
              [zeaxanthin_lutein_SD]          [float]      NULL,
         [zeaxanthin_lutein_SD_flag]            [int]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblJR19960422_AMT02_Extracted_Pigments.xlsx_time_lat_lon_] ON [dbo].[tblJR19960422_AMT02_Extracted_Pigments.xlsx]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
