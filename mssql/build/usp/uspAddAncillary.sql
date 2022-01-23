SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspAddAncillary] @tableName NVARCHAR(MAX), @CIP BIT = 0

AS
BEGIN

	
	DECLARE @ancillaryTbl AS NVARCHAR(MAX);
	SET @ancillaryTbl = 'tblAncillary'
	IF @CIP = 1
	BEGIN
		SET @ancillaryTbl = 'tblAncillary_CIP'
	END


	DECLARE @query AS NVARCHAR(MAX);
	DECLARE @ancillaryCols AS NVARCHAR(MAX);
	SET NOCOUNT ON;

	SET @ancillaryCols =  '[' + (SELECT STRING_AGG(CAST(COLUMN_NAME as NVARCHAR(MAX)), '], [') FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = @ancillaryTbl AND COLUMN_NAME NOT IN ('lat', 'lon', 'time', 'depth', 'link'))  + ']' 
	
	SET @query = N'select t1.*, ' + @ancillaryCols + ' from dbo.' + @tableName +' t1 
		left join ' + @ancillaryTbl + ' t2  
		on t1.[time]=t2.[time]
		and abs(t1.lat-t2.lat) < 0.0001 
		and abs(t1.lon-t2.lon) < 0.0001 
		and abs(t1.depth-t2.depth) < 0.001
		where t2.link=' + '''' + @tableName + ''''
	
	EXEC(@query)
END

GO
