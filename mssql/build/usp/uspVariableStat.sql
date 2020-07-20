USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspVariableStat] @tableName NVARCHAR(MAX), @field NVARCHAR(MAX)

--WITH RECOMPILE 
AS
BEGIN
	SELECT 
	Variable_Min, 
	Variable_Max, 
	Variable_Mean, 
	Variable_Std, 
	Variable_Count, 
	Variable_25th, 
	Variable_50th, 
	Variable_75th 
	FROM dbo.udfCatalog() 
	WHERE Table_Name=RTRIM(LTRIM(@tableName)) AND Variable=RTRIM(LTRIM(@field))
END
GO

