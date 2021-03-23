CREATE TABLE [tblCruise_Series] (
	[ID] INT NOT NULL,
	Series nvarchar(MAX) NULL
)
GO

INSERT INTO [tblCruise_Series] (ID, Series)
VALUES
	(1, 'Gradients'),
	(2, 'Hawaii Ocean Time-series'),
	(3, 'Atlantic Meridional Transect')
GO

ALTER TABLE [tblCruise_Series]
ADD CONSTRAINT [PK_tblCruise_Series] PRIMARY KEY CLUSTERED ( [ID] ASC )
GO
