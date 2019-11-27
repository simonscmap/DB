USE [Opedia]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[uspDatasetMetadata] @tableName NVARCHAR(MAX)
--WITH RECOMPILE 
AS
BEGIN
    SELECT * FROM dbo.udfDatasetMetaData(RTRIM(LTRIM(@tableName))) 
END



