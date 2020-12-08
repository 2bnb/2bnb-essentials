// [{isClass (configFile >> "CfgPatches" >> "achilles_modules_f_achilles")},{
	["2BNB Modules", "Add Barracks Functions",
	{
		// Array of position AGLS, ObjNull or the object under the module as it's placed
		params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

		[_position, _objectUnderCursor] call bnb_es_core_fnc_addBarracks;
	}] call Ares_fnc_RegisterCustomModule;

	["2BNB Modules", "Force Respawn All",
	{
		[] call bnb_es_core_fnc_forceRespawn;
	}] call Ares_fnc_RegisterCustomModule;


	// [{isClass (configFile >> "CfgPatches" >> "klpq_musicPlayer")},{
		["2BNB Modules", "Add Music Radio",
		{
			// Array of position AGLS, ObjNull or the object under the module as it's placed
			params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

			[_position, _objectUnderCursor] call bnb_es_core_fnc_addMusicRadio;
		}] call Ares_fnc_RegisterCustomModule;
	// }, [], 120, {
		// ["KLPQ Music Player not loaded!", "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
	// }] call CBA_fnc_waitUntilAndExecute;

	["Zeus Modules loaded", "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
// }, [], 120, {
	// ["Achilles is not loaded!", "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
// }] call CBA_fnc_waitUntilAndExecute;

bnb_es_startedTestingModules = serverTime;
[format["Start testing at %1 seconds after server start", bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
// Testing
[{isClass (configFile >> "CfgPatches" >> "achilles_modules_f_achilles")},{
	[format["Achilles loaded successfully at %1 seconds since testing started", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}, [], 120, {
	[format["Achilles not loaded in time! Testing time elapsed: %1", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;

[{isClass (configFile >> "CfgPatches" >> "klpq_musicPlayer") && isClass (configFile >> "CfgPatches" >> "achilles_modules_f_achilles")},{
	[format["KLPQ Music Player loaded successfully at %1 seconds since testing started", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}, [], 120, {
	[format["KLPQ Music Player not loaded in time! Testing time elapsed: %1", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;

// Testing without time limit
[{isClass (configFile >> "CfgPatches" >> "achilles_modules_f_achilles")},{
	[format["Achilles finally loaded successfully at %1 seconds since testing started", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}, [], -1, {
	[format["Achilles never loaded in time! Testing time elapsed: %1", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;

[{isClass (configFile >> "CfgPatches" >> "klpq_musicPlayer") && isClass (configFile >> "CfgPatches" >> "achilles_modules_f_achilles")},{
	[format["KLPQ Music Player finally loaded successfully at %1 seconds since testing started", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}, [], -1, {
	[format["KLPQ Music Player never loaded in time! Testing time elapsed: %1", serverTime - bnb_es_startedTestingModules], "core\XEH_preInit.sqf"] call bnb_es_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;


private _bnb_es_settings = [
	[
		"bnb_es_debug",
		"CHECKBOX",
		["Enable Debug", "Tick enable 2BNB debug messages to appear in RPT and systemChat"],
		["2BNB Common", "Development"],
		false
	],
	[
		"bnb_es_arsenal_objects",
		"EDITBOX",
		["Arsenal Objects", "Classnames, separated by commas and without double quotations, of objects that are spawnable by ""Add Filtered Arsenal"" module"],
		["2BNB Zeus", "Modules"],
		"C_supplyCrate_F,B_Slingload_01_Ammo_F"
	],
	[
		"bnb_es_respawn_timer",
		"SLIDER",
		["Respawn Timer (seconds)", "Number of seconds player waves need to wait before respawn (0 -> 600 (10 minutes))"],
		["2BNB Zeus", "Respawn"],
		[1, 600, 5, 0],
		1,
		{
			setPlayerRespawnTime _this;
		}
	],
	[
		"bnb_es_map_volume",
		"SLIDER",
		["Map Volume", "Volume to set when in a vehicle and looking at the map (so that you don't have to listen to loud as fuck helicopter rotors)"],
		"2BNB Common",
		[0, 1, 0.20, 2]
	],
	[
		"bnb_es_arsenal_whitelist_mission",
		"EDITBOX",
		["Mission", "Mission specific equipment whitelist"],
		["2BNB Arsenal", "Arsenal Whitelists"],
		"[]",
		1,
		{
			// One day this will re-init all arsenals that have this filter set
		},
		true
	]
];

{_x call CBA_Settings_fnc_init;} forEach _bnb_es_settings;

// Create a climate select setting for each detected world
private _name = "";
private _prettyName = "";
{
	_name = configName _x;
	_prettyName = getText (configfile >> "CfgWorlds" >> _name >> "description");
	[
		format["bnb_es_climate_%1", _name],
		"LIST",
		[format["Map Climate - %1", _prettyName], "Select the appropriate climate for this map"],
		["2BNB Arsenal", "World Climates"],
		[
			["all", "woodland", "multicam", "desert", "arctic"],
			["All", "Woodland", "Multicam", "Desert", "Arctic"],
			0
		],
		1,
		{},
		true
	] call CBA_Settings_fnc_init;
} forEach ("true" configClasses (configfile >> "CfgWorldList"));

CHVD_allowNoGrass = false;
