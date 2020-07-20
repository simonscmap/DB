USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspCalls] 
--WITH RECOMPILE 
AS
BEGIN
	SELECT CONVERT(DATE, Date_Time) AS [Date], COUNT(ID) AS Calls
	FROM tblApi_Calls
	WHERE Query IS NOT NULL
	AND User_ID NOT IN (1, 2, 4, 5, 6, 7, 10)
	GROUP BY CONVERT(DATE, Date_Time)
	ORDER BY CONVERT(DATE, Date_Time)
END
GO
