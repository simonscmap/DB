USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[uspCatalog] 
--WITH RECOMPILE 
AS
BEGIN
	DECLARE @query AS NVARCHAR(MAX);
	SET NOCOUNT ON;


    SET @query = 'SELECT RTRIM(LTRIM(Short_Name)) AS Variable, '
    SET @query =  @query + 'RTRIM(LTRIM(Long_Name)) AS [Long Name], '
    SET @query =  @query + 'RTRIM(LTRIM(Unit)) AS Unit, '
    SET @query =  @query + 'RTRIM(LTRIM(Make)) AS Make, '
    SET @query =  @query + 'RTRIM(LTRIM(Sensor)) AS Sensor, '
    SET @query =  @query + 'RTRIM(LTRIM(Process_Stage_Long)) AS [Process Level], '
    SET @query =  @query + 'RTRIM(LTRIM(Study_Domain)) AS [Study Domain], '
    SET @query =  @query + 'RTRIM(LTRIM(Temporal_Resolution)) AS [Temporal Resolution], '
    SET @query =  @query + 'RTRIM(LTRIM(Spatial_Resolution)) AS [Spatial Resolution], '
    SET @query =  @query + 'RTRIM(LTRIM(Comment)) AS [Comment], '

    SET @query =  @query + 'RTRIM(LTRIM(Dataset_Long_Name)) AS [Dataset Name], '
    SET @query =  @query + 'RTRIM(LTRIM(Data_Source)) AS [Data Source], '
    SET @query =  @query + 'RTRIM(LTRIM(Distributor)) AS [Distributor], '
    SET @query =  @query + 'RTRIM(LTRIM(Description)) AS [Dataset Description], '
    SET @query =  @query + '[tblVariables].Dataset_ID AS [Dataset_ID], '
    SET @query =  @query + '[tblVariables].ID AS [ID], '
    SET @query =  @query + '[tblVariables].Table_Name AS [Table_Name], '
    SET @query =  @query + '[tblVariables].Keywords AS [Keywords] '
    
    SET @query =  @query + 'FROM tblVariables '
    SET @query =  @query + 'JOIN tblDatasets ON [tblVariables].Dataset_ID=[tblDatasets].ID '
    SET @query =  @query + 'JOIN tblTemporal_Resolutions ON [tblVariables].Temporal_Res_ID=[tblTemporal_Resolutions].ID '
    SET @query =  @query + 'JOIN tblSpatial_Resolutions ON [tblVariables].Spatial_Res_ID=[tblSpatial_Resolutions].ID '
    SET @query =  @query + 'JOIN tblMakes ON [tblVariables].Make_ID=[tblMakes].ID '
    SET @query =  @query + 'JOIN tblSensors ON [tblVariables].Sensor_ID=[tblSensors].ID '
    SET @query =  @query + 'JOIN tblProcess_Stages ON [tblVariables].Process_ID=[tblProcess_Stages].ID '
    SET @query =  @query + 'JOIN tblStudy_Domains ON [tblVariables].Study_Domain_ID=[tblStudy_Domains].ID '

	EXEC(@query)
END
GO


