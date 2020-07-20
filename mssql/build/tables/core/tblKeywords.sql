
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblKeywords](
	-- [ID] [int] IDENTITY(1,1) NOT NULL,
	[var_ID] [int] NOT NULL, -- foreign key link
	[keywords] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblKeywords] PRIMARY KEY CLUSTERED
([var_ID], [keywords])
 WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] -- TEXTIMAGE_ON [PRIMARY]
GO

-- CREATE TABLE [dbo].[tblKeywords](
-- 	-- [ID] [int] IDENTITY(1,1) NOT NULL,
-- 	[var_ID] [int] NOT NULL, -- foreign key link
-- 	[keywords] [nvarchar](100) NOT NULL,
--  CONSTRAINT [PK_tblKeywords] PRIMARY KEY CLUSTERED
-- ([var_ID], [keywords] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
-- ) ON [PRIMARY]
-- GO

ALTER TABLE [dbo].[tblKeywords]  WITH CHECK ADD  CONSTRAINT [FK_tblKeywords_tblVariables] FOREIGN KEY([var_ID])
REFERENCES [dbo].[tblVariables] ([ID])
GO

ALTER TABLE [dbo].[tblKeywords] CHECK CONSTRAINT [FK_tblKeywords_tblVariables]
GO

-- indices
USE Opedia
GO


CREATE NONCLUSTERED INDEX [IX_tblKeywords_var_ID] ON [dbo].[tblKeywords]
(
	[var_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
