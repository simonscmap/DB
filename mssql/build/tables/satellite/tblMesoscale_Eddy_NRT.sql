
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMesoscale_Eddy_NRT](

                              [time]  [datetime]  NOT NULL,
                           [lat]     [float]  NOT NULL,
                           [lon]     [float]  NOT NULL,
                 [eddy_polarity]       [int]      NULL,
                      [eddy_age]       [int]      NULL,
                     [amplitude]     [float]      NULL,
      [effective_contour_height]     [float]      NULL,
    [effective_contour_latitude]     [float]      NULL,
   [effective_contour_longitude]     [float]      NULL,
 [effective_contour_shape_error]     [float]      NULL,
              [effective_radius]     [float]      NULL,
          [inner_contour_height]     [float]      NULL,
                  [latitude_max]     [float]      NULL,
                 [longitude_max]     [float]      NULL,
                  [num_contours]       [int]      NULL,
              [observation_flag]       [int]      NULL,
            [observation_number]       [int]      NULL,
                 [speed_average]     [float]      NULL,
          [speed_contour_height]     [float]      NULL,
        [speed_contour_latitude]     [float]      NULL,
       [speed_contour_longitude]     [float]      NULL,
     [speed_contour_shape_error]     [float]      NULL,
                  [speed_radius]     [float]      NULL,
                         [track]       [int]      NULL,
                  [uavg_profile]     [float]      NULL,
                          [year]       [smallint]      NULL,
                         [month]       [tinyint]      NULL,
                          [week]       [tinyint]      NULL,
                     [dayofyear]       [smallint]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblMesoscale_Eddy_NRT_time_lat_lon_] ON [dbo].[tblMesoscale_Eddy_NRT]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


CREATE NONCLUSTERED INDEX [IX_tblMesoscale_Eddy_NRT_eddy_track] ON [dbo].[tblMesoscale_Eddy_NRT]
(
	[track] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO




CREATE NONCLUSTERED INDEX [IX_tblMesoscale_Eddy_NRT_dayofyear_lat_lon] ON [dbo].[tblMesoscale_Eddy_NRT]
(
	[dayofyear] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE([eddy_age],[eddy_polarity],[amplitude],[effective_radius]) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY]


CREATE NONCLUSTERED INDEX [IX_tblMesoscale_Eddy_NRT_week_lat_lon] ON [dbo].[tblMesoscale_Eddy_NRT]
(
	[week] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE([eddy_age],[eddy_polarity],[amplitude],[effective_radius]) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY]


CREATE NONCLUSTERED INDEX [IX_tblMesoscale_Eddy_NRT_month_lat_lon] ON [dbo].[tblMesoscale_Eddy_NRT]
(
	[month] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE([eddy_age],[eddy_polarity],[amplitude],[effective_radius]) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY]




CREATE NONCLUSTERED INDEX [IX_tblMesoscale_Eddy_NRT_year_lat_lon] ON [dbo].[tblMesoscale_Eddy_NRT]
(
	[year] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE([eddy_age],[eddy_polarity],[amplitude],[effective_radius]) 
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY]
