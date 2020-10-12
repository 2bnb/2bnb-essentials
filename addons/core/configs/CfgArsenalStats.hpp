/* ----------------------------------------------------------------------------
Config: Arsenal Stats

Description:
	Registers custom stats for the ACE Arsenal

Author:
	Arend
---------------------------------------------------------------------------- */
class ace_arsenal_stats {
	class statBase;

	class BNB_ES_radioRangeLRExtended : statBase {
		scope = 2; // Only scope 2 show up in arsenal, scope 1 is used for base classes.
		displayName = "Extended Range";
		priority = 1; // A higher value means the stat will be displayed higher on the page.
		stats[] = {"bnb_es_rangeExtended"}; // Array of strings to pass to the statements, typically
		showBar = 1;
		showText = 1;
		barStatement = "[(_this select 0) select 0,_this select 1,[[0,100000],[0.01,1],false]] call ace_arsenal_fnc_statBarStatement_default"; // Statement evaluated to set the bar progress, needs to return a NUMBER.
		textStatement = "params ['_stat','_config']; private _rng = getNumber (_config >> _stat select 0); format ['%1m',_rng]"; // statement evaluated to set the text entry, can return anything.
		condition = "(getNumber (_this select 1 >> 'tf_hasLRradio') > 0) && getNumber (_this select 1 >> (_this select 0) select 0) > 0"; // Condition for the stats to be displayed, default is true if not defined, needs to return a BOOL.
		tabs[] = {{5},{}}; // Arrays of tabs, left array is left tabs, right array is right tabs.
	};

	class BNB_ES_rangeBoostMultiplier : statBase {
		scope = 2;
		displayName = "Range Boost Factor";
		priority = 1;
		stats[] = {"bnb_es_rangeBoostMultiplier"};
		showBar = 1;
		showText = 1;
		barStatement = "params ['_stat','_config']; getNumber (_config >> 'itemInfo' >> _stat select 0);"; // _this = [["bnb_es_rangeBoostMultiplier"],bin\config.bin/CfgWeapons/tfw_rf3080Item]
		textStatement = "params ['_stat','_config']; private _rng = getNumber (_config >> 'itemInfo' >> _stat select 0); format ['x%1',_rng]";
		condition = "(configName (_this select 1)) == 'tfw_rf3080Item'";
		tabs[] = {{},{7}};
	};
};
