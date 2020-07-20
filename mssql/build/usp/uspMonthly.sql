USE [Opedia]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspMonthly] @tableName NVARCHAR(MAX), @field NVARCHAR(MAX), 
								 @dt1 NVARCHAR(MAX), @dt2 NVARCHAR(MAX), 
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
	DECLARE @field_std NVARCHAR(MAX) = @field + '_std';
	SET @field = QUOTENAME(@field);
	SET @field_std = QUOTENAME(@field_std);
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
	SET @timeQuery = ' WHERE [time] BETWEEN ''' + RTRIM(LTRIM(@dt1)) + '''' + ' AND ''' + RTRIM(LTRIM(@dt2)) + '''';
	SET @latQuery = ' AND lat BETWEEN ' + RTRIM(LTRIM(@lat1)) + ' AND ' + RTRIM(LTRIM(@lat2));
	SET @lonQuery = ' AND ' + @inverseLon + 'lon BETWEEN ' + RTRIM(LTRIM(@lon1)) + ' AND ' + RTRIM(LTRIM(@lon2));
	SET @depthQuery = ' AND depth BETWEEN ' + RTRIM(LTRIM(@depth1)) + ' AND ' + RTRIM(LTRIM(@depth2));


	DECLARE @selList AS NVARCHAR(MAX);
	SET @selList =  'YEAR([time]) [year], DATEPART(MONTH, [time]) [month], AVG(lat) AS lat, AVG(lon) AS lon, AVG(' + @field +') AS ' + @field + ', STDEV(' + @field + ') AS ' + @field_std

	DECLARE @groupOrder AS NVARCHAR(MAX);
	SET @groupOrder = ' GROUP BY YEAR([time]), DATEPART(MONTH, [time]) ORDER BY [year], [month]'	
	
	-------------- construct the query --------------
	
	SET @query = 'SELECT ' + @selList + ' FROM ' + @tableName + 
	@timeQuery +
	@latQuery +
	@lonQuery +
	@groupOrder;  


	IF COL_LENGTH(@tableName, 'depth') IS NOT NULL	-- if table has depth field
	BEGIN
		SET @selList =  'YEAR([time]) [year], DATEPART(MONTH, [time]) [month], AVG(lat) AS lat, AVG(lon) AS lon, AVG(depth) AS depth, AVG(' + @field +') AS ' + @field + ', STDEV(' + @field + ') AS ' + @field_std
		SET @query = 'SELECT ' + @selList + ' FROM ' + @tableName + 
		@timeQuery +
		@latQuery +
		@lonQuery +
		@depthQuery + 
		@groupOrder;
	END
	-------------------------------------------------

	EXEC(@query)
END
