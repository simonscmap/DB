USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspFileGroups] 
--WITH RECOMPILE 
AS
BEGIN
	-- all file groups
	SELECT * FROM sys.filegroups
END
GO

