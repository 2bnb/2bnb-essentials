/* ----------------------------------------------------------------------------
Function: bnb_es_core_fnc_edenCreateAssets

Description:
	Creates mission slots, modules and markers.

Parameters:
	None

Returns:
	Nothing.

Examples:
	[] call bnb_es_core_fnc_edenCreateAssets;

Author:
	Met
---------------------------------------------------------------------------- */
_entities =
[
	[
		["Marker", "mil_circle", screenToWorld [0.1, 0]],
		["markerName", "respawn"],
		["text", "respawn"]
	],
	[
		["Logic", "ModuleCurator_F", screenToWorld [-0.3, 0]],
		["ModuleCurator_F_Owner", "zeusOne"],
		["ModuleCurator_F_Name", "Active Zeus"]
	],
	[
		["Logic", "ModuleCurator_F", screenToWorld [-0.3, -0.1]],
		["ModuleCurator_F_Owner", "ZeusTwo"],
		["ModuleCurator_F_Name", "Assistant Zeus"]
	],
	[
		["Logic", "ModuleCurator_F", screenToWorld [-0.3, -0.2]],
		["ModuleCurator_F_Owner", "#adminLogged"],
		["ModuleCurator_F_Name", "Admin"]
	],
	[
		["Logic", "HeadlessClient_F", screenToWorld [-0.4, 0]],
		["ControlMp", true],
		["name", "HC1"]
	],
	[
		["Logic", "HeadlessClient_F", screenToWorld [-0.4, -0.1]],
		["ControlMp", true],
		["name", "HC2"]
	],
	[
		["Logic", "HeadlessClient_F", screenToWorld [-0.4, -0.2]],
		["ControlMp", true],
		["name", "HC3"]
	]
];

{
	_entity = _x select 0;
	_attributeOne = _x select 1;
	_attributeTwo = _x select 2;
	_current = create3DENEntity _entity, _current set3DENAttribute _attributeOne, _current set3DENAttribute _attributeTwo;
} forEach _entities;

for "_i" from 0 to 3 do
{
    create3DENComposition [configfile >> "CfgGroups" >> "West" >> "sfp_swe_2015" >> "Infantry" >> "BSWE15_InfSquad",
        screenToWorld [0.5, 0.5] vectorAdd [_i, 0, 0]];
};  //placeholder for custom squads
