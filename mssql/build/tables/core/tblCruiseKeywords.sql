
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCruiseKeywords](
	[cruise_ID] [int] NOT NULL, -- foreign key link
	[keywords] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblCruiseKeywords] PRIMARY KEY CLUSTERED
([cruise_ID], [keywords])
 WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] -- TEXTIMAGE_ON [PRIMARY]
GO



ALTER TABLE [dbo].[tblCruiseKeywords]  WITH CHECK ADD  CONSTRAINT [FK_tblCruiseKeywords_tblCruise] FOREIGN KEY([cruise_ID])
REFERENCES [dbo].[tblVariables] ([ID])
GO

ALTER TABLE [dbo].[tblCruiseKeywords] CHECK CONSTRAINT [FK_tblCruiseKeywords_tblCruise]
GO

-- indices
USE Opedia
GO


CREATE UNIQUE NONCLUSTERED INDEX [IX_tblCruiseKeywords_var_ID] ON [dbo].[tblCruiseKeywords]
(
	[cruise_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
