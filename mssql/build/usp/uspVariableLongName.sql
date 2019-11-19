USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspVariableLongName] @tableName NVARCHAR(MAX), @field NVARCHAR(MAX)

--WITH RECOMPILE 
AS
BEGIN
	SELECT Long_Name FROM tblVariables WHERE Table_Name=RTRIM(LTRIM(@tableName)) AND Short_Name=RTRIM(LTRIM(@field))
END
GO

