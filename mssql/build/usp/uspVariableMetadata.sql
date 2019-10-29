USE [Opedia]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[uspVariableMetadata] @tableName NVARCHAR(MAX), @field NVARCHAR(MAX)
--WITH RECOMPILE 
AS
BEGIN
    SELECT * FROM dbo.udfCatalog() AS cat
	JOIN tblDataset_References AS ref ON cat.Dataset_ID = ref.Dataset_ID
	WHERE Variable=RTRIM(LTRIM(@field)) AND Table_Name=RTRIM(LTRIM(@tableName)) 
END



