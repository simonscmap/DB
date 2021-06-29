
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1607_HL4_CTD_bacterial_amps](

              [time]      [datetime] NOT NULL,
           [lat]         [float] NOT NULL,
           [lon]         [float] NOT NULL,
         [depth]           [int] NOT NULL,
   [sample_name] [nvarchar](200)     NULL,
       [Station]           [int]     NULL,
          [Cast]           [int]     NULL,
 [sra_accession] [nvarchar](200)     NULL,
[sra_bioproject] [nvarchar](200)     NULL,
 [sra_biosample] [nvarchar](200)      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKOK1607_HL4_CTD_bacterial_amps_time_lat_lon_depth] ON [dbo].[tblKOK1607_HL4_CTD_bacterial_amps]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
