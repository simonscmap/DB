
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMV1015_pigments_watcol](

          [time] [datetime] NOT NULL,
       [lat]    [float] NOT NULL,
       [lon]    [float] NOT NULL,
     [depth]      [int] NOT NULL,
       [sta]      [int]     NULL,
      [cast]      [int]     NULL,
       [bot]      [int]     NULL,
  [chlide_a]    [float]     NULL,
     [chl_c]    [float]     NULL,
 [peridinin]    [float]     NULL,
 [fucox_but]    [float]     NULL,
     [fucox]    [float]     NULL,
 [fucox_hex]    [float]     NULL,
  [prasinox]    [float]     NULL,
    [violax]    [float]     NULL,
  [diadinox]    [float]     NULL,
     [allox]    [float]     NULL,
    [diatox]    [float]     NULL,
    [lutein]    [float]     NULL,
      [zeax]    [float]     NULL,
     [chl_b]    [float]     NULL,
[carotene_a]    [float]     NULL,
[carotene_b]    [float]     NULL,
    [chl_a2]    [float]     NULL,
    [chl_a1]    [float]     NULL,
 [chl_a1_a2]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblMV1015_pigments_watcol_time_lat_lon_depth] ON [dbo].[tblMV1015_pigments_watcol]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
