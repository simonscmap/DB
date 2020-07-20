USE [Opedia]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblKOK1606_Gradients1_TargetedMetabolites](

	[time] [datetime] NOT NULL,
	[lat] [float] NOT NULL,
	[lon] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[4_Hydroxyisoleucine] [float] NULL,
	[Acetyl_L_carnitine] [float] NULL,
	[Adenosyl_Homocysteine] [float] NULL,
	[Adenosyl_Methionine] [float] NULL,
	[Alanine] [float] NULL,
	[Amino_Propanesulfonic_Acid] [float] NULL,
	[AMP] [float] NULL,
	[Arginine] [float] NULL,
	[Argininosuccinic_Acid] [float] NULL,
	[Arsenobetaine] [float] NULL,
	[Asparagine] [float] NULL,
	[Aspartic_acid] [float] NULL,
	[beta_Alanine] [float] NULL,
	[Betaine] [float] NULL,
	[Betonicine] [float] NULL,
	[Butyryl_L_carnitine] [float] NULL,
	[Carnitine] [float] NULL,
	[Choline] [float] NULL,
	[Citrulline] [float] NULL,
	[Creatine] [float] NULL,
	[Cystathionine] [float] NULL,
	[Cysteic_Acid] [float] NULL,
	[Cytidine] [float] NULL,
	[Cytosine] [float] NULL,
	[Deoxyadenosine] [float] NULL,
	[Dexpanthenol] [float] NULL,
	[DHPS] [float] NULL,
	[Dimethylsulfonioacetate] [float] NULL,
	[DMSP] [float] NULL,
	[Ectoine] [float] NULL,
	[Gluconic_Acid] [float] NULL,
	[Glucosylglycerol] [float] NULL,
	[Glutamic_acid] [float] NULL,
	[Glutamine] [float] NULL,
	[Glycerophosphocholine] [float] NULL,
	[Gonyol] [float] NULL,
	[Guanine] [float] NULL,
	[Guanosine] [float] NULL,
	[Histidine] [float] NULL,
	[Homarine] [float] NULL,
	[Homoserine] [float] NULL,
	[Inosine] [float] NULL,
	[Isethionic_Acid] [float] NULL,
	[Leucine] [float] NULL,
	[Lysine] [float] NULL,
	[Malic_Acid] [float] NULL,
	[Methionine] [float] NULL,
	[Methionine_Sulfoxide] [float] NULL,
	[N_acetyltaurine] [float] NULL,
	[N_Acetyl_Lysine] [float] NULL,
	[NAD] [float] NULL,
	[Ornithine] [float] NULL,
	[Proline] [float] NULL,
	[Propionyl_L_carnitine] [float] NULL,
	[Sarcosine] [float] NULL,
	[Serine] [float] NULL,
	[Stachydrine_hydrochloride] [float] NULL,
	[Sucrose] [float] NULL,
	[Sulfolactic_Acid] [float] NULL,
	[Taurine] [float] NULL,
	[Threonine] [float] NULL,
	[Thymidine] [float] NULL,
	[Trehalose] [float] NULL,
	[Trigonelline] [float] NULL,
	[Trimethylammonium_Propionate] [float] NULL,
	[Tyrosine] [float] NULL,
	[UDP_glucosamine] [float] NULL,
	[Uracil] [float] NULL,
	[Uridine] [float] NULL,
	[Vitamin_B3] [float] NULL

) ON [PRIMARY]
GO


-- indices
USE [Opedia]
GO

CREATE  NONCLUSTERED INDEX [IX_tblKOK1606_Gradients1_TargetedMetabolites_time_lat_lon_depth] ON [dbo].[tblKOK1606_Gradients1_TargetedMetabolites]
(
	[time] ASC,
	[lat] ASC,
	[lon] ASC,
	[depth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
