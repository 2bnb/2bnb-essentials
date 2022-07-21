/* ----------------------------------------------------------------------------
Function: bnb_es_core_fnc_edenCreateAssets

Description:
	Creates mission slots, modules and markers.

Parameters:
	0: _callsign - The platoon callsign that all sections will use <String>
	1: _zeusCallsign - The callsign that HQ will use <String>
	2: _numberOfSections - The number of sections to spawn <Number>

Returns:
	Nothing.

Examples:
	["Odin", "Valhalla", 3] call bnb_es_core_fnc_edenCreateAssets;

Author:
	Met
---------------------------------------------------------------------------- */
params [["_callsign", "Odin"],["_zeusCallsign", "Valhalla"],["_numberOfSections", 3]];

if (_callsign == "") then {
	_callsign = "Odin";
};

if (_zeusCallsign == "") then {
	_zeusCallsign = "Valhalla";
};

_centralPos = screenToWorld [0, 0];
_entities =
[
	[
		["Marker", "mil_circle", _centralPos vectorAdd [10, 0]],
		["markerName", "respawn"],
		["text", "respawn"]
	],
	[
		["Logic", "ModuleCurator_F", _centralPos vectorAdd [-1, 0]],
		["ModuleCurator_F_Owner", "zeusOne"],
		["ModuleCurator_F_Name", "Active Zeus"]
	],
	[
		["Logic", "ModuleCurator_F", _centralPos vectorAdd [-1, -1]],
		["ModuleCurator_F_Owner", "zeusTwo"],
		["ModuleCurator_F_Name", "Assistant Zeus"]
	],
	[
		["Logic", "ModuleCurator_F", _centralPos vectorAdd [-1, -2]],
		["ModuleCurator_F_Owner", "#adminLogged"],
		["ModuleCurator_F_Name", "Admin"]
	],
	[
		["Logic", "HeadlessClient_F", _centralPos vectorAdd [-2, 0]],
		["ControlMp", true],
		["name", "HC1"]
	],
	[
		["Logic", "HeadlessClient_F", _centralPos vectorAdd [-2, -1]],
		["ControlMp", true],
		["name", "HC2"]
	],
	[
		["Logic", "HeadlessClient_F", _centralPos vectorAdd [-2, -2]],
		["ControlMp", true],
		["name", "HC3"]
	],
		[
		["Object", "B_supplyCrate_F", _centralPos vectorAdd [-3, 6]],
		["allowDamage", false],
		["ArsenalObject", true]
	],
	[
		["Logic", "BNB_ES_Barracks_Module", _centralPos vectorAdd [-4, 7]],
		["BNB_ES_Barracks_Module_ArsenalFilter", "Standard"],
		["ArsenalObject", true]
	],
	[
		["Object", "B_supplyCrate_F", _centralPos vectorAdd [-5, 6]],
		["allowDamage", false],
		["ArsenalObject", true]
	]
];

_last = "";
{
	_entity = _x select 0;
	_attributeOne = _x select 1;
	_attributeTwo = _x select 2;
	_current = create3DENEntity _entity, _current set3DENAttribute _attributeOne, _current set3DENAttribute _attributeTwo;
	if ((_attributeTwo select 0) == "ArsenalObject") then {
		add3DENConnection ["Sync", [_last], _current];
		_last = _current;
	};
} forEach _entities;

create3DENComposition [configfile >> "CfgGroups" >> "West" >> "bnb_es_compositions" >> "infantry" >> "command", _centralPos vectorAdd [0, 0]];
set3DENAttributes [[get3DENSelected "Group","groupID", "Command"] ,[get3DENSelected "Object","ControlMP",true]];
_group = get3DENselected "Object" select 0;
leader _group set3DENAttribute ["description", format ["1. 1IC@%1 1-Actual", _callsign ]];
set3DENSelected [];

for "_i" from 1 to _numberOfSections do {
    create3DENComposition [configfile >> "CfgGroups" >> "West" >> "bnb_es_compositions" >> "infantry" >> "section", _centralPos vectorAdd [_i, 0, 0]];
	set3DENAttributes [[get3DENSelected "Group","groupID", format ["1-%1 Sec", _i]] ,[get3DENSelected "Object","ControlMP",true]];
	_group = get3DENselected "Object" select 0;
	leader _group set3DENAttribute ["description", format ["1. 1IC@%1 1-%2", _callsign , _i]];
	set3DENSelected [];
};

create3DENComposition [configfile >> "CfgGroups" >> "West" >> "bnb_es_compositions" >> "infantry" >> "zeus", _centralPos vectorAdd [1, 2]];
_zeusUnits = get3DENSelected "Object";
set3DENAttributes [[get3DENSelected "Group","groupID", "Zeus"] ,[_zeusUnits,"ControlMP",true]];
{
	removeBackpack _x;
	_x addBackpack "tfw_ilbe_blade_gr";
} forEach _zeusUnits;

_asZeus = _zeusUnits select 1;
leader _asZeus set3DENAttribute ["description", format ["1. Zeus@%1", _zeusCallsign]];
leader _asZeus set3DENAttribute ["name", "zeusOne"];
_asZeus set3DENAttribute ["description", "2. A.Zeus"];
_asZeus set3DENAttribute ["name", "zeusTwo"];
set3DENSelected [];
