USE [Opedia]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspLookupVars] @hint AS NVARCHAR(MAX)

--WITH RECOMPILE 
AS
BEGIN
	-- assumes that the passed keywords (@hint) are separated by blank space
	DECLARE @word AS NVARCHAR(MAX);
	DECLARE @words INT;
	DECLARE @query AS NVARCHAR(MAX);
	DECLARE @where AS NVARCHAR(MAX);

	SET @query = 'SELECT * FROM dbo.udfCatalog() '
	SET @where = ''
	SELECT @words=count(*) FROM STRING_SPLIT(@hint , ' ')
	IF @words > 0
	BEGIN	
		DECLARE curWords CURSOR FOR SELECT value FROM STRING_SPLIT(@hint , ' ')
		OPEN curWords
		FETCH NEXT FROM curWords INTO @word
		SET @where = ' WHERE '
		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @where = @where + '('
			SET @where = @where + ' Keywords LIKE ''' + '%' + @word + '%'''
			SET @where = @where + ' OR Variable LIKE ''' + '%' + @word + '%'''
			SET @where = @where + ' OR Long_Name LIKE ''' + '%' + @word + '%'''
			SET @where = @where + ' OR Dataset_Name LIKE ''' + '%' + @word + '%'''
			SET @where = @where + ' OR Make LIKE ''' + '%' + @word + '%'''
			SET @where = @where + ' OR Study_Domain LIKE ''' + '%' + @word + '%'''
			SET @where = @where + ')'
			FETCH NEXT FROM curWords INTO @word
			IF @@FETCH_STATUS = 0
				SET @where = @where + ' AND '
		END
		CLOSE curWords
		DEALLOCATE curWords
	END
	SET @query = @query + @where + 'ORDER BY Dataset_Name, Variable'
	EXEC(@query)
END
