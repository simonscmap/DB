USE [Opedia_Sandbox]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblGeotraces_Seawater_1](
	[N_Samples] [int] NULL,
	[N_Stations] [int] NULL,
	[Cruise] [varchar](6) NULL,
	[Station] [varchar](26) NULL,
	[Type] [varchar](1) NULL,
	[lon] [float] NOT NULL,
	[lat] [float] NOT NULL,
	[Bottom_Depth] [float] NULL,
	[Operators_Cruise_Name] [varchar](13) NULL,
	[Ship_Name] [varchar](20) NULL,
	[Period] [varchar](23) NULL,
	[Chief_Scientist] [varchar](31) NULL,
	[GEOTRACES_Scientist] [varchar](77) NULL,
	[Cruise_Aliases] [varchar](25) NULL,
	[Cruise_Information_Link] [varchar](75) NULL,
	[BODC_Cruise_Number] [float] NULL,
	[time] [datetime] NOT NULL,
	[CTDPRS_T_VALUE_SENSOR] [float] NULL,
	[CTDPRS_T_VALUE_SENSOR_qc] [varchar](2) NULL,
	[DEPTH] [float] NULL,
	[DEPTH_qc] [varchar](2) NULL,
	[Rosette_Bottle_Number] [float] NULL,
	[Rosette_Bottle_Number_qc] [varchar](2) NULL,
	[GEOTRACES_Sample_ID] [varchar](10) NULL,
	[GEOTRACES_Sample_ID_qc] [varchar](2) NULL,
	[Bottle_Flag] [varchar](36) NULL,
	[Bottle_Flag_qc] [varchar](2) NULL,
	[Cast_Identifier] [varchar](12) NULL,
	[Cast_Identifier_qc] [varchar](2) NULL,
	[Sampling_Device] [varchar](7) NULL,
	[Sampling_Device_qc] [varchar](2) NULL,
	[BODC_Bottle_Number] [float] NULL,
	[BODC_Bottle_Number_qc] [varchar](2) NULL,
	[BODC_Event_Number] [float] NULL,
	[BODC_Event_Number_qc] [varchar](2) NULL,
	[Single_Cell_ID] [varchar](4) NULL,
	[Single_Cell_ID_qc] [varchar](2) NULL,
	[NCBI_Metagenome_BioSample_Accession] [varchar](12) NULL,
	[NCBI_Metagenome_BioSample_Accession_qc] [varchar](2) NULL,
	[NCBI_Single_Cell_Genome_BioProject_Accession] [varchar](22) NULL,
	[NCBI_Single_Cell_Genome_BioProject_Accession_qc] [varchar](2) NULL,
	[NCBI_16S_18S_rRNA_gene_BioSample_Accession] [varchar](25) NULL,
	[NCBI_16S_18S_rRNA_gene_BioSample_Accession_qc] [varchar](2) NULL,
	[EMBL_EBI_Metagenome_MGNIFY_Analysis_Accession] [varchar](56) NULL,
	[EMBL_EBI_Metagenome_MGNIFY_Analysis_Accession_qc] [varchar](2) NULL,
	[CTDTMP_T_VALUE_SENSOR] [float] NULL,
	[CTDTMP_T_VALUE_SENSOR_qc] [varchar](2) NULL,
	[CTDTMP_T_VALUE_SENSOR_err] [float] NULL,
	[CTDSAL_D_CONC_SENSOR] [float] NULL,
	[CTDSAL_D_CONC_SENSOR_qc] [varchar](2) NULL,
	[CTDSAL_D_CONC_SENSOR_err] [float] NULL,
	[SALINITY_D_CONC_BOTTLE] [float] NULL,
	[SALINITY_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[CFC_11_D_CONC_BOTTLE] [float] NULL,
	[CFC_11_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[CFC_12_D_CONC_BOTTLE] [float] NULL,
	[CFC_12_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[CFC113_D_CONC_BOTTLE] [float] NULL,
	[CFC113_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[SF6_D_CONC_BOTTLE] [float] NULL,
	[SF6_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[He_D_CONC_BOTTLE] [float] NULL,
	[He_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[He_D_CONC_BOTTLE_err] [float] NULL,
	[Ne_D_CONC_BOTTLE] [float] NULL,
	[Ne_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Ne_D_CONC_BOTTLE_err] [float] NULL,
	[Ar_D_CONC_BOTTLE] [float] NULL,
	[Ar_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Ar_D_CONC_BOTTLE_err] [float] NULL,
	[Kr_D_CONC_BOTTLE] [float] NULL,
	[Kr_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Kr_D_CONC_BOTTLE_err] [float] NULL,
	[Xe_D_CONC_BOTTLE] [float] NULL,
	[Xe_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Xe_D_CONC_BOTTLE_err] [float] NULL,
	[SALINITY_D_CONC_PUMP] [float] NULL,
	[SALINITY_D_CONC_PUMP_qc] [varchar](2) NULL,
	[SALINITY_D_CONC_FISH] [float] NULL,
	[SALINITY_D_CONC_FISH_qc] [varchar](2) NULL,
	[SALINITY_D_CONC_UWAY] [float] NULL,
	[SALINITY_D_CONC_UWAY_qc] [varchar](2) NULL,
	[CFC_11_D_CONC_UWAY] [float] NULL,
	[CFC_11_D_CONC_UWAY_qc] [varchar](2) NULL,
	[CFC_12_D_CONC_UWAY] [float] NULL,
	[CFC_12_D_CONC_UWAY_qc] [varchar](2) NULL,
	[CFC113_D_CONC_UWAY] [float] NULL,
	[CFC113_D_CONC_UWAY_qc] [varchar](2) NULL,
	[SF6_D_CONC_UWAY] [float] NULL,
	[SF6_D_CONC_UWAY_qc] [varchar](2) NULL,
	[SALINITY_D_CONC_BOAT_PUMP] [float] NULL,
	[SALINITY_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[OXYGEN_D_CONC_BOTTLE] [float] NULL,
	[OXYGEN_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[CTDOXY_D_CONC_SENSOR] [float] NULL,
	[CTDOXY_D_CONC_SENSOR_qc] [varchar](2) NULL,
	[PHOSPHATE_D_CONC_BOTTLE] [float] NULL,
	[PHOSPHATE_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[PHOSPHATE_D_CONC_BOTTLE_err] [float] NULL,
	[PHOSPHATE_LL_D_CONC_BOTTLE] [float] NULL,
	[PHOSPHATE_LL_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[PHOSPHATE_LL_D_CONC_BOTTLE_err] [float] NULL,
	[SILICATE_D_CONC_BOTTLE] [float] NULL,
	[SILICATE_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[SILICATE_D_CONC_BOTTLE_err] [float] NULL,
	[NITRATE_D_CONC_BOTTLE] [float] NULL,
	[NITRATE_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[NITRATE_D_CONC_BOTTLE_err] [float] NULL,
	[NITRATE_LL_D_CONC_BOTTLE] [float] NULL,
	[NITRATE_LL_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[NITRITE_D_CONC_BOTTLE] [float] NULL,
	[NITRITE_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[NITRITE_LL_D_CONC_BOTTLE] [float] NULL,
	[NITRITE_LL_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[NO2+NO3_D_CONC_BOTTLE] [float] NULL,
	[NO2+NO3_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[NO2+NO3_D_CONC_BOTTLE_err] [float] NULL,
	[NO2+NO3_LL_D_CONC_BOTTLE] [float] NULL,
	[NO2+NO3_LL_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[NH4_D_CONC_BOTTLE] [float] NULL,
	[NH4_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[TALK_D_CONC_BOTTLE] [float] NULL,
	[TALK_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[DIC_D_CONC_BOTTLE] [float] NULL,
	[DIC_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[PH_SWS_BOTTLE] [float] NULL,
	[PH_SWS_BOTTLE_qc] [varchar](2) NULL,
	[PH_TOT_BOTTLE] [float] NULL,
	[PH_TOT_BOTTLE_qc] [varchar](2) NULL,
	[DOC_D_CONC_BOTTLE] [float] NULL,
	[DOC_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[TDN_D_CONC_BOTTLE] [float] NULL,
	[TDN_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[PHOSPHATE_D_CONC_PUMP] [float] NULL,
	[PHOSPHATE_D_CONC_PUMP_qc] [varchar](2) NULL,
	[SILICATE_D_CONC_PUMP] [float] NULL,
	[SILICATE_D_CONC_PUMP_qc] [varchar](2) NULL,
	[NITRATE_D_CONC_PUMP] [float] NULL,
	[NITRATE_D_CONC_PUMP_qc] [varchar](2) NULL,
	[NITRITE_D_CONC_PUMP] [float] NULL,
	[NITRITE_D_CONC_PUMP_qc] [varchar](2) NULL,
	[PHOSPHATE_D_CONC_FISH] [float] NULL,
	[PHOSPHATE_D_CONC_FISH_qc] [varchar](2) NULL,
	[PHOSPHATE_LL_D_CONC_FISH] [float] NULL,
	[PHOSPHATE_LL_D_CONC_FISH_qc] [varchar](2) NULL,
	[SILICATE_D_CONC_FISH] [float] NULL,
	[SILICATE_D_CONC_FISH_qc] [varchar](2) NULL,
	[NITRATE_D_CONC_FISH] [float] NULL,
	[NITRATE_D_CONC_FISH_qc] [varchar](2) NULL,
	[NITRATE_LL_D_CONC_FISH] [float] NULL,
	[NITRATE_LL_D_CONC_FISH_qc] [varchar](2) NULL,
	[NITRITE_D_CONC_FISH] [float] NULL,
	[NITRITE_D_CONC_FISH_qc] [varchar](2) NULL,
	[NITRITE_LL_D_CONC_FISH] [float] NULL,
	[NITRITE_LL_D_CONC_FISH_qc] [varchar](2) NULL,
	[NO2+NO3_D_CONC_FISH] [float] NULL,
	[NO2+NO3_D_CONC_FISH_qc] [varchar](2) NULL,
	[NO2+NO3_LL_D_CONC_FISH] [float] NULL,
	[NO2+NO3_LL_D_CONC_FISH_qc] [varchar](2) NULL,
	[DOC_D_CONC_FISH] [float] NULL,
	[DOC_D_CONC_FISH_qc] [varchar](2) NULL,
	[DOC_D_CONC_FISH_err] [float] NULL,
	[PHOSPHATE_D_CONC_UWAY] [float] NULL,
	[PHOSPHATE_D_CONC_UWAY_qc] [varchar](2) NULL,
	[SILICATE_D_CONC_UWAY] [float] NULL,
	[SILICATE_D_CONC_UWAY_qc] [varchar](2) NULL,
	[NITRATE_D_CONC_UWAY] [float] NULL,
	[NITRATE_D_CONC_UWAY_qc] [varchar](2) NULL,
	[NITRITE_D_CONC_UWAY] [float] NULL,
	[NITRITE_D_CONC_UWAY_qc] [varchar](2) NULL,
	[DOC_D_CONC_UWAY] [float] NULL,
	[DOC_D_CONC_UWAY_qc] [varchar](2) NULL,
	[DOC_D_CONC_UWAY_err] [float] NULL,
	[NITRATE_D_CONC_BOAT_PUMP] [float] NULL,
	[NITRATE_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[NITRITE_D_CONC_BOAT_PUMP] [float] NULL,
	[NITRITE_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[DIC_13_12_D_DELTA_BOTTLE] [float] NULL,
	[DIC_13_12_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[DIC_13_12_D_DELTA_BOTTLE_err] [float] NULL,
	[DIC_14_12_D_DELTA_BOTTLE] [float] NULL,
	[DIC_14_12_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[DIC_14_12_D_DELTA_BOTTLE_err] [float] NULL,
	[He_3_4_D_DELTA_BOTTLE] [float] NULL,
	[He_3_4_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[He_3_4_D_DELTA_BOTTLE_err] [float] NULL,
	[TRITIUM_D_CONC_BOTTLE] [float] NULL,
	[TRITIUM_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[TRITIUM_D_CONC_BOTTLE_err] [float] NULL,
	[H2O_2_1_D_DELTA_BOTTLE] [float] NULL,
	[H2O_2_1_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[H2O_18_16_D_DELTA_BOTTLE] [float] NULL,
	[H2O_18_16_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[H2O_18_16_D_DELTA_BOTTLE_err] [float] NULL,
	[NITRATE_15_14_D_DELTA_BOTTLE] [float] NULL,
	[NITRATE_15_14_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[NITRATE_15_14_D_DELTA_BOTTLE_err] [float] NULL,
	[NITRATE_18_16_D_DELTA_BOTTLE] [float] NULL,
	[NITRATE_18_16_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[NITRATE_18_16_D_DELTA_BOTTLE_err] [float] NULL,
	[SILICATE_30_28_D_DELTA_BOTTLE] [float] NULL,
	[SILICATE_30_28_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[SILICATE_30_28_D_DELTA_BOTTLE_err] [float] NULL,
	[Al_D_CONC_BOTTLE] [float] NULL,
	[Al_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Al_D_CONC_BOTTLE_err] [float] NULL,
	[Ba_D_CONC_BOTTLE] [float] NULL,
	[Ba_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Ba_D_CONC_BOTTLE_err] [float] NULL,
	[Cd_D_CONC_BOTTLE] [float] NULL,
	[Cd_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Cd_D_CONC_BOTTLE_err] [float] NULL,
	[Co_D_CONC_BOTTLE] [float] NULL,
	[Co_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Co_D_CONC_BOTTLE_err] [float] NULL,
	[Cu_D_CONC_BOTTLE] [float] NULL,
	[Cu_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Cu_D_CONC_BOTTLE_err] [float] NULL,
	[Fe_D_CONC_BOTTLE] [float] NULL,
	[Fe_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Fe_D_CONC_BOTTLE_err] [float] NULL,
	[Fe_II_D_CONC_BOTTLE] [float] NULL,
	[Fe_II_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Fe_II_D_CONC_BOTTLE_err] [float] NULL,
	[Fe_S_CONC_BOTTLE] [float] NULL,
	[Fe_S_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Fe_S_CONC_BOTTLE_err] [float] NULL,
	[Ga_D_CONC_BOTTLE] [float] NULL,
	[Ga_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Ga_D_CONC_BOTTLE_err] [float] NULL,
	[Hf_D_CONC_BOTTLE] [float] NULL,
	[Hf_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Hg_0_D_CONC_BOTTLE] [float] NULL,
	[Hg_0_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Hg_D_CONC_BOTTLE] [float] NULL,
	[Hg_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Hg_DM_D_CONC_BOTTLE] [float] NULL,
	[Hg_DM_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Hg_Me_D_CONC_BOTTLE] [float] NULL,
	[Hg_Me_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Hg_MM_D_CONC_BOTTLE] [float] NULL,
	[Hg_MM_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Hg_T_CONC_BOTTLE] [float] NULL,
	[Hg_T_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Hg_T_CONC_BOTTLE_err] [float] NULL,
	[I_D_CONC_BOTTLE] [float] NULL,
	[I_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[I_D_CONC_BOTTLE_err] [float] NULL,
	[I_V_D_CONC_BOTTLE] [float] NULL,
	[I_V_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[I_V_D_CONC_BOTTLE_err] [float] NULL,
	[Mn_D_CONC_BOTTLE] [float] NULL,
	[Mn_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Mn_D_CONC_BOTTLE_err] [float] NULL,
	[Mo_D_CONC_BOTTLE] [float] NULL,
	[Mo_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Nb_D_CONC_BOTTLE] [float] NULL,
	[Nb_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Nb_D_CONC_BOTTLE_err] [float] NULL,
	[Ni_D_CONC_BOTTLE] [float] NULL,
	[Ni_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Ni_D_CONC_BOTTLE_err] [float] NULL,
	[Pb_D_CONC_BOTTLE] [float] NULL,
	[Pb_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Pb_D_CONC_BOTTLE_err] [float] NULL,
	[Pb_TD_CONC_BOTTLE] [float] NULL,
	[Pb_TD_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Pb_TD_CONC_BOTTLE_err] [float] NULL,
	[Ti_D_CONC_BOTTLE] [float] NULL,
	[Ti_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Ti_D_CONC_BOTTLE_err] [float] NULL,
	[U_D_CONC_BOTTLE] [float] NULL,
	[U_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[V_D_CONC_BOTTLE] [float] NULL,
	[V_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Zn_D_CONC_BOTTLE] [float] NULL,
	[Zn_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Zn_D_CONC_BOTTLE_err] [float] NULL,
	[Hg_Me_T_CONC_BOTTLE] [float] NULL,
	[Hg_Me_T_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Hg_Me_T_CONC_BOTTLE_err] [float] NULL,
	[Al_D_CONC_FISH] [float] NULL,
	[Al_D_CONC_FISH_qc] [varchar](2) NULL,
	[Al_D_CONC_FISH_err] [float] NULL,
	[Ba_D_CONC_FISH] [float] NULL,
	[Ba_D_CONC_FISH_qc] [varchar](2) NULL,
	[Cd_D_CONC_FISH] [float] NULL,
	[Cd_D_CONC_FISH_qc] [varchar](2) NULL,
	[Cd_D_CONC_FISH_err] [float] NULL,
	[Co_D_CONC_FISH] [float] NULL,
	[Co_D_CONC_FISH_qc] [varchar](2) NULL,
	[Co_D_CONC_FISH_err] [float] NULL,
	[Cu_D_CONC_FISH] [float] NULL,
	[Cu_D_CONC_FISH_qc] [varchar](2) NULL,
	[Cu_D_CONC_FISH_err] [float] NULL,
	[Fe_D_CONC_FISH] [float] NULL,
	[Fe_D_CONC_FISH_qc] [varchar](2) NULL,
	[Fe_D_CONC_FISH_err] [float] NULL,
	[Fe_II_D_CONC_FISH] [float] NULL,
	[Fe_II_D_CONC_FISH_qc] [varchar](2) NULL,
	[Fe_S_CONC_FISH] [float] NULL,
	[Fe_S_CONC_FISH_qc] [varchar](2) NULL,
	[Fe_S_CONC_FISH_err] [float] NULL,
	[Ga_D_CONC_FISH] [float] NULL,
	[Ga_D_CONC_FISH_qc] [varchar](2) NULL,
	[Ga_D_CONC_FISH_err] [float] NULL,
	[Hf_D_CONC_FISH] [float] NULL,
	[Hf_D_CONC_FISH_qc] [varchar](2) NULL,
	[Hg_D_CONC_FISH] [float] NULL,
	[Hg_D_CONC_FISH_qc] [varchar](2) NULL,
	[Mn_D_CONC_FISH] [float] NULL,
	[Mn_D_CONC_FISH_qc] [varchar](2) NULL,
	[Mn_D_CONC_FISH_err] [float] NULL,
	[Mo_D_CONC_FISH] [float] NULL,
	[Mo_D_CONC_FISH_qc] [varchar](2) NULL,
	[Ni_D_CONC_FISH] [float] NULL,
	[Ni_D_CONC_FISH_qc] [varchar](2) NULL,
	[Ni_D_CONC_FISH_err] [float] NULL,
	[Pb_D_CONC_FISH] [float] NULL,
	[Pb_D_CONC_FISH_qc] [varchar](2) NULL,
	[Pb_D_CONC_FISH_err] [float] NULL,
	[Pb_TD_CONC_FISH] [float] NULL,
	[Pb_TD_CONC_FISH_qc] [varchar](2) NULL,
	[Pb_TD_CONC_FISH_err] [float] NULL,
	[Ti_D_CONC_FISH] [float] NULL,
	[Ti_D_CONC_FISH_qc] [varchar](2) NULL,
	[Ti_D_CONC_FISH_err] [float] NULL,
	[V_D_CONC_FISH] [float] NULL,
	[V_D_CONC_FISH_qc] [varchar](2) NULL,
	[Zn_D_CONC_FISH] [float] NULL,
	[Zn_D_CONC_FISH_qc] [varchar](2) NULL,
	[Zn_D_CONC_FISH_err] [float] NULL,
	[Hf_D_CONC_UWAY] [float] NULL,
	[Hf_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Al_D_CONC_BOAT_PUMP] [float] NULL,
	[Al_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Ba_D_CONC_BOAT_PUMP] [float] NULL,
	[Ba_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Cd_D_CONC_BOAT_PUMP] [float] NULL,
	[Cd_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Co_D_CONC_BOAT_PUMP] [float] NULL,
	[Co_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Co_D_CONC_BOAT_PUMP_err] [float] NULL,
	[Cu_D_CONC_BOAT_PUMP] [float] NULL,
	[Cu_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Fe_D_CONC_BOAT_PUMP] [float] NULL,
	[Fe_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Fe_D_CONC_BOAT_PUMP_err] [float] NULL,
	[Fe_II_D_CONC_BOAT_PUMP] [float] NULL,
	[Fe_II_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Fe_II_D_CONC_BOAT_PUMP_err] [float] NULL,
	[Ga_D_CONC_BOAT_PUMP] [float] NULL,
	[Ga_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Mn_D_CONC_BOAT_PUMP] [float] NULL,
	[Mn_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Ni_D_CONC_BOAT_PUMP] [float] NULL,
	[Ni_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Pb_D_CONC_BOAT_PUMP] [float] NULL,
	[Pb_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[V_D_CONC_BOAT_PUMP] [float] NULL,
	[V_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Zn_D_CONC_BOAT_PUMP] [float] NULL,
	[Zn_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Zn_D_CONC_BOAT_PUMP_err] [float] NULL,
	[Al_D_CONC_SUBICE_PUMP] [float] NULL,
	[Al_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Ba_D_CONC_SUBICE_PUMP] [float] NULL,
	[Ba_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Cd_D_CONC_SUBICE_PUMP] [float] NULL,
	[Cd_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Co_D_CONC_SUBICE_PUMP] [float] NULL,
	[Co_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Co_D_CONC_SUBICE_PUMP_err] [float] NULL,
	[Cu_D_CONC_SUBICE_PUMP] [float] NULL,
	[Cu_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Fe_D_CONC_SUBICE_PUMP] [float] NULL,
	[Fe_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Fe_D_CONC_SUBICE_PUMP_err] [float] NULL,
	[Ga_D_CONC_SUBICE_PUMP] [float] NULL,
	[Ga_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Mn_D_CONC_SUBICE_PUMP] [float] NULL,
	[Mn_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Ni_D_CONC_SUBICE_PUMP] [float] NULL,
	[Ni_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Pb_D_CONC_SUBICE_PUMP] [float] NULL,
	[Pb_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Pb_D_CONC_SUBICE_PUMP_err] [float] NULL,
	[V_D_CONC_SUBICE_PUMP] [float] NULL,
	[V_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Zn_D_CONC_SUBICE_PUMP] [float] NULL,
	[Zn_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Zn_D_CONC_SUBICE_PUMP_err] [float] NULL,
	[Ba_138_134_D_DELTA_BOTTLE] [float] NULL,
	[Ba_138_134_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[Ba_138_134_D_DELTA_BOTTLE_err] [float] NULL,
	[Cd_114_110_D_DELTA_BOTTLE] [float] NULL,
	[Cd_114_110_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[Cd_114_110_D_DELTA_BOTTLE_err] [float] NULL,
	[Cu_65_63_D_DELTA_BOTTLE] [float] NULL,
	[Cu_65_63_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[Cu_65_63_D_DELTA_BOTTLE_err] [float] NULL,
	[Fe_56_54_D_DELTA_BOTTLE] [float] NULL,
	[Fe_56_54_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[Fe_56_54_D_DELTA_BOTTLE_err] [float] NULL,
	[Ni_60_58_D_DELTA_BOTTLE] [float] NULL,
	[Ni_60_58_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[Ni_60_58_D_DELTA_BOTTLE_err] [float] NULL,
	[Zn_66_64_D_DELTA_BOTTLE] [float] NULL,
	[Zn_66_64_D_DELTA_BOTTLE_qc] [varchar](2) NULL,
	[Zn_66_64_D_DELTA_BOTTLE_err] [float] NULL,
	[Cd_114_110_D_DELTA_FISH] [float] NULL,
	[Cd_114_110_D_DELTA_FISH_qc] [varchar](2) NULL,
	[Cd_114_110_D_DELTA_FISH_err] [float] NULL,
	[Fe_56_54_D_DELTA_FISH] [float] NULL,
	[Fe_56_54_D_DELTA_FISH_qc] [varchar](2) NULL,
	[Fe_56_54_D_DELTA_FISH_err] [float] NULL,
	[Ni_60_58_D_DELTA_FISH] [float] NULL,
	[Ni_60_58_D_DELTA_FISH_qc] [varchar](2) NULL,
	[Ni_60_58_D_DELTA_FISH_err] [float] NULL,
	[Zn_66_64_D_DELTA_FISH] [float] NULL,
	[Zn_66_64_D_DELTA_FISH_qc] [varchar](2) NULL,
	[Zn_66_64_D_DELTA_FISH_err] [float] NULL,
	[Ba_138_134_D_DELTA_BOAT_PUMP] [float] NULL,
	[Ba_138_134_D_DELTA_BOAT_PUMP_qc] [varchar](2) NULL,
	[Ba_138_134_D_DELTA_BOAT_PUMP_err] [float] NULL,
	[Ba_138_134_D_DELTA_SUBICE_PUMP] [float] NULL,
	[Ba_138_134_D_DELTA_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Ba_138_134_D_DELTA_SUBICE_PUMP_err] [float] NULL,
	[Cs_137_D_CONC_BOTTLE] [float] NULL,
	[Cs_137_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Cs_137_D_CONC_BOTTLE_err] [float] NULL,
	[I_129_D_CONC_BOTTLE] [float] NULL,
	[I_129_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[I_129_D_CONC_BOTTLE_err] [float] NULL,
	[Np_237_D_CONC_BOTTLE] [float] NULL,
	[Np_237_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Np_237_D_CONC_BOTTLE_err] [float] NULL,
	[Pu_239_D_CONC_BOTTLE] [float] NULL,
	[Pu_239_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Pu_239_D_CONC_BOTTLE_err] [float] NULL,
	[Pu_239_Pu_240_D_CONC_BOTTLE] [float] NULL,
	[Pu_239_Pu_240_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Pu_239_Pu_240_D_CONC_BOTTLE_err] [float] NULL,
	[Pu_240_D_CONC_BOTTLE] [float] NULL,
	[Pu_240_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Pu_240_D_CONC_BOTTLE_err] [float] NULL,
	[U_236_238_T_RATIO_BOTTLE] [float] NULL,
	[U_236_238_T_RATIO_BOTTLE_qc] [varchar](2) NULL,
	[U_236_238_T_RATIO_BOTTLE_err] [float] NULL,
	[U_236_D_CONC_BOTTLE] [float] NULL,
	[U_236_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[U_236_D_CONC_BOTTLE_err] [float] NULL,
	[U_236_T_CONC_BOTTLE] [float] NULL,
	[U_236_T_CONC_BOTTLE_qc] [varchar](2) NULL,
	[U_236_T_CONC_BOTTLE_err] [float] NULL,
	[U_236_D_CONC_FISH] [float] NULL,
	[U_236_D_CONC_FISH_qc] [varchar](2) NULL,
	[U_236_D_CONC_FISH_err] [float] NULL,
	[Cs_137_D_CONC_UWAY] [float] NULL,
	[Cs_137_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Cs_137_D_CONC_UWAY_err] [float] NULL,
	[Pu_239_Pu_240_D_CONC_UWAY] [float] NULL,
	[Pu_239_Pu_240_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Pu_239_Pu_240_D_CONC_UWAY_err] [float] NULL,
	[Pb_206_204_D_RATIO_BOTTLE] [float] NULL,
	[Pb_206_204_D_RATIO_BOTTLE_qc] [varchar](2) NULL,
	[Pb_206_204_D_RATIO_BOTTLE_err] [float] NULL,
	[Pb_206_204_TD_RATIO_BOTTLE] [float] NULL,
	[Pb_206_204_TD_RATIO_BOTTLE_qc] [varchar](2) NULL,
	[Pb_206_204_TD_RATIO_BOTTLE_err] [float] NULL,
	[Pb_206_207_D_RATIO_BOTTLE] [float] NULL,
	[Pb_206_207_D_RATIO_BOTTLE_qc] [varchar](2) NULL,
	[Pb_206_207_D_RATIO_BOTTLE_err] [float] NULL,
	[Pb_206_207_TD_RATIO_BOTTLE] [float] NULL,
	[Pb_206_207_TD_RATIO_BOTTLE_qc] [varchar](2) NULL,
	[Pb_206_207_TD_RATIO_BOTTLE_err] [float] NULL,
	[Pb_208_207_D_RATIO_BOTTLE] [float] NULL,
	[Pb_208_207_D_RATIO_BOTTLE_qc] [varchar](2) NULL,
	[Pb_208_207_D_RATIO_BOTTLE_err] [float] NULL,
	[Pb_208_207_TD_RATIO_BOTTLE] [float] NULL,
	[Pb_208_207_TD_RATIO_BOTTLE_qc] [varchar](2) NULL,
	[Pb_208_207_TD_RATIO_BOTTLE_err] [float] NULL,
	[Pb_207_204_TD_RATIO_BOTTLE] [float] NULL,
	[Pb_207_204_TD_RATIO_BOTTLE_qc] [varchar](2) NULL,
	[Pb_207_204_TD_RATIO_BOTTLE_err] [float] NULL,
	[Pb_208_204_TD_RATIO_BOTTLE] [float] NULL,
	[Pb_208_204_TD_RATIO_BOTTLE_qc] [varchar](2) NULL,
	[Pb_208_204_TD_RATIO_BOTTLE_err] [float] NULL,
	[Pb_208_206_D_RATIO_BOTTLE] [float] NULL,
	[Pb_208_206_D_RATIO_BOTTLE_qc] [varchar](2) NULL,
	[Pb_208_206_D_RATIO_BOTTLE_err] [float] NULL,
	[Pb_208_206_TD_RATIO_BOTTLE] [float] NULL,
	[Pb_208_206_TD_RATIO_BOTTLE_qc] [varchar](2) NULL,
	[Pb_208_206_TD_RATIO_BOTTLE_err] [float] NULL,
	[Pb_206_204_D_RATIO_FISH] [float] NULL,
	[Pb_206_204_D_RATIO_FISH_qc] [varchar](2) NULL,
	[Pb_206_204_D_RATIO_FISH_err] [float] NULL,
	[Pb_206_204_TD_RATIO_FISH] [float] NULL,
	[Pb_206_204_TD_RATIO_FISH_qc] [varchar](2) NULL,
	[Pb_206_204_TD_RATIO_FISH_err] [float] NULL,
	[Pb_206_207_D_RATIO_FISH] [float] NULL,
	[Pb_206_207_D_RATIO_FISH_qc] [varchar](2) NULL,
	[Pb_206_207_D_RATIO_FISH_err] [float] NULL,
	[Pb_206_207_TD_RATIO_FISH] [float] NULL,
	[Pb_206_207_TD_RATIO_FISH_qc] [varchar](2) NULL,
	[Pb_206_207_TD_RATIO_FISH_err] [float] NULL,
	[Pb_208_207_D_RATIO_FISH] [float] NULL,
	[Pb_208_207_D_RATIO_FISH_qc] [varchar](2) NULL,
	[Pb_208_207_D_RATIO_FISH_err] [float] NULL,
	[Pb_208_207_TD_RATIO_FISH] [float] NULL,
	[Pb_208_207_TD_RATIO_FISH_qc] [varchar](2) NULL,
	[Pb_208_207_TD_RATIO_FISH_err] [float] NULL,
	[Pb_207_204_TD_RATIO_FISH] [float] NULL,
	[Pb_207_204_TD_RATIO_FISH_qc] [varchar](2) NULL,
	[Pb_207_204_TD_RATIO_FISH_err] [float] NULL,
	[Pb_208_204_TD_RATIO_FISH] [float] NULL,
	[Pb_208_204_TD_RATIO_FISH_qc] [varchar](2) NULL,
	[Pb_208_204_TD_RATIO_FISH_err] [float] NULL,
	[Pb_208_206_TD_RATIO_FISH] [float] NULL,
	[Pb_208_206_TD_RATIO_FISH_qc] [varchar](2) NULL,
	[Pb_206_204_D_RATIO_BOAT_PUMP] [float] NULL,
	[Pb_206_204_D_RATIO_BOAT_PUMP_qc] [varchar](2) NULL,
	[Pb_206_207_D_RATIO_BOAT_PUMP] [float] NULL,
	[Pb_206_207_D_RATIO_BOAT_PUMP_qc] [varchar](2) NULL,
	[Pb_208_207_D_RATIO_BOAT_PUMP] [float] NULL,
	[Pb_208_207_D_RATIO_BOAT_PUMP_qc] [varchar](2) NULL,
	[Pa_231_D_CONC_BOTTLE] [float] NULL,
	[Pa_231_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Pa_231_D_CONC_BOTTLE_err] [float] NULL,
	[Pb_210_D_CONC_BOTTLE] [float] NULL,
	[Pb_210_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Pb_210_D_CONC_BOTTLE_err] [float] NULL,
	[Po_210_D_CONC_BOTTLE] [float] NULL,
	[Po_210_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Po_210_D_CONC_BOTTLE_err] [float] NULL,
	[Ra_224_D_CONC_BOTTLE] [float] NULL,
	[Ra_224_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Ra_224_D_CONC_BOTTLE_err] [float] NULL,
	[Ra_226_D_CONC_BOTTLE] [float] NULL,
	[Ra_226_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Ra_226_D_CONC_BOTTLE_err] [float] NULL,
	[Ra_228_T_CONC_BOTTLE] [float] NULL,
	[Ra_228_T_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Ra_228_T_CONC_BOTTLE_err] [float] NULL,
	[Ra_228_D_CONC_BOTTLE] [float] NULL,
	[Ra_228_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Ra_228_D_CONC_BOTTLE_err] [float] NULL,
	[Th_230_T_CONC_BOTTLE] [float] NULL,
	[Th_230_T_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Th_230_T_CONC_BOTTLE_err] [float] NULL,
	[Th_230_D_CONC_BOTTLE] [float] NULL,
	[Th_230_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Th_230_D_CONC_BOTTLE_err] [float] NULL,
	[Th_232_T_CONC_BOTTLE] [float] NULL,
	[Th_232_T_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Th_232_T_CONC_BOTTLE_err] [float] NULL,
	[Th_232_D_CONC_BOTTLE] [float] NULL,
	[Th_232_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Th_232_D_CONC_BOTTLE_err] [float] NULL,
	[Th_234_T_CONC_BOTTLE] [float] NULL,
	[Th_234_T_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Th_234_T_CONC_BOTTLE_err] [float] NULL,
	[Ac_227_D_CONC_PUMP] [float] NULL,
	[Ac_227_D_CONC_PUMP_qc] [varchar](2) NULL,
	[Ac_227_D_CONC_PUMP_err] [float] NULL,
	[Be_7_T_CONC_PUMP] [float] NULL,
	[Be_7_T_CONC_PUMP_qc] [varchar](2) NULL,
	[Be_7_T_CONC_PUMP_err] [float] NULL,
	[Be_7_D_CONC_PUMP] [float] NULL,
	[Be_7_D_CONC_PUMP_qc] [varchar](2) NULL,
	[Be_7_D_CONC_PUMP_err] [float] NULL,
	[Ra_223_D_CONC_PUMP] [float] NULL,
	[Ra_223_D_CONC_PUMP_qc] [varchar](2) NULL,
	[Ra_223_D_CONC_PUMP_err] [float] NULL,
	[Ra_224_D_CONC_PUMP] [float] NULL,
	[Ra_224_D_CONC_PUMP_qc] [varchar](2) NULL,
	[Ra_224_D_CONC_PUMP_err] [float] NULL,
	[Ra_226_D_CONC_PUMP] [float] NULL,
	[Ra_226_D_CONC_PUMP_qc] [varchar](2) NULL,
	[Ra_226_D_CONC_PUMP_err] [float] NULL,
	[Ra_228_T_CONC_PUMP] [float] NULL,
	[Ra_228_T_CONC_PUMP_qc] [varchar](2) NULL,
	[Ra_228_T_CONC_PUMP_err] [float] NULL,
	[Ra_228_D_CONC_PUMP] [float] NULL,
	[Ra_228_D_CONC_PUMP_qc] [varchar](2) NULL,
	[Ra_228_D_CONC_PUMP_err] [float] NULL,
	[Th_228_D_CONC_PUMP] [float] NULL,
	[Th_228_D_CONC_PUMP_qc] [varchar](2) NULL,
	[Th_228_D_CONC_PUMP_err] [float] NULL,
	[Th_234_T_CONC_PUMP] [float] NULL,
	[Th_234_T_CONC_PUMP_qc] [varchar](2) NULL,
	[Th_234_T_CONC_PUMP_err] [float] NULL,
	[Pa_231_D_CONC_FISH] [float] NULL,
	[Pa_231_D_CONC_FISH_qc] [varchar](2) NULL,
	[Pa_231_D_CONC_FISH_err] [float] NULL,
	[Pb_210_D_CONC_FISH] [float] NULL,
	[Pb_210_D_CONC_FISH_qc] [varchar](2) NULL,
	[Pb_210_D_CONC_FISH_err] [float] NULL,
	[Po_210_D_CONC_FISH] [float] NULL,
	[Po_210_D_CONC_FISH_qc] [varchar](2) NULL,
	[Po_210_D_CONC_FISH_err] [float] NULL,
	[Ra_226_D_CONC_FISH] [float] NULL,
	[Ra_226_D_CONC_FISH_qc] [varchar](2) NULL,
	[Ra_226_D_CONC_FISH_err] [float] NULL,
	[Ra_228_T_CONC_FISH] [float] NULL,
	[Ra_228_T_CONC_FISH_qc] [varchar](2) NULL,
	[Ra_228_T_CONC_FISH_err] [float] NULL,
	[Th_230_D_CONC_FISH] [float] NULL,
	[Th_230_D_CONC_FISH_qc] [varchar](2) NULL,
	[Th_230_D_CONC_FISH_err] [float] NULL,
	[Th_232_D_CONC_FISH] [float] NULL,
	[Th_232_D_CONC_FISH_qc] [varchar](2) NULL,
	[Th_232_D_CONC_FISH_err] [float] NULL,
	[Th_234_T_CONC_FISH] [float] NULL,
	[Th_234_T_CONC_FISH_qc] [varchar](2) NULL,
	[Th_234_T_CONC_FISH_err] [float] NULL,
	[Pa_231_D_CONC_UWAY] [float] NULL,
	[Pa_231_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Pa_231_D_CONC_UWAY_err] [float] NULL,
	[Po_210_D_CONC_UWAY] [float] NULL,
	[Po_210_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Po_210_D_CONC_UWAY_err] [float] NULL,
	[Pb_210_D_CONC_UWAY] [float] NULL,
	[Pb_210_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Pb_210_D_CONC_UWAY_err] [float] NULL,
	[Ra_224_D_CONC_UWAY] [float] NULL,
	[Ra_224_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Ra_224_D_CONC_UWAY_err] [float] NULL,
	[Ra_226_D_CONC_UWAY] [float] NULL,
	[Ra_226_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Ra_226_D_CONC_UWAY_err] [float] NULL,
	[Ra_228_D_CONC_UWAY] [float] NULL,
	[Ra_228_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Ra_228_D_CONC_UWAY_err] [float] NULL,
	[Th_228_D_CONC_UWAY] [float] NULL,
	[Th_228_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Th_228_D_CONC_UWAY_err] [float] NULL,
	[Th_230_D_CONC_UWAY] [float] NULL,
	[Th_230_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Th_230_D_CONC_UWAY_err] [float] NULL,
	[Th_232_D_CONC_UWAY] [float] NULL,
	[Th_232_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Th_232_D_CONC_UWAY_err] [float] NULL,
	[Th_234_T_CONC_UWAY] [float] NULL,
	[Th_234_T_CONC_UWAY_qc] [varchar](2) NULL,
	[Th_234_T_CONC_UWAY_err] [float] NULL,
	[Pa_231_D_CONC_BOAT_PUMP] [float] NULL,
	[Pa_231_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Pa_231_D_CONC_BOAT_PUMP_err] [float] NULL,
	[Th_230_D_CONC_BOAT_PUMP] [float] NULL,
	[Th_230_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Th_230_D_CONC_BOAT_PUMP_err] [float] NULL,
	[Th_232_D_CONC_BOAT_PUMP] [float] NULL,
	[Th_232_D_CONC_BOAT_PUMP_qc] [varchar](2) NULL,
	[Th_232_D_CONC_BOAT_PUMP_err] [float] NULL,
	[Pa_231_D_CONC_SUBICE_PUMP] [float] NULL,
	[Pa_231_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Pa_231_D_CONC_SUBICE_PUMP_err] [float] NULL,
	[Th_230_D_CONC_SUBICE_PUMP] [float] NULL,
	[Th_230_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Th_230_D_CONC_SUBICE_PUMP_err] [float] NULL,
	[Th_232_D_CONC_SUBICE_PUMP] [float] NULL,
	[Th_232_D_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Th_232_D_CONC_SUBICE_PUMP_err] [float] NULL,
	[Th_234_T_CONC_SUBICE_PUMP] [float] NULL,
	[Th_234_T_CONC_SUBICE_PUMP_qc] [varchar](2) NULL,
	[Th_234_T_CONC_SUBICE_PUMP_err] [float] NULL,
	[Hf_176_177_D_EPSILON_BOTTLE] [float] NULL,
	[Hf_176_177_D_EPSILON_BOTTLE_qc] [varchar](2) NULL,
	[Hf_176_177_D_EPSILON_BOTTLE_err] [float] NULL,
	[Nd_143_144_D_EPSILON_BOTTLE] [float] NULL,
	[Nd_143_144_D_EPSILON_BOTTLE_qc] [varchar](2) NULL,
	[Nd_143_144_D_EPSILON_BOTTLE_err] [float] NULL,
	[Hf_176_177_D_EPSILON_FISH] [float] NULL,
	[Hf_176_177_D_EPSILON_FISH_qc] [varchar](2) NULL,
	[Hf_176_177_D_EPSILON_FISH_err] [float] NULL,
	[Nd_143_144_D_EPSILON_FISH] [float] NULL,
	[Nd_143_144_D_EPSILON_FISH_qc] [varchar](2) NULL,
	[Nd_143_144_D_EPSILON_FISH_err] [float] NULL,
	[Nd_143_144_D_EPSILON_UWAY] [float] NULL,
	[Nd_143_144_D_EPSILON_UWAY_qc] [varchar](2) NULL,
	[Nd_143_144_D_EPSILON_UWAY_err] [float] NULL,
	[Y_D_CONC_BOTTLE] [float] NULL,
	[Y_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Y_D_CONC_BOTTLE_err] [float] NULL,
	[La_D_CONC_BOTTLE] [float] NULL,
	[La_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[La_D_CONC_BOTTLE_err] [float] NULL,
	[Ce_D_CONC_BOTTLE] [float] NULL,
	[Ce_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Ce_D_CONC_BOTTLE_err] [float] NULL,
	[Pr_D_CONC_BOTTLE] [float] NULL,
	[Pr_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Pr_D_CONC_BOTTLE_err] [float] NULL,
	[Nd_D_CONC_BOTTLE] [float] NULL,
	[Nd_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Nd_D_CONC_BOTTLE_err] [float] NULL,
	[Sm_D_CONC_BOTTLE] [float] NULL,
	[Sm_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Sm_D_CONC_BOTTLE_err] [float] NULL,
	[Eu_D_CONC_BOTTLE] [float] NULL,
	[Eu_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Eu_D_CONC_BOTTLE_err] [float] NULL,
	[Gd_D_CONC_BOTTLE] [float] NULL,
	[Gd_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Gd_D_CONC_BOTTLE_err] [float] NULL,
	[Tb_D_CONC_BOTTLE] [float] NULL,
	[Tb_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Tb_D_CONC_BOTTLE_err] [float] NULL,
	[Dy_D_CONC_BOTTLE] [float] NULL,
	[Dy_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Dy_D_CONC_BOTTLE_err] [float] NULL,
	[Ho_D_CONC_BOTTLE] [float] NULL,
	[Ho_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Ho_D_CONC_BOTTLE_err] [float] NULL,
	[Er_D_CONC_BOTTLE] [float] NULL,
	[Er_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Er_D_CONC_BOTTLE_err] [float] NULL,
	[Tm_D_CONC_BOTTLE] [float] NULL,
	[Tm_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Tm_D_CONC_BOTTLE_err] [float] NULL,
	[Yb_D_CONC_BOTTLE] [float] NULL,
	[Yb_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Yb_D_CONC_BOTTLE_err] [float] NULL,
	[Lu_D_CONC_BOTTLE] [float] NULL,
	[Lu_D_CONC_BOTTLE_qc] [varchar](2) NULL,
	[Lu_D_CONC_BOTTLE_err] [float] NULL,
	[Y_D_CONC_FISH] [float] NULL,
	[Y_D_CONC_FISH_qc] [varchar](2) NULL,
	[La_D_CONC_FISH] [float] NULL,
	[La_D_CONC_FISH_qc] [varchar](2) NULL,
	[La_D_CONC_FISH_err] [float] NULL,
	[Ce_D_CONC_FISH] [float] NULL,
	[Ce_D_CONC_FISH_qc] [varchar](2) NULL,
	[Ce_D_CONC_FISH_err] [float] NULL,
	[Pr_D_CONC_FISH] [float] NULL,
	[Pr_D_CONC_FISH_qc] [varchar](2) NULL,
	[Pr_D_CONC_FISH_err] [float] NULL,
	[Nd_D_CONC_FISH] [float] NULL,
	[Nd_D_CONC_FISH_qc] [varchar](2) NULL,
	[Nd_D_CONC_FISH_err] [float] NULL,
	[Sm_D_CONC_FISH] [float] NULL,
	[Sm_D_CONC_FISH_qc] [varchar](2) NULL,
	[Sm_D_CONC_FISH_err] [float] NULL,
	[Eu_D_CONC_FISH] [float] NULL,
	[Eu_D_CONC_FISH_qc] [varchar](2) NULL,
	[Eu_D_CONC_FISH_err] [float] NULL,
	[Gd_D_CONC_FISH] [float] NULL,
	[Gd_D_CONC_FISH_qc] [varchar](2) NULL,
	[Gd_D_CONC_FISH_err] [float] NULL,
	[Tb_D_CONC_FISH] [float] NULL,
	[Tb_D_CONC_FISH_qc] [varchar](2) NULL,
	[Tb_D_CONC_FISH_err] [float] NULL,
	[Dy_D_CONC_FISH] [float] NULL,
	[Dy_D_CONC_FISH_qc] [varchar](2) NULL,
	[Dy_D_CONC_FISH_err] [float] NULL,
	[Ho_D_CONC_FISH] [float] NULL,
	[Ho_D_CONC_FISH_qc] [varchar](2) NULL,
	[Ho_D_CONC_FISH_err] [float] NULL,
	[Er_D_CONC_FISH] [float] NULL,
	[Er_D_CONC_FISH_qc] [varchar](2) NULL,
	[Er_D_CONC_FISH_err] [float] NULL,
	[Tm_D_CONC_FISH] [float] NULL,
	[Tm_D_CONC_FISH_qc] [varchar](2) NULL,
	[Tm_D_CONC_FISH_err] [float] NULL,
	[Yb_D_CONC_FISH] [float] NULL,
	[Yb_D_CONC_FISH_qc] [varchar](2) NULL,
	[Yb_D_CONC_FISH_err] [float] NULL,
	[Lu_D_CONC_FISH] [float] NULL,
	[Lu_D_CONC_FISH_qc] [varchar](2) NULL,
	[Lu_D_CONC_FISH_err] [float] NULL,
	[La_D_CONC_UWAY] [float] NULL,
	[La_D_CONC_UWAY_qc] [varchar](2) NULL,
	[La_D_CONC_UWAY_err] [float] NULL,
	[Ce_D_CONC_UWAY] [float] NULL,
	[Ce_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Ce_D_CONC_UWAY_err] [float] NULL,
	[Pr_D_CONC_UWAY] [float] NULL,
	[Pr_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Pr_D_CONC_UWAY_err] [float] NULL,
	[Nd_D_CONC_UWAY] [float] NULL,
	[Nd_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Nd_D_CONC_UWAY_err] [float] NULL,
	[Sm_D_CONC_UWAY] [float] NULL,
	[Sm_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Sm_D_CONC_UWAY_err] [float] NULL,
	[Eu_D_CONC_UWAY] [float] NULL,
	[Eu_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Eu_D_CONC_UWAY_err] [float] NULL,
	[Gd_D_CONC_UWAY] [float] NULL,
	[Gd_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Gd_D_CONC_UWAY_err] [float] NULL,
	[Tb_D_CONC_UWAY] [float] NULL,
	[Tb_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Tb_D_CONC_UWAY_err] [float] NULL,
	[Dy_D_CONC_UWAY] [float] NULL,
	[Dy_D_CONC_UWAY_qc] [varchar](2) NULL,
	[Dy_D_CONC_UWAY_err] [float] NULL,
	[Ho_D_CONC_UWAY] [float] NULL,
	[Ho_D_CONC_UWAY_qc] [varchar](2) NULL
) ON [PRIMARY]
GO





CREATE NONCLUSTERED INDEX [IX_tblAtblGeotraces_Seawater_1_time_lat_lon] ON [dbo].[tblGeotraces_Seawater_1]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

