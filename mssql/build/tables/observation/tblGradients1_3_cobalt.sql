
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblGradients1_3_cobalt](

                       [time]     [datetime] NOT NULL,
                    [lat]        [float] NOT NULL,
                    [lon]          [int] NOT NULL,
                  [depth]          [int] NOT NULL,
                 [Cruise] [nvarchar](10)     NULL,
      [dCo_concentration]        [float]     NULL,
[Co_ligand_concentration]        [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblGradients1_3_cobalt_time_lat_lon_depth] ON [dbo].[tblGradients1_3_cobalt]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
