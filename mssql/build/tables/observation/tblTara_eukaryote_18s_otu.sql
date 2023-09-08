
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTara_eukaryote_18s_otu](

          [time]      [datetime] NOT NULL,
       [lat]         [float] NOT NULL,
       [lon]         [float] NOT NULL,
[start_time]  [nvarchar](19)     NULL,
  [end_time]  [nvarchar](19)     NULL,
   [station]   [nvarchar](8)     NULL,
 [taxogroup]  [nvarchar](30)     NULL,
   [lineage] [nvarchar](176)     NULL,
 [otu_count]           [int]     NULL,
[OTU_purity]         [float]     NULL,
       [pid]         [float]     NULL,
       [cid]           [int]     NULL,
    [md5sum]  [nvarchar](32)      NULL


    ) ON [FG5]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblTara_eukaryote_18s_otu_time_lat_lon] ON [dbo].[tblTara_eukaryote_18s_otu]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG5]
