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
    SELECT * FROM dbo.udfVariableMetaData(RTRIM(LTRIM(@tableName)), RTRIM(LTRIM(@field))) 
END



