USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspRegTrend] 
--WITH RECOMPILE 
AS
BEGIN
	SELECT Daily.[date], SUM(Daily.[daily_registered]) OVER (ORDER BY Daily.[date]) [users]
	FROM
	(
	SELECT CONVERT(DATE, [date]) AS [date], COUNT(*) as [daily_registered]  
	FROM tblUsers  
	GROUP BY CONVERT(DATE, [date]) 
	) Daily 
END
GO
