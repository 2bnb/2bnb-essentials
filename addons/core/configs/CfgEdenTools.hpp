#define CAMO0_ASTEAMLEADER "BNB_FA_UK_IC_MTP"
#define CAMO0_TEAMLEADER "BNB_FA_UK_IC_MTP"
#define CAMO0_MEDIC "BNB_FA_UK_Medic_MTP"
#define CAMO0_RIFLEMAN "BNB_FA_UK_Rifleman_MTP"

#define CAMO1_ASTEAMLEADER "BNB_FA_UK_IC_Desert"
#define CAMO1_TEAMLEADER "BNB_FA_UK_IC_Desert"
#define CAMO1_MEDIC "BNB_FA_UK_Medic_Desert"
#define CAMO1_RIFLEMAN "BNB_FA_UK_Rifleman_Desert"

#define CAMO2_ASTEAMLEADER "BNB_FA_UK_IC_Woodland"
#define CAMO2_TEAMLEADER "BNB_FA_UK_IC_Woodland"
#define CAMO2_MEDIC "BNB_FA_UK_Medic_Woodland"
#define CAMO2_RIFLEMAN "BNB_FA_UK_Rifleman_Woodland"

#define PILOT "UK3CB_BAF_HeliPilot_Army_MTP"
#define CREW "UK3CB_BAF_Crewman_RTR_MTP"

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
				class CAMO0_zeus {
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
				class CAMO0_section {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = CAMO0_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = CAMO0_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = CAMO0_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = CAMO0_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit4 {
						position[] = {1,0,0};
						vehicle = CAMO0_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit5 {
						position[] = {1,-3,0};
						vehicle = CAMO0_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit6 {
						position[] = {1,-6,0};
						vehicle = CAMO0_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit7 {
						position[] = {1,-9,0};
						vehicle = CAMO0_RIFLEMAN;
						rank = "PRIVATE";
					};

				};
				class CAMO0_command {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = CAMO0_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = CAMO0_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = CAMO0_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = CAMO0_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class CAMO0_defaults {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = CAMO0_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1{
						position[] = {0,-6,0};
						vehicle = CAMO0_MEDIC;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-9,0};
						vehicle = CAMO0_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class CAMO1_zeus {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = CAMO1_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {1,0,0};
						vehicle = CAMO1_ASTEAMLEADER;
						rank = "PRIVATE";
					};
				};
				class CAMO1_section {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = CAMO1_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = CAMO1_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = CAMO1_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = CAMO1_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit4 {
						position[] = {1,0,0};
						vehicle = CAMO1_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit5 {
						position[] = {1,-3,0};
						vehicle = CAMO1_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit6 {
						position[] = {1,-6,0};
						vehicle = CAMO1_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit7 {
						position[] = {1,-9,0};
						vehicle = CAMO1_RIFLEMAN;
						rank = "PRIVATE";
					};

				};
				class CAMO1_command {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = CAMO1_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = CAMO1_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = CAMO1_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = CAMO1_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class CAMO1_defaults {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = CAMO1_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1{
						position[] = {0,-6,0};
						vehicle = CAMO1_MEDIC;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-9,0};
						vehicle = CAMO1_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class CAMO2_zeus {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = CAMO2_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {1,0,0};
						vehicle = CAMO2_ASTEAMLEADER;
						rank = "PRIVATE";
					};
				};
				class CAMO2_section {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = CAMO2_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = CAMO2_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = CAMO2_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = CAMO2_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit4 {
						position[] = {1,0,0};
						vehicle = CAMO2_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit5 {
						position[] = {1,-3,0};
						vehicle = CAMO2_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit6 {
						position[] = {1,-6,0};
						vehicle = CAMO2_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit7 {
						position[] = {1,-9,0};
						vehicle = CAMO2_RIFLEMAN;
						rank = "PRIVATE";
					};

				};
				class CAMO2_command {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = CAMO2_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = CAMO2_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = CAMO2_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = CAMO2_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class CAMO2_defaults {
					name = "";
					scope = 0;
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = CAMO2_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1{
						position[] = {0,-3,0};
						vehicle = CAMO2_MEDIC;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = CAMO2_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
			};
		};
	};
};
