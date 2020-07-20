USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[uspCatalog] 
--WITH RECOMPILE 
AS
BEGIN
    SELECT * FROM dbo.udfCatalog()
END
GO


