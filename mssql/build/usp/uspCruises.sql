USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspCruises] 

--WITH RECOMPILE 
AS
BEGIN
	SELECT * FROM dbo.udfCruises() Order by [Name]
END
GO

