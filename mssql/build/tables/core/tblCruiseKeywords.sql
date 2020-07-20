
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCruise_Keywords](
	[cruise_ID] [int] NOT NULL, -- foreign key link
	[keywords] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblCruise_Keywords] PRIMARY KEY CLUSTERED
([cruise_ID], [keywords])
 WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] -- TEXTIMAGE_ON [PRIMARY]
GO



ALTER TABLE [dbo].[tblCruise_Keywords]  WITH CHECK ADD  CONSTRAINT [FK_tblCruise_Keywords_tblCruise] FOREIGN KEY([cruise_ID])
REFERENCES [dbo].[tblCruise] ([ID])
GO

ALTER TABLE [dbo].[tblCruise_Keywords] CHECK CONSTRAINT [FK_tblCruise_Keywords_tblCruise]
GO

-- indices
USE Opedia
GO


CREATE NONCLUSTERED INDEX [IX_tblCruise_Keywords_var_ID] ON [dbo].[tblCruise_Keywords]
(
	[cruise_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
