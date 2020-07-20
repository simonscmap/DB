USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[uspGenericDist] @tableName NVARCHAR(MAX), @fields NVARCHAR(MAX), @dt1 NVARCHAR(MAX), @dt2 NVARCHAR(MAX), @lat1 NVARCHAR(MAX), @lat2 NVARCHAR(MAX), @lon1 NVARCHAR(MAX), @lon2 NVARCHAR(MAX), @arg8_name NVARCHAR(MAX), @arg8_val NVARCHAR(MAX)
AS
BEGIN
	DECLARE @query as NVARCHAR(MAX)
	SET NOCOUNT ON;
	SET @query = 'SELECT [time], lat, lon, ' + RTRIM(LTRIM(@fields)) + ' FROM ' + RTRIM(LTRIM(@tableName)) + 
	' WHERE [time] >= ''' + RTRIM(LTRIM(@dt1)) + '''' + ' AND [time] <= ''' + RTRIM(LTRIM(@dt2)) + '''' +
	' AND lat >= ' + RTRIM(LTRIM(@lat1)) + ' AND lat <= ' + RTRIM(LTRIM(@lat2)) +
	' AND lon >= ' + RTRIM(LTRIM(@lon1)) + ' AND lon <= ' + RTRIM(LTRIM(@lon2)) + 
	' AND [' + RTRIM(LTRIM(@arg8_name)) + ']=' + RTRIM(LTRIM(@arg8_val)) + ' ORDER BY lat, lon' 

	IF @arg8_name IS NULL
	BEGIN
	SET @query = 'SELECT [time], lat, lon, ' + RTRIM(LTRIM(@fields)) + ' FROM ' + RTRIM(LTRIM(@tableName)) + 
	' WHERE [time] >= ''' + RTRIM(LTRIM(@dt1)) + '''' + ' AND [time] <= ''' + RTRIM(LTRIM(@dt2)) + '''' +
	' AND lat >= ' + RTRIM(LTRIM(@lat1)) + ' AND lat <= ' + RTRIM(LTRIM(@lat2)) +
	' AND lon >= ' + RTRIM(LTRIM(@lon1)) + ' AND lon <= ' + RTRIM(LTRIM(@lon2)) + ' ORDER BY lat, lon' 
	END


	EXEC(@query)
END
GO


