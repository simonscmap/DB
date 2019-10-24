USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[uspDatasets] 
--WITH RECOMPILE 
AS
BEGIN
    SELECT Dataset_ID, Dataset_Name, Table_Name FROM dbo.udfDatasets() ORDER BY Dataset_ID
END
GO


