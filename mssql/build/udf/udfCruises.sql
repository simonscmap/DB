USE [Opedia]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[udfCruises]()
RETURNS TABLE
AS
RETURN (
SELECT 
       [tblCruise].ID 
      ,[tblCruise].Nickname
      ,[tblCruise].Name
      ,[tblCruise].Ship_Name
      ,[tblCruise].Start_Time
      ,[tblCruise].End_Time
      ,[tblCruise].Lat_Min
      ,[tblCruise].Lat_Max
      ,[tblCruise].Lon_Min
      ,[tblCruise].Lon_Max
      ,[tblCruise].Chief_Name
      ,[keywords_agg].Keywords
FROM tblCruise
    LEFT JOIN (SELECT cruise_ID, STRING_AGG (CAST(key_table.keywords AS VARCHAR(MAX)), ', ') AS Keywords FROM tblCruise tblC
    JOIN tblCruise_Keywords key_table ON [tblC].ID = [key_table].cruise_ID GROUP BY cruise_ID)
    AS keywords_agg ON [keywords_agg].cruise_ID = [tblCruise].ID
)




