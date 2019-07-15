USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[udfCatalog]()
RETURNS TABLE
AS
RETURN (
    SELECT RTRIM(LTRIM(Short_Name)) AS Variable, 
    RTRIM(LTRIM(Long_Name)) AS [Long Name], 
    RTRIM(LTRIM(Unit)) AS Unit, 
    RTRIM(LTRIM(Make)) AS Make, 
    RTRIM(LTRIM(Sensor)) AS Sensor, 
    RTRIM(LTRIM(Process_Stage_Long)) AS [Process Level], 
    RTRIM(LTRIM(Study_Domain)) AS [Study Domain], 
    RTRIM(LTRIM(Temporal_Resolution)) AS [Temporal Resolution], 
    RTRIM(LTRIM(Spatial_Resolution)) AS [Spatial Resolution], 
    RTRIM(LTRIM(Comment)) AS [Comment], 
    RTRIM(LTRIM(Dataset_Long_Name)) AS [Dataset Name], 
    RTRIM(LTRIM(Data_Source)) AS [Data Source], 
    RTRIM(LTRIM(Distributor)) AS [Distributor], 
    RTRIM(LTRIM(Description)) AS [Dataset Description], 
    [tblVariables].Dataset_ID AS [Dataset_ID], 
    [tblVariables].ID AS [ID], 
    [tblVariables].Table_Name AS [Table_Name], 
    [tblVariables].Keywords AS [Keywords] 
    FROM tblVariables 
    JOIN tblDatasets ON [tblVariables].Dataset_ID=[tblDatasets].ID 
    JOIN tblTemporal_Resolutions ON [tblVariables].Temporal_Res_ID=[tblTemporal_Resolutions].ID 
    JOIN tblSpatial_Resolutions ON [tblVariables].Spatial_Res_ID=[tblSpatial_Resolutions].ID 
    JOIN tblMakes ON [tblVariables].Make_ID=[tblMakes].ID 
    JOIN tblSensors ON [tblVariables].Sensor_ID=[tblSensors].ID 
    JOIN tblProcess_Stages ON [tblVariables].Process_ID=[tblProcess_Stages].ID 
    JOIN tblStudy_Domains ON [tblVariables].Study_Domain_ID=[tblStudy_Domains].ID 
)


GO


