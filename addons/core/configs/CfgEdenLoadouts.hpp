class Cfg3DEN
{
	class Object
	{
		class AttributeCategories
		{
			class 2BNB_Essentials
			{
				displayName = "2BNB Essentials";
				collapsed = 1;
				class Attributes
				{
					class BNB_ES_IsLoadout
					{
						displayName = "Default Loadout?";
						tooltip = "Use this unit as a default loadout for the mission";
						property = "BNB_3den_Loadout";
						control = "Checkbox";
						expression = "if (_value == true) then {_this setVariable ['IsLoadout',true, true];}";
						defaultValue = "false";
						condition = "objectControllable"; 
					};
					class BNB_ES_LoadoutRole
					{
						displayName = "Name:";
						tooltip = "Name of the loadout in the Arsenal";
						property = "BNB_3den_LoadoutName";
						control = "Edit";
						expression = "_this setVariable ['LoadoutRole',_value, true];";
						defaultValue = "''";
						typeName = "STRING";
						condition = "objectControllable"; 
					};
				};
			};
		};
	};
};
