
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTara_Surface_Water_Measurements](

                 [time]      [datetime] NOT NULL,
              [lat]         [float] NOT NULL,
              [lon]         [float] NOT NULL,
            [depth]           [int] NOT NULL,
      [temperature]         [float]     NULL,
         [salinity]         [float]     NULL,
            [chl_a]         [float]     NULL,
              [POC]         [float]     NULL,
        [PSD_slope]         [float]     NULL,
               [Fo]         [float]     NULL,
               [Fm]         [float]     NULL,
            [Fv_Fm]         [float]     NULL,
              [Sig]         [float]     NULL,
           [PQPool]         [float]     NULL,
            [TauQA]         [float]     NULL,
            [TauPQ]         [float]     NULL,
              [Alp]         [float]     NULL,
               [Ek]         [float]     NULL,
             [Pmax]         [float]     NULL,
           [bbp470]         [float]     NULL,
           [bbp526]         [float]     NULL,
           [bbp660]         [float]     NULL,
          [Fluores]         [float]     NULL,
            [fCDOM]         [float]     NULL,
[fCO2water_equ_wet]         [float]     NULL,
               [pH]         [float]     NULL,
            [Event] [nvarchar](200)     NULL,
         [Campaign] [nvarchar](200)     NULL,
          [Station] [nvarchar](200)      NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblTara_Surface_Water_Measurements_time_lat_lon_depth] ON [dbo].[tblTara_Surface_Water_Measurements]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
