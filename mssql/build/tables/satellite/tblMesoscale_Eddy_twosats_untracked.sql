    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMesoscale_Eddy_twosats_untracked](

                             [time] [datetime] NOT NULL,
                          [lat]    [float] NOT NULL,
                          [lon]    [float] NOT NULL,
                         [year]      [int]     NULL,
                        [month]      [int]     NULL,
                         [week]      [int]     NULL,
                    [dayofyear]      [int]     NULL,
                    [amplitude]    [float]     NULL,
               [effective_area]    [float]     NULL,
     [effective_contour_height]    [float]     NULL,
   [effective_contour_latitude]    [float]     NULL,
  [effective_contour_longitude]    [float]     NULL,
[effective_contour_shape_error]    [float]     NULL,
             [effective_radius]    [float]     NULL,
         [inner_contour_height]    [float]     NULL,
                 [latitude_max]    [float]     NULL,
                [longitude_max]    [float]     NULL,
                 [num_contours]      [int]     NULL,
                  [num_point_e]      [int]     NULL,
                  [num_point_s]      [int]     NULL,
                   [speed_area]    [float]     NULL,
                [speed_average]    [float]     NULL,
         [speed_contour_height]    [float]     NULL,
       [speed_contour_latitude]    [float]     NULL,
      [speed_contour_longitude]    [float]     NULL,
    [speed_contour_shape_error]    [float]     NULL,
                 [speed_radius]    [float]     NULL,
                 [uavg_profile]    [float]     NULL,
                [eddy_polarity]      [int]      NULL


    ) ON [FG3]
    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblMesoscale_Eddy_twosats_untracked_time_lat_lon_] ON [dbo].[tblMesoscale_Eddy_twosats_untracked]
    (
        [time] ASC,
        [lat] ASC,
        [lon] ASC
    
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]

    


CREATE NONCLUSTERED INDEX [IX_tblMesoscale_Eddy_twosats_untracked_year_lat_lon] ON [dbo].[tblMesoscale_Eddy_twosats_untracked]
(
	[year] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE([eddy_polarity],[amplitude],[effective_radius],[speed_average]) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]

CREATE NONCLUSTERED INDEX [IX_tblMesoscale_Eddy_twosats_untracked_month_lat_lon] ON [dbo].[tblMesoscale_Eddy_twosats_untracked]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE([eddy_polarity],[amplitude],[effective_radius],[speed_average]) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]


CREATE NONCLUSTERED INDEX [IX_tblMesoscale_Eddy_twosats_untracked_week_lat_lon] ON [dbo].[tblMesoscale_Eddy_twosats_untracked]
(
	[week] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE([eddy_polarity],[amplitude],[effective_radius],[speed_average]) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]

CREATE NONCLUSTERED INDEX [IX_tblMesoscale_Eddy_twosats_untracked_dayofyear_lat_lon] ON [dbo].[tblMesoscale_Eddy_twosats_untracked]
(
	[dayofyear] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE([eddy_polarity],[amplitude],[effective_radius],[speed_average]) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG3]
