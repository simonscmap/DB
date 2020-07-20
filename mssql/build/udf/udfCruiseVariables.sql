USE [Opedia]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[udfCruiseVariables](@cruiseID INT)
RETURNS TABLE
AS
RETURN (
    SELECT * FROM dbo.udfCatalog() 
    WHERE 
    Dataset_ID 
    IN 
    (
    SELECT Dataset_ID FROM tblDataset_Cruises 
    WHERE 
    Cruise_ID=@cruiseID
    )
)
