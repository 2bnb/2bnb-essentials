[] spawn {
	// Suspend the whole damn thing until the required CBA Settings are available
	waitUntil {
		sleep 0.5;
		!(isNil "cba_settings_ready")
	};

	[format["Current climate: %1", missionNamespace getVariable (format["bnb_es_climate_%1", worldName])], "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
	private _climate = missionNamespace getVariable [format["bnb_es_climate_%1", worldName], "all"];

	// if (_climate isEqualTo "arctic" || _climate isEqualTo "all") then {
	// 	["Arctic default loadouts added", "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
	// 	//-------------------------- 2BNB Arctic Kits ------------------------------------
	// 	["2BNB Arctic - Anti-Tank",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["BNB_EX_Gear_SAW_W_MAAWS1","","","",["MRAWS_HEAT_F",1],[],""],[],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_epinephrine",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]],["V_mas_nor_PlateCarrier1_wint",[["SmokeShell",5,1],["hlc_30rnd_556x45_SPR_PMAG",8,30]]],["B_mas_nor_Kitbag_w2",[["MRAWS_HE_F",1,1],["MRAWS_HEAT_F",4,1],["SmokeShellGreen",1,1]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
	// 	["2BNB Arctic - Blank",[[],[],[],["U_mas_nor_B_CombatUniform_wint2",[["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EntrenchingTool",1]]],[],[],"BNB_EX_Gear_Unit_Berret","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
	// 	["2BNB Arctic - Crew",[["hlc_rifle_416D10C","","","optic_Yorris",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",20],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",2],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_adenosine",1]]],["V_mas_nor_PlateCarrier1_wint",[["SmokeShellRed",1,1],["SmokeShellGreen",1,1],["SmokeShell",2,1],["6Rnd_RedSignal_F",2,6],["6Rnd_GreenSignal_F",1,6],["hlc_30rnd_556x45_SPR_PMAG",6,30]]],[],"H_HelmetCrew_I","G_mas_nor_Bandanna_W",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
	// 	["2BNB Arctic - Engineer/EOD",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["rhs_weap_m72a7","","","",[],[],""],["ACE_VMM3","","","",[],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_wint",[["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["HandGrenade",2,1],["SmokeShell",3,1],["hlc_30rnd_556x45_SPR_PMAG",8,30]]],["B_mas_nor_Kitbag_w2",[["ToolKit",1],["ACE_wirecutter",1],["ACE_SpraypaintBlue",1],["ACE_SpraypaintRed",1],["ACE_M14",2,1],["rhsusf_m112x4_mag",1,1],["rhsusf_m112_mag",4,1],["SmokeShellGreen",1,1]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
	// 	["2BNB Arctic - IC/2IC",[["hlc_rifle_416N_gl","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],["rhs_mag_M441_HE",1],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_tourniquet",4],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_packingBandage",16],["ACE_MapTools",1],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_CableTie",5],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrier1_wint",[["SmokeShellBlue",2,1],["SmokeShellGreen",2,1],["SmokeShellRed",2,1],["hlc_30rnd_556x45_SPR_PMAG",7,30],["SmokeShell",3,1]]],["tfw_ilbe_DD_alpine",[["ACE_HuntIR_monitor",1],["1Rnd_Smoke_Grenade_shell",3,1],["1Rnd_SmokeRed_Grenade_shell",3,1],["ACE_HuntIR_M203",5,1],["rhs_mag_M397_HET",3,1],["rhs_mag_M433_HEDP",8,1],["rhs_mag_M441_HE",6,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["HandGrenade",2,1],["SmokeShell",3,1],["hlc_30rnd_556x45_SPR_PMAG",2,30]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
	// 	["2BNB Arctic - LMG",[["rhs_weap_m249_pip_L","","","",["rhsusf_200rnd_556x45_mixed_box",200],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_wint",[["rhsusf_200rnd_556x45_mixed_box",2,200],["HandGrenade",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],["B_mas_nor_Kitbag_w2",[["ACE_SpareBarrel",1,1],["rhsusf_200rnd_556x45_mixed_box",4,200]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
	// 	["2BNB Arctic - Marksman",[["srifle_DMR_06_olive_F","muzzle_snds_B","","rhsusf_acc_su230a_mrds",["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",20],[],"bipod_01_F_blk"],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_elasticBandage",5],["ACE_CableTie",5],["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_epinephrine",1],["ACE_tourniquet",4],["ACE_EntrenchingTool",1],["ACE_adenosine",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierLR_wint",[["ACE_packingBandage",2],["rhsusf_mag_17Rnd_9x19_FMJ",1,17],["ACE_20Rnd_762x51_M993_AP_Mag",2,20],["ACE_20Rnd_762x51_Mk319_Mod_0_Mag",7,20],["ACE_20Rnd_762x51_Mag_SD",1,20],["SmokeShell",2,1],["SmokeShellGreen",1,1]]],[],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
	// 	["2BNB Arctic - Medic",[["hlc_rifle_416D10C","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_epinephrine",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrierAR_wint",[["ACE_packingBandage",5],["ACE_elasticBandage",6],["HandGrenade",1,1],["SmokeShell",6,1],["SmokeShellGreen",3,1],["hlc_30rnd_556x45_SPR_PMAG",7,30]]],["B_mas_nor_Kitbag_w2",[["ACE_surgicalKit",1],["ACE_elasticBandage",31],["ACE_packingBandage",30],["ACE_tourniquet",4],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_adenosine",10],["ACE_plasmaIV",6],["ACE_plasmaIV_250",7],["ACE_plasmaIV_500",2],["rhsusf_mag_17Rnd_9x19_FMJ",2,17]]],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
	// 	["2BNB Arctic - Pilot",[["SMG_03C_TR_black","","","optic_Yorris",["50Rnd_570x28_SMG_03",50],[],""],[],["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",20],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",10],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_adenosine",1]]],["V_mas_nor_PlateCarrier1_wint",[["SmokeShellGreen",1,1],["SmokeShell",2,1],["6Rnd_GreenSignal_F",1,6],["6Rnd_RedSignal_F",2,6],["SmokeShellBlue",1,1]]],[],"rhsusf_hgu56p_visor_white","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
	// 	["2BNB Arctic - Rifleman",[["hlc_rifle_416N","","","rhsusf_acc_eotech_552",["hlc_30rnd_556x45_SPR_PMAG",30],[],""],["rhs_weap_m72a7","","","",[],[],""],[],["U_mas_nor_B_CombatUniform_wint2",[["BNB_EX_Gear_Unit_Berret",1],["ACE_packingBandage",16],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_CableTie",5],["ACE_elasticBandage",5],["ACE_MapTools",1],["ACE_adenosine",1],["ACE_EntrenchingTool",1],["ACE_Flashlight_XL50",1]]],["V_mas_nor_PlateCarrier1_wint",[["HandGrenade",2,1],["SmokeShell",3,1],["SmokeShellGreen",1,1],["hlc_30rnd_556x45_SPR_PMAG",7,30]]],[],"H_mas_nor_opscore_w","G_mas_nor_Bandanna_W",[],["ItemMap","ItemGPS","TFAR_anprc152_5","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
	// 	//-------------------------------------------------------------------------------
	// };

	if (_climate isEqualTo "desert" || _climate isEqualTo "arctic" || _climate isEqualTo "all") then {
		["Tropentarn default loadouts added", "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
		//------------------------- 2BNB Tropentarn Kits --------------------------------------
		["2BNB Tropentarn - Anti-Tank",[["BWA3_G36A3","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],["launch_MRAWS_sand_F","","","",["MRAWS_HEAT_F",1],[],""],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Tropen",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Rifleman_Tropen",[["BWA3_30Rnd_556x45_G36",12,30],["SmokeShell",2,1],["HandGrenade",2,1],["SmokeShellGreen",1,1]]],["BWA3_TacticalPack_Tropen",[["ACE_EntrenchingTool",1]]],"BWA3_M92_Tropen","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Tropentarn - Blank",[[],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform_Tropen",[["FirstAidKit",1],["BWA3_DM25",1,1]]],[],["",[]],"BWA3_Beret_Jaeger","",[],["ItemMap","BWA3_ItemNaviPad","ItemRadio","ItemCompass","ItemWatch",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Tropentarn - Crew",[["BWA3_G38C","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Tropen",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["BWA3_15Rnd_9x19_P8",1,15]]],["BWA3_Vest_Tropen",[["SmokeShell",3,1],["HandGrenade",2,1],["BWA3_30Rnd_556x45_G36_Tracer_Dim",4,30]]],[],"BWA3_CrewmanKSK_Tropen_Headset","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Tropentarn - Engineer/EOD",[["BWA3_G36A3","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Tropen",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Rifleman_Tropen",[["BWA3_30Rnd_556x45_G36",12,30],["SmokeShell",4,1],["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1]]],["BWA3_TacticalPack_Tropen",[["ACE_EntrenchingTool",1],["ACE_M26_Clacker",1],["DemoCharge_Remote_Mag",4,1],["ClaymoreDirectionalMine_Remote_Mag",2,1]]],"BWA3_M92_Tropen","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Tropentarn - IC/2IC",[["BWA3_G36A3_AG40","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Tropen",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Leader_Tropen",[["SmokeShell",4,1],["SmokeShellGreen",2,1],["BWA3_30Rnd_556x45_G36",11,30],["SmokeShellBlue",2,1],["HandGrenade",2,1]]],["tfw_ilbe_DD_d",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["ACE_HuntIR_M203",5,1],["1Rnd_Smoke_Grenade_shell",5,1],["1Rnd_SmokeRed_Grenade_shell",5,1],["1Rnd_HE_Grenade_shell",20,1]]],"BWA3_M92_Tropen","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Tropentarn - LMG",[["BWA3_MG5","","","BWA3_optic_CompM2",["BWA3_120Rnd_762x51_Tracer_soft",120],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Tropen",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_MachineGunner_Tropen",[["SmokeShell",3,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["BWA3_120Rnd_762x51_Tracer_soft",2,120],["SmokeShellBlue",1,1]]],["BWA3_TacticalPack_Tropen",[["ACE_EntrenchingTool",1],["BWA3_120Rnd_762x51_Tracer_soft",4,120]]],"BWA3_M92_Tropen","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Tropentarn - Marksman",[["BWA3_G28","muzzle_snds_B","","BWA3_optic_PMII_ShortdotCC",["BWA3_20Rnd_762x51_G28_LR",20],[],"BWA3_bipod_Harris_tan"],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Tropen",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["BWA3_15Rnd_9x19_P8",1,15]]],["BWA3_Vest_Marksman_Tropen",[["SmokeShell",3,1],["HandGrenade",2,1],["BWA3_20Rnd_762x51_G28_AP",3,20],["BWA3_20Rnd_762x51_G28_LR",3,20],["BWA3_20Rnd_762x51_G28_Tracer_Dim",3,20]]],[],"BWA3_M92_Tropen","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Tropentarn - Medic",[["BWA3_G36A3","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Tropen",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Medic_Tropen",[["ACE_surgicalKit",1],["SmokeShell",4,1],["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["BWA3_30Rnd_556x45_G36",10,30]]],["BWA3_TacticalPack_Tropen",[["ACE_EntrenchingTool",1],["ACE_elasticBandage",40],["ACE_bloodIV_250",14],["ACE_bloodIV_500",6],["ACE_adenosine",5],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_tourniquet",2],["ACE_packingBandage",10]]],"BWA3_M92_Tropen","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Tropentarn - Pilot",[[],[],["BWA3_MP7","","","",["BWA3_40Rnd_46x30_MP7",40],[],""],["BWA3_Uniform_Crew_Tropen",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["BWA3_40Rnd_46x30_MP7",2,40],["SmokeShellOrange",1,1],["SmokeShellGreen",1,1]]],[],[],"BWA3_Knighthelm","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Tropentarn - Rifleman",[["BWA3_G36A3","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Tropen",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Rifleman_Tropen",[["BWA3_30Rnd_556x45_G36",12,30],["SmokeShell",4,1],["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1]]],["BWA3_TacticalPack_Tropen",[["ACE_EntrenchingTool",1]]],"BWA3_M92_Tropen","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		//-------------------------------------------------------------------------------
	};

	if (_climate isEqualTo "multicam" || _climate isEqualTo "all") then {
		["Multitarn default loadouts added", "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
		//-------------------------- 2BNB Multitarn Kits ------------------------------------
		["2BNB Multitarn - Anti-Tank",[["BWA3_G36A3","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],["launch_MRAWS_olive_F","","","",["MRAWS_HEAT_F",1],[],""],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Multi",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Rifleman_Multi",[["BWA3_30Rnd_556x45_G36",12,30],["SmokeShell",2,1],["HandGrenade",2,1],["SmokeShellGreen",1,1]]],["BWA3_TacticalPack_Multi",[["ACE_EntrenchingTool",1]]],"BWA3_M92_Multi","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multitarn - Blank",[[],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform_Multi",[["FirstAidKit",1],["BWA3_DM25",1,1]]],[],["",[]],"BWA3_Beret_Jaeger","",[],["ItemMap","BWA3_ItemNaviPad","ItemRadio","ItemCompass","ItemWatch",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multitarn - Crew",[["BWA3_G38C","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Multi",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["BWA3_15Rnd_9x19_P8",1,15]]],["BWA3_Vest_Multi",[["SmokeShell",3,1],["HandGrenade",2,1],["BWA3_30Rnd_556x45_G36_Tracer_Dim",4,30]]],[],"BWA3_CrewmanKSK_Fleck_Headset","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multitarn - Engineer/EOD",[["BWA3_G36A3","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Multi",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Rifleman_Multi",[["BWA3_30Rnd_556x45_G36",12,30],["SmokeShell",4,1],["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1]]],["BWA3_TacticalPack_Multi",[["ACE_EntrenchingTool",1],["ACE_M26_Clacker",1],["DemoCharge_Remote_Mag",4,1],["ClaymoreDirectionalMine_Remote_Mag",2,1]]],"BWA3_M92_Multi","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multitarn - IC/2IC",[["BWA3_G36A3_AG40","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Multi",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Leader_Multi",[["SmokeShell",4,1],["SmokeShellGreen",2,1],["BWA3_30Rnd_556x45_G36",11,30],["SmokeShellBlue",2,1],["HandGrenade",2,1]]],["tfw_ilbe_blade_mc",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["ACE_HuntIR_M203",5,1],["1Rnd_Smoke_Grenade_shell",5,1],["1Rnd_SmokeRed_Grenade_shell",5,1],["1Rnd_HE_Grenade_shell",20,1]]],"BWA3_M92_Multi","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multitarn - LMG",[["BWA3_MG5","","","BWA3_optic_CompM2",["BWA3_120Rnd_762x51_Tracer_soft",120],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Multi",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_MachineGunner_Multi",[["SmokeShell",3,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["BWA3_120Rnd_762x51_Tracer_soft",2,120],["SmokeShellBlue",1,1]]],["BWA3_TacticalPack_Multi",[["ACE_EntrenchingTool",1],["BWA3_120Rnd_762x51_Tracer_soft",4,120]]],"BWA3_M92_Multi","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multitarn - Marksman",[["BWA3_G28","muzzle_snds_B","","BWA3_optic_PMII_ShortdotCC",["BWA3_20Rnd_762x51_G28_LR",20],[],"BWA3_bipod_Harris_tan"],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Multi",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["BWA3_15Rnd_9x19_P8",1,15]]],["BWA3_Vest_Marksman_Multi",[["SmokeShell",3,1],["HandGrenade",2,1],["BWA3_20Rnd_762x51_G28_AP",3,20],["BWA3_20Rnd_762x51_G28_LR",3,20],["BWA3_20Rnd_762x51_G28_Tracer_Dim",3,20]]],[],"BWA3_M92_Multi","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multitarn - Medic",[["BWA3_G36A3","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Multi",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Medic_Multi",[["ACE_surgicalKit",1],["SmokeShell",4,1],["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["BWA3_30Rnd_556x45_G36",10,30]]],["BWA3_TacticalPack_Multi",[["ACE_EntrenchingTool",1],["ACE_elasticBandage",40],["ACE_bloodIV_250",14],["ACE_bloodIV_500",6],["ACE_adenosine",5],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_tourniquet",2],["ACE_packingBandage",10]]],"BWA3_M92_Multi","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multitarn - Pilot",[[],[],["BWA3_MP7","","","",["BWA3_40Rnd_46x30_MP7",40],[],""],["BWA3_Uniform_Crew_Multi",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["BWA3_40Rnd_46x30_MP7",2,40],["SmokeShellOrange",1,1],["SmokeShellGreen",1,1]]],[],[],"BWA3_Knighthelm","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Multitarn - Rifleman",[["BWA3_G36A3","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Multi",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Rifleman_Multi",[["BWA3_30Rnd_556x45_G36",12,30],["SmokeShell",4,1],["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1]]],["BWA3_TacticalPack_Multi",[["ACE_EntrenchingTool",1]]],"BWA3_M92_Multi","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		//-------------------------------------------------------------------------------
	};

	if (_climate isEqualTo "woodland" || _climate isEqualTo "all") then {
		["Flecktarn default loadouts added", "core\XEH_postInit.sqf"] call bnb_es_core_fnc_log;
		//-------------------------- 2BNB Flecktarn Kits ------------------------------------
		["2BNB Flecktarn - Anti-Tank",[["BWA3_G36A3","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],["launch_MRAWS_olive_F","","","",["MRAWS_HEAT_F",1],[],""],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Fleck",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Rifleman_Fleck",[["BWA3_30Rnd_556x45_G36",12,30],["SmokeShell",2,1],["HandGrenade",2,1],["SmokeShellGreen",1,1]]],["BWA3_TacticalPack_Fleck",[["ACE_EntrenchingTool",1],["MRAWS_HEAT_F",2,1]]],"BWA3_M92_Fleck","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Flecktarn - Blank",[[],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform_Fleck",[["FirstAidKit",1],["BWA3_DM25",1,1]]],[],["",[]],"BWA3_Beret_Jaeger","",[],["ItemMap","BWA3_ItemNaviPad","ItemRadio","ItemCompass","ItemWatch",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Flecktarn - Crew",[["BWA3_G38C","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Fleck",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["BWA3_15Rnd_9x19_P8",1,15]]],["BWA3_Vest_Fleck",[["SmokeShell",3,1],["HandGrenade",2,1],["BWA3_30Rnd_556x45_G36_Tracer_Dim",4,30]]],[],"BWA3_CrewmanKSK_Fleck","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Flecktarn - Engineer/EOD",[["BWA3_G36A3","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Fleck",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Rifleman_Fleck",[["BWA3_30Rnd_556x45_G36",12,30],["SmokeShell",4,1],["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1]]],["BWA3_TacticalPack_Fleck",[["ACE_EntrenchingTool",1],["ACE_M26_Clacker",1],["DemoCharge_Remote_Mag",4,1],["ClaymoreDirectionalMine_Remote_Mag",2,1]]],"BWA3_M92_Fleck","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Flecktarn - IC/2IC",[["BWA3_G36A3_AG40","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Fleck",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Leader_Fleck",[["SmokeShell",4,1],["SmokeShellGreen",2,1],["BWA3_30Rnd_556x45_G36",11,30],["SmokeShellBlue",2,1],["HandGrenade",2,1]]],["tfw_ilbe_DD_wd",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["ACE_HuntIR_M203",5,1],["1Rnd_Smoke_Grenade_shell",5,1],["1Rnd_SmokeRed_Grenade_shell",5,1],["1Rnd_HE_Grenade_shell",20,1]]],"BWA3_M92_Fleck","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Flecktarn - LMG",[["BWA3_MG5","","","BWA3_optic_CompM2",["BWA3_120Rnd_762x51_Tracer_soft",120],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Fleck",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_MachineGunner_Fleck",[["SmokeShell",3,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["BWA3_120Rnd_762x51_Tracer_soft",2,120],["SmokeShellBlue",1,1]]],["BWA3_TacticalPack_Fleck",[["ACE_EntrenchingTool",1],["BWA3_120Rnd_762x51_Tracer_soft",4,120]]],"BWA3_M92_Fleck","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Flecktarn - Marksman",[["BWA3_G28","muzzle_snds_B","","BWA3_optic_PMII_ShortdotCC",["BWA3_20Rnd_762x51_G28_LR",20],[],"BWA3_bipod_Harris_tan"],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Fleck",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["BWA3_15Rnd_9x19_P8",1,15]]],["BWA3_Vest_Marksman_Fleck",[["SmokeShell",3,1],["HandGrenade",2,1],["BWA3_20Rnd_762x51_G28_AP",3,20],["BWA3_20Rnd_762x51_G28_LR",3,20],["BWA3_20Rnd_762x51_G28_Tracer_Dim",3,20]]],[],"BWA3_M92_Fleck","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Flecktarn - Medic",[["BWA3_G36A3","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Fleck",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Medic_Fleck",[["ACE_surgicalKit",1],["BWA3_30Rnd_556x45_G36",10,30],["SmokeShell",4,1],["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1]]],["BWA3_TacticalPack_Fleck",[["ACE_EntrenchingTool",1],["ACE_elasticBandage",40],["ACE_bloodIV_250",14],["ACE_bloodIV_500",6],["ACE_adenosine",5],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_tourniquet",2],["ACE_packingBandage",10]]],"BWA3_M92_Fleck","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Flecktarn - Pilot",[[],[],["BWA3_MP7","","","",["BWA3_40Rnd_46x30_MP7",40],[],""],["BWA3_Uniform_Crew_Fleck",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["BWA3_40Rnd_46x30_MP7",2,40],["SmokeShellOrange",1,1],["SmokeShellGreen",1,1]]],[],[],"BWA3_Knighthelm","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		["2BNB Flecktarn - Rifleman",[["BWA3_G36A3","","","BWA3_optic_CompM2",["BWA3_30Rnd_556x45_G36",30],[],""],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["BWA3_Uniform2_sleeves_Fleck",[["ACE_elasticBandage",5],["ACE_packingBandage",10],["ACE_adenosine",1],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_IR_Strobe_Item",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["BWA3_Vest_Rifleman_Fleck",[["BWA3_30Rnd_556x45_G36",12,30],["SmokeShell",4,1],["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1]]],["BWA3_TacticalPack_Fleck",[["ACE_EntrenchingTool",1]]],"BWA3_M92_Fleck","",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]] call ace_arsenal_fnc_addDefaultLoadout;
		//-------------------------------------------------------------------------------
	};
};

[{isClass (configFile >> "CfgPatches" >> "zen_custom_modules")},{
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

	["ZEN loaded successfully", "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}, [], 120, {
	["ZEN not loaded in time!", "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;


[{isClass (configFile >> "CfgPatches" >> "klpq_musicRadio") && isClass (configFile >> "CfgPatches" >> "zen_custom_modules")},{
	["2BNB Modules", "Add Music Radio",
	{
		// Array of position AGLS, ObjNull or the object under the module as it's placed
		params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

		[_position, _objectUnderCursor] call bnb_es_core_fnc_addMusicRadio;
	}] call zen_custom_modules_fnc_register;

	["KLPQ Music Player loaded successfully", "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}, [], 120, {
	["KLPQ Music Player not loaded in time!", "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
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
