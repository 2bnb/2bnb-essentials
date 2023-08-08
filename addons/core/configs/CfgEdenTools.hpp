#define CAMO0_ASTEAMLEADER "BNB_FA_UK_IC_MTP"
#define MTP_TEAMLEADER "BNB_FA_UK_IC_MTP"
#define camo0_MEDIC "BNB_FA_UK_Medic_MTP"
#define MTP_RIFLEMAN "BNB_FA_UK_Rifleman_MTP"

#define DESERT_ASTEAMLEADER "BNB_FA_UK_IC_Desert"
#define DESERT_TEAMLEADER "BNB_FA_UK_IC_Desert"
#define DESERT_MEDIC "BNB_FA_UK_Medic_Desert"
#define DESERT_RIFLEMAN "BNB_FA_UK_Rifleman_Desert"

#define WOODLAND_ASTEAMLEADER "BNB_FA_UK_IC_Woodland"
#define WOODLAND_TEAMLEADER "BNB_FA_UK_IC_Woodland"
#define WOODLAND_MEDIC "BNB_FA_UK_Medic_Woodland"
#define WOODLAND_RIFLEMAN "BNB_FA_UK_Rifleman_Woodland"

class ctrlMenuStrip;
class display3DEN
{
	class Controls
	{
		class MenuStrip: ctrlMenuStrip
		{
			class Items
			{
				class Tools {
					items[] += {"BNB_ES_Tools"};
				};
				class bnb_es_tools {
					text = "2BNB Tools...";
					items[] = {"BNB_ES_Settings", "BNB_ES_Assets"};
				};
				class bnb_es_settings {
					text = "Load 2BNB Settings";
					action = "['Are you sure you want to overwrite current settings with 2BNB defaults?', 'Load 2BNB Settings', ['Overwrite', {[] call bnb_es_core_fnc_edenLoadSettings}], true] call BIS_fnc_3DENShowMessage";
				};
				class bnb_es_assets {
					text = "Load 2BNB Slots & Modules";
					action = "findDisplay 313 createDisplay 'bnb_es_edenGUI'";
				};
			};
		};
	};
};
class CfgGroups
{
	class West {
		class bnb_es_compositions {
			name = "2BNB";
			scope = 0;
			class infantry {
				name = "";
				class MTP_zeus {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = CAMO0_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {1,0,0};
						vehicle = CAMO0_ASTEAMLEADER;
						rank = "PRIVATE";
					};
				};
				class MTP_section {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = MTP_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = CAMO0_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = MTP_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = MTP_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit4 {
						position[] = {1,0,0};
						vehicle = MTP_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit5 {
						position[] = {1,-3,0};
						vehicle = MTP_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit6 {
						position[] = {1,-6,0};
						vehicle = MTP_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit7 {
						position[] = {1,-9,0};
						vehicle = MTP_RIFLEMAN;
						rank = "PRIVATE";
					};

				};
				class MTP_command {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = MTP_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = CAMO0_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = MTP_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = MTP_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class MTP_defaults {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = MTP_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1{
						position[] = {0,-6,0};
						vehicle = MTP_MEDIC;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-9,0};
						vehicle = MTP_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class DESERT_zeus {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = DESERT_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {1,0,0};
						vehicle = DESERT_ASTEAMLEADER;
						rank = "PRIVATE";
					};
				};
				class DESERT_section {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = DESERT_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = DESERT_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = DESERT_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = DESERT_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit4 {
						position[] = {1,0,0};
						vehicle = DESERT_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit5 {
						position[] = {1,-3,0};
						vehicle = DESERT_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit6 {
						position[] = {1,-6,0};
						vehicle = DESERT_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit7 {
						position[] = {1,-9,0};
						vehicle = DESERT_RIFLEMAN;
						rank = "PRIVATE";
					};

				};
				class DESERT_command {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = DESERT_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = DESERT_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = DESERT_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = DESERT_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class DESERT_defaults {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = DESERT_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1{
						position[] = {0,-6,0};
						vehicle = DESERT_MEDIC;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-9,0};
						vehicle = DESERT_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class WOODLAND_zeus {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = WOODLAND_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {1,0,0};
						vehicle = WOODLAND_ASTEAMLEADER;
						rank = "PRIVATE";
					};
				};
				class WOODLAND_section {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = WOODLAND_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = WOODLAND_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = WOODLAND_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit4 {
						position[] = {1,0,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit5 {
						position[] = {1,-3,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit6 {
						position[] = {1,-6,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit7 {
						position[] = {1,-9,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};

				};
				class WOODLAND_command {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = WOODLAND_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = WOODLAND_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = WOODLAND_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class WOODLAND_defaults {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = WOODLAND_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1{
						position[] = {0,-3,0};
						vehicle = WOODLAND_MEDIC;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
			};
		};
	};
};
