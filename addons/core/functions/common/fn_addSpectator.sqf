/* ----------------------------------------------------------------------------
Function: bnb_es_core_fnc_addSpectator

Description:
	Adds a "Spectate" interaction to the object in question.

	WARNING: This function is NOT Global!

Parameters:
	0: _objects - single or multiple objects to apply the spectator interaction
		to <OBJECT|ARRAY>

Returns:
	Nothing

Examples:
	[] call bnb_es_core_fnc_addSpectator;

Author:
	Arend
---------------------------------------------------------------------------- */
params [["_objects", objNull, [objNull, []]]];

if (_objects isEqualTo objNull || _objects isEqualTo []) exitWith {
	[format["Failed to apply the spectator interaction: No object given! %1", _objects], "core\functions\common\fn_addSpectator.sqf"] call bnb_es_core_fnc_log;
};

if (typeName _objects isEqualTo "OBJECT") then {
	_objects = [_objects];
};

private _action = [];

{
	_object = _x;

	if ({(_x select 0) select 0 isEqualTo "bnb_es_spectate"} count (_object getVariable ["ace_interact_menu_actions", []]) == 0) then {
		_action = [
			"bnb_es_spectate",
			"Spectate",
			"x\bnb_es\core\camera.paa",
			{[true, false, false] call ace_spectator_fnc_setSpectator;},
			{true}
		] call ace_interact_menu_fnc_createAction;

		if !(_action isEqualTo []) then {
			[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
			[format["Added the spectator interaction to %1. Action: %2", _object, _action], "core\functions\common\fn_addSpectator.sqf"] call bnb_es_core_fnc_log;
		};
	};
} foreach _objects;
