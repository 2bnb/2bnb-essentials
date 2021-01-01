/* ----------------------------------------------------------------------------
Config: ZEN Menu

Description:
	Registers ZEN Context Menu items to be used by Zeus when right clicking.

Author:
	Arend
---------------------------------------------------------------------------- */
class zen_context_menu_actions {
	class bnb_es_barracks_function {
		displayName = "Add Barracks Functions";
		icon = "\a3\ui_f\data\logos\a_64_ca.paa";
		iconColor = [1,0.27,0,1];
		condition = "!(_objects isEqualTo [])";
		statement = "[_position, _objects] call bnb_es_core_fnc_addBarracks;";
	};
};
