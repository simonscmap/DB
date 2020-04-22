USE [Opedia]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[uspSpaceTime] @tableName NVARCHAR(MAX), @field NVARCHAR(MAX), 
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
	SET @field = QUOTENAME(@field);
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
	IF @tableName LIKE '%_Climatology'			-- if table represents a climatology data set
	BEGIN
		IF COL_LENGTH(@tableName, 'month') IS NOT NULL	-- if table has month field
		BEGIN
			SET @timeField = '[month]'
			SET @dt1 = DATEPART(month, @dt1);
			SET @dt2 = DATEPART(month, @dt2);
			SET @timeQuery = ' WHERE ' + @timeField + ' BETWEEN ' + RTRIM(LTRIM(@dt1)) + ' AND ' + RTRIM(LTRIM(@dt2));
		END
	END


	DECLARE @selList AS NVARCHAR(MAX);
	DECLARE @orderList AS NVARCHAR(MAX);
	SET @selList = RTRIM(LTRIM(@timeField)) + ', lat, lon, '
	SET @orderList = RTRIM(LTRIM(@timeField)) + ', lat, lon '
	IF COL_LENGTH(@tableName, 'hour') IS NOT NULL	-- if table has hour field
	BEGIN
		SET @selList = @selList + '[hour], '
		SET @orderList = RTRIM(LTRIM(@timeField)) + ', [hour], lat, lon '
	END




	IF COL_LENGTH(@tableName, 'depth') IS NOT NULL	-- if table has depth field
		SET @selList = @selList + 'depth, '
	SET @selList = @selList + @field
	IF @field LIKE '%*%'
		SET @selList = ' * '

	
	
	
	-------------- construct the query --------------
	SET @query = 'SELECT ' + @selList+ ' FROM ' + @tableName + 
	@timeQuery +
	@latQuery +
	@lonQuery + ' ORDER BY ' + @orderList; 


	IF COL_LENGTH(@tableName, 'depth') IS NOT NULL	-- if table has depth field
	BEGIN
		SET @query = 'SELECT ' + @selList + ' FROM ' + @tableName + 
		@timeQuery +
		@latQuery +
		@lonQuery +
		@depthQuery + ' ORDER BY ' + RTRIM(LTRIM(@timeField)) + ', depth, lat, lon' 
	END

	-------------------------------------------------
	
	EXEC(@query)
END
