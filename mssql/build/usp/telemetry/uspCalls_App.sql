USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspCalls_App] 
--WITH RECOMPILE 
AS
BEGIN
	SELECT Client_Browser AS [App], COUNT(Client_Browser) AS Calls
	FROM tblApi_Calls
	WHERE Query IS NOT NULL
	GROUP BY Client_Browser
	ORDER BY Calls DESC
END
GO
