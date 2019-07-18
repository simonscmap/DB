USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCruise_PAR](
	[Cruise_ID] [int] NOT NULL,
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[par] [float] NULL
) ON [FG1]
GO

ALTER TABLE [dbo].[tblCruise_PAR]  WITH CHECK ADD  CONSTRAINT [FK_tblCruise_PAR_tblCruise] FOREIGN KEY([Cruise_ID])
REFERENCES [dbo].[tblCruise] ([ID])
GO

ALTER TABLE [dbo].[tblCruise_PAR] CHECK CONSTRAINT [FK_tblCruise_PAR_tblCruise]
GO





----- indices

CREATE NONCLUSTERED INDEX [IX_tblCruise_PAR_Cruise_ID] ON [dbo].[tblCruise_PAR]
(
	[Cruise_ID] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG1]
GO



CREATE UNIQUE NONCLUSTERED INDEX [IX_tblCruise_PAR_SpaceTime] ON [dbo].[tblCruise_PAR]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)
INCLUDE ([Cruise_ID], [par])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG1]
GO