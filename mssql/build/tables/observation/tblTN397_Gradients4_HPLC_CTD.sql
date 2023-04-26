
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTN397_Gradients4_HPLC_CTD](

               [time] [datetime] NOT NULL,
            [lat]    [float] NOT NULL,
            [lon]    [float] NOT NULL,
          [depth]      [int] NOT NULL,
        [Station]      [int]     NULL,
           [Cast]      [int]     NULL,
         [Niskin]      [int]     NULL,
         [But_19]    [float]     NULL,
         [Hex_19]    [float]     NULL,
           [Allo]    [float]     NULL,
          [B_Car]    [float]     NULL,
          [A_Car]    [float]     NULL,
           [Chla]    [float]     NULL,
           [Chlb]    [float]     NULL,
      [Chl_c1_c2]    [float]     NULL,
         [Chl_c3]    [float]     NULL,
         [Cphlid]    [float]     NULL,
        [Diadino]    [float]     NULL,
          [Diato]    [float]     NULL,
           [Fuco]    [float]     NULL,
            [Lut]    [float]     NULL,
            [Neo]    [float]     NULL,
           [Peri]    [float]     NULL,
        [Prasino]    [float]     NULL,
          [Viola]    [float]     NULL,
            [Zea]    [float]     NULL,
[Total_carotenes]    [float]     NULL,
        [DV_Chla]    [float]     NULL,
        [MV_Chla]    [float]     NULL,
     [Total_Chla]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblTN397_Gradients4_HPLC_CTD_time_lat_lon_depth] ON [dbo].[tblTN397_Gradients4_HPLC_CTD]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
