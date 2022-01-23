
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM0704_CMORE_BULA_Underway_Samples](

              [time] [datetime] NOT NULL,
           [lat]    [float] NOT NULL,
           [lon]    [float] NOT NULL,
         [depth]      [int] NOT NULL,
        [sample]      [int]     NULL,
         [sigma]    [float]     NULL,
        [oxygen]    [float]     NULL,
           [DIC]    [float]     NULL,
       [alkalin]      [int]     NULL,
        [phspht]    [float]     NULL,
       [NO2_NO3]    [float]     NULL,
        [silcat]    [float]     NULL,
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
       [Prasino]      [int]     NULL,
          [Viol]    [float]     NULL,
       [Diadino]    [float]     NULL,
         [Allox]      [int]     NULL,
        [Lutein]      [int]     NULL,
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
           [ATP]    [float]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKM0704_CMORE_BULA_Underway_Samples_time_lat_lon_depth] ON [dbo].[tblKM0704_CMORE_BULA_Underway_Samples]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
