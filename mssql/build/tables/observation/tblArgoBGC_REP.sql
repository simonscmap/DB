
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblArgoBGC_REP](
							  [time]      [datetime] NOT NULL,
                              [lat]         [float] NOT NULL,
                              [lon]         [float] NOT NULL,
                            [depth]         [float] NOT NULL,
                             [year]           [int]     NULL,
                            [month]           [int]     NULL,
                             [week]           [int]     NULL,
                        [dayofyear]           [int]     NULL,
                         [float_id]           [int]     NULL,
                            [cycle]           [int]     NULL,
                           [BBP470]         [float]     NULL,
                  [BBP470_ADJUSTED]         [float]     NULL,
            [BBP470_ADJUSTED_ERROR]         [float]     NULL,
               [BBP470_ADJUSTED_QC] [nvarchar](150)     NULL,
                        [BBP470_QC] [nvarchar](150)     NULL,
                     [BBP470_dPRES]         [float]     NULL,
                           [BBP532]         [float]     NULL,
                  [BBP532_ADJUSTED]         [float]     NULL,
            [BBP532_ADJUSTED_ERROR]         [float]     NULL,
               [BBP532_ADJUSTED_QC] [nvarchar](150)     NULL,
                        [BBP532_QC] [nvarchar](150)     NULL,
                     [BBP532_dPRES]         [float]     NULL,
                           [BBP700]         [float]     NULL,
                         [BBP700_2]         [float]     NULL,
                [BBP700_2_ADJUSTED]         [float]     NULL,
          [BBP700_2_ADJUSTED_ERROR]         [float]     NULL,
             [BBP700_2_ADJUSTED_QC] [nvarchar](150)     NULL,
                      [BBP700_2_QC] [nvarchar](150)     NULL,
                   [BBP700_2_dPRES]         [float]     NULL,
                  [BBP700_ADJUSTED]         [float]     NULL,
            [BBP700_ADJUSTED_ERROR]         [float]     NULL,
               [BBP700_ADJUSTED_QC] [nvarchar](150)     NULL,
                        [BBP700_QC] [nvarchar](150)     NULL,
                     [BBP700_dPRES]         [float]     NULL,
                        [BISULFIDE]         [float]     NULL,
               [BISULFIDE_ADJUSTED]         [float]     NULL,
         [BISULFIDE_ADJUSTED_ERROR]         [float]     NULL,
            [BISULFIDE_ADJUSTED_QC] [nvarchar](150)     NULL,
                  [BISULFIDE_dPRES]         [float]     NULL,
                             [CNDC]         [float]     NULL,
                    [CNDC_ADJUSTED]         [float]     NULL,
              [CNDC_ADJUSTED_ERROR]         [float]     NULL,
                 [CNDC_ADJUSTED_QC] [nvarchar](150)     NULL,
                       [CNDC_dPRES]         [float]     NULL,
                             [CDOM]         [float]     NULL,
                    [CDOM_ADJUSTED]         [float]     NULL,
              [CDOM_ADJUSTED_ERROR]         [float]     NULL,
                 [CDOM_ADJUSTED_QC] [nvarchar](150)     NULL,
                          [CDOM_QC] [nvarchar](150)     NULL,
                       [CDOM_dPRES]         [float]     NULL,
                             [CHLA]         [float]     NULL,
                    [CHLA_ADJUSTED]         [float]     NULL,
              [CHLA_ADJUSTED_ERROR]         [float]     NULL,
                 [CHLA_ADJUSTED_QC] [nvarchar](150)     NULL,
                          [CHLA_QC] [nvarchar](150)     NULL,
                       [CHLA_dPRES]         [float]     NULL,
                            [CP660]         [float]     NULL,
                   [CP660_ADJUSTED]         [float]     NULL,
             [CP660_ADJUSTED_ERROR]         [float]     NULL,
                [CP660_ADJUSTED_QC] [nvarchar](150)     NULL,
                         [CP660_QC] [nvarchar](150)     NULL,
                      [CP660_dPRES]         [float]     NULL,
                  [DOWNWELLING_PAR]         [float]     NULL,
         [DOWNWELLING_PAR_ADJUSTED]         [float]     NULL,
   [DOWNWELLING_PAR_ADJUSTED_ERROR]         [float]     NULL,
      [DOWNWELLING_PAR_ADJUSTED_QC] [nvarchar](150)     NULL,
               [DOWNWELLING_PAR_QC] [nvarchar](150)     NULL,
            [DOWNWELLING_PAR_dPRES]         [float]     NULL,
               [DOWN_IRRADIANCE380]         [float]     NULL,
      [DOWN_IRRADIANCE380_ADJUSTED]         [float]     NULL,
[DOWN_IRRADIANCE380_ADJUSTED_ERROR]         [float]     NULL,
   [DOWN_IRRADIANCE380_ADJUSTED_QC] [nvarchar](150)     NULL,
            [DOWN_IRRADIANCE380_QC] [nvarchar](150)     NULL,
         [DOWN_IRRADIANCE380_dPRES]         [float]     NULL,
               [DOWN_IRRADIANCE412]         [float]     NULL,
      [DOWN_IRRADIANCE412_ADJUSTED]         [float]     NULL,
[DOWN_IRRADIANCE412_ADJUSTED_ERROR]         [float]     NULL,
   [DOWN_IRRADIANCE412_ADJUSTED_QC] [nvarchar](150)     NULL,
            [DOWN_IRRADIANCE412_QC] [nvarchar](150)     NULL,
         [DOWN_IRRADIANCE412_dPRES]         [float]     NULL,
               [DOWN_IRRADIANCE443]         [float]     NULL,
      [DOWN_IRRADIANCE443_ADJUSTED]         [float]     NULL,
[DOWN_IRRADIANCE443_ADJUSTED_ERROR]         [float]     NULL,
   [DOWN_IRRADIANCE443_ADJUSTED_QC] [nvarchar](150)     NULL,
            [DOWN_IRRADIANCE443_QC] [nvarchar](150)     NULL,
         [DOWN_IRRADIANCE443_dPRES]         [float]     NULL,
               [DOWN_IRRADIANCE490]         [float]     NULL,
      [DOWN_IRRADIANCE490_ADJUSTED]         [float]     NULL,
[DOWN_IRRADIANCE490_ADJUSTED_ERROR]         [float]     NULL,
   [DOWN_IRRADIANCE490_ADJUSTED_QC] [nvarchar](150)     NULL,
            [DOWN_IRRADIANCE490_QC] [nvarchar](150)     NULL,
         [DOWN_IRRADIANCE490_dPRES]         [float]     NULL,
               [DOWN_IRRADIANCE555]         [float]     NULL,
      [DOWN_IRRADIANCE555_ADJUSTED]         [float]     NULL,
[DOWN_IRRADIANCE555_ADJUSTED_ERROR]         [float]     NULL,
   [DOWN_IRRADIANCE555_ADJUSTED_QC] [nvarchar](150)     NULL,
            [DOWN_IRRADIANCE555_QC] [nvarchar](150)     NULL,
         [DOWN_IRRADIANCE555_dPRES]         [float]     NULL,
                             [DOXY]         [float]     NULL,
                            [DOXY2]         [float]     NULL,
                   [DOXY2_ADJUSTED]         [float]     NULL,
             [DOXY2_ADJUSTED_ERROR]         [float]     NULL,
                [DOXY2_ADJUSTED_QC] [nvarchar](150)     NULL,
                         [DOXY2_QC] [nvarchar](150)     NULL,
                      [DOXY2_dPRES]         [float]     NULL,
                    [DOXY_ADJUSTED]         [float]     NULL,
              [DOXY_ADJUSTED_ERROR]         [float]     NULL,
                 [DOXY_ADJUSTED_QC] [nvarchar](150)     NULL,
                          [DOXY_QC] [nvarchar](150)     NULL,
                       [DOXY_dPRES]         [float]     NULL,
                          [JULD_QC] [nvarchar](150)     NULL,
                          [NITRATE]         [float]     NULL,
                 [NITRATE_ADJUSTED]         [float]     NULL,
           [NITRATE_ADJUSTED_ERROR]         [float]     NULL,
              [NITRATE_ADJUSTED_QC] [nvarchar](150)     NULL,
                       [NITRATE_QC] [nvarchar](150)     NULL,
                    [NITRATE_dPRES]         [float]     NULL,
                 [PH_IN_SITU_TOTAL]         [float]     NULL,
        [PH_IN_SITU_TOTAL_ADJUSTED]         [float]     NULL,
  [PH_IN_SITU_TOTAL_ADJUSTED_ERROR]         [float]     NULL,
     [PH_IN_SITU_TOTAL_ADJUSTED_QC] [nvarchar](150)     NULL,
              [PH_IN_SITU_TOTAL_QC] [nvarchar](150)     NULL,
           [PH_IN_SITU_TOTAL_dPRES]         [float]     NULL,
                      [POSITION_QC] [nvarchar](150)     NULL,
                             [PRES]         [float]     NULL,
                    [PRES_ADJUSTED]         [float]     NULL,
              [PRES_ADJUSTED_ERROR]         [float]     NULL,
                 [PRES_ADJUSTED_QC] [nvarchar](150)     NULL,
                          [PRES_QC] [nvarchar](150)     NULL,
                [PROFILE_BBP470_QC] [nvarchar](150)     NULL,
                [PROFILE_BBP532_QC] [nvarchar](150)     NULL,
              [PROFILE_BBP700_2_QC] [nvarchar](150)     NULL,
                [PROFILE_BBP700_QC] [nvarchar](150)     NULL,
             [PROFILE_BISULFIDE_QC] [nvarchar](150)     NULL,
                  [PROFILE_CNDC_QC] [nvarchar](150)     NULL,
                  [PROFILE_CDOM_QC] [nvarchar](150)     NULL,
                  [PROFILE_CHLA_QC] [nvarchar](150)     NULL,
                 [PROFILE_CP660_QC] [nvarchar](150)     NULL,
       [PROFILE_DOWNWELLING_PAR_QC] [nvarchar](150)     NULL,
    [PROFILE_DOWN_IRRADIANCE380_QC] [nvarchar](150)     NULL,
    [PROFILE_DOWN_IRRADIANCE412_QC] [nvarchar](150)     NULL,
    [PROFILE_DOWN_IRRADIANCE443_QC] [nvarchar](150)     NULL,
    [PROFILE_DOWN_IRRADIANCE490_QC] [nvarchar](150)     NULL,
    [PROFILE_DOWN_IRRADIANCE555_QC] [nvarchar](150)     NULL,
                 [PROFILE_DOXY2_QC] [nvarchar](150)     NULL,
                  [PROFILE_DOXY_QC] [nvarchar](150)     NULL,
               [PROFILE_NITRATE_QC] [nvarchar](150)     NULL,
      [PROFILE_PH_IN_SITU_TOTAL_QC] [nvarchar](150)     NULL,
                  [PROFILE_PRES_QC] [nvarchar](150)     NULL,
                  [PROFILE_PSAL_QC] [nvarchar](150)     NULL,
                  [PROFILE_TEMP_QC] [nvarchar](150)     NULL,
             [PROFILE_TURBIDITY_QC] [nvarchar](150)     NULL,
        [PROFILE_UP_RADIANCE412_QC] [nvarchar](150)     NULL,
        [PROFILE_UP_RADIANCE443_QC] [nvarchar](150)     NULL,
        [PROFILE_UP_RADIANCE490_QC] [nvarchar](150)     NULL,
        [PROFILE_UP_RADIANCE555_QC] [nvarchar](150)     NULL,
                             [PSAL]         [float]     NULL,
                    [PSAL_ADJUSTED]         [float]     NULL,
              [PSAL_ADJUSTED_ERROR]         [float]     NULL,
                 [PSAL_ADJUSTED_QC] [nvarchar](150)     NULL,
                          [PSAL_QC] [nvarchar](150)     NULL,
                       [PSAL_dPRES]         [float]     NULL,
                             [TEMP]         [float]     NULL,
                    [TEMP_ADJUSTED]         [float]     NULL,
              [TEMP_ADJUSTED_ERROR]         [float]     NULL,
                 [TEMP_ADJUSTED_QC] [nvarchar](150)     NULL,
                          [TEMP_QC] [nvarchar](150)     NULL,
                       [TEMP_dPRES]         [float]     NULL,
                        [TURBIDITY]         [float]     NULL,
               [TURBIDITY_ADJUSTED]         [float]     NULL,
         [TURBIDITY_ADJUSTED_ERROR]         [float]     NULL,
            [TURBIDITY_ADJUSTED_QC] [nvarchar](150)     NULL,
                     [TURBIDITY_QC] [nvarchar](150)     NULL,
                  [TURBIDITY_dPRES]         [float]     NULL,
                   [UP_RADIANCE412]         [float]     NULL,
          [UP_RADIANCE412_ADJUSTED]         [float]     NULL,
    [UP_RADIANCE412_ADJUSTED_ERROR]         [float]     NULL,
       [UP_RADIANCE412_ADJUSTED_QC] [nvarchar](150)     NULL,
                [UP_RADIANCE412_QC] [nvarchar](150)     NULL,
             [UP_RADIANCE412_dPRES]         [float]     NULL,
                   [UP_RADIANCE443]         [float]     NULL,
          [UP_RADIANCE443_ADJUSTED]         [float]     NULL,
    [UP_RADIANCE443_ADJUSTED_ERROR]         [float]     NULL,
       [UP_RADIANCE443_ADJUSTED_QC] [nvarchar](150)     NULL,
                [UP_RADIANCE443_QC] [nvarchar](150)     NULL,
             [UP_RADIANCE443_dPRES]         [float]     NULL,
                   [UP_RADIANCE490]         [float]     NULL,
          [UP_RADIANCE490_ADJUSTED]         [float]     NULL,
    [UP_RADIANCE490_ADJUSTED_ERROR]         [float]     NULL,
       [UP_RADIANCE490_ADJUSTED_QC] [nvarchar](150)     NULL,
                [UP_RADIANCE490_QC] [nvarchar](150)     NULL,
             [UP_RADIANCE490_dPRES]         [float]     NULL,
                   [UP_RADIANCE555]         [float]     NULL,
          [UP_RADIANCE555_ADJUSTED]         [float]     NULL,
    [UP_RADIANCE555_ADJUSTED_ERROR]         [float]     NULL,
       [UP_RADIANCE555_ADJUSTED_QC] [nvarchar](150)     NULL,
                [UP_RADIANCE555_QC] [nvarchar](150)     NULL,
             [UP_RADIANCE555_dPRES]         [float]     NULL


 
) ON [FG3]
GO




USE Opedia
GO


CREATE UNIQUE CLUSTERED INDEX [IX_tblArgoBGC_REP_time_lat_lon_depth] ON [dbo].[tblArgoBGC_REP]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
GO



CREATE NONCLUSTERED INDEX [IX_tblArgoBGC_REP_float_id] ON [dbo].[tblArgoBGC_REP]
(
	[float_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
GO




CREATE NONCLUSTERED INDEX [IX_tblArgoBGC_REP_dayofyear_lat_lon] ON [dbo].[tblArgoBGC_REP]
(
	[dayofyear] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC

)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]
GO


CREATE NONCLUSTERED INDEX [IX_tblArgoBGC_REP_week_lat_lon] ON [dbo].[tblArgoBGC_REP]
(
	[week] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC

)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]
GO


CREATE NONCLUSTERED INDEX [IX_tblArgoBGC_REP_month_lat_lon] ON [dbo].[tblArgoBGC_REP]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC

)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]
GO


CREATE NONCLUSTERED INDEX [IX_tblArgoBGC_REP_year_lat_lon] ON [dbo].[tblArgoBGC_REP]
(
	[year] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC

)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]
GO
