USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblArgo_Metadata](
	[float_id] [int] UNIQUE NOT NULL, 
	[Metadata_Dict] [nvarchar](max) NOT NULL
) ON [FG1]
GO


-- -- add foreign key to BGC ARGO
-- ALTER TABLE [dbo].[tblArgo_Metadata]  WITH CHECK ADD  CONSTRAINT [FK_tblArgo_Metadata_tblArgoBGC_REP] FOREIGN KEY([float_id])
-- REFERENCES [dbo].[tblArgoBGC_REP] ([float_id])
-- GO


-- ALTER TABLE [dbo].[tblArgo_Metadata] CHECK CONSTRAINT [FK_tblArgo_Metadata_tblDatasets]
-- GO

-- -- add foreign key to Core ARGO
-- ALTER TABLE [dbo].[tblArgo_Metadata]  WITH CHECK ADD  CONSTRAINT [FK_tblArgo_Metadata_tblArgoCore_REP] FOREIGN KEY([float_id])
-- REFERENCES [dbo].[tblArgoCore_REP] ([float_id])
-- GO

-- ALTER TABLE [dbo].[tblArgo_Metadata] CHECK CONSTRAINT [FK_tblArgo_Metadata_tblDatasets]
-- GO


-- indices
USE Opedia
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblArgo_Metadata] ON [dbo].[tblArgo_Metadata]
(
	[float_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG1]
GO
