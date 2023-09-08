
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTN412_Gradients5_Hyperpro_Profiles](

           [time]    [datetime] NOT NULL,
        [lat]       [float] NOT NULL,
        [lon]       [float] NOT NULL,
      [depth]         [int] NOT NULL,
    [station]         [int]     NULL,
    [profile]         [int]     NULL,
       [temp]       [float]     NULL,
       [cond]       [float]     NULL,
        [sal]       [float]     NULL,
       [dens]       [float]     NULL,
        [flu] [nvarchar](5)     NULL,
      [par_z]       [float]     NULL,
[par_surface]       [float]     NULL,
[light_level]       [float]     NULL,
       [kpar] [nvarchar](5)     NULL,
      [ed412]       [float]     NULL,
      [ed442]       [float]     NULL,
      [ed488]       [float]     NULL,
      [ed490]       [float]     NULL,
      [ed510]       [float]     NULL,
      [ed530]       [float]     NULL,
      [ed550]       [float]     NULL,
      [ed554]       [float]     NULL,
      [ed560]       [float]     NULL,
      [ed620]       [float]     NULL,
      [ed664]       [float]     NULL,
      [ed666]       [float]     NULL,
      [ed670]       [float]     NULL,
      [ed678]       [float]     NULL,
      [ed682]       [float]     NULL,
      [ed708]       [float]     NULL,
      [ed748]       [float]     NULL,
      [ed754]       [float]     NULL,
      [ed760]       [float]     NULL,
      [ed764]       [float]     NULL,
      [ed778]       [float]     NULL,
      [lu412]       [float]     NULL,
      [lu442]       [float]     NULL,
      [lu488]       [float]     NULL,
      [lu490]       [float]     NULL,
      [lu510]       [float]     NULL,
      [lu530]       [float]     NULL,
      [lu550]       [float]     NULL,
      [lu554]       [float]     NULL,
      [lu560]       [float]     NULL,
      [lu620]       [float]     NULL,
      [lu664]       [float]     NULL,
      [lu666]       [float]     NULL,
      [lu670]       [float]     NULL,
      [lu678]       [float]     NULL,
      [lu682]       [float]     NULL,
      [lu708]       [float]     NULL,
      [lu748]       [float]     NULL,
      [lu754]       [float]     NULL,
      [lu760]       [float]     NULL,
      [lu764]       [float]     NULL,
      [lu778]       [float]     NULL,
      [es412]       [float]     NULL,
      [es442]       [float]     NULL,
      [es488]       [float]     NULL,
      [es490]       [float]     NULL,
      [es510]       [float]     NULL,
      [es530]       [float]     NULL,
      [es550]       [float]     NULL,
      [es554]       [float]     NULL,
      [es560]       [float]     NULL,
      [es620]       [float]     NULL,
      [es664]       [float]     NULL,
      [es666]       [float]     NULL,
      [es670]       [float]     NULL,
      [es678]       [float]     NULL,
      [es682]       [float]     NULL,
      [es708]       [float]     NULL,
      [es748]       [float]     NULL,
      [es754]       [float]     NULL,
      [es760]       [float]     NULL,
      [es764]       [float]     NULL,
      [es778]       [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE CLUSTERED INDEX [IX_tblTN412_Gradients5_Hyperpro_Profiles_time_lat_lon_depth] ON [dbo].[tblTN412_Gradients5_Hyperpro_Profiles]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
