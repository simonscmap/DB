USE [Opedia]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[udfVariableMetaData](@tableName NVARCHAR(MAX), @field NVARCHAR(MAX))
RETURNS TABLE
AS
RETURN (
    WITH CTE AS (
        SELECT cat.*, ref.Reference, 
                Row_Number	= ROW_NUMBER() OVER(ORDER BY ref.Reference)
        FROM dbo.udfCatalog() AS cat
        LEFT JOIN tblDataset_References AS ref ON ref.Dataset_ID=cat.Dataset_ID
        WHERE Variable=RTRIM(LTRIM(@field)) AND Table_Name=RTRIM(LTRIM(@tableName))
    )

    SELECT 
    Variable = CASE WHEN Row_Number = 1 THEN Variable ELSE NULL END, 
    Table_Name = CASE WHEN Row_Number = 1 THEN Table_Name ELSE NULL END, 
    Long_Name = CASE WHEN Row_Number = 1 THEN Long_Name ELSE NULL END, 
    Unit = CASE WHEN Row_Number = 1 THEN Unit ELSE NULL END, 
    Make = CASE WHEN Row_Number = 1 THEN Make ELSE NULL END, 
    Sensor = CASE WHEN Row_Number = 1 THEN Sensor ELSE NULL END,
    Process_Level = CASE WHEN Row_Number = 1 THEN Process_Level ELSE NULL END,
    Study_Domain = CASE WHEN Row_Number = 1 THEN Study_Domain ELSE NULL END,
    Temporal_Resolution = CASE WHEN Row_Number = 1 THEN Temporal_Resolution ELSE NULL END,
    Spatial_Resolution = CASE WHEN Row_Number = 1 THEN Spatial_Resolution ELSE NULL END,
    Time_Min = CASE WHEN Row_Number = 1 THEN Time_Min ELSE NULL END,
    Time_Max = CASE WHEN Row_Number = 1 THEN Time_Max ELSE NULL END,
    Lat_Min = CASE WHEN Row_Number = 1 THEN Lat_Min ELSE NULL END,
    Lat_Max = CASE WHEN Row_Number = 1 THEN Lat_Max ELSE NULL END,
    Lon_Min = CASE WHEN Row_Number = 1 THEN Lon_Min ELSE NULL END,
    Lon_Max = CASE WHEN Row_Number = 1 THEN Lon_Max ELSE NULL END,
    Depth_Min = CASE WHEN Row_Number = 1 THEN Depth_Min ELSE NULL END,
    Depth_Max = CASE WHEN Row_Number = 1 THEN Depth_Max ELSE NULL END,
    Variable_25th = CASE WHEN Row_Number = 1 THEN Variable_25th ELSE NULL END,
    Variable_50th = CASE WHEN Row_Number = 1 THEN Variable_50th ELSE NULL END,
    Variable_75th = CASE WHEN Row_Number = 1 THEN Variable_75th ELSE NULL END,
    Variable_Count = CASE WHEN Row_Number = 1 THEN Variable_Count ELSE NULL END,
    Variable_Mean = CASE WHEN Row_Number = 1 THEN Variable_Mean ELSE NULL END,
    Variable_Std = CASE WHEN Row_Number = 1 THEN Variable_Std ELSE NULL END,
    Variable_Min = CASE WHEN Row_Number = 1 THEN Variable_Min ELSE NULL END,
    Variable_Max = CASE WHEN Row_Number = 1 THEN Variable_Max ELSE NULL END,
    Comment = CASE WHEN Row_Number = 1 THEN Comment ELSE NULL END,
    Dataset_Name = CASE WHEN Row_Number = 1 THEN Dataset_Name ELSE NULL END,
    [Data_Source] = CASE WHEN Row_Number = 1 THEN [Data_Source] ELSE NULL END,
    Distributor = CASE WHEN Row_Number = 1 THEN Distributor ELSE NULL END,
    Dataset_Description = CASE WHEN Row_Number = 1 THEN Dataset_Description ELSE NULL END,
    Acknowledgement  = CASE WHEN Row_Number = 1 THEN Acknowledgement  ELSE NULL END,
    Dataset_ID = CASE WHEN Row_Number = 1 THEN Dataset_ID ELSE NULL END,
    ID = CASE WHEN Row_Number = 1 THEN ID ELSE NULL END,
    Keywords = CASE WHEN Row_Number = 1 THEN Keywords ELSE NULL END,
    Reference,
	Unstructured_Dataset_Metadata = CASE WHEN Row_Number = 1 THEN Unstructured_Dataset_Metadata ELSE NULL END,
	Unstructured_Variable_Metadata = CASE WHEN Row_Number = 1 THEN Unstructured_Variable_Metadata ELSE NULL END
    FROM CTE
)
