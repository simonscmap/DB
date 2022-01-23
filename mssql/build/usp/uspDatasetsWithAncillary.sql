USE [Opedia]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[uspDatasetsWithAncillary] 
--WITH RECOMPILE 
AS
BEGIN
    SELECT Distinct d.Dataset_Long_Name [Dataset_Name], v.Table_Name FROM tblVariables v 
	JOIN tblDatasets d on d.ID=v.Dataset_ID
	WHERE Table_Name IN (SELECT Distinct link FROM tblAncillary) 
	ORDER BY Table_Name
END
GO


