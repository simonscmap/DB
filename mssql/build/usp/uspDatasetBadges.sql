USE [Opedia]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[uspDatasetBadges] 
--WITH RECOMPILE 
AS
BEGIN
    SELECT table_name, ci FROM dbo.udfDatasetBadges()
END
GO