USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[tblNews](
	[ID] int NOT NULL,
    [headline] nvarchar(500) NULL,
    [link] nvarchar(500) NULL,
    [body] nvarchar(max) NULL,
    [date] nvarchar(50) NULL,
    [rank] int NULL,
    [view_status] int NULL,
    [create_date] datetime NOT NULL,
    [modify_date] datetime NULL,
    [publish_date] datetime NULL,
    [UserID] int NULL
CONSTRAINT [PK_tbNews] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO