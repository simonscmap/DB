
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM0704_CMORE_BULA_Bottle](

                   [time] [datetime] NOT NULL,
                [lat]    [float] NOT NULL,
                [lon]    [float] NOT NULL,
              [depth]    [float] NOT NULL,
            [station]      [int]     NULL,
               [cast]      [int]     NULL,
            [rosette]      [int]     NULL,
           [CTD_pres]    [float]     NULL,
           [CTD_temp]    [float]     NULL,
            [CTD_sal]    [float]     NULL,
           [CTD_doxy]    [float]     NULL,
            [CTD_chl]    [float]     NULL,
              [theta]    [float]     NULL,
              [sigma]    [float]     NULL,
      [bottle_oxygen]    [float]     NULL,
                [DIC]    [float]     NULL,
         [alkalinity]    [float]     NULL,
          [phosphate]    [float]     NULL,
            [NO2_NO3]    [float]     NULL,
            [silcate]    [float]     NULL,
                [LLN]    [float]     NULL,
                [LLP]    [float]     NULL,
                 [PC]    [float]     NULL,
                 [PN]    [float]     NULL,
                 [PP]    [float]     NULL,
                [PSi]    [float]     NULL,
              [chl_a]    [float]     NULL,
               [pheo]    [float]     NULL,
           [chl_plus]    [float]     NULL,
              [PERID]    [float]     NULL,
             [but_19]    [float]     NULL,
               [FUCO]    [float]     NULL,
             [hex_19]    [float]     NULL,
            [Prasino]    [float]     NULL,
               [Viol]    [float]     NULL,
            [Diadino]    [float]     NULL,
              [Allox]    [float]     NULL,
             [Lutein]    [float]     NULL,
             [Zeaxan]    [float]     NULL,
              [Chl_b]    [float]     NULL,
     [alpha_carotene]    [float]     NULL,
      [beta_carotene]    [float]     NULL,
        [divinyl_chl]    [float]     NULL,
      [monovinyl_chl]    [float]     NULL,
          [HPLC_chla]    [float]     NULL,
        [hetero_bact]    [float]     NULL,
     [prochloro_bact]    [float]     NULL,
       [synecho_bact]    [float]     NULL,
         [eukaryotes]    [float]     NULL,
                [ATP]    [float]     NULL,
      [CTD_temp_flag]      [int]     NULL,
       [CTD_sal_flag]      [int]     NULL,
      [CTD_doxy_flag]      [int]     NULL,
       [CTD_chl_flag]      [int]     NULL,
         [theta_flag]      [int]     NULL,
         [sigma_flag]      [int]     NULL,
 [bottle_oxygen_flag]      [int]     NULL,
           [DIC_flag]      [int]     NULL,
    [alkalinity_flag]      [int]     NULL,
     [phosphate_flag]      [int]     NULL,
       [NO2_NO3_flag]      [int]     NULL,
       [silcate_flag]      [int]     NULL,
           [LLN_flag]      [int]     NULL,
           [LLP_flag]      [int]     NULL,
            [PC_flag]      [int]     NULL,
            [PN_flag]      [int]     NULL,
            [PP_flag]      [int]     NULL,
           [PSi_flag]      [int]     NULL,
         [chl_a_flag]      [int]     NULL,
          [pheo_flag]      [int]     NULL,
      [chl_plus_flag]      [int]     NULL,
         [PERID_flag]      [int]     NULL,
        [but_19_flag]      [int]     NULL,
          [FUCO_flag]      [int]     NULL,
        [Hex_19_flag]      [int]     NULL,
       [Prasino_flag]      [int]     NULL,
          [Viol_flag]      [int]     NULL,
       [Diadino_flag]      [int]     NULL,
         [Allox_flag]      [int]     NULL,
        [Lutein_flag]      [int]     NULL,
        [Zeaxan_flag]      [int]     NULL,
         [Chl_b_flag]      [int]     NULL,
[alpha_carotene_flag]      [int]     NULL,
 [beta_carotene_flag]      [int]     NULL,
   [divinyl_chl_flag]      [int]     NULL,
 [monovinyl_chl_flag]      [int]     NULL,
     [HPLC_chla_flag]      [int]     NULL,
   [hetero_bact_flag]      [int]     NULL,
[prochloro_bact_flag]      [int]     NULL,
  [synecho_bact_flag]      [int]     NULL,
    [eukaryotes_flag]      [int]     NULL,
           [ATP_flag]      [int]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKM0704_CMORE_BULA_Bottle_time_lat_lon_depth] ON [dbo].[tblKM0704_CMORE_BULA_Bottle]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
