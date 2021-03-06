/* ----------------------------------------------------------------------------
Function: bnb_es_core_fnc_isCurator

Description:
	Check if a unit has curator/zeus powers.

Parameters:
	0: _player - A player object.

Returns:
	True or False depending on if player has powers <BOOLEAN>

Examples:
	[_player] call bnb_es_core_fnc_isCurator;

Author:
	Arend
---------------------------------------------------------------------------- */
params [["_player", player, [objNull]]];

if (_player in (call bnb_es_core_fnc_getCurators)) exitWith {
	true;
};

false;
