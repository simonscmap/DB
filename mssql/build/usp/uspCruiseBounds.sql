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
		ID, 
		Start_Time [dt1], 
		End_Time [dt2], 
		Lat_Min [lat1], 
		Lat_Max [lat2], 
		Lon_Min [lon1], 
		Lon_Max [lon2]
	FROM 
		tblCruise
	WHERE 
		ID = @cruiseID

END
GO