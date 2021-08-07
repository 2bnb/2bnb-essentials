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
			["all", "woodland", "multicam", "desert", "arctic"], // Code (keep the same, else settings will reset)
			["All", "Flecktarn", "Multitarn", "Tropentarn", "Arctic"], // Display name
			0
		],
		1,
		{},
		true
	] call CBA_Settings_fnc_init;
} forEach ([
	("true" configClasses (configFile >> "CfgWorldList")),
	[],
	{getText (configFile >> "CfgWorlds" >> (configName _x) >> "description")}
] call BIS_fnc_sortBy);

CHVD_allowNoGrass = false;
