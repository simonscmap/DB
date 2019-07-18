USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCruise_Trajectory](
	[Cruise_ID] [int] NOT NULL,
	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
 CONSTRAINT [PK_tblCruise_Trajectory] PRIMARY KEY CLUSTERED 
(
	[Cruise_ID] ASC,
	[time] ASC,
	[lat] ASC,
	[lon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG1]
) ON [FG1]
GO



ALTER TABLE [dbo].[tblCruise_Trajectory]  WITH CHECK ADD  CONSTRAINT [FK_tblCruise_Trajectory_tblCruise] FOREIGN KEY([Cruise_ID])
REFERENCES [dbo].[tblCruise] ([ID])
GO

ALTER TABLE [dbo].[tblCruise_Trajectory] CHECK CONSTRAINT [FK_tblCruise_Trajectory_tblCruise]
GO


