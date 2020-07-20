USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspMatch] @tblSource NVARCHAR(MAX), @fieldSource NVARCHAR(MAX),
							 @tblTarget NVARCHAR(MAX), @fieldTarget NVARCHAR(MAX),	 
							 @dt1 NVARCHAR(MAX), @dt2 NVARCHAR(MAX), 
							 @lat1 NVARCHAR(MAX), @lat2 NVARCHAR(MAX), 
							 @lon1 NVARCHAR(MAX), @lon2 NVARCHAR(MAX), 
							 @depth1 NVARCHAR(MAX), @depth2 NVARCHAR(MAX),
							 @del_dt NVARCHAR(MAX), @del_lat NVARCHAR(MAX), 
							 @del_lon NVARCHAR(MAX), @del_depth NVARCHAR(MAX)

--WITH RECOMPILE 
AS
BEGIN
 	DECLARE @dt1 NVARCHAR(MAX);
	DECLARE @dt2 NVARCHAR(MAX);
  	DECLARE @lat1 NVARCHAR(MAX); 
	DECLARE @lat2 NVARCHAR(MAX); 
	DECLARE @lon1 NVARCHAR(MAX);
	DECLARE @lon2 NVARCHAR(MAX); 
	DECLARE @depth1 NVARCHAR(MAX);
	DECLARE @depth2 NVARCHAR(MAX);

	SET @tblSource = RTRIM(LTRIM(@tblSource));
	SET @fieldSource = RTRIM(LTRIM(@fieldSource));
	SET @tblTarget = RTRIM(LTRIM(@tblTarget));
	SET @fieldTarget = RTRIM(LTRIM(@fieldTarget));
	SET @dt1 = RTRIM(LTRIM(@dt1));
	SET @dt2 = RTRIM(LTRIM(@dt2));
	SET @lat1 = RTRIM(LTRIM(@lat1));
	SET @lat2 = RTRIM(LTRIM(@lat2));
	SET @lon1 = RTRIM(LTRIM(@lon1));
	SET @lon2 = RTRIM(LTRIM(@lon2));
	SET @depth1 = RTRIM(LTRIM(@depth1));
	SET @depth2 = RTRIM(LTRIM(@depth2));
	SET @del_dt = RTRIM(LTRIM(@del_dt));
	SET @del_lat = RTRIM(LTRIM(@del_lat));
	SET @del_lon = RTRIM(LTRIM(@del_lon));
	SET @del_depth = RTRIM(LTRIM(@del_depth));


	-- Note1: source table should not be a climatology table.
	-- Note2: target table can be a climatology table. The code below only supports monthly climatology.
	-- Note3: when the target table represents a monthly climatology data set, the @del_dt variable represents "monthly" tolerance.

	DECLARE @sourceTimeField AS NVARCHAR(MAX)
	SET @sourceTimeField = '[time]'

	DECLARE @targetTimeField AS NVARCHAR(MAX)
	SET @targetTimeField = '[time]'

	IF @tblTarget LIKE '%_Climatology'			
	BEGIN
		IF COL_LENGTH(@tblTarget, 'month') IS NOT NULL
		BEGIN
			SET @targetTimeField = '[month]'
		END
	END


	DECLARE @selectList AS NVARCHAR(MAX)	
	DECLARE @fromList AS NVARCHAR(MAX)

	DECLARE @sourceTimeQuery AS NVARCHAR(MAX)
	SET @sourceTimeQuery = ' tbl1.'+ @sourceTimeField +' BETWEEN ''' + @dt1 + '''' + ' AND ''' + @dt2 + '''';
	DECLARE @targetTimeQuery AS NVARCHAR(MAX)
	SET @targetTimeQuery = ' AND tbl2.' + @targetTimeField + ' BETWEEN ''' + @dt1 + '''' + ' AND ''' + @dt2 + '''';

	DECLARE @sourceLatQuery AS NVARCHAR(MAX)
	SET @sourceLatQuery = ' AND tbl1.[lat] BETWEEN ''' + @lat1 + '''' + ' AND ''' + @lat2 + '''';
	DECLARE @targetLatQuery AS NVARCHAR(MAX)
	SET @targetLatQuery = ' AND tbl2.[lat] BETWEEN ''' + @lat1 + '''' + ' AND ''' + @lat2 + '''';

	DECLARE @sourceLonQuery AS NVARCHAR(MAX)
	SET @sourceLonQuery = ' AND tbl1.[lon] BETWEEN ''' + @lon1 + '''' + ' AND ''' + @lon2 + '''';
	DECLARE @targetLonQuery AS NVARCHAR(MAX)
	SET @targetLonQuery = ' AND tbl2.[lon] BETWEEN ''' + @lon1 + '''' + ' AND ''' + @lon2 + '''';

	DECLARE @sourceDepthQuery AS NVARCHAR(MAX)
	SET @sourceDepthQuery = '';
	DECLARE @targetDepthQuery AS NVARCHAR(MAX)
	SET @targetDepthQuery = '';

	DECLARE @timeToleranceQuery AS NVARCHAR(MAX)
	SET @timeToleranceQuery = ' AND ABS(DATEDIFF(day, tbl2.[time], tbl1.[time])) <= ' + @del_dt ;
	DECLARE @latToleranceQuery AS NVARCHAR(MAX)
	SET @latToleranceQuery = ' AND ABS(tbl2.[lat]-tbl1.[lat]) <= ' + @del_lat ;
	DECLARE @lonToleranceQuery AS NVARCHAR(MAX)
	SET @lonToleranceQuery = ' AND ABS(tbl2.[lon]-tbl1.[lon]) <= ' + @del_lon ;
	DECLARE @depthToleranceQuery AS NVARCHAR(MAX)
	SET @depthToleranceQuery = '' ;

	DECLARE @sourceDepth AS NVARCHAR(MAX)
	SET @sourceDepth = '';
--	DECLARE @targetDepthSelect AS NVARCHAR(MAX)	
--	SET @targetDepthSelect = '';

	DECLARE @sourceCruiseQuery AS NVARCHAR(MAX)
	SET @sourceCruiseQuery = '';
	IF LOWER(@tblSource) = 'tblcruise_trajectory'
		SET @sourceCruiseQuery = ' AND tbl1.[Cruise_ID] = ' + @fieldSource;



	IF @tblTarget LIKE '%_Climatology'			
	BEGIN
		IF COL_LENGTH(@tblTarget, 'month') IS NOT NULL
		BEGIN
			SET @targetTimeQuery = ' AND tbl2.' + @targetTimeField + ' BETWEEN ' + RTRIM(LTRIM(DATEPART(month, @dt1))) + ' AND ' + RTRIM(LTRIM(DATEPART(month, @dt2)));
			SET @timeToleranceQuery = ' AND ABS(tbl2.' + @targetTimeField + ' - DATEPART(month, tbl1.'+ @sourceTimeField +')) <= ' + @del_dt ;
		END
	END

	IF COL_LENGTH(@tblSource, 'depth') IS NOT NULL
	BEGIN
		SET @sourceDepthQuery = ' AND tbl1.depth BETWEEN ' + @depth1 + ' AND ' + @depth2;
		SET @sourceDepth = ', tbl1.[depth] ';
	END


	IF COL_LENGTH(@tblTarget, 'depth') IS NOT NULL
	BEGIN
		SET @targetDepthQuery = ' AND tbl2.depth BETWEEN ' + @depth1 + ' AND ' + @depth2;
	END


	IF (COL_LENGTH(@tblSource, 'depth') IS NOT NULL) AND (COL_LENGTH(@tblTarget, 'depth') IS NOT NULL)
	BEGIN
		SET @depthToleranceQuery = ' AND ABS(tbl2.[depth]-tbl1.[depth]) <= ' + @del_depth ;
	END



	DECLARE @query AS NVARCHAR(MAX);
	SET NOCOUNT ON;

	SET @selectList = 'SELECT tbl1.[time], tbl1.[lat], tbl1.[lon]' + @sourceDepth + ', AVG(tbl1.[' + @fieldSource + ']) [' + @fieldSource +'], STDEV(tbl1.[' + @fieldSource + ']) [' + @fieldSource + '_std], AVG(tbl2.[' + @fieldTarget + ']) [' + @fieldTarget + '], STDEV(tbl2.[' + @fieldTarget + ']) [' + @fieldTarget + '_std] ';
	IF LEN(@fieldSource) < 1 OR LOWER(@tblSource) = 'tblcruise_trajectory'
		SET @selectList = 'SELECT tbl1.[time], tbl1.[lat], tbl1.[lon]' + @sourceDepth +  ', AVG(tbl2.[' + @fieldTarget + ']) [' + @fieldTarget + '], STDEV(tbl2.[' + @fieldTarget + ']) [' + @fieldTarget + '_std] ';
	SET @fromList = ' FROM ' + @tblSource + ' [tbl1], ' + @tblTarget + ' [tbl2] '


	-------------- construct the query --------------
	SET @query = @selectList + @fromList + 
				 ' WHERE ' + 
				 @sourceTimeQuery +
				 @sourceLatQuery +
				 @sourceLonQuery +
				 @sourceDepthQuery +
				 @sourceCruiseQuery +
				 @targetTimeQuery +
				 @targetLatQuery +
				 @targetLonQuery +
				 @targetDepthQuery +
				 @timeToleranceQuery +
				 @latToleranceQuery +
				 @lonToleranceQuery +
				 @depthToleranceQuery + 
				 ' GROUP BY [tbl1].[time], [tbl1].[lat], [tbl1].[lon] ' +
				 @sourceDepth + 
				 ' ORDER BY [tbl1].[time], [tbl1].[lat], [tbl1].[lon] ' + 
				 @sourceDepth
				 	

	-------------------------------------------------
	EXEC(@query)

END
GO


