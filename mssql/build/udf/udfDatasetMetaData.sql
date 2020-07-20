USE [Opedia]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[udfDatasetMetaData](@tableName NVARCHAR(MAX))
RETURNS TABLE
AS
RETURN (
    SELECT cat.*, ref.Refrences FROM dbo.udfCatalog() AS cat
	JOIN (
          SELECT Dataset_ID, STRING_AGG (Reference, ', [Next Citation]:  ') AS Refrences 
          FROM tblDataset_References ref GROUP BY Dataset_ID
         ) AS ref ON ref.Dataset_ID = cat.Dataset_ID
WHERE cat.Table_Name=RTRIM(LTRIM(@tableName)))
