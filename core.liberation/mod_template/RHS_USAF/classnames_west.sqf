// *** FRIENDLIES ***
GRLIB_side_friendly = WEST;
GRLIB_west_modder = "pSiKO";

// Default classname: scripts\shared\default_classnames.sqf
// Advanced definition: scripts\shared\classnames.sqf

//huron_typename = "RHS_CH_47F";  // // to use value from lobby/server.cfg
FOB_typename = "Land_Cargo_HQ_V1_F";
FOB_box_typename = "B_Slingload_01_Cargo_F";
FOB_truck_typename = "B_Truck_01_box_F";
Respawn_truck_typename = "rhsusf_m113_usarmy_medical";
ammo_truck_typename = "rhsusf_M977A4_AMMO_BKIT_usarmy_wd";
fuel_truck_typename = "rhsusf_M978A4_BKIT_usarmy_wd";
repair_truck_typename = "rhsusf_M977A4_REPAIR_BKIT_usarmy_wd";
repair_sling_typename = "B_Slingload_01_Repair_F";
fuel_sling_typename = "B_Slingload_01_Fuel_F";
ammo_sling_typename = "B_Slingload_01_Ammo_F";
medic_sling_typename = "B_Slingload_01_Medevac_F";
pilot_classname = "rhsusf_army_ucp_helipilot";
crewman_classname = "rhsusf_army_ucp_crewman";
uavs_terminal_typename = "B_UavTerminal";
blufor_flag = "Flag_NATO_F";

// [CLASSNAME, MANPOWER, AMMO, FUEL, RANK]
infantry_units_west = [
	["Alsatian_Random_F",0,0,0,GRLIB_perm_max],
	["Fin_random_F",0,0,0,0],
	["rhsusf_army_ucp_rifleman",1,0,0,0],
	["rhsusf_army_ucp_medic",1,0,0,0],
	["rhsusf_army_ucp_engineer",1,0,0,0],
	["rhsusf_army_ucp_grenadier",1,0,0,GRLIB_perm_inf],
	["rhsusf_army_ucp_marksman",1,0,0,GRLIB_perm_inf],
	["rhsusf_army_ucp_maaws",1,0,0,0],
	["rhsusf_army_ucp_machinegunner",1,0,0,GRLIB_perm_inf],
	["rhsusf_army_ucp_sniper",1,0,0,GRLIB_perm_inf],
	["rhsusf_army_ucp_sniper_m107",1,0,0,GRLIB_perm_log],
	["rhsusf_army_ucp_aa",1,0,0,GRLIB_perm_log],
	["rhsusf_army_ucp_rifleman_m590",1,0,0,GRLIB_perm_inf],
	["rhsusf_usmc_recon_marpat_wd_rifleman_lite",1,0,0,GRLIB_perm_log],
	[crewman_classname,1,0,0,GRLIB_perm_inf],
	[pilot_classname,1,0,0,GRLIB_perm_log]
];

units_loadout_overide = [
	"rhsusf_army_ucp_rifleman"
];

light_vehicles = [
	["B_Quadbike_01_F",1,5,1,0],
	["rhsusf_mrzr4_d",1,25,1,0],
	["rhsusf_m113_usarmy_medical",0,0,0,0]
	["Redd_Tank_LKW_leicht_gl_Wolf_Flecktarn_FueFu",2,25,2,GRLIB_perm_log],
	["Redd_Tank_LKW_leicht_gl_Wolf_Flecktarn_San",2,25,2,GRLIB_perm_log],
	["UK3CB_BAF_LandRover_Soft_FFR_Green_A",2,25,2,GRLIB_perm_log],
	["UK3CB_BAF_LandRover_Soft_FFR_MERT_A",2,25,2,GRLIB_perm_log],
	["UK3CB_BAF_LandRover_Amb_FFR_Green_A",2,25,2,GRLIB_perm_log],
	["B_LSV_01_unarmed_F",2,25,2,GRLIB_perm_log],
	["B_LSV_01_AT_F",2,25,2,GRLIB_perm_log],
	["UK3CB_BAF_LandRover_WMIK_GPMG_Green_A",2,45,2,GRLIB_perm_log],
	["UK3CB_BAF_LandRover_WMIK_HMG_Green_A",2,50,2,GRLIB_perm_log],
	["UK3CB_BAF_LandRover_WMIK_GMG_Green_A",2,55,2,GRLIB_perm_log],
	["UK3CB_BAF_LandRover_WMIK_Milan_Green_A",2,70,2,GRLIB_perm_log],
	["rhsusf_m1043_w",2,30,2,GRLIB_perm_log],
	["rhsusf_m998_w_2dr",2,25,2,GRLIB_perm_log],
	["rhsusf_m998_w_2dr_fulltop",2,30,2,GRLIB_perm_log],
	["rhsusf_m998_w_4dr_halftop",2,30,2,GRLIB_perm_log],
	["rhsusf_m1043_w_m2",2,45,2,GRLIB_perm_log],
	["rhsusf_m1043_w_mk19",2,55,2,GRLIB_perm_log],
	["rhsusf_m1045_w",2,70,2,GRLIB_perm_log],
	["rhsusf_m1152_rsv_usarmy_wd",2,30,2,GRLIB_perm_log],
	["rhsusf_m1151_usarmy_wd",2,30,2,GRLIB_perm_log],
	["rhsusf_m1151_m240_v1_usarmy_wd",2,32,2,GRLIB_perm_log],
	["rhsusf_m1151_m2_v1_usarmy_wd",2,50,2,GRLIB_perm_log],
	["rhsusf_m1151_mk19_v1_usarmy_wd",2,55,2,GRLIB_perm_log],
	["rhsusf_m1151_m2crows_usarmy_wd",2,60,2,GRLIB_perm_log],
	["rhsusf_m1151_mk19crows_usarmy_wd",2,65,2,GRLIB_perm_log],
	["UK3CB_BAF_Husky_Passenger_GPMG_Green",2,60,4,GRLIB_perm_log],
	["UK3CB_BAF_Husky_Passenger_HMG_Green",2,70,4,GRLIB_perm_log],
	["UK3CB_BAF_Husky_Passenger_GMG_Green",2,80,4,GRLIB_perm_log],
	["BWA3_Dingo2_FLW100_MG3_CG13_Fleck",2,45,4,GRLIB_perm_log],
	["BWA3_Dingo2_FLW200_M2_CG13_Fleck",2,50,4,GRLIB_perm_log],
	["BWA3_Dingo2_FLW200_GMW_CG13_Fleck",2,55,4,GRLIB_perm_log],
	["BWA3_Eagle_Fleck",2,40,3,GRLIB_perm_log],
	["BWA3_Eagle_FLW100_Fleck",2,45,3,GRLIB_perm_log],
	["I_MRAP_03_F",2,80,5,GRLIB_perm_log],
	["rhsusf_m1240a1_m240_uik_usarmy_wd",2,55,4,GRLIB_perm_inf],
	["rhsusf_m1240a1_m2_uik_usarmy_wd",2,60,4,GRLIB_perm_inf],
	["rhsusf_m1240a1_mk19_uik_usarmy_wd",2,70,4,GRLIB_perm_inf],
	["rhsusf_m1240a1_m2crows_usarmy_wd",2,90,4,GRLIB_perm_inf],
	["rhsusf_m1240a1_mk19crows_usarmy_wd",2,100,4,GRLIB_perm_inf],
	["Redd_Tank_Fuchs_1A4_Pi_Flecktarn",2,70,5,GRLIB_perm_log],
	["Redd_Tank_Fuchs_1A4_San_Flecktarn",2,70,5,GRLIB_perm_log],
	["Redd_Tank_Fuchs_1A4_Jg_Flecktarn",2,80,5,GRLIB_perm_log],
	["Redd_Tank_Fuchs_1A4_Jg_Milan_Flecktarn",2,90,5,GRLIB_perm_log],
	["rhsusf_M1230a1_usarmy_wd",2,70,5,GRLIB_perm_inf],
	["rhsusf_M1230_M2_usarmy_wd",2,80,5,GRLIB_perm_inf],
	["rhsusf_M1230_MK19_usarmy_wd",2,90,5,GRLIB_perm_inf],
	["rhsusf_m1165a1_gmv_m134d_m240_socom_d",2,100,5,GRLIB_perm_inf],
	["rhsusf_m1165a1_gmv_m2_m240_socom_d",2,120,5,GRLIB_perm_inf],
	["rhsusf_m1165a1_gmv_mk19_m240_socom_d",2,140,5,GRLIB_perm_inf],
	["UK3CB_BAF_Jackal2_L111A1_W",2,100,5,GRLIB_perm_inf],
	["UK3CB_BAF_Jackal2_L134A1_W",2,120,5,GRLIB_perm_inf],
	["UK3CB_BAF_Coyote_Passenger_L111A1_W",2,120,5,GRLIB_perm_inf],
	["UK3CB_BAF_Coyote_Passenger_L134A1_W",2,140,5,GRLIB_perm_inf],
	["rhsusf_M1239_M2_Deploy_socom_d",5,120,10,GRLIB_perm_inf],
	["rhsusf_M1239_MK19_Deploy_socom_d",5,140,10,GRLIB_perm_inf],
	["rhsusf_m1245_m2crows_socom_d",2,130,5,GRLIB_perm_inf],
	["rhsusf_m1245_mk19crows_socom_d",2,150,5,GRLIB_perm_inf],
	["rhsusf_M1238A1_socom_d",2,90,5,GRLIB_perm_inf],
	["rhsusf_M1238A1_M2_socom_d",2,100,5,GRLIB_perm_inf],
	["rhsusf_M1238A1_Mk19_socom_d",2,120,5,GRLIB_perm_inf],
	["rhsusf_M1117_W",5,200,10,GRLIB_perm_inf],
	["rnt_sppz_2a2_luchs_flecktarn",5,210,15,GRLIB_perm_inf],
	["rhsusf_stryker_m1126_m2_wd",5,220,15,GRLIB_perm_inf],
	["rhsusf_stryker_m1132_m2_wd",5,220,15,GRLIB_perm_inf],
	["rhsusf_stryker_m1126_mk19_wd",5,240,15,GRLIB_perm_inf],
	["rhsusf_stryker_m1134_wd",5,280,15,GRLIB_perm_inf],
	["Redd_Tank_Wiesel_1A2_TOW_Flecktarn",5,270,15,GRLIB_perm_inf],
	["Redd_Tank_Wiesel_1A4_MK20_Flecktarn",5,250,15,GRLIB_perm_inf],
	["I_LT_01_cannon_F",5,250,15,GRLIB_perm_inf],
	["I_LT_01_AT_F",5,300,15,GRLIB_perm_inf],
	["I_LT_01_AA_F",5,300,15,GRLIB_perm_inf],
	["I_LT_01_scout_F",5,220,15,GRLIB_perm_inf],
	["rhsusf_m113_usarmy_unarmed",5,100,15,GRLIB_perm_inf],
	["rhsusf_m113_usarmy_medical",5,100,15,GRLIB_perm_inf],
	["rhsusf_m113_usarmy_supply",5,120,15,GRLIB_perm_inf],
	["rhsusf_m113_usarmy_M240",5,110,15,GRLIB_perm_inf],
	["rhsusf_m113_usarmy",5,120,15,GRLIB_perm_inf],
	["rhsusf_m113_usarmy_MK19",5,130,15,GRLIB_perm_inf],
	["B_Boat_Transport_01_F",5,10,15,GRLIB_perm_log],
	["I_C_Boat_Transport_02_F",5,50,15,GRLIB_perm_log],
	["B_SDV_01_F",5,50,15,GRLIB_perm_log],
	["UK3CB_BAF_RHIB_HMG",5,75,15,GRLIB_perm_log],
	["UK3CB_BAF_RHIB_GPMG",5,70,15,GRLIB_perm_log],
	["B_Boat_Armed_01_minigun_F",5,75,15,GRLIB_perm_inf],
	["rhsusf_mkvsoc",5,100,15,GRLIB_perm_inf]
];

heavy_vehicles = [
	["Redd_Marder_1A5_Flecktarn",10,350,20,GRLIB_perm_inf],
	["Redd_Tank_Gepard_1A2_Flecktarn",10,380,20,GRLIB_perm_inf],
	["UK3CB_BAF_FV432_Mk3_GPMG_Green",10,250,20,GRLIB_perm_inf],
	["UK3CB_BAF_FV432_Mk3_RWS_Green",10,250,20,GRLIB_perm_inf],
	["UK3CB_BAF_Warrior_A3_W_Cage",10,300,20,GRLIB_perm_inf],
	["UK3CB_BAF_Warrior_A3_W_Camo",10,300,20,GRLIB_perm_inf],
	["RHS_M2A2_wd",10,380,20,GRLIB_perm_inf],
	["RHS_M2A2_BUSKI_WD",10,400,20,GRLIB_perm_inf],
	["rhsusf_m1a1fep_wd",10,450,20,GRLIB_perm_inf],
	["B_MBT_01_TUSK_F",10,450,20,GRLIB_perm_inf],
	["RHS_M2A3_wd",10,470,20,GRLIB_perm_tank],
	["rhsusf_m1a1aim_tuski_wd",10,500,20,GRLIB_perm_tank],
	["BWA3_Puma_Fleck",10,550,20,GRLIB_perm_tank],
	["RHS_M2A3_BUSKI_wd",10,530,20,GRLIB_perm_tank],
	["RHS_M2A3_BUSKIII_wd",10,550,20,GRLIB_perm_tank],
	["rhsusf_m1a2sep1wd_usarmy",10,600,20,GRLIB_perm_tank],
	["rhsusf_m1a2sep1tuskiwd_usarmy",10,620,20,GRLIB_perm_tank],
	["RHS_M6_wd",10,550,20,GRLIB_perm_tank],
	["rhsusf_m1a2sep1tuskiiwd_usarmy",10,650,20,GRLIB_perm_tank],
	["rhsusf_m1a2sep2wd_usarmy",10,680,20,GRLIB_perm_tank],
	["B_AFV_Wheeled_01_up_cannon_F",10,700,20,GRLIB_perm_tank],
	["BWA3_Leopard2_Fleck",10,700,20,GRLIB_perm_tank],
	["rhsusf_m109_usarmy",10,800,20,GRLIB_perm_tank],
	["BWA3_Panzerhaubitze2000_Fleck",10,900,20,GRLIB_perm_tank],
	["rhsusf_M142_usarmy_WD",10,1000,20,GRLIB_perm_tank]
];

air_vehicles = [
	["RHS_MELB_MH6M",5,100,10,GRLIB_perm_log],
	["RHS_MELB_AH6M",5,150,10,GRLIB_perm_log],
	["RHS_UH1Y_UNARMED",5,150,10,GRLIB_perm_log],
	["RHS_UH1Y_FFAR",5,170,10,GRLIB_perm_log],
	["RHS_UH1Y",5,170,10,GRLIB_perm_log],
	["UK3CB_BAF_Wildcat_AH1_6_Armed",5,250,10,GRLIB_perm_inf],
	["UK3CB_BAF_Wildcat_AH1_8_Armed",5,250,10,GRLIB_perm_inf],
	["UK3CB_BAF_Wildcat_AH1_TRN_8A",5,200,10,GRLIB_perm_inf],
	["RHS_UH60M",8,230,15,GRLIB_perm_inf],
	["RHS_UH60M_MEV2",8,230,15,GRLIB_perm_inf],
	["RHS_UH60M_ESSS",8,280,15,GRLIB_perm_inf],
	["UK3CB_BAF_Merlin_HC4_18_GPMG",8,270,15,GRLIB_perm_inf],
	["UK3CB_BAF_Merlin_HM2_18",8,250,15,GRLIB_perm_inf],
	["BWA3_NH90_TTH_Fleck",8,10,275,GRLIB_perm_inf],
	["BWA3_NH90_TTH_M3M_Fleck",8,270,15,GRLIB_perm_inf],
	["RHS_CH_47F",10,250,20,GRLIB_perm_inf],
	["RHS_CH_47F_cargo",250,10,20,GRLIB_perm_inf],
	["BWA3_Tiger",10,350,20,GRLIB_perm_air],
	["RHS_AH1Z_wd",10,400,20,GRLIB_perm_air],
	["RHS_AH64D_wd",10,480,20,GRLIB_perm_air],
	["UK3CB_BAF_Apache_AH1",10,480,20,GRLIB_perm_air],
	["B_UAV_02_dynamicLoadout_F",10,300,30,GRLIB_perm_inf],
	["UK3CB_BAF_MQ9_Reaper",10,350,30,GRLIB_perm_inf],
	["FIR_MQ81U_DarkGreyCamo",10,500,30,GRLIB_perm_air],
	["C_Plane_Civil_01_F",5,100,10,GRLIB_perm_air],
	["FIR_C130J",15,200,30,GRLIB_perm_air],
	["FIR_C130J_Long",250,10,30,GRLIB_perm_air],
	["FIR_KC130J",15,250,30,GRLIB_perm_air],
	["FIR_EA6B",15,900,40,GRLIB_perm_air],
	["FIR_F14D",15,1000,40,GRLIB_perm_air],
	["FIR_F15C",15,1300,40,GRLIB_perm_air],
	["FIR_F15E",15,1300,40,GRLIB_perm_air],
	["FIR_F15SE",15,1300,40,GRLIB_perm_air],
	["FIR_A10C",15,1600,40,GRLIB_perm_air],
	["FIR_AV8B_GR9A",15,1500,40,GRLIB_perm_air],
	["Tornado_AWS_blu",15,1700,40,GRLIB_perm_air],
	["FIR_F16C",15,1800,40,GRLIB_perm_air],
	["FIR_FA18F",15,2000,40,GRLIB_perm_air],
	["FIR_FA18E",15,2000,40,GRLIB_perm_air],
	["FIR_F22",15,2300,40,GRLIB_perm_air],
	["FIR_F35B_Standard",15,2500,40,GRLIB_perm_air],
	["B_T_VTOL_01_infantry_F",25,2000,40,GRLIB_perm_air],
	["B_T_VTOL_01_armed_F",25,2000,40,GRLIB_perm_air],
	["B_T_VTOL_01_vehicle_F",25,10000,40,GRLIB_perm_max]
];

blufor_air = [
	"RHS_AH1Z_wd",
	"FIR_A10C",
	"FIR_F22",
	"B_Heli_Attack_01_F"
];

static_vehicles = [
	["RHS_M2StaticMG_MiniTripod_WD",0,50,0,GRLIB_perm_log],
	["RHS_M2StaticMG_WD",0,50,0,GRLIB_perm_log],
	["rnt_mg3_static",0,50,0,GRLIB_perm_log],
	["RHS_MK19_TriPod_WD",0,100,0,GRLIB_perm_log],
	["rnt_gmw_static",0,100,0,GRLIB_perm_log],
	["Redd_Milan_Static",0,150,0,GRLIB_perm_log],
	["RHS_TOW_TriPod_WD",0,150,0,GRLIB_perm_log],
	["BWA3_MELLS_static_Fleck",0,200,0,GRLIB_perm_log],
	["RHS_Stinger_AA_pod_WD",0,150,0,GRLIB_perm_log],
	["RHS_M252_WD",0,250,0,GRLIB_perm_log],
	["UK3CB_BAF_Static_L16_Deployed",0,250,0,GRLIB_perm_log],
	["BWA3_MRS120_Fleck",0,300,0,GRLIB_perm_log],
	["RHS_M119_WD",0,400,0,GRLIB_perm_log],
	["rnt_mantis_radar",10,250,0,GRLIB_perm_log],
	["rnt_mantis_base",10,300,0,GRLIB_perm_log],
	["B_Radar_System_01_F",10,250,0,GRLIB_perm_log],
	["B_SAM_System_03_F",10,400,0,GRLIB_perm_log],
	["B_SAM_System_01_F",10,400,0,GRLIB_perm_log],
	["B_SAM_System_02_F",10,400,0,GRLIB_perm_log],
	["B_AAA_System_01_F",10,400,0,GRLIB_perm_log]
];

// *** Static Weapon with AI ***
static_vehicles_AI = [
	"rnt_mantis_radar",
	"rnt_mantis_base",
	"B_Radar_System_01_F",
	"B_SAM_System_03_F",
	"B_SAM_System_01_F",
	"B_SAM_System_02_F",
	"B_AAA_System_01_F"
];

support_vehicles_west = [
	["UK3CB_BAF_LandRover_Amb_FFR_Green_A",5,60,8,0],
	["C_Van_02_medevac_F",5,60,8,0],
	["rhsusf_m113_usarmy_medical",5,60,8,0],
	["B_G_Offroad_01_repair_F",5,60,5,GRLIB_perm_log],
	["B_G_Van_01_fuel_F",5,70,40,GRLIB_perm_log],
	["rnt_lkw_10t_mil_gl_kat_i_repair_fleck",5,90,40,GRLIB_perm_log],
	["rnt_lkw_5t_mil_gl_kat_i_fuel_fleck",5,90,40,GRLIB_perm_log],
	["rnt_lkw_7t_mil_gl_kat_i_mun_fleck",5,90,40,GRLIB_perm_log],
	["rnt_lkw_5t_mil_gl_kat_i_transport_fleck",5,90,40,GRLIB_perm_log],
	["rhsusf_M1078A1P2_WD_fmtv_usarmy",5,100,40,GRLIB_perm_log],
	["rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy",5,110,40,GRLIB_perm_log],
	["rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",5,110,40,GRLIB_perm_log],
	["rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy",5,100,40,GRLIB_perm_log],
	["rhsusf_M977A4_usarmy_wd",5,100,40,GRLIB_perm_log],
	["rhsusf_M977A4_BKIT_usarmy_wd",5,130,40,GRLIB_perm_log],
	["rhsusf_M977A4_BKIT_M2_usarmy_wd",5,110,40,GRLIB_perm_log],
	["BWA3_Multi_Fleck",5,100,40,GRLIB_perm_log],
	["BWA3_WLP14_Flatbed_Oliv",0,50,0,GRLIB_perm_log],
	["BWA3_WLP14_Ammo_Fleck",0,100,0,GRLIB_perm_log],
	["BWA3_WLP14_Repair_Fleck",0,100,0,GRLIB_perm_log],
	["BWA3_TCK9_Fuel_Fleck",0,100,0,GRLIB_perm_log],
	["UK3CB_BAF_MAN_HX58_Cargo_Green_B",5,110,40,GRLIB_perm_log],
	["UK3CB_BAF_MAN_HX60_Cargo_Green_B",5,110,40,GRLIB_perm_log],
	["UK3CB_BAF_MAN_HX58_Transport_Green",5,100,40,GRLIB_perm_log],
	["UK3CB_BAF_MAN_HX60_Transport_Green",5,100,40,GRLIB_perm_log],
	["UK3CB_BAF_MAN_HX58_Repair_Green",5,120,40,GRLIB_perm_log],
	["UK3CB_BAF_MAN_HX58_Fuel_Green",5,120,40,GRLIB_perm_log],
	["rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",5,130,40,GRLIB_perm_log],
	["BWA3_Skorpion_Fleck",5,130,140,GRLIB_perm_inf],
	["B_APC_Tracked_01_CRV_F",15,200,50,GRLIB_perm_inf],
	["Land_RepairDepot_01_civ_F",0,100,0,GRLIB_perm_log],
	["Box_NATO_Equip_F",0,10,0,GRLIB_perm_log],
	["kat_miscSupplyCrate",0,0,0,0],
	["kat_surgerySupplyCrate",0,0,0,0],
	["kat_basicSupplyCrate",0,0,0,0],
	["kat_pharmaSupplyCrate",0,0,0,0],
	["ace_medicalSupplyCrate",0,0,0,0],
	["ace_medicalSupplyCrate_advanced",0,0,0,0]
];

buildings_west_overide = true;
buildings_west = [
	["Land_Cargo_Tower_V1_F",0,0,0,GRLIB_perm_log],
	["Land_Cargo_House_V1_F",0,0,0,GRLIB_perm_log],
	["Land_Cargo_Patrol_V1_F",0,0,0,GRLIB_perm_log],
	["Flag_NATO_F",0,0,0,0,GRLIB_perm_log],
	["Land_RepairDepot_01_green_F",0,0,0,0]
	["US_WarfareBArtilleryRadar_Base_EP1",0,0,0,GRLIB_perm_log],
    ["Land_fort_artillery_nest_EP1",0,0,0,GRLIB_perm_log],
    ["Land_Mil_Barracks_EP1",0,0,0,GRLIB_perm_log],
    ["Land_Mil_Barracks_i_EP1",0,0,0,GRLIB_perm_log],
    ["Land_Mil_Barracks_no_interior_EP1_CUP",0,0,0,GRLIB_perm_log],
    ["Land_Mil_Barracks_L_EP1",0,0,0,GRLIB_perm_log],
    ["Land_fortified_nest_big_EP1",0,0,0,GRLIB_perm_log],
    ["Land_fortified_nest_small_EP1",0,0,0,GRLIB_perm_log],
    ["Land_Fort_Watchtower_EP1",0,0,0,GRLIB_perm_log],
    ["WarfareBDepot",0,0,0,GRLIB_perm_log],
    ["US_WarfareBUAVterminal_Base_EP1",0,0,0,GRLIB_perm_log],
    ["Land_fort_rampart_EP1",0,0,0,GRLIB_perm_log],
    ["US_WarfareBFieldhHospital_Base_EP1",0,0,0,GRLIB_perm_log],
    ["US_WarfareBAircraftFactory_Base_EP1",0,0,0,GRLIB_perm_log],
    ["US_WarfareBVehicleServicePoint_Base_EP1",0,0,0,GRLIB_perm_log],
    ["US_WarfareBBarrier10xTall_EP1",0,0,0,GRLIB_perm_log],
    ["US_WarfareBBarracks_Base_EP1",0,0,0,GRLIB_perm_log],
    ["Land_Barrack2_EP1",0,0,0,GRLIB_perm_log],
    ["US_WarfareBBarrier5x_EP1",0,0,0,GRLIB_perm_log],
    ["US_WarfareBBarrier10x_EP1",0,0,0,GRLIB_perm_log],
    ["US_WarfareBHeavyFactory_Base_EP1",0,0,0,GRLIB_perm_log],
    ["Land_CamoNetB_NATO_EP1",0,0,0,GRLIB_perm_log],
    ["Land_CamoNet_NATO_EP1",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_01_wall_6_green_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_01_line_3_green_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_01_big_tower_green_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_01_tower_green_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_01_wall_corridor_green_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_01_wall_corner_green_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_01_wall_4_green_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_1_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrierWall6_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_3_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrierTower_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrierWall_corridor_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrierWall4_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrierWall_corner_F",0,0,0,GRLIB_perm_log],
    ["Land_CncBarrierMedium_F",0,0,0,GRLIB_perm_log],
    ["Land_CncBarrierMedium4_F",0,0,0,GRLIB_perm_log],
    ["Land_CncShelter_F",0,0,0,GRLIB_perm_log],
    ["Land_CncWall1_F",0,0,0,GRLIB_perm_log],
    ["Land_CncWall4_F",0,0,0,GRLIB_perm_log],
    ["Land_CncBarrier_stripes_F",0,0,0,GRLIB_perm_log],
    ["Land_PortableLight_single_F",0,0,0,GRLIB_perm_log],
    ["Land_Campfire_F",0,0,0,GRLIB_perm_log],
    ["Land_CampingChair_V1_F",0,0,0,GRLIB_perm_log],
    ["Land_CampingTable_F",0,0,0,GRLIB_perm_log],
    ["Land_fort_bagfence_long",0,0,0,GRLIB_perm_log],
    ["Land_HelipadSquare_F",0,0,0,GRLIB_perm_log],
    ["PortableHelipadLight_01_blue_F",0,0,0,GRLIB_perm_log],
    ["PortableHelipadLight_01_green_F",0,0,0,GRLIB_perm_log],
    ["Land_ClutterCutter_large_F",0,0,0,GRLIB_perm_log],
    ["Land_Hangar_F",0,0,0,GRLIB_perm_log],
    ["Land_Cargo_Tower_V1_F",0,0,0,GRLIB_perm_log],
    ["Land_Medevac_house_V1_F",0,0,0,GRLIB_perm_log],
    ["Land_Medevac_HQ_V1_F",0,0,0,GRLIB_perm_log],
    ["Land_PortableLight_double_F",0,0,0,GRLIB_perm_log],
    ["Land_LampAirport_F",0,0,0,GRLIB_perm_log],
    ["Land_LampStreet_02_double_F",0,0,0,GRLIB_perm_log],
    ["Land_SandbagBarricade_01_hole_F",0,0,0,GRLIB_perm_log],
    ["Land_fortified_nest_small",0,0,0,GRLIB_perm_log],
    ["Land_fortified_nest_big",0,0,0,GRLIB_perm_log],
    ["Land_BagBunker_Small_F",0,0,0,GRLIB_perm_log],
    ["Land_bunker_garage",0,0,0,GRLIB_perm_log],
    ["Land_Trench_01_grass_F",0,0,0,GRLIB_perm_log],
    ["Land_fort_rampart",0,0,0,GRLIB_perm_log],
    ["Land_fort_artillery_nest",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_01_line_5_green_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_01_big_4_green_F",0,0,0,GRLIB_perm_log],
    ["US_WarfareBBarrier10xTall_EP1",0,0,0,GRLIB_perm_log],
    ["Fortress2",0,0,0,GRLIB_perm_log],
    ["Land_Lampa_sidl_3",0,0,0,GRLIB_perm_log],
    ["Land_TentHangar_V1_F", 0, 0, 0, GRLIB_perm_log],
    ["Land_fort_bagfence_round",0,0,0,GRLIB_perm_log],
    ["Land_fort_bagfence_long",0,0,0,GRLIB_perm_log],
    ["Land_fort_bagfence_corner",0,0,0,GRLIB_perm_log],
    ["Land_CzechHedgehog_01_new_F",0,0,0,GRLIB_perm_log],
    ["Land_Bunker_01_blocks_3_F",0,0,0,GRLIB_perm_log],
    ["Land_Bunker_01_small_F",0,0,0,GRLIB_perm_log],
    ["Land_Bunker_01_tall_F",0,0,0,GRLIB_perm_log],
    ["Land_PillboxBunker_01_big_F",0,0,0,GRLIB_perm_log],
    ["SignM_FOB_Revolve_EP1",0,0,0,GRLIB_perm_log],
    ["Land_Shooting_range",0,0,0,GRLIB_perm_log],
    ["Shed",0,0,0,GRLIB_perm_log],
    ["ShedSmall",0,0,0,GRLIB_perm_log],
    ["CampEast_EP1",0,0,0,GRLIB_perm_log],
    ["Land_Mil_WallBig_4m_F",0,0,0,GRLIB_perm_log],
    ["rnt_graben_t",0,0,0,GRLIB_perm_log],
    ["rnt_graben_bunker",0,0,0,GRLIB_perm_log],
    ["rnt_graben_ecke",0,0,0,GRLIB_perm_log],
    ["rnt_graben_ende",0,0,0,GRLIB_perm_log],
    ["rnt_graben_stellung",0,0,0,GRLIB_perm_log],
    ["rnt_graben_gerade",0,0,0,GRLIB_perm_log],
    ["MapBoard_stratis_F",0,0,0,GRLIB_perm_log],
    ["MapBoard_altis_F",0,0,0,GRLIB_perm_log],
    ["Land_MapBoard_Enoch_F", 0, 0, 0, GRLIB_perm_log],
    ["MapBoard_Malden_F",0,0,0,GRLIB_perm_log],
    ["MapBoard_Tanoa_F",0,0,0,GRLIB_perm_log],
    ["ClutterCutter",0,0,0,GRLIB_perm_log],
    ["Notice_board_EP1",0,0,0,GRLIB_perm_log],
    ["Land_CncBlock",0,0,0,GRLIB_perm_log],
    ["Concrete_Wall_EP1",0,0,0,GRLIB_perm_log],
    ["Land_Ind_Shed_02_EP1",0,0,0,GRLIB_perm_log],
    ["HeliH",0,0,0,GRLIB_perm_log],
    ["HeliHRescue",0,0,0,GRLIB_perm_log],
    ["HeliHCivil",0,0,0,GRLIB_perm_log],
    ["Land_strelecky_post_new",0,0,0,GRLIB_perm_log],
    ["Land_GuardTower_01_F",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier5",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_large",0,0,0,GRLIB_perm_log],
    ["Land_HBarrier_01_big_4_green_F",0,0,0,GRLIB_perm_log],
    ["Land_Camping_Light_F",0,0,0,GRLIB_perm_log],
    ["Target_PopUp4_Moving_90deg_F",0,0,0,GRLIB_perm_log]
];

// Boats
boats_west = [
	"B_Boat_Transport_01_F",
	"B_Boat_Armed_01_minigun_F"
];

blufor_squad_inf_light = [
	"rhsusf_army_ucp_arb_squadleader",
    "rhsusf_army_ucp_arb_medic",
	"rhsusf_army_ucp_arb_autorifleman",
    "rhsusf_army_ucp_arb_marksman",
	"rhsusf_army_ucp_arb_maaws",
	"rhsusf_army_ucp_arb_rifleman_m590",
	"rhsusf_army_ucp_arb_rifleman",
	"rhsusf_army_ucp_arb_rifleman"
];
blufor_squad_inf = [
	"rhsusf_army_ucp_arb_teamleader",
    "rhsusf_army_ucp_arb_medic",
    "rhsusf_army_ucp_arb_sniper_m107",
    "rhsusf_army_ucp_arb_machinegunner",
    "rhsusf_army_ucp_arb_grenadier",
    "rhsusf_army_ucp_arb_maaws",
    "rhsusf_army_ucp_arb_maaws",
	"rhsusf_army_ucp_arb_rifleman_m590",	
	"rhsusf_army_ucp_arb_rifleman",
	"rhsusf_army_ucp_arb_rifleman"
];
blufor_squad_at = [
	"rhsusf_army_ucp_arb_squadleader",
    "rhsusf_army_ucp_arb_marksman",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_arb_maaws",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_medic"
];
blufor_squad_aa = [
	"rhsusf_army_ucp_arb_squadleader",
    "rhsusf_army_ucp_arb_marksman",
    "rhsusf_army_ocp_arb_maaws",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_medic"
];
blufor_squad_mix = [ 
	"rhsusf_army_ucp_arb_squadleader",
    "rhsusf_army_ucp_arb_marksman",
    "rhsusf_army_ocp_arb_maaws",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ucp_arb_autorifleman",
    "rhsusf_army_ocp_medic"
];

squads = [
	[blufor_squad_inf_light,10,300,0,GRLIB_perm_max],
	[blufor_squad_inf,20,400,0,GRLIB_perm_max],
	[blufor_squad_at,25,600,0,GRLIB_perm_max],
	[blufor_squad_aa,25,600,0,GRLIB_perm_max],
	[blufor_squad_mix,25,600,0,GRLIB_perm_max]
];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_west = [
  "B_APC_Tracked_01_CRV_F",
  "rhsusf_M977A4_AMMO_usarmy_wd"
];

// Everything the AI troups should be able to healing from
ai_healing_sources_west = [
	"B_APC_Tracked_01_CRV_F",
	"rhsusf_m113_usarmy_medical",
	"RHS_UH60M_MEV2",
	"RHS_UH60M_ESSS"
];

vehicle_rearm_sources_west = [
	"B_APC_Tracked_01_CRV_F",
	"rhsusf_M977A4_AMMO_usarmy_wd"
];

vehicle_big_units_west = [
];

GRLIB_vehicle_whitelist_west = [
];

GRLIB_vehicle_blacklist_west = [
];


GRLIB_AirDrop_1 = [			// Unarmed Offroader 50
	"rhsusf_m1025_w",
	"rhsusf_m1151_usarmy_wd"
];

GRLIB_AirDrop_2 = [			// Armed Offroader 100
	"rhsusf_m1025_w_m2",
	"rhsusf_m1025_w_mk19"
];

GRLIB_AirDrop_3 = [			// MRAP 200
	"rhsusf_m1240a1_m2_usarmy_wd",
	"rhsusf_m1240a1_mk19_usarmy_wd"
];

GRLIB_AirDrop_4 = [			// Large Truck 300
	"rhsusf_M1083A1P2_B_WD_fmtv_usarmy",
	"rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy",
	"rhsusf_m113_usarmy_medical"
];

GRLIB_AirDrop_5 = [			// APC 750
	"rhsusf_stryker_m1126_m2_wd",
	"rhsusf_stryker_m1126_mk19_wd"
];

GRLIB_AirDrop_6 = [			// Boat 250
	"B_Boat_Transport_01_F"
];
