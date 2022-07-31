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
			class infantry {
				name = "";
				class zeus {
					name = "";
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = "SAM_Soldier_SF_M90_ASSTL";
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {1,0,0};
						vehicle = "SAM_Soldier_SF_M90_ASSTL";
						rank = "PRIVATE";
					};
				};
				class section {
					name = "";
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = "SAM_Soldier_SF_M90_TL";
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = "SAM_Soldier_SF_M90_ASSTL";
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = "SAM_Soldier_SF_M90_CM";
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = "SAM_Soldier_SF_M90_RL";
						rank = "PRIVATE";
					};
					class Unit4 {
						position[] = {1,0,0};
						vehicle = "SAM_Soldier_SF_M90_RL";
						rank = "PRIVATE";
					};
					class Unit5 {
						position[] = {1,-3,0};
						vehicle = "SAM_Soldier_SF_M90_RL";
						rank = "PRIVATE";
					};
					class Unit6 {
						position[] = {1,-6,0};
						vehicle = "SAM_Soldier_SF_M90_RL";
						rank = "PRIVATE";
					};
					class Unit7 {
						position[] = {1,-9,0};
						vehicle = "SAM_Soldier_SF_M90_RL";
						rank = "PRIVATE";
					};

				};
				class command {
					name = "";
					faction = "BLU_F";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = "SAM_Soldier_SF_M90_TL";
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = "SAM_Soldier_SF_M90_ASSTL";
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = "SAM_Soldier_SF_M90_CM";
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = "SAM_Soldier_SF_M90_RL";
						rank = "PRIVATE";
					};
				};
			};
		};
	};
};
