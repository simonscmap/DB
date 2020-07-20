USE [Opedia]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[udfDatasetVariables](@datasetID INT)
RETURNS TABLE
AS
RETURN (
    SELECT * FROM tblVariables WHERE Dataset_ID=@datasetID
)
