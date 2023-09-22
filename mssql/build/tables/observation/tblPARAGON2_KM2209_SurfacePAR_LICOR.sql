
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblPARAGON2_KM2209_SurfacePAR_LICOR](

           [time] [datetime] NOT NULL,
        [lat]    [float] NOT NULL,
        [lon]    [float] NOT NULL,
[surface_par]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblPARAGON2_KM2209_SurfacePAR_LICOR_time_lat_lon] ON [dbo].[tblPARAGON2_KM2209_SurfacePAR_LICOR]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
