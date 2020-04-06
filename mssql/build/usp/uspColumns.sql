USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspColumns] @tableName NVARCHAR(MAX)

--WITH RECOMPILE 
AS
BEGIN
	SELECT COLUMN_NAME [Columns] FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = N'' + + RTRIM(LTRIM(@tableName)) + ''
END
GO
