USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspHead] @tableName NVARCHAR(MAX), @rows NVARCHAR(MAX)

--WITH RECOMPILE 
AS
BEGIN
	DECLARE @query AS NVARCHAR(MAX);
	SET @query = 'SELECT TOP(' + RTRIM(LTRIM(@rows)) + ') * FROM '+ RTRIM(LTRIM(@tableName));
	EXEC(@query)
END
GO

