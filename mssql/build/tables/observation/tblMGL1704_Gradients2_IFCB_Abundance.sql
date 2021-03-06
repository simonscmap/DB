
    USE [Opedia]

    SET ANSI_NULLS ON


    SET QUOTED_IDENTIFIER ON


    CREATE TABLE [dbo].[tblMGL1704_Gradients2_IFCB_Abundance](

                   [time]       [datetime]  NOT NULL,
                [lat]          [float]  NOT NULL,
                [lon]          [float]  NOT NULL,
              [depth]            [int]  NOT NULL,
             [Sample]  [nvarchar](200)      NULL,
         [Acanthoica]          [float]      NULL,
      [Acanthometron]          [float]      NULL,
     [Acanthostaurus]          [float]      NULL,
         [Achnanthes]          [float]      NULL,
      [Actinoptychus]          [float]      NULL,
           [Akashiwo]          [float]      NULL,
        [Alexandrium]          [float]      NULL,
      [Algirosphaera]          [float]      NULL,
     [Amphidiniopsis]          [float]      NULL,
        [Amphidinium]          [float]      NULL,
       [Amphilithium]          [float]      NULL,
        [Amphilonche]          [float]      NULL,
        [Amphipleura]          [float]      NULL,
         [Amphiprora]          [float]      NULL,
     [Amphorellopsis]          [float]      NULL,
         [Apedinella]          [float]      NULL,
     [Apostrombidium]          [float]      NULL,
       [Asterolampra]          [float]      NULL,
      [Asteromphalus]          [float]      NULL,
          [Azadinium]          [float]      NULL,
      [Bacteriastrum]          [float]      NULL,
          [Balechina]          [float]      NULL,
         [Boradinium]          [float]      NULL,
    [Braarudosphaera]          [float]      NULL,
       [Calliacantha]          [float]      NULL,
           [Caloneis]          [float]      NULL,
        [Cerataulina]          [float]      NULL,
           [Ceratium]          [float]      NULL,
   [Ceratoperidinium]          [float]      NULL,
        [Chaetoceros]          [float]      NULL,
     [Chrysidiastrum]          [float]      NULL,
   [Chrysochromulina]          [float]      NULL,
        [Coccolithus]          [float]      NULL,
          [Cocconeis]          [float]      NULL,
       [Cochlodinium]          [float]      NULL,
      [Codonellopsis]          [float]      NULL,
          [Corethron]          [float]      NULL,
        [Corymbellus]          [float]      NULL,
      [Corythodinium]          [float]      NULL,
      [Coscinodiscus]          [float]      NULL,
         [Cyclotella]          [float]      NULL,
      [Cylindrotheca]          [float]      NULL,
           [Cymbella]          [float]      NULL,
       [Cyttarocylis]          [float]      NULL,
      [Dactyliosolen]          [float]      NULL,
        [Dicroerisma]          [float]      NULL,
          [Dictyocha]          [float]      NULL,
           [Didinium]          [float]      NULL,
         [Dinophysis]          [float]      NULL,
         [Discoaster]          [float]      NULL,
        [Discophaera]          [float]      NULL,
        [Distephanus]          [float]      NULL,
          [Durinskia]          [float]      NULL,
          [Emiliania]          [float]      NULL,
    [Epiplocycloides]          [float]      NULL,
           [Epipyxis]          [float]      NULL,
   [Erythropsidinium]          [float]      NULL,
           [Eucampia]          [float]      NULL,
            [Euglena]          [float]      NULL,
       [Eunotogramma]          [float]      NULL,
            [Euplote]          [float]      NULL,
        [Eutintinnus]          [float]      NULL,
       [Eutreptiella]          [float]      NULL,
            [Favella]          [float]      NULL,
      [Foissneridium]          [float]      NULL,
         [Fragilaria]          [float]      NULL,
     [Fragilariopsis]          [float]      NULL,
          [Frustulia]          [float]      NULL,
      [Gambierdiscus]          [float]      NULL,
       [Gephyrocapsa]          [float]      NULL,
          [Gonyaulax]          [float]      NULL,
      [Grammatophora]          [float]      NULL,
        [Gymnodinium]          [float]      NULL,
         [Gyrodinium]          [float]      NULL,
             [Haslea]          [float]      NULL,
      [Helicosphaera]          [float]      NULL,
          [Hemiaulus]          [float]      NULL,
        [Heterocapsa]          [float]      NULL,
       [Heterodinium]          [float]      NULL,
        [Heterophrys]          [float]      NULL,
        [Hexacontium]          [float]      NULL,
            [Karenia]          [float]      NULL,
        [Karlodinium]          [float]      NULL,
         [Katodinium]          [float]      NULL,
             [Laboea]          [float]      NULL,
           [Lauderia]          [float]      NULL,
      [Leegaardiella]          [float]      NULL,
       [Lepidodinium]          [float]      NULL,
     [Leptocylindrus]          [float]      NULL,
       [Leucocryptos]          [float]      NULL,
         [Licmophora]          [float]      NULL,
           [Limacina]          [float]      NULL,
      [Lingulodinium]          [float]      NULL,
         [Mallomonas]          [float]      NULL,
         [Mastogloia]          [float]      NULL,
     [Meringosphaera]          [float]      NULL,
         [Mesodinium]          [float]      NULL,
          [Mesoporos]          [float]      NULL,
         [Minidiscus]          [float]      NULL,
           [Mytilina]          [float]      NULL,
            [Nauplii]          [float]      NULL,
           [Navicula]          [float]      NULL,
       [Nematodinium]          [float]      NULL,
          [Nitzschia]          [float]      NULL,
    [Novistrombidium]          [float]      NULL,
       [Ochrosphaera]          [float]      NULL,
          [Ophiaster]          [float]      NULL,
      [Ornithocercus]          [float]      NULL,
          [Oxyphysis]          [float]      NULL,
           [Oxytoxum]          [float]      NULL,
            [Paralia]          [float]      NULL,
       [Peridiniella]          [float]      NULL,
      [Peridiniopsis]          [float]      NULL,
         [Peridinium]          [float]      NULL,
        [Phaeocystis]          [float]      NULL,
         [Phalacroma]          [float]      NULL,
         [Pinnularia]          [float]      NULL,
       [Plagiotropus]          [float]      NULL,
         [Pleuronema]          [float]      NULL,
        [Pleurosigma]          [float]      NULL,
         [Podolampas]          [float]      NULL,
             [Pollen]          [float]      NULL,
         [Polykrikos]          [float]      NULL,
       [Pontosphaera]          [float]      NULL,
      [Preperidinium]          [float]      NULL,
          [Proboscia]          [float]      NULL,
       [Pronoctiluca]          [float]      NULL,
       [Prorocentrum]          [float]      NULL,
    [Proterythropsis]          [float]      NULL,
      [Protoceratium]          [float]      NULL,
    [Protoperidinium]          [float]      NULL,
  [Pseudochattonella]          [float]      NULL,
    [Pseudonitzschia]          [float]      NULL,
     [Pseudotontonia]          [float]      NULL,
        [Pterosperma]          [float]      NULL,
        [Ptychocylis]          [float]      NULL,
        [Pyramimonas]          [float]      NULL,
         [Pyrophacus]          [float]      NULL,
        [Rhabdonella]          [float]      NULL,
      [Rhabdosphaera]          [float]      NULL,
       [Rhizosolenia]          [float]      NULL,
           [Richelia]          [float]      NULL,
       [Sclerodinium]          [float]      NULL,
        [Scripsiella]          [float]      NULL,
      [Scyphosphaera]          [float]      NULL,
         [Sethocapsa]          [float]      NULL,
 [Spirostrombidinium]          [float]      NULL,
         [Stauraspis]          [float]      NULL,
         [Stauroneis]          [float]      NULL,
       [Strobilidium]          [float]      NULL,
        [Strombidium]          [float]      NULL,
            [Synedra]          [float]      NULL,
      [Syracosphaera]          [float]      NULL,
           [Takayama]          [float]      NULL,
      [Thalassiosira]          [float]      NULL,
            [Tiarina]          [float]      NULL,
       [Tintinnopsis]          [float]      NULL,
           [Tontonia]          [float]      NULL,
         [Torodinium]          [float]      NULL,
         [Trachelius]          [float]      NULL,
        [Triceratium]          [float]      NULL,
      [Trichodesmium]          [float]      NULL,
        [Tropidoneis]          [float]      NULL,
     [Umbellosphaera]          [float]      NULL,
    [Umbilicosphaera]          [float]      NULL,
            [Undella]          [float]      NULL,
            [Uronema]          [float]      NULL,
           [Warnowia]          [float]      NULL,
        [Total_Cells]          [float]      NULL,
        [Temperature]          [float]      NULL,
           [Salinity]          [float]       NULL


    ) ON [Primary]



    
    USE [Opedia]


    CREATE UNIQUE NONCLUSTERED INDEX [IX_tblMGL1704_Gradients2_IFCB_Abundance_time_lat_lon_depth] ON [dbo].[tblMGL1704_Gradients2_IFCB_Abundance]
    (
    	[time] ASC,
    	[lat] ASC,
    	[lon] ASC,
    	[depth]
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Primary]


    
