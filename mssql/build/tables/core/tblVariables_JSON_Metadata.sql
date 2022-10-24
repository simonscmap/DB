USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblVariables_JSON_Metadata](
	[Var_ID] [int] NOT NULL,
	[JSON_Metadata] [nvarchar](MAX) NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblVariables_JSON_Metadata]  WITH CHECK ADD  CONSTRAINT [FK_tblVariables_JSON_Metadata_tblVariables] FOREIGN KEY([Var_ID])
REFERENCES [dbo].[tblVariables] ([ID])
GO

USE Opedia 
GO

CREATE NONCLUSTERED INDEX [IX_tblVariables_JSON_Metadata] ON [dbo].[tblVariables_JSON_Metadata]
(
	[Var_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
