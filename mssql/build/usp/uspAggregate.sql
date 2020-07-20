USE [Opedia]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





ALTER PROC [dbo].[uspAggregate] @tableName NVARCHAR(MAX), @field NVARCHAR(MAX), 
								 @period NVARCHAR(MAX), @periodVal NVARCHAR(MAX),	
								 @lat1 NVARCHAR(MAX), @lat2 NVARCHAR(MAX), 
								 @lon1 NVARCHAR(MAX), @lon2 NVARCHAR(MAX), 
								 @depth1 NVARCHAR(MAX), @depth2 NVARCHAR(MAX)
								 
--WITH RECOMPILE 
AS
BEGIN
	-------------- make sure table and field names are quoted --------------
	SET @tableName = RTRIM(LTRIM(@tableName)); 
	SET @tableName = REPLACE(@tableName, '[', '');
	SET @tableName = REPLACE(@tableName, ']', '');
	SET @tableName = QUOTENAME(@tableName)

	SET @field = RTRIM(LTRIM(@field)); 
	SET @field = REPLACE(@field, '[', '');
	SET @field = REPLACE(@field, ']', '');
	SET @field = QUOTENAME(@field);

	SET @period = RTRIM(LTRIM(@period)); 
	SET @period = REPLACE(@period, '[', '');
	SET @period = REPLACE(@period, ']', '');
	SET @period = QUOTENAME(@period)
	------------------------------------------------------------------------

	DECLARE @inverseLon AS NVARCHAR(MAX);
	SET @inverseLon = ''
	IF CONVERT(FLOAT, @lon1) > CONVERT(FLOAT, @lon2)
	BEGIN
		SET @inverseLon = ' NOT '
		DECLARE @swap AS NVARCHAR(MAX);
		SET @swap = @lon1
		SET @lon1 = @lon2
		SET @lon2 = @swap
	END


	DECLARE @query AS NVARCHAR(MAX);
	SET NOCOUNT ON;

	DECLARE @timeQuery AS NVARCHAR(MAX)
	DECLARE @latQuery AS NVARCHAR(MAX)
	DECLARE @lonQuery AS NVARCHAR(MAX)
	DECLARE @depthQuery AS NVARCHAR(MAX)
	SET @timeQuery = ' WHERE ' + @period + '=' + RTRIM(LTRIM(@periodVal));
	SET @latQuery = ' AND lat BETWEEN ' + RTRIM(LTRIM(@lat1)) + ' AND ' + RTRIM(LTRIM(@lat2));
	SET @lonQuery = ' AND ' + @inverseLon + ' lon BETWEEN ' + RTRIM(LTRIM(@lon1)) + ' AND ' + RTRIM(LTRIM(@lon2));
	SET @depthQuery = ' AND depth BETWEEN ' + RTRIM(LTRIM(@depth1)) + ' AND ' + RTRIM(LTRIM(@depth2));



	DECLARE @selList AS NVARCHAR(MAX);
	DECLARE @orderList AS NVARCHAR(MAX);
	DECLARE @groupbyList AS NVARCHAR(MAX);
	SET @selList = 'lat, lon, '
	SET @orderList = 'lat, lon '
	SET @groupbyList = ' lat, lon '



	IF COL_LENGTH(@tableName, 'depth') IS NOT NULL	-- if table has depth field
	BEGIN
		SET @selList = @selList + 'depth, '
		SET @orderList = @orderList + ', depth '
		SET @groupbyList = @groupbyList + ', depth '
	END
	SET @selList = @selList + ' AVG(' + @field + ') ' +  @field+ ', STDEV(' + @field + ') std ' + ', COUNT(' + @field + ') [sample_size] '


	
	
	
	-------------- construct the query --------------
	SET @query = 'SELECT ' + @selList+ ' FROM ' + @tableName + 
	@timeQuery +
	@latQuery +
	@lonQuery + 
	' GROUP BY ' + @groupbyList + 
	' ORDER BY ' + @orderList; 


	IF COL_LENGTH(@tableName, 'depth') IS NOT NULL	-- if table has depth field
	BEGIN
		SET @query = 'SELECT ' + @selList+ ' FROM ' + @tableName + 
		@timeQuery +
		@latQuery +
		@lonQuery + 
		@depthQuery +
		' GROUP BY ' + @groupbyList + 
		' ORDER BY ' + @orderList; 
	END

	-------------------------------------------------

	EXEC(@query)
END
