
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblSOCATv2022_tracks_gridded_month](

                          [time] [datetime] NOT NULL,
                       [lat]    [float] NOT NULL,
                       [lon]    [float] NOT NULL,
        [COUNT_NCRUISE_YEAR]      [int]     NULL,
      [FCO2_COUNT_NOBS_YEAR]      [int]     NULL,
    [FCO2_AVE_WEIGHTED_YEAR]    [float]     NULL,
       [FCO2_AVE_UNWTD_YEAR]    [float]     NULL,
       [FCO2_MIN_UNWTD_YEAR]    [float]     NULL,
       [FCO2_MAX_UNWTD_YEAR]    [float]     NULL,
       [SST_COUNT_NOBS_YEAR]      [int]     NULL,
     [SST_AVE_WEIGHTED_YEAR]    [float]     NULL,
        [SST_AVE_UNWTD_YEAR]    [float]     NULL,
        [SST_MIN_UNWTD_YEAR]    [float]     NULL,
        [SST_MAX_UNWTD_YEAR]    [float]     NULL,
  [SALINITY_COUNT_NOBS_YEAR]      [int]     NULL,
[SALINITY_AVE_WEIGHTED_YEAR]    [float]     NULL,
   [SALINITY_AVE_UNWTD_YEAR]    [float]     NULL,
   [SALINITY_MIN_UNWTD_YEAR]    [float]     NULL,
   [SALINITY_MAX_UNWTD_YEAR]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblSOCATv2022_tracks_gridded_month_time_lat_lon] ON [dbo].[tblSOCATv2022_tracks_gridded_month]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
