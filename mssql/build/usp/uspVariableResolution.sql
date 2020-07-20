USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspVariableResolution] @tableName NVARCHAR(MAX), @field NVARCHAR(MAX)

--WITH RECOMPILE 
AS
BEGIN
	SELECT Temporal_Resolution, Spatial_Resolution FROM dbo.udfCatalog() WHERE Table_Name=RTRIM(LTRIM(@tableName)) AND Variable=RTRIM(LTRIM(@field))
END
GO

