USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblLCS_REP](
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[time] [date] NOT NULL,
	[ftle_bw_sla] [float] NULL,
	[disp_bw_sla] [float] NULL,
	[ftle_fw_sla] [float] NULL,
	[disp_fw_sla] [float] NULL
) ON [PRIMARY]
GO






---------------------
-- Indices
---------------------


CREATE UNIQUE NONCLUSTERED INDEX [IX_tblLCS_REP_time_lat_lon] ON [dbo].[tblLCS_REP]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE ([ftle_bw_sla], [disp_bw_sla], [ftle_fw_sla], [disp_fw_sla]) 
WITH (/*DATA_COMPRESSION = PAGE,*/ PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO