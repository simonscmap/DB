USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspCruiseTrajectory] @cruiseID INT

--WITH RECOMPILE 
AS
BEGIN

	SELECT [time], [lat], [lon]	
	FROM 
		tblCruise_Trajectory 
	WHERE 
		[Cruise_ID] = @cruiseID
	ORDER BY [time], [lat], [lon]	

END
GO