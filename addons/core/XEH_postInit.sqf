[] spawn {
	// Suspend the whole damn thing until the required CBA Settings are available
	waitUntil {
		sleep 0.5;
		!(isNil "cba_settings_ready")
	};

	[format["Current climate: %1", missionNamespace getVariable (format["bnb_es_climate_%1", worldName])], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
	private _climate = missionNamespace getVariable [format["bnb_es_climate_%1", worldName], "all"];

	if (_climate isEqualTo "arctic" || _climate isEqualTo "all") then {
		["Arctic default loadouts added", "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
		//-------------------------- 2BNB Arctic Kits ------------------------------------
		["2BNB Arctic - Anti-Tank",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["BNB_EX_Gear_SAW_W_MAAWS1","","","",["MRAWS_HEAT_F",1],[],""],[],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_epinephrine",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]],["V_mas_nor_PlateCarrier1_wint",[["SmokeShell",5,1],["hlc_30rnd_556x45_SPR_PMAG",8,30]]],["B_mas_nor_Kitbag_w2",[["MRAWS_HE_F",1,1],["MRAWS_HEAT_F",4,1],["SmokeShellGreen",1,1]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - Blank",[[],[],[],["U_mas_nor_B_CombatUniform_wint2",[["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EntrenchingTool",1]]],[],[],"BNB_EX_Gear_Unit_Berret","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - Crew",[["hlc_rifle_416D10C","","","optic_Yorris",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",20],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_adenosine",1]]],["V_mas_nor_PlateCarrier1_wint",[["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["SmokeShell",2,1],["6Rnd_RedSignal_F",2,6],["6Rnd_GreenSignal_F",1,6],["hlc_30rnd_556x45_SPR_PMAG",6,30]]],[],"H_HelmetCrew_I","G_mas_nor_Bandanna_W",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - Engineer/EOD",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["rhs_weap_m72a7","","","",[],[],""],["ACE_VMM3","","","",[],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_wint",[["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["HandGrenade",2,1],["SmokeShell",3,1],["hlc_30rnd_556x45_SPR_PMAG",8,30]]],["B_mas_nor_Kitbag_w2",[["ToolKit",1],["ACE_wirecutter",1],["ACE_SpraypaintBlue",1],["ACE_SpraypaintRed",1],["ACE_M14",2,1],["rhsusf_m112x4_mag",1,1],["rhsusf_m112_mag",4,1],["SmokeShellGreen",1,1]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - IC/2IC",[["hlc_rifle_416N_gl","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],["rhs_mag_M441_HE",1],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_tourniquet",4],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_packingBandage",16],["ACE_MapTools",1],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_CableTie",5],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrier1_wint",[["SmokeShellBlue",2,1],["SmokeShellGreen",2,1],["SmokeShellRed",2,1],["hlc_30rnd_556x45_SPR_PMAG",7,30],["SmokeShell",3,1]]],["tfw_ilbe_DD_alpine",[["ACE_HuntIR_monitor",1],["1Rnd_Smoke_Grenade_shell",3,1],["1Rnd_SmokeRed_Grenade_shell",3,1],["ACE_HuntIR_M203",5,1],["rhs_mag_M397_HET",3,1],["rhs_mag_M433_HEDP",8,1],["rhs_mag_M441_HE",6,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["HandGrenade",2,1],["SmokeShell",3,1],["hlc_30rnd_556x45_SPR_PMAG",2,30]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - LMG 5.56",[["rhs_weap_m249_pip_L","","","",["rhsusf_200rnd_556x45_mixed_box",200],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_wint",[["rhsusf_200rnd_556x45_mixed_box",2,200],["HandGrenade",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],["B_mas_nor_Kitbag_w2",[["ACE_SpareBarrel",1,1],["rhsusf_200rnd_556x45_mixed_box",4,200]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - LMG 7.62",[["rhs_weap_m240B","","","",["rhsusf_100Rnd_762x51_m80a1epr",100],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_wint",[["HandGrenade",2,1],["SmokeShellGreen",2,1],["SmokeShell",5,1],["rhsusf_100Rnd_762x51_m61_ap",2,100],["rhsusf_100Rnd_762x51_m80a1epr",1,100],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],["B_mas_nor_Kitbag_w2",[["ACE_SpareBarrel",1,1],["rhsusf_100Rnd_762x51_m80a1epr",4,100]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - Marksman",[["srifle_DMR_06_olive_F","muzzle_snds_B","","rhsusf_acc_su230a_mrds",["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",20],[],"bipod_01_F_blk"],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_elasticBandage",5],["ACE_CableTie",5],["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_epinephrine",1],["ACE_tourniquet",4],["ACE_EntrenchingTool",1],["ACE_adenosine",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierLR_wint",[["ACE_packingBandage",2],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["ACE_20Rnd_762x51_M993_AP_Mag",2,20],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20],["ACE_20Rnd_762x51_Mag_SD",1,20],["SmokeShell",2,1],["SmokeShellGreen",1,1]]],[],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - Medic",[["hlc_rifle_416D10C","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_epinephrine",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_wint",[["ACE_packingBandage",5],["ACE_elasticBandage",6],["HandGrenade",1,1],["SmokeShell",6,1],["SmokeShellGreen",3,1],["hlc_30rnd_556x45_SPR_PMAG",7,30]]],["B_mas_nor_Kitbag_w2",[["ACE_surgicalKit",1],["ACE_elasticBandage",31],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_adenosine",10],["ACE_plasmaIV",6],["ACE_plasmaIV_250",7],["ACE_plasmaIV_500",2],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - Pilot",[["SMG_03C_TR_black","","","optic_Yorris",["50Rnd_570x28_SMG_03",50],[],""],[],["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",20],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_adenosine",1]]],["V_mas_nor_PlateCarrier1_wint",[["SmokeShellGreen",1,1],["SmokeShell",2,1],["6Rnd_GreenSignal_F",1,6],["6Rnd_RedSignal_F",2,6],["SmokeShellBlue",1,1]]],[],"rhsusf_hgu56p_visor_white","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - Rifleman",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrier1_wint",[["HandGrenade",2,1],["SmokeShell",3,1],["SmokeShellGreen",1,1],["hlc_30rnd_556x45_SPR_PMAG",7,30]]],[],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152_5","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - Recon IC",[["HLC_Rifle_g3ka4_GL","muzzle_snds_B","","rhsusf_acc_g33_xps3",["ACE_20Rnd_762x51_Mk316_Mod_0_Mag",20],[],""],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_wint2",[["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_MapTools",1],["ACE_Flashlight_MX991",1],["ACE_adenosine",2],["ACE_EntrenchingTool",1],["ACE_morphine",4],["ACE_elasticBandage",10],["ACE_packingBandage",5],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrier1_wint",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellGreen",2,1],["SmokeShellBlue",2,1],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20]]],["tfw_ilbe_whip_alpine",[["ACE_HuntIR_monitor",1],["ACE_packingBandage",20],["rhs_mag_M433_HEDP",3,1],["rhs_mag_M397_HET",3,1],["rhs_mag_M441_HE",3,1],["ACE_HuntIR_M203",3,1],["1Rnd_Smoke_Grenade_shell",2,1],["1Rnd_SmokeRed_Grenade_shell",2,1],["1Rnd_SmokeGreen_Grenade_shell",2,1],["Chemlight_green",2,1],["SmokeShell",1,1],["ACE_20Rnd_762x51_M993_AP_Mag",2,20]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",["Laserdesignator_01_khk_F","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - Recon Rifleman",[["hlc_rifle_g3ka4","muzzle_snds_B","","rhsusf_acc_g33_xps3",["ACE_20Rnd_762x51_Mk316_Mod_0_Mag",20],[],"rhsusf_acc_harris_bipod"],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_wint2",[["ACE_packingBandage",5],["ACE_morphine",4],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_MX991",1],["ACE_adenosine",2],["ACE_EntrenchingTool",1],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrier1_wint",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellGreen",2,1],["SmokeShellBlue",2,1],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20]]],["B_mas_nor_Kitbag_w2",[["ACE_packingBandage",15],["Chemlight_green",2,1],["SmokeShell",1,1],["ACE_20Rnd_762x51_M993_AP_Mag",2,20]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - Sniper",[["srifle_LRR_F","","","rhsusf_acc_LEUPOLDMK4_2",["7Rnd_408_Mag",7],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_wint2",[["ACE_tourniquet",4],["ACE_elasticBandage",10],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_packingBandage",18],["ACE_MapTools",1],["ACE_IR_Strobe_Item",2],["ACE_morphine",4],["ACE_CableTie",2],["ACE_adenosine",2],["ACE_Flashlight_MX991",1],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrierLR_wint",[["ACE_ATragMX",1],["ACE_Kestrel4500",1],["HandGrenade",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["7Rnd_408_Mag",7,7]]],["tfw_ilbe_blade_alpine",[["ACE_Tripod",1],["hlc_30rnd_556x45_SPR_PMAG",4,30],["SmokeShellGreen",2,1],["SmokeShell",2,1]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Arctic - Spotter",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_wint2",[["ACE_tourniquet",4],["ACE_elasticBandage",10],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_packingBandage",15],["ACE_MapTools",1],["ACE_IR_Strobe_Item",2],["ACE_morphine",4],["ACE_CableTie",4],["ACE_Flashlight_MX991",1],["ACE_adenosine",2],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrier1_wint",[["ACE_ATragMX",1],["ACE_Kestrel4500",1],["HandGrenade",2,1],["SmokeShell",5,1],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["SmokeShellGreen",2,1],["hlc_30rnd_556x45_SPR_PMAG",5,30]]],["B_mas_nor_Kitbag_w2",[["ACE_SpottingScope",1],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["7Rnd_408_Mag",8,7],["hlc_30rnd_556x45_SPR_PMAG",4,30]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		//-------------------------------------------------------------------------------
	};

	if (_climate isEqualTo "desert" || _climate isEqualTo "all") then {
		["Desert default loadouts added", "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
		//------------------------- 2BNB Desert Kits --------------------------------------
		["2BNB Desert - Anti-Tank",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["launch_MRAWS_sand_F","","","",["MRAWS_HEAT_F",1],[],""],[],["U_mas_nor_B_CombatUniform_S_aor1",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_epinephrine",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]],["V_mas_nor_PlateCarrier1_tan",[["SmokeShell",5,1],["hlc_30rnd_556x45_SPR_PMAG",8,30]]],["B_mas_nor_Kitbag_d",[["MRAWS_HE_F",1,1],["MRAWS_HEAT_F",4,1],["SmokeShellGreen",1,1]]],"H_mas_nor_ach_aor1","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - Blank",[[],[],[],["U_mas_nor_B_CombatUniform_S_aor1",[["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EntrenchingTool",1]]],[],[],"BNB_EX_Gear_Unit_Berret","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - Crew",[["hlc_rifle_416D10C","","","optic_Yorris",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],["U_mas_nor_B_CombatUniform_S_aor1",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",20],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_adenosine",1]]],["V_mas_nor_PlateCarrier1_tan",[["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["SmokeShell",2,1],["6Rnd_RedSignal_F",2,6],["6Rnd_GreenSignal_F",1,6],["hlc_30rnd_556x45_SPR_PMAG",6,30]]],[],"H_HelmetCrew_I","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - Engineer/EOD",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["rhs_weap_m72a7","","","",[],[],""],["ACE_VMM3","","","",[],[],""],["U_mas_nor_B_CombatUniform_S_aor1",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_tan",[["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["HandGrenade",2,1],["SmokeShell",3,1],["hlc_30rnd_556x45_SPR_PMAG",8,30]]],["B_mas_nor_Kitbag_d",[["ToolKit",1],["ACE_wirecutter",1],["ACE_SpraypaintBlue",1],["ACE_SpraypaintRed",1],["ACE_M14",2,1],["rhsusf_m112x4_mag",1,1],["rhsusf_m112_mag",4,1],["SmokeShellGreen",1,1]]],"H_mas_nor_ach_aor1","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - IC/2IC",[["hlc_rifle_416N_gl","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],["rhs_mag_M441_HE",1],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_aor1",[["BNB_EX_Gear_Unit_Berret",1],["ACE_tourniquet",4],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_packingBandage",16],["ACE_MapTools",1],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_CableTie",5],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrier1_tan",[["SmokeShellBlue",2,1],["SmokeShellGreen",2,1],["SmokeShellRed",2,1],["hlc_30rnd_556x45_SPR_PMAG",7,30],["SmokeShell",3,1]]],["tfw_ilbe_DD_coy",[["ACE_HuntIR_monitor",1],["1Rnd_Smoke_Grenade_shell",3,1],["1Rnd_SmokeRed_Grenade_shell",3,1],["ACE_HuntIR_M203",5,1],["rhs_mag_M397_HET",3,1],["rhs_mag_M433_HEDP",8,1],["rhs_mag_M441_HE",6,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["HandGrenade",2,1],["SmokeShell",3,1],["hlc_30rnd_556x45_SPR_PMAG",2,30]]],"H_mas_nor_ach_aor1","",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - LMG 5.56",[["rhs_weap_m249_pip_L","","","",["rhsusf_200rnd_556x45_mixed_box",200],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_aor1",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_tan",[["rhsusf_200rnd_556x45_mixed_box",2,200],["HandGrenade",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],["B_mas_nor_Kitbag_d",[["ACE_SpareBarrel",1,1],["rhsusf_200rnd_556x45_mixed_box",4,200]]],"H_mas_nor_ach_aor1","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - LMG 7.62",[["rhs_weap_m240B","","","",["rhsusf_100Rnd_762x51_m80a1epr",100],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_aor1",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_tan",[["HandGrenade",2,1],["SmokeShellGreen",2,1],["SmokeShell",5,1],["rhsusf_100Rnd_762x51_m61_ap",2,100],["rhsusf_100Rnd_762x51_m80a1epr",1,100],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],["B_mas_nor_Kitbag_d",[["ACE_SpareBarrel",1,1],["rhsusf_100Rnd_762x51_m80a1epr",4,100]]],"H_mas_nor_ach_aor1","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - Marksman",[["srifle_DMR_06_olive_F","muzzle_snds_B","","rhsusf_acc_su230a_mrds",["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",20],[],"bipod_01_F_blk"],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_aor1",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_elasticBandage",5],["ACE_CableTie",5],["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_epinephrine",1],["ACE_tourniquet",4],["ACE_EntrenchingTool",1],["ACE_adenosine",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierLR_tan",[["ACE_packingBandage",2],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["ACE_20Rnd_762x51_M993_AP_Mag",2,20],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20],["ACE_20Rnd_762x51_Mag_SD",1,20],["SmokeShell",2,1],["SmokeShellGreen",1,1]]],[],"H_mas_nor_ach_aor1","",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - Medic",[["hlc_rifle_416D10C","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_aor1",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_epinephrine",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_tan",[["ACE_packingBandage",5],["ACE_elasticBandage",6],["HandGrenade",1,1],["SmokeShell",6,1],["SmokeShellGreen",3,1],["hlc_30rnd_556x45_SPR_PMAG",7,30]]],["B_mas_nor_Kitbag_d",[["ACE_surgicalKit",1],["ACE_elasticBandage",31],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_adenosine",10],["ACE_plasmaIV",6],["ACE_plasmaIV_250",7],["ACE_plasmaIV_500",2],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],"H_mas_nor_ach_aor1","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - Pilot",[["SMG_03C_TR_black","","","optic_Yorris",["50Rnd_570x28_SMG_03",50],[],""],[],["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],["U_mas_nor_B_CombatUniform_S_aor1",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",20],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_adenosine",1]]],["V_mas_nor_PlateCarrier1_tan",[["SmokeShellGreen",1,1],["SmokeShell",2,1],["6Rnd_GreenSignal_F",1,6],["6Rnd_RedSignal_F",2,6],["SmokeShellBlue",1,1]]],[],"rhsusf_hgu56p_visor_tan","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - Rifleman",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_S_aor1",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrier1_tan",[["HandGrenade",2,1],["SmokeShell",3,1],["SmokeShellGreen",1,1],["hlc_30rnd_556x45_SPR_PMAG",7,30]]],[],"H_mas_nor_ach_aor1","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - Recon IC",[["HLC_Rifle_g3ka4_GL","muzzle_snds_B","","rhsusf_acc_g33_xps3",["ACE_20Rnd_762x51_Mk316_Mod_0_Mag",20],[],""],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_aor1",[["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_MapTools",1],["ACE_Flashlight_MX991",1],["ACE_adenosine",2],["ACE_EntrenchingTool",1],["ACE_morphine",4],["ACE_elasticBandage",10],["ACE_packingBandage",5],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrier1_tan",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellGreen",2,1],["SmokeShellBlue",2,1],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20]]],["tfw_ilbe_whip_coy",[["ACE_HuntIR_monitor",1],["ACE_packingBandage",20],["rhs_mag_M433_HEDP",3,1],["rhs_mag_M397_HET",3,1],["rhs_mag_M441_HE",3,1],["ACE_HuntIR_M203",3,1],["1Rnd_Smoke_Grenade_shell",2,1],["1Rnd_SmokeRed_Grenade_shell",2,1],["1Rnd_SmokeGreen_Grenade_shell",2,1],["Chemlight_green",2,1],["SmokeShell",1,1],["ACE_20Rnd_762x51_M993_AP_Mag",2,20]]],"H_mas_nor_ach_aor1","",["Laserdesignator_01_khk_F","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - Recon Rifleman",[["hlc_rifle_g3ka4","muzzle_snds_B","","rhsusf_acc_g33_xps3",["ACE_20Rnd_762x51_Mk316_Mod_0_Mag",20],[],"rhsusf_acc_harris_bipod"],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_aor1",[["ACE_packingBandage",5],["ACE_morphine",4],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_MX991",1],["ACE_adenosine",2],["ACE_EntrenchingTool",1],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrier1_tan",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellGreen",2,1],["SmokeShellBlue",2,1],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20]]],["B_mas_nor_Kitbag_d",[["ACE_packingBandage",15],["Chemlight_green",2,1],["SmokeShell",1,1],["ACE_20Rnd_762x51_M993_AP_Mag",2,20]]],"H_mas_nor_ach_aor1","",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - Sniper",[["srifle_LRR_F","","","rhsusf_acc_LEUPOLDMK4_2",["7Rnd_408_Mag",7],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_aor1",[["ACE_tourniquet",4],["ACE_elasticBandage",10],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_packingBandage",18],["ACE_MapTools",1],["ACE_IR_Strobe_Item",2],["ACE_morphine",4],["ACE_CableTie",2],["ACE_adenosine",2],["ACE_Flashlight_MX991",1],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrierLR_tan",[["ACE_ATragMX",1],["ACE_Kestrel4500",1],["HandGrenade",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["7Rnd_408_Mag",7,7]]],["tfw_ilbe_blade_coy",[["ACE_Tripod",1],["hlc_30rnd_556x45_SPR_PMAG",4,30],["SmokeShellGreen",2,1],["SmokeShell",2,1]]],"H_mas_nor_ach_aor1","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Desert - Spotter",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_aor1",[["ACE_tourniquet",4],["ACE_elasticBandage",10],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_packingBandage",15],["ACE_MapTools",1],["ACE_IR_Strobe_Item",2],["ACE_morphine",4],["ACE_CableTie",4],["ACE_Flashlight_MX991",1],["ACE_adenosine",2],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrier1_tan",[["ACE_ATragMX",1],["ACE_Kestrel4500",1],["HandGrenade",2,1],["SmokeShell",5,1],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["SmokeShellGreen",2,1],["hlc_30rnd_556x45_SPR_PMAG",5,30]]],["B_mas_nor_Kitbag_d",[["ACE_SpottingScope",1],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["7Rnd_408_Mag",8,7],["hlc_30rnd_556x45_SPR_PMAG",4,30]]],"H_mas_nor_ach_aor1","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		//-------------------------------------------------------------------------------
	};

	if (_climate isEqualTo "multicam" || _climate isEqualTo "all") then {
		["Multicam default loadouts added", "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
		//-------------------------- 2BNB Multicam Kits ------------------------------------
		["2BNB Multicam - Anti-Tank",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["launch_MRAWS_sand_F","","","",["MRAWS_HEAT_F",1],[],""],[],["U_mas_nor_B_CombatUniform_S_multi",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_epinephrine",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]],["V_mas_nor_PlateCarrier1_rgr",[["SmokeShell",5,1],["hlc_30rnd_556x45_SPR_PMAG",8,30]]],["B_mas_nor_Kitbag_m",[["MRAWS_HE_F",1,1],["MRAWS_HEAT_F",4,1],["SmokeShellGreen",1,1]]],"H_mas_nor_ach","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - Blank",[[],[],[],["U_mas_nor_B_CombatUniform_S_multi",[["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EntrenchingTool",1]]],[],[],"BNB_EX_Gear_Unit_Berret","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - Crew",[["hlc_rifle_416D10C","","","optic_Yorris",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],["U_mas_nor_B_CombatUniform_S_multi",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",20],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_adenosine",1]]],["V_mas_nor_PlateCarrier1_rgr",[["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["SmokeShell",2,1],["6Rnd_RedSignal_F",2,6],["6Rnd_GreenSignal_F",1,6],["hlc_30rnd_556x45_SPR_PMAG",6,30]]],[],"H_HelmetCrew_I","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - Engineer/EOD",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["rhs_weap_m72a7","","","",[],[],""],["ACE_VMM3","","","",[],[],""],["U_mas_nor_B_CombatUniform_S_multi",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_rgr",[["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["HandGrenade",2,1],["SmokeShell",3,1],["hlc_30rnd_556x45_SPR_PMAG",8,30]]],["B_mas_nor_Kitbag_m",[["ToolKit",1],["ACE_wirecutter",1],["ACE_SpraypaintBlue",1],["ACE_SpraypaintRed",1],["ACE_M14",2,1],["rhsusf_m112x4_mag",1,1],["rhsusf_m112_mag",4,1],["SmokeShellGreen",1,1]]],"H_mas_nor_ach","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - IC/2IC",[["hlc_rifle_416N_gl","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],["rhs_mag_M441_HE",1],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_multi",[["BNB_EX_Gear_Unit_Berret",1],["ACE_tourniquet",4],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_packingBandage",16],["ACE_MapTools",1],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_CableTie",5],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrier1_rgr",[["SmokeShellBlue",2,1],["SmokeShellGreen",2,1],["SmokeShellRed",2,1],["hlc_30rnd_556x45_SPR_PMAG",7,30],["SmokeShell",3,1]]],["tfw_ilbe_DD_mc",[["ACE_HuntIR_monitor",1],["1Rnd_Smoke_Grenade_shell",3,1],["1Rnd_SmokeRed_Grenade_shell",3,1],["ACE_HuntIR_M203",5,1],["rhs_mag_M397_HET",3,1],["rhs_mag_M433_HEDP",8,1],["rhs_mag_M441_HE",6,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["HandGrenade",2,1],["SmokeShell",3,1],["hlc_30rnd_556x45_SPR_PMAG",2,30]]],"H_mas_nor_ach","",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - LMG 5.56",[["rhs_weap_m249_pip_L","","","",["rhsusf_200rnd_556x45_mixed_box",200],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_multi",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_rgr",[["rhsusf_200rnd_556x45_mixed_box",2,200],["HandGrenade",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],["B_mas_nor_Kitbag_m",[["ACE_SpareBarrel",1,1],["rhsusf_200rnd_556x45_mixed_box",4,200]]],"H_mas_nor_ach","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - LMG 7.62",[["rhs_weap_m240B","","","",["rhsusf_100Rnd_762x51_m80a1epr",100],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_multi",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_rgr",[["HandGrenade",2,1],["SmokeShellGreen",2,1],["SmokeShell",5,1],["rhsusf_100Rnd_762x51_m61_ap",2,100],["rhsusf_100Rnd_762x51_m80a1epr",1,100],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],["B_mas_nor_Kitbag_m",[["ACE_SpareBarrel",1,1],["rhsusf_100Rnd_762x51_m80a1epr",4,100]]],"H_mas_nor_ach","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - Marksman",[["srifle_DMR_06_olive_F","muzzle_snds_B","","rhsusf_acc_su230a_mrds",["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",20],[],"bipod_01_F_blk"],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_multi",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_elasticBandage",5],["ACE_CableTie",5],["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_epinephrine",1],["ACE_tourniquet",4],["ACE_EntrenchingTool",1],["ACE_adenosine",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierLR_rgr",[["ACE_packingBandage",2],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["ACE_20Rnd_762x51_M993_AP_Mag",2,20],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20],["ACE_20Rnd_762x51_Mag_SD",1,20],["SmokeShell",2,1],["SmokeShellGreen",1,1]]],[],"H_mas_nor_ach","",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - Medic",[["hlc_rifle_416D10C","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_multi",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_epinephrine",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_rgr",[["ACE_packingBandage",5],["ACE_elasticBandage",6],["HandGrenade",1,1],["SmokeShell",6,1],["SmokeShellGreen",3,1],["hlc_30rnd_556x45_SPR_PMAG",7,30]]],["B_mas_nor_Kitbag_m",[["ACE_surgicalKit",1],["ACE_elasticBandage",31],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_adenosine",10],["ACE_plasmaIV",6],["ACE_plasmaIV_250",7],["ACE_plasmaIV_500",2],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],"H_mas_nor_ach","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - Pilot",[["SMG_03C_TR_black","","","optic_Yorris",["50Rnd_570x28_SMG_03",50],[],""],[],["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],["U_mas_nor_B_CombatUniform_S_multi",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",20],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_adenosine",1]]],["V_mas_nor_PlateCarrier1_rgr",[["SmokeShellGreen",1,1],["SmokeShell",2,1],["6Rnd_GreenSignal_F",1,6],["6Rnd_RedSignal_F",2,6],["SmokeShellBlue",1,1]]],[],"rhsusf_hgu56p_visor_green","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - Rifleman",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_S_multi",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrier1_rgr",[["HandGrenade",2,1],["SmokeShell",3,1],["SmokeShellGreen",1,1],["hlc_30rnd_556x45_SPR_PMAG",7,30]]],[],"H_mas_nor_ach","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - Recon IC",[["HLC_Rifle_g3ka4_GL","muzzle_snds_B","","rhsusf_acc_g33_xps3",["ACE_20Rnd_762x51_Mk316_Mod_0_Mag",20],[],""],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_multi",[["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_MapTools",1],["ACE_Flashlight_MX991",1],["ACE_adenosine",2],["ACE_EntrenchingTool",1],["ACE_morphine",4],["ACE_elasticBandage",10],["ACE_packingBandage",5],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrier1_rgr",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellGreen",2,1],["SmokeShellBlue",2,1],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20]]],["tfw_ilbe_whip_mc",[["ACE_HuntIR_monitor",1],["ACE_packingBandage",20],["rhs_mag_M433_HEDP",3,1],["rhs_mag_M397_HET",3,1],["rhs_mag_M441_HE",3,1],["ACE_HuntIR_M203",3,1],["1Rnd_Smoke_Grenade_shell",2,1],["1Rnd_SmokeRed_Grenade_shell",2,1],["1Rnd_SmokeGreen_Grenade_shell",2,1],["Chemlight_green",2,1],["SmokeShell",1,1],["ACE_20Rnd_762x51_M993_AP_Mag",2,20]]],"H_mas_nor_ach","",["Laserdesignator_01_khk_F","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - Recon Rifleman",[["hlc_rifle_g3ka4","muzzle_snds_B","","rhsusf_acc_g33_xps3",["ACE_20Rnd_762x51_Mk316_Mod_0_Mag",20],[],"rhsusf_acc_harris_bipod"],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_multi",[["ACE_packingBandage",5],["ACE_morphine",4],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_MX991",1],["ACE_adenosine",2],["ACE_EntrenchingTool",1],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrier1_rgr",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellGreen",2,1],["SmokeShellBlue",2,1],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20]]],["B_mas_nor_Kitbag_m",[["ACE_packingBandage",15],["Chemlight_green",2,1],["SmokeShell",1,1],["ACE_20Rnd_762x51_M993_AP_Mag",2,20]]],"H_mas_nor_ach","",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - Sniper",[["srifle_LRR_F","","","rhsusf_acc_LEUPOLDMK4_2",["7Rnd_408_Mag",7],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_multi",[["ACE_tourniquet",4],["ACE_elasticBandage",10],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_packingBandage",18],["ACE_MapTools",1],["ACE_IR_Strobe_Item",2],["ACE_morphine",4],["ACE_CableTie",2],["ACE_adenosine",2],["ACE_Flashlight_MX991",1],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrierLR_rgr",[["ACE_ATragMX",1],["ACE_Kestrel4500",1],["HandGrenade",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["7Rnd_408_Mag",7,7]]],["tfw_ilbe_blade_mc",[["ACE_Tripod",1],["hlc_30rnd_556x45_SPR_PMAG",4,30],["SmokeShellGreen",2,1],["SmokeShell",2,1]]],"H_mas_nor_ach","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multicam - Spotter",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_multi",[["ACE_tourniquet",4],["ACE_elasticBandage",10],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_packingBandage",15],["ACE_MapTools",1],["ACE_IR_Strobe_Item",2],["ACE_morphine",4],["ACE_CableTie",4],["ACE_Flashlight_MX991",1],["ACE_adenosine",2],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrier1_rgr",[["ACE_ATragMX",1],["ACE_Kestrel4500",1],["HandGrenade",2,1],["SmokeShell",5,1],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["SmokeShellGreen",2,1],["hlc_30rnd_556x45_SPR_PMAG",5,30]]],["B_mas_nor_Kitbag_m",[["ACE_SpottingScope",1],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["7Rnd_408_Mag",8,7],["hlc_30rnd_556x45_SPR_PMAG",4,30]]],"H_mas_nor_ach","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		//-------------------------------------------------------------------------------
	};

	if (_climate isEqualTo "woodland" || _climate isEqualTo "all") then {
		["Woodland default loadouts added", "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
		//-------------------------- 2BNB Woodland Kits ------------------------------------
		["2BNB Woodland - Anti-Tank",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["launch_MRAWS_green_F","","","",["MRAWS_HEAT_F",1],[],""],[],["U_mas_nor_B_CombatUniform_S_aor2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_epinephrine",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]],["V_mas_nor_PlateCarrier1_tan",[["SmokeShell",5,1],["hlc_30rnd_556x45_SPR_PMAG",8,30]]],["B_mas_nor_Kitbag_d",[["MRAWS_HE_F",1,1],["MRAWS_HEAT_F",4,1],["SmokeShellGreen",1,1]]],"H_mas_nor_ach_aor2","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - Blank",[[],[],[],["U_mas_nor_B_CombatUniform_S_aor2",[["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EntrenchingTool",1]]],[],[],"BNB_EX_Gear_Unit_Berret","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - Crew",[["hlc_rifle_416D10C","","","optic_Yorris",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],["U_mas_nor_B_CombatUniform_S_aor2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",20],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_adenosine",1]]],["V_mas_nor_PlateCarrier1_tan",[["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["SmokeShell",2,1],["6Rnd_RedSignal_F",2,6],["6Rnd_GreenSignal_F",1,6],["hlc_30rnd_556x45_SPR_PMAG",6,30]]],[],"H_HelmetCrew_I","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - Engineer/EOD",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["rhs_weap_m72a7","","","",[],[],""],["ACE_VMM3","","","",[],[],""],["U_mas_nor_B_CombatUniform_S_aor2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_tan",[["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["HandGrenade",2,1],["SmokeShell",3,1],["hlc_30rnd_556x45_SPR_PMAG",8,30]]],["B_mas_nor_Kitbag_d",[["ToolKit",1],["ACE_wirecutter",1],["ACE_SpraypaintBlue",1],["ACE_SpraypaintRed",1],["ACE_M14",2,1],["rhsusf_m112x4_mag",1,1],["rhsusf_m112_mag",4,1],["SmokeShellGreen",1,1]]],"H_mas_nor_ach_aor2","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - IC/2IC",[["hlc_rifle_416N_gl","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],["rhs_mag_M441_HE",1],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_aor2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_tourniquet",4],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_packingBandage",16],["ACE_MapTools",1],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_CableTie",5],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrier1_tan",[["SmokeShellBlue",2,1],["SmokeShellGreen",2,1],["SmokeShellRed",2,1],["hlc_30rnd_556x45_SPR_PMAG",7,30],["SmokeShell",3,1]]],["tfw_ilbe_DD_coy",[["ACE_HuntIR_monitor",1],["1Rnd_Smoke_Grenade_shell",3,1],["1Rnd_SmokeRed_Grenade_shell",3,1],["ACE_HuntIR_M203",5,1],["rhs_mag_M397_HET",3,1],["rhs_mag_M433_HEDP",8,1],["rhs_mag_M441_HE",6,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["HandGrenade",2,1],["SmokeShell",3,1],["hlc_30rnd_556x45_SPR_PMAG",2,30]]],"H_mas_nor_ach_aor2","",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - LMG 5.56",[["rhs_weap_m249_pip_L","","","",["rhsusf_200rnd_556x45_mixed_box",200],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_aor2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_tan",[["rhsusf_200rnd_556x45_mixed_box",2,200],["HandGrenade",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],["B_mas_nor_Kitbag_d",[["ACE_SpareBarrel",1,1],["rhsusf_200rnd_556x45_mixed_box",4,200]]],"H_mas_nor_ach_aor2","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - LMG 7.62",[["rhs_weap_m240B","","","",["rhsusf_100Rnd_762x51_m80a1epr",100],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_aor2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_tan",[["HandGrenade",2,1],["SmokeShellGreen",2,1],["SmokeShell",5,1],["rhsusf_100Rnd_762x51_m61_ap",2,100],["rhsusf_100Rnd_762x51_m80a1epr",1,100],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],["B_mas_nor_Kitbag_d",[["ACE_SpareBarrel",1,1],["rhsusf_100Rnd_762x51_m80a1epr",4,100]]],"H_mas_nor_ach_aor2","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - Marksman",[["srifle_DMR_06_olive_F","muzzle_snds_B","","rhsusf_acc_su230a_mrds",["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",20],[],"bipod_01_F_blk"],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_aor2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_elasticBandage",5],["ACE_CableTie",5],["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_epinephrine",1],["ACE_tourniquet",4],["ACE_EntrenchingTool",1],["ACE_adenosine",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierLR_tan",[["ACE_packingBandage",2],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["ACE_20Rnd_762x51_M993_AP_Mag",2,20],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20],["ACE_20Rnd_762x51_Mag_SD",1,20],["SmokeShell",2,1],["SmokeShellGreen",1,1]]],[],"H_mas_nor_ach_aor2","",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - Medic",[["hlc_rifle_416D10C","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_S_aor2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_epinephrine",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_tan",[["ACE_packingBandage",5],["ACE_elasticBandage",6],["HandGrenade",1,1],["SmokeShell",6,1],["SmokeShellGreen",3,1],["hlc_30rnd_556x45_SPR_PMAG",7,30]]],["B_mas_nor_Kitbag_d",[["ACE_surgicalKit",1],["ACE_elasticBandage",31],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_adenosine",10],["ACE_plasmaIV",6],["ACE_plasmaIV_250",7],["ACE_plasmaIV_500",2],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],"H_mas_nor_ach_aor2","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - Pilot",[["SMG_03C_TR_black","","","optic_Yorris",["50Rnd_570x28_SMG_03",50],[],""],[],["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],["U_mas_nor_B_CombatUniform_S_aor2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",20],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_adenosine",1]]],["V_mas_nor_PlateCarrier1_tan",[["SmokeShellGreen",1,1],["SmokeShell",2,1],["6Rnd_GreenSignal_F",1,6],["6Rnd_RedSignal_F",2,6],["SmokeShellBlue",1,1]]],[],"rhsusf_hgu56p_visor","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - Rifleman",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_S_aor2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrier1_tan",[["HandGrenade",2,1],["SmokeShell",3,1],["SmokeShellGreen",1,1],["hlc_30rnd_556x45_SPR_PMAG",7,30]]],[],"H_mas_nor_ach_aor2","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - Recon IC",[["HLC_Rifle_g3ka4_GL","muzzle_snds_B","","rhsusf_acc_g33_xps3",["ACE_20Rnd_762x51_Mk316_Mod_0_Mag",20],[],""],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_aor2",[["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_MapTools",1],["ACE_Flashlight_MX991",1],["ACE_adenosine",2],["ACE_EntrenchingTool",1],["ACE_morphine",4],["ACE_elasticBandage",10],["ACE_packingBandage",5],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrier1_tan",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellGreen",2,1],["SmokeShellBlue",2,1],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20]]],["tfw_ilbe_whip_coy",[["ACE_HuntIR_monitor",1],["ACE_packingBandage",20],["rhs_mag_M433_HEDP",3,1],["rhs_mag_M397_HET",3,1],["rhs_mag_M441_HE",3,1],["ACE_HuntIR_M203",3,1],["1Rnd_Smoke_Grenade_shell",2,1],["1Rnd_SmokeRed_Grenade_shell",2,1],["1Rnd_SmokeGreen_Grenade_shell",2,1],["Chemlight_green",2,1],["SmokeShell",1,1],["ACE_20Rnd_762x51_M993_AP_Mag",2,20]]],"H_mas_nor_ach_aor2","",["Laserdesignator_01_khk_F","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - Recon Rifleman",[["hlc_rifle_g3ka4","muzzle_snds_B","","rhsusf_acc_g33_xps3",["ACE_20Rnd_762x51_Mk316_Mod_0_Mag",20],[],"rhsusf_acc_harris_bipod"],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_aor2",[["ACE_packingBandage",5],["ACE_morphine",4],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_MX991",1],["ACE_adenosine",2],["ACE_EntrenchingTool",1],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrier1_tan",[["HandGrenade",2,1],["SmokeShell",4,1],["SmokeShellGreen",2,1],["SmokeShellBlue",2,1],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20]]],["B_mas_nor_Kitbag_d",[["ACE_packingBandage",15],["Chemlight_green",2,1],["SmokeShell",1,1],["ACE_20Rnd_762x51_M993_AP_Mag",2,20]]],"H_mas_nor_ach_aor2","",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - Sniper",[["srifle_LRR_F","","","rhsusf_acc_LEUPOLDMK4_2",["7Rnd_408_Mag",7],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_aor2",[["ACE_tourniquet",4],["ACE_elasticBandage",10],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_packingBandage",18],["ACE_MapTools",1],["ACE_IR_Strobe_Item",2],["ACE_morphine",4],["ACE_CableTie",2],["ACE_adenosine",2],["ACE_Flashlight_MX991",1],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrierLR_tan",[["ACE_ATragMX",1],["ACE_Kestrel4500",1],["HandGrenade",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["7Rnd_408_Mag",7,7]]],["tfw_ilbe_blade_coy",[["ACE_Tripod",1],["hlc_30rnd_556x45_SPR_PMAG",4,30],["SmokeShellGreen",2,1],["SmokeShell",2,1]]],"H_mas_nor_ach_aor2","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Woodland - Spotter",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_aor2",[["ACE_tourniquet",4],["ACE_elasticBandage",10],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_packingBandage",15],["ACE_MapTools",1],["ACE_IR_Strobe_Item",2],["ACE_morphine",4],["ACE_CableTie",4],["ACE_Flashlight_MX991",1],["ACE_adenosine",2],["BNB_EX_Gear_Unit_Berret",1]]],["V_mas_nor_PlateCarrier1_tan",[["ACE_ATragMX",1],["ACE_Kestrel4500",1],["HandGrenade",2,1],["SmokeShell",5,1],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["SmokeShellGreen",2,1],["hlc_30rnd_556x45_SPR_PMAG",5,30]]],["B_mas_nor_Kitbag_d",[["ACE_SpottingScope",1],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["7Rnd_408_Mag",8,7],["hlc_30rnd_556x45_SPR_PMAG",4,30]]],"H_mas_nor_ach_aor2","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		//-------------------------------------------------------------------------------
	};
};

// [{isClass (configFile >> "CfgPatches" >> "zen_custom_modules")},{
	["2BNB Modules", "Add Barracks Functions",
	{
		// Array of position AGLS, ObjNull or the object under the module as it's placed
		params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

		[_position, _objectUnderCursor] call bnb_es_core_fnc_addBarracks;
	}] call zen_custom_modules_fnc_register;

	["2BNB Modules", "Force Respawn All",
	{
		[] call bnb_es_core_fnc_forceRespawn;
	}] call zen_custom_modules_fnc_register;


	// [{isClass (configFile >> "CfgPatches" >> "klpq_musicRadio")},{
		["2BNB Modules", "Add Music Radio",
		{
			// Array of position AGLS, ObjNull or the object under the module as it's placed
			params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

			[_position, _objectUnderCursor] call bnb_es_core_fnc_addMusicRadio;
		}] call zen_custom_modules_fnc_register;
	// }, [], 120, {
		// ["KLPQ Music Player not loaded!", "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
	// }] call CBA_fnc_waitUntilAndExecute;

	["Zeus Modules loaded", "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
// }, [], 120, {
	// ["ZEN is not loaded!", "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
// }] call CBA_fnc_waitUntilAndExecute;

bnb_es_startedTestingModules = serverTime;
[format["Start testing at %1 seconds after server start", bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
// Testing
[{isClass (configFile >> "CfgPatches" >> "zen_custom_modules")},{
	[format["ZEN loaded successfully at %1 seconds since testing started", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}, [], 120, {
	[format["ZEN not loaded in time! Testing time elapsed: %1", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;

[{isClass (configFile >> "CfgPatches" >> "klpq_musicRadio") && isClass (configFile >> "CfgPatches" >> "zen_custom_modules")},{
	[format["KLPQ Music Player loaded successfully at %1 seconds since testing started", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}, [], 120, {
	[format["KLPQ Music Player not loaded in time! Testing time elapsed: %1", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;

// Testing without time limit
[{isClass (configFile >> "CfgPatches" >> "zen_custom_modules")},{
	[format["ZEN finally loaded successfully at %1 seconds since testing started", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}, [], -1, {
	[format["ZEN never loaded in time! Testing time elapsed: %1", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;

[{isClass (configFile >> "CfgPatches" >> "klpq_musicRadio") && isClass (configFile >> "CfgPatches" >> "zen_custom_modules")},{
	[format["KLPQ Music Player finally loaded successfully at %1 seconds since testing started", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}, [], -1, {
	[format["KLPQ Music Player never loaded in time! Testing time elapsed: %1", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;

// Export the mission setting into the CBA Setting on mission start
if (
	isServer
	&& (["bnb_es_respawn_timer", "mission"] call CBA_settings_fnc_get) isEqualTo (["bnb_es_respawn_timer", "default"] call CBA_settings_fnc_get)
	&& typeName (getMissionConfigValue "respawnDelay") == "SCALAR"
) then {
	[getMissionConfigValue "respawnDelay"] call bnb_es_core_fnc_setRespawnTimer;
};

player addEventHandler ["Killed", {
	params ["_player"];

	private _curators = call bnb_es_core_fnc_getCurators;
	if (_player in _curators) exitWith { // If zeus, instantly respawn
		[] spawn {
			setPlayerRespawnTime 0;
			sleep 2;
			setPlayerRespawnTime bnb_es_respawn_timer;
		};
	};

	setPlayerRespawnTime bnb_es_respawn_timer;

	[format["%1 just died!", name _player]] remoteExec ["bnb_es_core_fnc_notifyZeus", _curators];
	_player setVariable ["bnb_es_diedAt", serverTime, true];
	[format["%1 died at: %2", name _player, _player getVariable "bnb_es_diedAt"], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
}];

player addEventHandler ["Respawn", {
	params ["_player", "_corpse"];

	[["%1 has just respawned!", name _player], "warning"] remoteExec ["bnb_es_core_fnc_notifyZeus", call bnb_es_core_fnc_getCurators];
	[format["%1 respawned at: %2. Died at: %3", name _player, serverTime, _player getVariable "bnb_es_diedAt"], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
}];

// Pass magazine keybinding
[
	"2BNB",
	"bnb_es_passMagazine",
	["Pass magazine", "Pass a magazine to the person you're looking at"],
	{
		private _target = cursorTarget;
		if (
			_target isKindOf "CAManBase"
			&& {[ACE_player, _target, primaryWeapon ACE_player] call ace_interaction_fnc_canPassMagazine}
			&& ACE_player distance _target < 4
		) then {
			[format["%1 passed a magazine", name ACE_player], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
			[ACE_player, _target, primaryWeapon ACE_player] call ace_interaction_fnc_passMagazine;
			playSound "ace_overheating_fixing_pistol";
			hint "Magazine passed!";
		};
	},
	'',
	[0x13, [false, false, true]], // Alt+R
	false,
	0,
	true
] call CBA_fnc_addKeybind;

[{isClass (configFile >> "CfgPatches" >> "tfar_core")},{
	// TFAR Direct Speech Volume Change
	[
		"2BNB",
		"bnb_es_increaseSpeakVolume",
		["Increase Direct Speech Volume", "Use this to increase direct speech volume until ""Yelling"""],
		{
			[true] call bnb_es_core_fnc_changeSpeakVolume;
		},
		'',
		[0xF8, [false, false, true]] // Alt + Mouse wheel Up
	] call CBA_fnc_addKeybind;

	[
		"2BNB",
		"bnb_es_decreaseSpeakVolume",
		["Decrease Direct Speech Volume", "Use this to decrease direct speech volume until ""Whisper"""],
		{
			[false] call bnb_es_core_fnc_changeSpeakVolume;
		},
		'',
		[0xF9, [false, false, true]] // Alt + Mouse wheel Down
	] call CBA_fnc_addKeybind;
}, [], 20, {
	["TFAR is not loaded!", "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;


// Reduce the map volume
addMissionEventHandler ["Map", {
	params ["_mapIsOpened", "_mapIsForced"];

	if (_mapIsOpened) then {

		bnb_es_restoredVolume = missionNamespace getVariable ["acex_volume_initialGameVolume", soundVolume];

		// If player is not in a vehicle, then forget about it!
		if (vehicle player == player) exitWith {};

		ace_hearing_disableVolumeUpdate = true;
		0.1 fadeSound bnb_es_map_volume;
		["Lowered volume in map", "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;

	} else {

		if (isNil "acex_volume_isLowered") then {
			ace_hearing_disableVolumeUpdate = false;

			0.1 fadeSound bnb_es_restoredVolume;
			[format["Restored volume from map to %1", bnb_es_restoredVolume], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;

		} else {

			if (acex_volume_isLowered) then {
				call acex_volume_fnc_lowerVolume;
				["Going back to ACEX lowered volume", "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
			} else {

				if (soundVolume != acex_volume_initialGameVolume) then {
					call acex_volume_fnc_restoreVolume;
					["Letting ACEX restore volume", "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
				};
			};
		};
	};
}];


/**
 * Interact with civilians using gestures
 *
 * Possible gestures:
 * - Freeze:		`ace_gestures_Freeze`
 * - Cover:			`ace_gestures_Cover`
 * - Forward:		`ace_gestures_Forward`
 * - Regroup:		`ace_gestures_Regroup`
 * - Engage:		`ace_gestures_Engage`
 * - Point:			`ace_gestures_Point`
 * - Hold:			`ace_gestures_Hold`
 * - Warning:		`ace_gestures_Warning`
 *
 * - Go:			`gestureGo`
 * - Advance:		`gestureAdvance`
 * - Follow:		`gestureFollow`
 * - Up:			`gestureUp`
 * - Stop:			`gestureFreeze`
 * - Cease Fire:	`gestureCeaseFire`
 *
 * All gestures with `ace_gestures_[x]` have a second stance
 * `ace_gestures_[x]StandLowered` for when the player is standing with a
 * lowered weapon, or without one!
 */
["ace_common_playActionNow", {
	params ["_player", "_gesture"];

	// If it's not a player, don't do anything
	if !(isPlayer _player) exitWith {};

	// The percentage chance a civilian will listen
	private _chance = [0.5, 0.8] select (count weapons _player > 0);
	private _acceptedGestures = [];

// Commands affecting units within angle sector

	// Stop!
	_acceptedGestures = [
		"gestureFreeze",
		"ace_gestures_Hold",
		"ace_gestures_HoldStandLowered",
		"ace_gestures_Freeze",
		"ace_gestures_FreezeStandLowered"
	];

	if ({_x == _gesture} count _acceptedGestures > 0) then {
		{
			if !(_x isEqualTo _player) then {
				if (count weapons _x == 0 && {random 1 < _chance}) then {
					if ([position _player, getDir _player, 30, position _x] call BIS_fnc_inAngleSector) then {
						if (vehicle _x == _x) then {
							// In case unit is following someone
							_x setVariable ["bnb_es_following", nil, true];

							[format["%1 told %2 to stop with a %3 gesture", _player, _x, _gesture], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
							doStop _x;
							false;
						} else {
							[format["%1 detected %2 in a vehicle for stop gesture", _player, _x, _gesture], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
							if (effectiveCommander (vehicle _x) isEqualTo _x) then {
								// In case unit is following someone
								_x setVariable ["bnb_es_following", nil, true];

								[format["%1 told %2 to stop with a %3 gesture", _player, _x, _gesture], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
								doStop _x;
								false;
							};
						};
					};
				};
			};
		} count ((entities [["Man"], [], true, true]) inAreaArray [position _player, 50, 50]);
	};

	// Go away!
	_acceptedGestures = [
		"gestureGo",
		"gestureAdvance",
		"ace_gestures_Forward",
		"ace_gestures_ForwardStandLowered",
		"ace_gestures_Engage",
		"ace_gestures_EngageStandLowered"
	];

	if ({_x == _gesture} count _acceptedGestures > 0) then {
		// Source: https://github.com/acemod/ACE3/blob/master/addons/interaction/functions/fnc_sendAway.sqf
		// Extracted from source to avoid an infinite loop caused by line 23 in source
		{
			if (count weapons _x == 0 && {random 1 < _chance}) then {
				if ([position _player, getDir _player, 40, position _x] call BIS_fnc_inAngleSector) then {
					[format["%1 told %2 to go away with a %3 gesture", _player, _x, _gesture], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
					// In case unit is following someone
					_x setVariable ["bnb_es_following", nil, true];

					private _position = getPosASL _player vectorAdd (eyeDirection _player vectorMultiply 50);
					_position set [2, 0];

					["ace_interaction_sendAway", [_x, _position], [_x]] call CBA_fnc_targetEvent;
				};
			};
			false;
		} count (_player nearEntities ["Man", 10]);
	};

// Commands affecting units only under cursor
	private _target = cursorTarget;
	if !(_target isKindOf "Man") exitWith {};

	// Follow!
	_acceptedGestures = ["gestureFollow"];

	if ({_x == _gesture} count _acceptedGestures > 0 && _player distance _target < 10) then {

		if (count weapons _target == 0 && {random 1 < _chance}) then {
		[format["%1 told %2 to follow using a %3 gesture", _player, _target, _gesture], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;

			private _following = [_target, _player] spawn {
				params ["_target", "_player"];
				_target setVariable ["bnb_es_following", _player, true];

				[format["%1 about to move to %2 (%3)", _target, _player, _target getVariable ["bnb_es_following", "nothing"]], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
				private _playerPosition = [];
				private _index = 0;

				while {(_target getVariable ["bnb_es_following", false]) isEqualTo _player} do {
					if (_index > 30) exitWith {
						_target setVariable ["bnb_es_following", nil, true];
					};

					if !(_playerPosition isEqualTo (getPosASL _player)) then {
						[format["%1 moving", _target], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
						_target doMove (getPosASL _player vectorDiff (vectorDir _player vectorMultiply 4));
						_playerPosition = getPosASL _player;
					};

					sleep 2;
					_index = 1 + _index;
				};
			};

		};
	};


	// Hi there!
	_acceptedGestures = [
		"ace_gestures_Cover",
		"ace_gestures_CoverStandLowered",
		"ace_gestures_Warning",
		"ace_gestures_WarningStandLowered"
	];

	if ({_x == _gesture} count _acceptedGestures > 0) then {
		if (
			[position _target, getDir _target, 120, position _player] call BIS_fnc_inAngleSector
			&& ((side group _target) getFriend (side group _player)) > 0.6 // Is friendly-ish?
		) then {
			[format["%1 waved at %2 with a %3 gesture", _player, _target, _gesture], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
			[_target, _player] spawn {
				_target = _this select 0;
				sleep 1;
				[_target, "ace_gestures_WarningStandLowered"] call ace_common_fnc_doGesture;
			};
		};
	};
}] call CBA_fnc_addEventHandler;
