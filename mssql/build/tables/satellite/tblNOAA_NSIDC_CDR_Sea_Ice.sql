
USE [Opedia]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNOAA_NSIDC_CDR_Sea_Ice](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[seaice_conc_cdr] [float] NULL,
	[goddard_merged_seaice_conc] [float] NULL,
	[goddard_nt_seaice_conc] [float] NULL,
	[goddard_bt_seaice_conc] [float] NULL,
	[stdev_of_seaice_conc_cdr] [float] NULL,
	[qa_of_seaice_conc_cdr] [float] NULL

) ON [PRIMARY]
GO



CREATE UNIQUE NONCLUSTERED INDEX [IX_tblNOAA_NSIDC_CDR_Sea_Ice_time_lat_lon] ON [dbo].[tblNOAA_NSIDC_CDR_Sea_Ice]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC
)
INCLUDE ([seaice_conc_cdr], [goddard_merged_seaice_conc], [goddard_nt_seaice_conc], [goddard_bt_seaice_conc])
WITH (DATA_COMPRESSION = PAGE, PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [Primary]
GO
