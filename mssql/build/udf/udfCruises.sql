USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[udfCruises]()
RETURNS TABLE
AS
RETURN (
    SELECT * FROM tblCruise
)


GO
