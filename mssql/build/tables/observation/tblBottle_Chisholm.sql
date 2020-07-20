
USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBottle_Chisholm](
	[time] [date] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[theta_cmore] [float] NULL,
	[sigma_cmore] [float] NULL,
	[temp_cmore] [float] NULL,
	[csal_cmore] [float] NULL,
	[coxy_cmore] [float] NULL,
	[chlpig_cmore] [float] NULL,
	[boxy_cmore] [float] NULL,
	[dic_cmore] [float] NULL,
	[alk_cmore] [float] NULL,
	[phos_cmore] [float] NULL,
	[nit_cmore] [float] NULL,
	[sil_cmore] [float] NULL,
	[pc_cmore] [float] NULL,
	[pn_cmore] [float] NULL,
	[pp_cmore] [float] NULL,
	[chlda_cmore] [float] NULL,
	[chlplus_cmore] [float] NULL,
	[perid_cmore] [float] NULL,
	[but19_cmore] [float] NULL,
	[fuco_cmore] [float] NULL,
	[hex19_cmore] [float] NULL,
	[prasino_cmore] [float] NULL,
	[viol_cmore] [float] NULL,
	[diadino_cmore] [float] NULL,
	[allox_cmore] [float] NULL,
	[lutein_cmore] [float] NULL,
	[zeaxan_cmore] [float] NULL,
	[chlb_cmore] [float] NULL,
	[acar_cmore] [float] NULL,
	[bcar_cmore] [float] NULL,
	[dvchla_cmore] [float] NULL,
	[mvchla_cmore] [float] NULL,
	[hplc_cmore] [float] NULL,
	[Het_bact_abundance] [float] NULL,
	[Pro_abundance] [float] NULL,
	[Syn_abundance] [float] NULL,
	[Eukaryote_abundance] [float] NULL,
	[NO2_cmore] [float] NULL,
	[NH4_cmore] [float] NULL,
	[Pro_abundance_quality] [float] NULL,
	[Pro_chl_fluor] [float] NULL,
	[Pro_FSC] [float] NULL,
	[Pro_eMIT9312_abundance] [float] NULL,
	[Pro_eMIT9312_abundance_quality] [float] NULL,
	[Pro_eMED4_abundance] [float] NULL,
	[Pro_eMED4_abundance_quality] [float] NULL,
	[Pro_eHL3_abundance] [float] NULL,
	[Pro_eHL3_abundance_quality] [float] NULL,
	[Pro_eHL4_abundance] [float] NULL,
	[Pro_eHL4_abundance_quality] [float] NULL,
	[Pro_eNATL2A_abundance] [float] NULL,
	[Pro_eNATL2A_abundance_quality] [float] NULL,
	[Pro_eMIT9313_abundance] [float] NULL,
	[Pro_eMIT9313_abundance_quality] [float] NULL
) ON [PRIMARY]
GO





-- Indices
USE Opedia
GO


USE [Opedia]
GO

CREATE NONCLUSTERED INDEX [IX_tblBottle_Chisholm_time_lat_lon] ON [dbo].[tblBottle_Chisholm]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
