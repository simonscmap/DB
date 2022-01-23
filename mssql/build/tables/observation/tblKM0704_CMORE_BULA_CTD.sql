
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKM0704_CMORE_BULA_CTD](

                [time]      [datetime] NOT NULL,
             [lat]         [float] NOT NULL,
             [lon]         [float] NOT NULL,
           [depth]           [int] NOT NULL,
[num_observations]           [int]     NULL,
         [station]           [int]     NULL,
            [cast]           [int]     NULL,
  [cast_direction] [nvarchar](200)     NULL,
          [CTDPRS]           [int]     NULL,
          [CTDTMP]         [float]     NULL,
          [CTDSAL]         [float]     NULL,
          [CTDOXY]         [float]     NULL,
             [PAR]         [float]     NULL,
          [CHLPIG]         [float]     NULL,
     [CTDPRS_flag]           [int]     NULL,
     [CTDTMP_flag]           [int]     NULL,
     [CTDSAL_flag]           [int]     NULL,
     [CTDOXY_flag]           [int]     NULL,
        [PAR_flag]           [int]     NULL,
     [CHLPIG_flag]           [int]      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE  NONCLUSTERED INDEX [IX_tblKM0704_CMORE_BULA_CTD_time_lat_lon_depth] ON [dbo].[tblKM0704_CMORE_BULA_CTD]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
