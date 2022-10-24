USE Opedia
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROC [dbo].[uspAddAncillary] @tableName NVARCHAR(MAX),
			@dt1 NVARCHAR(MAX) = '', @dt2 NVARCHAR(MAX) = '', 
			@lat1 NVARCHAR(MAX) = '', @lat2 NVARCHAR(MAX) = '', 
			@lon1 NVARCHAR(MAX) = '', @lon2 NVARCHAR(MAX) = '', 
			@depth1 NVARCHAR(MAX) = '', @depth2 NVARCHAR(MAX) = '', 
			@CIP BIT = 0

AS
BEGIN

	
	DECLARE @ancillaryTbl AS NVARCHAR(MAX);
	SET @ancillaryTbl = 'tblAncillary'
	IF @CIP = 1
	BEGIN
		SET @ancillaryTbl = 'tblAncillary_CIP'
	END

	DECLARE @query AS NVARCHAR(MAX);
	SET NOCOUNT ON;
	DECLARE @ancillaryCols AS NVARCHAR(MAX);


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


	DECLARE @timeQuery AS NVARCHAR(MAX)
	DECLARE @latQuery AS NVARCHAR(MAX)
	DECLARE @lonQuery AS NVARCHAR(MAX)
	DECLARE @depthQuery AS NVARCHAR(MAX)

	SET @timeQuery = ' WHERE t1.[time] BETWEEN ''' + RTRIM(LTRIM(@dt1)) + '''' + ' AND ''' + RTRIM(LTRIM(@dt2)) + '''';
	SET @latQuery = ' AND t1.lat BETWEEN ' + RTRIM(LTRIM(@lat1)) + ' AND ' + RTRIM(LTRIM(@lat2));
	SET @lonQuery = ' AND ' + @inverseLon + ' t1.lon BETWEEN ' + RTRIM(LTRIM(@lon1)) + ' AND ' + RTRIM(LTRIM(@lon2));
	SET @depthQuery = ' AND t1.depth BETWEEN ' + RTRIM(LTRIM(@depth1)) + ' AND ' + RTRIM(LTRIM(@depth2));

	DECLARE @timeField AS NVARCHAR(50)
	SET @timeField = '[time]'
	IF @tableName LIKE '%_Climatology'			-- if table represents a climatology data set
	BEGIN
		IF COL_LENGTH(RTRIM(LTRIM(@tableName)), 'month') IS NOT NULL	-- if table has month field
		BEGIN
			SET @timeField = '[month]'
			SET @dt1 = DATEPART(month, @dt1);
			SET @dt2 = DATEPART(month, @dt2);
			SET @timeQuery = ' WHERE ' + @timeField + ' BETWEEN ' + RTRIM(LTRIM(@dt1)) + ' AND ' + RTRIM(LTRIM(@dt2));
		END
	END

	SET @ancillaryCols =  '[' + (SELECT STRING_AGG(CAST(COLUMN_NAME as NVARCHAR(MAX)), '], [') FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = @ancillaryTbl AND COLUMN_NAME NOT IN ('lat', 'lon', 'time', 'depth', 'link'))  + ']' 
	
		-------------- construct the query --------------
	IF COL_LENGTH(@tableName, 'depth') IS NOT NULL	-- if table has depth field
	AND len(@depth1) > 0  -- and subset was made

	BEGIN
	PRINT 'Depth and filter'
	SET @query = N'select t1.*, ' + @ancillaryCols + ' from dbo.' + @tableName +' t1 
		left join ' + @ancillaryTbl + ' t2  
		on t1.[time]=t2.[time]
		and abs(t1.lat-t2.lat) < 0.0001 
		and abs(t1.lon-t2.lon) < 0.0001 
		and abs(t1.depth-t2.depth) < 0.001
		and t2.link=' + '''' + @tableName + '''' +
		@timeQuery +
		@latQuery +
		@lonQuery + 
		@depthQuery 

		PRINT @timeQuery
		PRINT @latQuery
		PRINT @lonQuery
		PRINT @depthQuery
	END
	-------------------------------------------------
	IF COL_LENGTH(@tableName, 'depth') IS NULL -- if subset was made on table without depth
	AND len(@depth1) > 0 

	BEGIN 
	PRINT 'Just filter'
	SET @query = N'select t1.*, ' + @ancillaryCols + ' from dbo.' + @tableName +' t1 
		left join ' + @ancillaryTbl + ' t2  
		on t1.[time]=t2.[time]
		and abs(t1.lat-t2.lat) < 0.0001 
		and abs(t1.lon-t2.lon) < 0.0001 
		and abs(t1.depth-t2.depth) < 0.001
		and t2.link=' + '''' + @tableName + '''' +
		@timeQuery +
		@latQuery +
		@lonQuery
	END

	IF len(@depth1) = 0 -- if no subset was made

	BEGIN 
	PRINT 'No filter'
	SET @query = N'select t1.*, ' + @ancillaryCols + ' from dbo.' + @tableName +' t1 
		left join ' + @ancillaryTbl + ' t2  
		on t1.[time]=t2.[time]
		and abs(t1.lat-t2.lat) < 0.0001 
		and abs(t1.lon-t2.lon) < 0.0001 
		and abs(t1.depth-t2.depth) < 0.001
		and t2.link=' + '''' + @tableName + ''''

	END

	EXEC(@query)
END

GO
