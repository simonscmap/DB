DECLARE @usr NVARCHAR(MAX);
SET @usr = '';

EXEC uspGenericDenials 'tblApi_Auth_Methods', @usr;
EXEC uspGenericDenials 'tblApi_Call_Details', @usr;
EXEC uspGenericDenials 'tblApi_Calls', @usr;
EXEC uspGenericDenials 'tblApi_Keys', @usr;
EXEC uspGenericDenials 'tblApi_Routes', @usr;
EXEC uspGenericDenials 'tblUsers', @usr;
