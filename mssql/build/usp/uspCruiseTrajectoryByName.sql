USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspCruiseTrajectoryByName] @cruiseName NVARCHAR(MAX)

--WITH RECOMPILE 
AS
BEGIN
	SELECT t.time, t.lat, t.lon FROM tblCruise_Trajectory AS t
	JOIN tblCruise AS c ON t.Cruise_ID=c.ID
	WHERE c.Name = RTRIM(LTRIM(@cruiseName))
END
GO