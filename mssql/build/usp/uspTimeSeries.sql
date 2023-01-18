USE [Opedia]
GO
/****** Object:  StoredProcedure [dbo].[uspTimeSeries]    Script Date: 1/17/2023 3:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER PROC [dbo].[uspTimeSeries] @tableName NVARCHAR(MAX), @field NVARCHAR(MAX), 
								 @dt1 NVARCHAR(MAX), @dt2 NVARCHAR(MAX), 
								 @lat1 NVARCHAR(MAX), @lat2 NVARCHAR(MAX), 
								 @lon1 NVARCHAR(MAX), @lon2 NVARCHAR(MAX), 
								 @depth1 NVARCHAR(MAX), @depth2 NVARCHAR(MAX),
								 @onlyStatement AS nchar(1) = '0'
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
	SET @lonQuery = ' AND ' + @inverseLon + ' lon BETWEEN ' + RTRIM(LTRIM(@lon1)) + ' AND ' + RTRIM(LTRIM(@lon2));
	SET @depthQuery = ' AND depth BETWEEN ' + RTRIM(LTRIM(@depth1)) + ' AND ' + RTRIM(LTRIM(@depth2));


	DECLARE @timeField AS NVARCHAR(50)
	SET @timeField = '[time]'
	IF @tableName LIKE '%_Climatology]'			-- if table represents a climatology data set
	BEGIN
		IF COL_LENGTH(RTRIM(LTRIM(@tableName)), 'month') IS NOT NULL	-- if table has month field
		BEGIN
			SET @timeField = '[month]'
			SET @dt1 = DATEPART(month, @dt1);
			SET @dt2 = DATEPART(month, @dt2);
			SET @timeQuery = ' WHERE ' + @timeField + ' BETWEEN ' + RTRIM(LTRIM(@dt1)) + ' AND ' + RTRIM(LTRIM(@dt2));
		END
	END


	DECLARE @selList AS NVARCHAR(MAX);
	
	-------------- construct the query --------------
	SET @selList = RTRIM(LTRIM(@timeField)) + ', AVG(lat) AS lat, AVG(lon) AS lon, AVG(' + @field +') AS ' + @field + ', STDEV(' + @field + ') AS ' + @field_std
	SET @query = 'SELECT ' + @selList + ' FROM ' + RTRIM(LTRIM(@tableName)) + 
	@timeQuery +
	@latQuery +
	@lonQuery + ' GROUP BY ' + RTRIM(LTRIM(@timeField)) + ' ORDER BY ' + RTRIM(LTRIM(@timeField)); 


	IF COL_LENGTH(@tableName, 'depth') IS NOT NULL	-- if table has depth field
	BEGIN
		SET @selList = RTRIM(LTRIM(@timeField)) + ', AVG(lat) AS lat, AVG(lon) AS lon, AVG(depth) AS depth, AVG(' + @field +') AS ' + @field + ', STDEV(' + @field + ') AS ' + @field_std
		SET @query = 'SELECT ' + @selList + ' FROM ' + @tableName + 
		@timeQuery +
		@latQuery +
		@lonQuery +
		@depthQuery + ' GROUP BY ' + RTRIM(LTRIM(@timeField)) + ' ORDER BY ' + RTRIM(LTRIM(@timeField));
	END
	-------------------------------------------------

	IF @onlyStatement = '1'
	BEGIN
		DECLARE @statement AS NVARCHAR(MAX) = 'select ' + '''' + REPLACE(@query, '''', '''''') + '''' + ' as query';
		EXEC(@statement)
	END
	ELSE
	BEGIN
		EXEC(@query)
	END
END
