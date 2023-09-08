
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblHOT_AmoA_gene_abundances](

                [time]    [datetime] NOT NULL,
             [lat]       [float] NOT NULL,
             [lon]         [int] NOT NULL,
           [depth]         [int] NOT NULL,
          [cruise] [nvarchar](6)     NULL,
            [cast]         [int]     NULL,
         [station]         [int]     NULL,
          [bottle]         [int]     NULL,
[AmoA_GrpA_copies]       [float]     NULL,
[AmoA_GrpB_copies]       [float]     NULL,
  [AmoA_GrpA_flag]         [int]     NULL,
  [AmoA_GrpB_flag]         [int]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblHOT_AmoA_gene_abundances_time_lat_lon_depth] ON [dbo].[tblHOT_AmoA_gene_abundances]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
