USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblHOT_Bottle_HALE](
	[botid_HOT] [bigint] NOT NULL,
	[time] [date] NOT NULL,
	[date_time] [nvarchar](6) NULL,
	[pressure_ctd_bottle_hale_hot] [float] NULL,
	[potential_temperature_ctd_bottle_hale_hot] [float] NULL,
	[potential_density_ctd_bottle_hale_hot] [float] NULL,
	[temperature_ctd_bottle_hale_hot] [float] NULL,
	[salinity_ctd_bottle_hale_hot] [float] NULL,
	[oxygen_ctd_bottle_hale_hot] [float] NULL,
	[salinity_bottle_hale_hot] [float] NULL,
	[oxygen_bottle_hale_hot] [float] NULL,
	[dic_bottle_hale_hot] [float] NULL,
	[ph_bottle_hale_hot] [float] NULL,
	[alk_bottle_hale_hot] [float] NULL,
	[PO4_bottle_hale_hot] [float] NULL,
	[NO2_NO3_bottle_hale_hot] [float] NULL,
	[SiO4_bottle_hale_hot] [float] NULL,
	[dop_bottle_hale_hot] [float] NULL,
	[don_bottle_hale_hot] [float] NULL,
	[doc_bottle_hale_hot] [float] NULL,
	[tdp_bottle_hale_hot] [float] NULL,
	[tdn_bottle_hale_hot] [float] NULL,
	[pc_bottle_hale_hot] [float] NULL,
	[pn_bottle_hale_hot] [float] NULL,
	[pp_bottle_hale_hot] [float] NULL,
	[lln_bottle_hale_hot] [float] NULL,
	[llp_bottle_hale_hot] [float] NULL,
	[chl_bottle_hale_hot] [float] NULL,
	[phaeo_bottle_hale_hot] [float] NULL,
	[HPLC_chl3_bottle_hale_hot] [float] NULL,
	[HPLC_chl12_bottle_hale_hot] [float] NULL,
	[HPLC_chlplus_bottle_hale_hot] [float] NULL,
	[HPLC_peridinin_bottle_hale_hot] [float] NULL,
	[HPLC_but19_bottle_hale_hot] [float] NULL,
	[HPLC_fuco_bottle_hale_hot] [float] NULL,
	[HPLC_hex19_bottle_hale_hot] [float] NULL,
	[HPLC_prasino_bottle_hale_hot] [float] NULL,
	[HPLC_diadino_bottle_hale_hot] [float] NULL,
	[HPLC_zeaxan_bottle_hale_hot] [float] NULL,
	[HPLC_chlb_bottle_hale_hot] [float] NULL,
	[HPLC_chla_bottle_hale_hot] [float] NULL,
	[HPLC_chlc4_bottle_hale_hot] [float] NULL,
	[HPLC_acar_bottle_hale_hot] [float] NULL,
	[HPLC_bcar_bottle_hale_hot] [float] NULL,
	[HPLC_carotenes_bottle_hale_hot] [float] NULL,
	[HPLC_chlda_bottle_hale_hot] [float] NULL,
	[HPLC_viol_bottle_hale_hot] [float] NULL,
	[HPLC_lutein_bottle_hale_hot] [float] NULL,
	[HPLC_mvchla_bottle_hale_hot] [float] NULL,
	[HPLC_dvchla_bottle_hale_hot] [float] NULL,
	[hetero_bact_bottle_hale_hot] [float] NULL,
	[prochlorococcus_bottle_hale_hot] [float] NULL,
	[synechococcus_bottle_hale_hot] [float] NULL,
	[eukaryotes_bottle_hale_hot] [float] NULL,
	[atp_bottle_hale_hot] [float] NULL,
	[N2O_bottle_hale_hot] [float] NULL,
	[psi_bottle_hale_hot] [float] NULL,
	[pe4_bottle_hale_hot] [float] NULL,
	[pe5_bottle_hale_hot] [float] NULL,
	[pe10_bottle_hale_hot] [float] NULL,
	[p15n_bottle_hale_hot] [float] NULL,
	[PP_l12_bottle_hale_hot] [float] NULL,
	[PP_d12_bottle_hale_hot] [float] NULL,
	[NO2_bottle_hale_hot] [float] NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL
) ON [PRIMARY]
GO


-- indices

USE [Opedia]
GO

CREATE NONCLUSTERED INDEX [IX_tblHOT_Bottle_HALE_time_lat_lon_depth] ON [dbo].[tblHOT_Bottle_HALE]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


