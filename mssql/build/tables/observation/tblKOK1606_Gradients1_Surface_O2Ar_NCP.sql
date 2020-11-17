
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1606_Gradients1_Surface_O2Ar_NCP](

          [time]       [datetime]  NOT NULL,
       [lat]          [float]  NOT NULL,
       [lon]          [float]  NOT NULL,
      [temp]  [nvarchar](200)      NULL,
       [sal]  [nvarchar](200)      NULL,
 [O2_Ar_sat]          [float]      NULL,
       [NCP]  [nvarchar](200)       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblKOK1606_Gradients1_Surface_O2Ar_NCP_time_lat_lon_] ON [dbo].[tblKOK1606_Gradients1_Surface_O2Ar_NCP]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC
    	
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
