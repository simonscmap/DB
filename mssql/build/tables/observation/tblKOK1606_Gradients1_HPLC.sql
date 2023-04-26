
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblKOK1606_Gradients1_HPLC](

          [time] [datetime] NOT NULL,
       [lat]    [float] NOT NULL,
       [lon]    [float] NOT NULL,
     [depth]      [int] NOT NULL,
   [station]      [int]     NULL,
      [cast]      [int]     NULL,
    [niskin]      [int]     NULL,
 [HPLC_Chla]    [float]     NULL,
      [Chlb]    [float]     NULL,
 [Chl_c1_c2]    [float]     NULL,
    [Chl_c3]    [float]     NULL,
    [Cphlid]    [float]     NULL,
   [Diadino]    [float]     NULL,
      [Fuco]    [float]     NULL,
    [Lutein]    [float]     NULL,
      [Peri]    [float]     NULL,
   [Prasino]    [float]     NULL,
     [Viola]    [float]     NULL,
    [Zeaxan]    [float]     NULL,
 [Total_car]    [float]     NULL,
     [A_car]    [float]     NULL,
     [B_car]    [float]     NULL,
    [DVChla]    [float]     NULL,
    [MVChla]    [float]     NULL,
[Total_Chla]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblKOK1606_Gradients1_HPLC_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_HPLC]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
