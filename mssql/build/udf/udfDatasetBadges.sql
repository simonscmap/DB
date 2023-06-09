USE [Opedia]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[udfDatasetBadges]()
RETURNS TABLE
AS
RETURN (
	SELECT DISTINCT table_name, ci = 1 FROM [dbo].[tblProcess_Queue]
	UNION ALL
	SELECT DISTINCT table_name, ci = 1  FROM [dbo].[tblVariables] WHERE Table_Name LIKE 'tblArgo%_REP_%'
       )

GO