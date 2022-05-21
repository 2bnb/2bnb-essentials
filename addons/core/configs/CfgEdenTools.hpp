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
					class ZeusOne
					{
						position[] = {0,0.1,0};
						vehicle = "SAM_Soldier_M90_TL";
						name = "zeusOne";
						ControlMP = "true";
						description = "1. Zeus@Command";
						statement = "_this set3DENAttribute ['ControlMP', true]"; //Nope
					};
					class ZeusTwo
					{
						position[] = {0,0.1,0.1};
						vehicle = "SAM_Soldier_M90_TL";
						name="zeustwo";
						description="2. A.Zeus";
						isPlayable=1;
						onLoad = "_this set3DENAttribute ['ControlMP', true]"; //Double Nope

					};
				};
				class section
				{

				};
			};
		};
	};
};
