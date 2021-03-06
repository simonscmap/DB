USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspCalls_Response] 
--WITH RECOMPILE 
AS
BEGIN
	SELECT CONVERT(DATE, Date_Time) AS [Date], AVG(Request_Duration) AS Response_Time
	FROM tblApi_Calls
	WHERE Query IS NOT NULL
	GROUP BY CONVERT(DATE, Date_Time)
	ORDER BY CONVERT(DATE, Date_Time)
END
GO
