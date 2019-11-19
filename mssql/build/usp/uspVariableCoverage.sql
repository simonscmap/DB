USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspVariableCoverage] @tableName NVARCHAR(MAX), @field NVARCHAR(MAX)

--WITH RECOMPILE 
AS
BEGIN
	SELECT 
	Time_Min, 
	Time_Max, 
	Lat_Min, 
	Lat_Max, 
	Lon_Min, 
	Lon_Max, 
	Depth_Min, 
	Depth_Max 
	FROM dbo.udfCatalog() 
	WHERE Table_Name=RTRIM(LTRIM(@tableName)) AND Variable=RTRIM(LTRIM(@field))
END
GO

