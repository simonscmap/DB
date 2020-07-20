USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspCalls_Query] 
--WITH RECOMPILE 
AS
BEGIN
	SELECT Query
	FROM tblApi_Calls
	WHERE Query IS NOT NULL
	AND Query LIKE '%tbl%'
	AND User_ID NOT IN (1, 2, 4, 5, 6, 7, 10)
END
GO
