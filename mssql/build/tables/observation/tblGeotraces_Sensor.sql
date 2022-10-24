
USE Opedia

CREATE TABLE dbo.tblGeotraces_Sensor (
[time] [datetime] NOT NULL, 
[lat] [float] NOT NULL, 
[lon] [float] NOT NULL, 
[depth] [float] NOT NULL,
[N_Samples] int NULL,
[N_Stations] int NULL,
[Cruise] [varchar](6) NULL, 
[Station] [varchar](26) NULL,
[Type] [varchar](1) NULL, 
[Bottom_Depth] [float] NULL, 
[Operators_Cruise_Name] [varchar](15) NULL, 
[CTDPRS_T_VALUE_SENSOR] [float] NULL, 
[CTDPRS_T_VALUE_SENSOR_qc] [float] NULL, 
[CTDTMP_T_VALUE_SENSOR] [float] NULL, 
[CTDTMP_T_VALUE_SENSOR_qc] [float] NULL, 
[CTDSAL_D_CONC_SENSOR] [float] NULL, 
[CTDSAL_D_CONC_SENSOR_qc] [float] NULL, 
[CTDOXY_D_CONC_SENSOR] [float] NULL, 
[CTDOXY_D_CONC_SENSOR_qc] [float] NULL, 
[CTDCHLA_T_CONC_SENSOR] [float] NULL, 
[CTDCHLA_T_CONC_SENSOR_qc] [float] NULL, 
[CTDFLUOR_T_VALUE_SENSOR] [float] NULL, 
[CTDFLUOR_T_VALUE_SENSOR_qc] [float] NULL, 
[CTDBEAMCP_T_VALUE_SENSOR] [float] NULL, 
[CTDBEAMCP_T_VALUE_SENSOR_qc] [float] NULL, 
[CTDXMISS_T_VALUE_SENSOR] [float] NULL, 
[CTDXMISS_T_VALUE_SENSOR_qc] [float] NULL, 
[CTDTURB_T_VALUE_SENSOR] [float] NULL, 
[CTDTURB_T_VALUE_SENSOR_qc] [float] NULL, 
[CTDPAR_T_VALUE_SENSOR] [float] NULL, 
[CTDPAR_T_VALUE_SENSOR_qc] [float] NULL

)
ON [FG4]

CREATE UNIQUE CLUSTERED INDEX [IX_tblGeotraces_Sensor_time_lat_lon_depth_station_sample] on [dbo].[tblGeotraces_Sensor]
([time] ASC, [lat] ASC, [lon] ASC, [depth] ASC, [N_Stations] ASC, [N_Samples] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]


USE [Opedia]   CREATE NONCLUSTERED INDEX [IX_tblGeotraces_Sensor_cruise_name] ON [dbo].[tblGeotraces_Sensor](Operators_Cruise_Name ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [FG4]