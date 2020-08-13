
    USE [Opedia]

    SET ANSI_NULLS ON
    GO

    SET QUOTED_IDENTIFIER ON
    GO

    CREATE TABLE [dbo].[tblHOT_nifH_gene_abundances](

       [time]  [datetime]  NOT NULL,
    [lat]     [float]  NOT NULL,
    [lon]       [int]  NOT NULL,
  [depth]       [int]  NOT NULL,
 [cruise]       [int]      NULL,
   [cast]       [int]      NULL,
 [bottle]     [float]      NULL,
  [Grp_A]     [float]      NULL,
  [Grp_B]     [float]      NULL,
 [Tricho]     [float]      NULL,
  [Het_1]     [float]      NULL,
  [Het_2]     [float]      NULL,
  [Het_3]     [float]       NULL


    ) ON [Primary]

    GO

    
    USE [Opedia]
    GO

    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblHOT_nifH_gene_abundances_time_lat_lon_depth] ON [dbo].[tblHOT_nifH_gene_abundances]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]
    GO

    
