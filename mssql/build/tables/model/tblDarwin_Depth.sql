USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDarwin_Depth](
	[depth_level] [float] NOT NULL
) ON [PRIMARY]
GO



-- indices

USE [Opedia]
GO

CREATE NONCLUSTERED INDEX [IX_tblDarwin_Depth_depth_level] ON [dbo].[tblDarwin_Depth]
(
	[depth_level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


