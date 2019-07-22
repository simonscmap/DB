USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspCruiseBounds] @cruiseID INT

--WITH RECOMPILE 
AS
BEGIN

	SELECT 
        @cruiseID [ID],
		CONVERT(DATE, MIN([time])) [dt1], 
		CONVERT(DATE, MAX([time])) [dt2], 
		MIN([lat]) [lat1], 
		MAX([lat]) [lat2], 
		MIN([lon]) [lon1], 
		MAX([lon]) [lon2]
	FROM 
		tblCruise_Trajectory 
	WHERE 
		[Cruise_ID] = @cruiseID

END
GO