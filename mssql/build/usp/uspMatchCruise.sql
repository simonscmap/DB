USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspMatchCruise] 
								 @cruise NVARCHAR(MAX),
							 	 @tblTarget NVARCHAR(MAX), @fieldTarget NVARCHAR(MAX),	 
							 	 @del_dt NVARCHAR(MAX), @del_lat NVARCHAR(MAX), 
							 	 @del_lon NVARCHAR(MAX), @del_depth NVARCHAR(MAX)

--WITH RECOMPILE 
AS
BEGIN
	DECLARE @tblSource NVARCHAR(MAX);
 	DECLARE @dt1 NVARCHAR(MAX);
	DECLARE @dt2 NVARCHAR(MAX);
  	DECLARE @lat1 NVARCHAR(MAX); 
	DECLARE @lat2 NVARCHAR(MAX); 
	DECLARE @lon1 NVARCHAR(MAX);
	DECLARE @lon2 NVARCHAR(MAX); 
	DECLARE @depth1 NVARCHAR(MAX);
	DECLARE @depth2 NVARCHAR(MAX);

	SET @tblSource = 'tblCruise_Trajectory';
	SET @cruise = RTRIM(LTRIM(@cruise));
	SET @tblTarget = RTRIM(LTRIM(@tblTarget));
	SET @fieldTarget = RTRIM(LTRIM(@fieldTarget));
	SET @del_dt = RTRIM(LTRIM(@del_dt));
	SET @del_lat = RTRIM(LTRIM(@del_lat));
	SET @del_lon = RTRIM(LTRIM(@del_lon));
	SET @del_depth = RTRIM(LTRIM(@del_depth));

	SELECT 
		@dt1 = MIN(CONVERT(DATE, [time])), 
		@dt2 = MAX([time]), 
		@lat1 = MIN([lat]), 
		@lat2 = MAX([lat]), 
		@lon1 = MIN([lon]), 
		@lon2 = MAX([lon]), 
		@depth1 = MIN([depth]), 
		@depth2 = MAX([depth])
	FROM 
		tblSeaFlow 
	WHERE 
	[cruise] = @cruise


	EXEC uspMatch @tblSource, @cruise, @tblTarget, @fieldTarget, @dt1, @dt2, @lat1, @lat2, @lon1, @lon2, @depth1, @depth2, @del_dt, @del_lat, @del_lon, @del_depth

END
GO


