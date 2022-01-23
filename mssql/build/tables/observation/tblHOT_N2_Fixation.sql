
    USE [Opedia]

    SET ANSI_NULLS ON
    GO

    SET QUOTED_IDENTIFIER ON
    GO

    CREATE TABLE [dbo].[tblHOT_N2_Fixation](

            [time]  [datetime]  NOT NULL,
         [lat]     [float]  NOT NULL,
         [lon]       [int]  NOT NULL,
       [depth]       [int]  NOT NULL,
      [cruise]       [int]      NULL,
     [station]       [int]      NULL,
        [cast]     [float]      NULL,
 [N2_fixation]     [float]      NULL,
      [bottle]     [float]       NULL


    ) ON [Primary]

    GO

    
    USE [Opedia]
    GO

    CREATE  NONCLUSTERED INDEX [IX_tblHOT_N2_Fixation_time_lat_lon_depth] ON [dbo].[tblHOT_N2_Fixation]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]
    GO

    
