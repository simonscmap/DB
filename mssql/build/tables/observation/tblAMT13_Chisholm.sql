SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAMT13_Chisholm](

	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[Pro_abundance] [float] NULL,
	[Pro_total_ecotype_abundance] [float] NULL,
	[Pro_eMED4_abundance] [float] NULL,
	[Pro_eMIT9312_abundance] [float] NULL,
	[Pro_eMIT9211_abundance] [float] NULL,
	[Pro_eNATL2A_abundance] [float] NULL,
	[Pro_eSS120_abundance] [float] NULL,
	[Pro_eMIT9313_abundance] [float] NULL,
	[Syn_abundance] [float] NULL,
	[density_AMT13] [float] NULL,
	[temp_C_AMT13] [float] NULL,
	[csal_ppt_AMT13] [float] NULL,
	[Light_Quanta_m2_sec_AMT13] [float] NULL,
	[chlA_AMT13] [float] NULL,
	[DCM_AMT13] [float] NULL,
	[MLD_05C_AMT13] [float] NULL,
	[MLD_25C_AMT13] [float] NULL,
	[MLD_03Density_AMT13] [float] NULL,
	[MLD_125Density_AMT13] [float] NULL,
	[TotalDepth_AMT13] [float] NULL,
	[Pro_eMED4_abundance_quality] [float] NULL,
	[Pro_eMIT9312_abundance_quality] [float] NULL,
	[Pro_eMIT9211_abundance_quality] [float] NULL,
	[Pro_eNATL2A_abundance_quality] [float] NULL,
	[Pro_eSS120_abundance_quality] [float] NULL,
	[Pro_eMIT9313_abundance_quality] [float] NULL,
	[Pro_total_ecotype_abundance_quality] [float] NULL
) ON [PRIMARY]
GO



-- Indices
USE Opedia
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblAMT13_Chisholm_time_lat_lon_depth] ON [dbo].[tblAMT13_Chisholm]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
