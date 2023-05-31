USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[uspVariableCatalog](@datasetID INT)
--WITH RECOMPILE 
AS
BEGIN
    SELECT * FROM dbo.udfVariableCatalog(@datasetID) ORDER BY Long_Name
END


GO
