USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[uspFileGroup_Objects_ByID] @FileGroup_ID INT
--WITH RECOMPILE 
AS
BEGIN
	-- get objects located on a given filegroup (data_space_id)
	SELECT o.[name], o.[type], i.[name], i.[index_id], f.[name] FROM sys.indexes i
	INNER JOIN sys.filegroups f
	ON i.data_space_id = f.data_space_id
	INNER JOIN sys.all_objects o
	ON i.[object_id] = o.[object_id] WHERE i.data_space_id = f.data_space_id
	AND i.data_space_id = @FileGroup_ID -- Filegroup
END
GO

