USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspCruiseVariablesByName] @cruiseName NVARCHAR(MAX)

--WITH RECOMPILE 
AS
BEGIN
	DECLARE @CID AS INT;
	SELECT @CID=ID FROM tblCruise WHERE [Name] = RTRIM(LTRIM(@cruiseName))
	SELECT * FROM dbo.udfCruiseVariables(@CID)
END
GO