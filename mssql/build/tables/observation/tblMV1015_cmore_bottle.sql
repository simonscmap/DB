
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMV1015_cmore_bottle](

       [time] [datetime] NOT NULL,
    [lat]    [float] NOT NULL,
    [lon]    [float] NOT NULL,
  [depth]    [float] NOT NULL,
  [press]    [float]     NULL,
  [botid]      [int]     NULL,
  [theta]    [float]     NULL,
  [sigma]    [float]     NULL,
   [temp]    [float]     NULL,
   [csal]    [float]     NULL,
   [coxy]    [float]     NULL,
   [cchl]    [float]     NULL,
   [boxy]    [float]     NULL,
    [dic]    [float]     NULL,
    [alk]    [float]     NULL,
   [phos]    [float]     NULL,
    [nit]    [float]     NULL,
    [sil]    [float]     NULL,
     [pc]    [float]     NULL,
     [pn]    [float]     NULL,
     [pp]    [float]     NULL,
  [chlda]    [float]     NULL,
[chlplus]    [float]     NULL,
  [perid]    [float]     NULL,
  [but19]    [float]     NULL,
   [fuco]    [float]     NULL,
  [hex19]    [float]     NULL,
[prasino]    [float]     NULL,
   [viol]    [float]     NULL,
[diadino]    [float]     NULL,
  [allox]    [float]     NULL,
 [lutein]    [float]     NULL,
 [zeaxan]    [float]     NULL,
   [chlb]    [float]     NULL,
   [acar]    [float]     NULL,
   [bcar]    [float]     NULL,
 [dvchla]    [float]     NULL,
 [mvchla]    [float]     NULL,
   [hplc]    [float]     NULL,
  [hbact]    [float]     NULL,
  [pbact]    [float]     NULL,
  [sbact]    [float]     NULL,
  [ebact]    [float]      NULL


    ) ON [FG3]
    USE [Opedia]


    CREATE NONCLUSTERED INDEX [IX_tblMV1015_cmore_bottle_time_lat_lon_depth] ON [dbo].[tblMV1015_cmore_bottle]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG3]
