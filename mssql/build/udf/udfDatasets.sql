USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[udfDatasets]()
RETURNS TABLE
AS
RETURN (
       SELECT DISTINCT Table_Name, Dataset_Name, Dataset_ID 
       FROM tblVariables 
       JOIN tblDatasets 
       ON tblDatasets.id=tblVariables.Dataset_ID
       ORDER BY Dataset_ID
       )

GO
