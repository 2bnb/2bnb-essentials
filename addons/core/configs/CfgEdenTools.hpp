class ctrlMenuStrip;
class display3DEN
{
	class Controls
	{
		class MenuStrip: ctrlMenuStrip
		{
			class Items
			{
				class Tools
				{
					items[] += {"BNB_ES_Tools"};
				};
				class bnb_es_tools
				{
					text = "2BNB Tools...";
					items[] = {"BNB_ES_Settings", "BNB_ES_Assets"};
				};
				class bnb_es_settings
				{
					text = "Load 2BNB Settings";
					action = "[] call bnb_es_core_fnc_edenLoadSettings";
				};
				class bnb_es_assets
				{
					text = "Load 2BNB Slots & Modules";
					action = "[] call bnb_es_core_fnc_edenCreateAssets";
				};
			};
		};
	};
};
class CfgGroups
{
	class West
	{
		class bnb_es_compositions
		{
			name = "2BNB";
			class infantry
			{
				class zeus
				{
					faction = "BLU_F";
					side = 1;
					class Unit0
					{
						position[] = {0,0,0};
						vehicle = "SAM_Soldier_SF_M90_ASSTL";
					};
					class Unit1
					{
						position[] = {1,0,0};
						vehicle = "SAM_Soldier_SF_M90_ASSTL";
					};
				};
				class section
				{
					faction = "BLU_F";
					side = 1;
					class Unit0
					{
						position[] = {0,0,0};
						vehicle = "SAM_Soldier_SF_M90_TL";
					};
					class Unit1
					{
						position[] = {0,-3,0};
						vehicle = "SAM_Soldier_SF_M90_ASSTL";
					};
					class Unit2
					{
						position[] = {0,-6,0};
						vehicle = "SAM_Soldier_SF_M90_CM";
					};
					class Unit3
					{
						position[] = {0,-9,0};
						vehicle = "SAM_Soldier_SF_M90_RL";
					};
					class Unit4
					{
						position[] = {5,0,0};
						vehicle = "SAM_Soldier_SF_M90_RL";
					};
					class Unit5
					{
						position[] = {5,-3,0};
						vehicle = "SAM_Soldier_SF_M90_RL";
					};
					class Unit6
					{
						position[] = {5,-6,0};
						vehicle = "SAM_Soldier_SF_M90_RL";
					};
					class Unit7
					{
						position[] = {5,-9,0};
						vehicle = "SAM_Soldier_SF_M90_RL";
					};

				};
				class command

				{
					faction = "BLU_F";
					side = 1;
					class Unit0
					{
						position[] = {0,0,0};
						vehicle = "SAM_Soldier_SF_M90_TL";
					};
					class Unit1
					{
						position[] = {0,-3,0};
						vehicle = "SAM_Soldier_SF_M90_ASSTL";
					};
					class Unit2
					{
						position[] = {0,-6,0};
						vehicle = "SAM_Soldier_SF_M90_CM";
					};
					class Unit3
					{
						position[] = {0,-9,0};
						vehicle = "SAM_Soldier_SF_M90_RL";
					};
				};
			};
		};
	};
};
