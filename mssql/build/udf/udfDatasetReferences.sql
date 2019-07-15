USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[udfDatasetReferences](@datasetID INT)
RETURNS TABLE
AS
RETURN (
    SELECT * FROM tblDataset_References WHERE Dataset_ID=@datasetID
)


GO


