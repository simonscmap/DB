USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspCalls_IP] 
--WITH RECOMPILE 
AS
BEGIN
	SELECT Ip_Address AS [IP], count(Ip_Address) AS Calls
	FROM tblApi_Calls
	WHERE Ip_Address IS NOT NULL
	AND Ip_Address NOT LIKE '%:%'
	AND Query IS NOT NULL
	AND User_ID NOT IN (1, 2, 4, 5, 6, 7, 10)
	GROUP BY Ip_Address
	ORDER BY Calls DESC
END
GO
