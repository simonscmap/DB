
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblTN397_Gradients4_Optics_LISST_ACS_ECO](

             [time] [datetime] NOT NULL,
          [lat]    [float] NOT NULL,
          [lon]    [float] NOT NULL,
        [depth]      [int] NOT NULL,
          [sst]    [float]     NULL,
          [sss]    [float]     NULL,
 [vol_lisst_sm]    [float]     NULL,
[vol_lisst_mid]    [float]     NULL,
 [vol_lisst_lg]    [float]     NULL,
           [cp]    [float]     NULL,
     [chla_acs]    [float]     NULL,
     [chla_eco]    [float]     NULL,
  [scatter_eco]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblTN397_Gradients4_Optics_LISST_ACS_ECO_time_lat_lon_depth] ON [dbo].[tblTN397_Gradients4_Optics_LISST_ACS_ECO]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
