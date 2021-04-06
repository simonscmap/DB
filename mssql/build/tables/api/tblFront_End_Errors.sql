CREATE TABLE [dbo].[tblFront_End_Errors](
	[ID] [int] NOT NULL IDENTITY(1,1),
    [OS_Info] [nvarchar](MAX) NULL,
    [Browser_Info] [nvarchar] (MAX) NULL,
    [Error] [nvarchar] (MAX) NOT NULL,
    [Recorded_At] [DateTime] DEFAULT GETDATE()
)