USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[udfMetaData_NoRef](@field NVARCHAR(MAX), @tableName NVARCHAR(MAX))
RETURNS TABLE
AS
RETURN (
    SELECT * FROM dbo.udfCatalog() WHERE Variable=RTRIM(LTRIM(@field)) AND  Table_Name=RTRIM(LTRIM(@tableName))
)


GO
