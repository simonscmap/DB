
USE [Opedia]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCruise_Scientists](
	[Cruise_ID] [int] NOT NULL,
	[First_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[Email] [nchar](50) NULL,
	[Chief] [bit] NOT NULL
) ON [FG1]
GO


ALTER TABLE [dbo].[tblCruise_Scientists]  WITH CHECK ADD  CONSTRAINT [FK_tblCruise_Scientists_tblCruise] FOREIGN KEY([Cruise_ID])
REFERENCES [dbo].[tblCruise] ([ID])
GO

ALTER TABLE [dbo].[tblCruise_Scientists] CHECK CONSTRAINT [FK_tblCruise_Scientists_tblCruise]
GO




----- indices

CREATE NONCLUSTERED INDEX [IX_tblCruise_Scientists_Cruise_ID] ON [dbo].[tblCruise_Scientists]
(
	[Cruise_ID] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG1]
GO


CREATE NONCLUSTERED INDEX [IX_tblCruise_Scientists_Chief] ON [dbo].[tblCruise_Scientists]
(
	[Chief] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG1]
GO




CREATE NONCLUSTERED INDEX [IX_tblCruise_Scientists_Email] ON [dbo].[tblCruise_Scientists]
(
	[Email] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG1]
GO



CREATE NONCLUSTERED INDEX [IX_tblCruise_Scientists_Names] ON [dbo].[tblCruise_Scientists]
(
	[First_Name] ASC,
	[Last_Name] ASC

)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [FG1]
GO
