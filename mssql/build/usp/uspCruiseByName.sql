USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspCruiseByName] @cruiseName NVARCHAR(MAX)

--WITH RECOMPILE 
AS
BEGIN
	SET @cruiseName = RTRIM(LTRIM(@cruiseName));
	SELECT 
		*
	FROM 
		tblCruise 
	WHERE 
		[Name] Like '%'+@cruiseName+'%' 
		OR
		[Nickname] Like '%'+@cruiseName+'%'
END
GO

