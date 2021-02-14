/* ----------------------------------------------------------------------------
Function: bnb_es_mount_Up_fnc_addMountUpActions

Description:
	Adds custom ACE interactions to mount up into certain turrets in a vehicle
	(including FFV positions).
	This basically just grabs the interactions ACE adds to
	"Interactions" >> "Get In" and places duplicates of these on the position
	of their relevant turrets/seats.

	WARNING: This function is NOT Global!

Parameters:
	0: _vehicle - single object to apply interactions to <OBJECT|ARRAY>

Returns:
	Nothing

Examples:
	[_vehicle] call bnb_es_mount_Up_fnc_addMountUpActions;

Author:
	Arend
---------------------------------------------------------------------------- */
#define ICON_DRIVER		"A3\ui_f\data\IGUI\RscIngameUI\RscUnitInfo\role_driver_ca.paa"
#define ICON_PILOT		"A3\ui_f\data\IGUI\Cfg\Actions\getinpilot_ca.paa"
#define ICON_CARGO		"A3\ui_f\data\IGUI\RscIngameUI\RscUnitInfo\role_cargo_ca.paa"
#define ICON_GUNNER		"A3\ui_f\data\IGUI\Cfg\Actions\getingunner_ca.paa"
#define ICON_COMMANDER	"A3\ui_f\data\IGUI\RscIngameUI\RscUnitInfo\role_commander_ca.paa"
#define ICON_TURRET		"A3\ui_f\data\IGUI\RscIngameUI\RscUnitInfo\role_gunner_ca.paa"
#define ICON_FFV		"A3\ui_f\data\IGUI\Cfg\CrewAimIndicator\gunnerAuto_ca.paa"
#define ICON_LOCKED		"A3\ui_f\data\GUI\Rsc\RscDisplayDynamicGroups\Lock.paa"

#define ICON_COLOUR_DEFAULT				"#C3C8FF"
#define ICON_COLOUR_OCCUPIED			"#FF8383"
#define ICON_COLOUR_DISABLED			"#BFBFBF"
#define ICON_COLOUR_DISABLED_OCCUPIED	"#EBB6B6"

params ["_vehicle"];
private _vehicleConfig = configOf _vehicle;
private _fullCrew = fullCrew [_vehicle, "", true];
private _actions = [];
private _cargoNumber = -1;

// Get proxies
private _proxyBlacklist = (_vehicle getVariable ["bnb_es_proxyBlacklist", []]);
private _proxyWhitelist = (_vehicle getVariable ["bnb_es_proxyWhitelist", []]);
private _proxies = _vehicle selectionNames "FireGeometry" select {
	private _proxy = toLower _x;

	if (_proxy in _proxyBlacklist) exitWith {
		false;
	};
	if !(_proxyWhitelist isEqualTo []) exitWith {
		_proxy in _proxyWhitelist;
	};

	private _proxyIndex = _proxy select [(_proxy find ".") + 1];
	// has non-zero selection position
	!((_vehicle selectionPosition _proxy) isEqualTo [0, 0, 0]) && {
		// ends with a number after a period
		((parseNumber _proxyIndex > 0) || {_proxyIndex isEqualTo "0"}) && {
			// contains seat role
			(
				("cargo" in toLower _proxy) || {
					("gunner" in toLower _proxy) || {
						("driver" in toLower _proxy) ||	{
							("commander" in toLower _proxy) || {
								("pilot" in toLower _proxy)
							}
						}
					}
				}
			)
		}
	}
};
if (_proxies isEqualTo [] || _proxies isEqualTo false) exitWith {};

// Sort out any proxy offsets or corrections
private _proxyPositions = _proxies apply {_vehicle selectionPosition _x};
private _proxyCargoIndexes = _proxies apply {parseNumber (_x select [(_x find ".") + 1])};
private _proxyOffsets = (_vehicle getVariable ["bnb_es_proxyOffsets", []]);
if !(_proxyOffsets isEqualTo []) then {
	{
		private _offset = [0, 0, -2];
		private _proxy = toLower _x;

		if (_proxy isEqualType []) then {
			_proxy = _proxy select 0;
			_offset = _proxy select 1;
		};

		private _index = _proxies find _proxy;
		if (_index != -1) then {
			_proxyPositions set [
				_index,
				(_proxyPositions select _index) vectorAdd _offset
			];
			[format["Fixing proxy position: %1 %2", _proxy, _proxyPositions select _index], "core\functions\common\fn_addMountUpActions.sqf"] call bnb_es_core_fnc_log;
		};
	} forEach _proxyOffsets;
};

{
	scopeName "crewLoop";
	_x params ["_unit", "_role", "_cargoIndex", "_turretPath", "_isPersonTurret"];
	_hashId = format ["%1%2%3", _role, _cargoIndex, _turretPath];

	private ["_name", "_icon", "_statement", "_params", "_proxyType", "_proxyPosition"];

	// Set role specific parameters
	switch (toLower _role) do {
		case "driver": {
			if (
				lockedDriver _vehicle
				|| {unitIsUAV _vehicle}
				|| {0 == getNumber (_vehicleConfig >> "hasDriver")}
			) then {
				continue;
			};

			if (_vehicle isKindOf "Air") then {
				_name = localize "str_getin_pos_pilot";
				_icon = ICON_PILOT;
				_proxyType = "pilot";
			} else {
				_name = localize "str_driver";
				_icon = ICON_DRIVER;
				_proxyType = "driver";
			};

			_params = [["GetInDriver", _vehicle], _role, _cargoIndex, _turretPath, _icon];
		};
		case "cargo": {
			_cargoNumber = _cargoNumber + 1;
			if (_vehicle lockedCargo _cargoIndex) then {continue};

			_name = format ["%1 %2", localize "str_getin_pos_passenger", _cargoNumber + 1];
			_icon = ICON_CARGO;
			_proxyType = "cargo";

			_params = [["GetInCargo", _vehicle, _cargoNumber], _role, _cargoIndex, _turretPath, _icon];
		};
		default { // all turrets including FFV
			if (_vehicle lockedTurret _turretPath) then {continue};
			if (_role == "gunner" && {unitIsUAV _vehicle}) then {continue};
			private _turretConfig = [_vehicleConfig, _turretPath] call CBA_fnc_getTurret;

			_name = getText (_turretConfig >> "gunnerName");

			switch true do {
				case (0 < getNumber (_turretConfig >> "isCopilot")): {
					_proxyType = "gunner";
					_icon = ICON_PILOT;
				};
				case (_role == "gunner"): {
					_proxyType = "gunner";
					_icon = ICON_GUNNER;
				};
				case (_role == "commander"): {
					_proxyType = "commander";
					_icon = ICON_COMMANDER;
				};
				case (_isPersonTurret): {
					_proxyType = "cargo";
					_icon = ICON_FFV;
				};
				case ("" isEqualTo getText (_turretConfig >> "gun")): {
					_proxyType = "cargo";
					_icon = ICON_CARGO;
				};
				default {
					_proxyType = "gunner";
					_icon = ICON_TURRET;
				};
			};

			_params = [["GetInTurret", _vehicle, _turretPath], _role, _cargoIndex, _turretPath, _icon];
		};
	};

	// Get seat proxy position
	// First check for a proxy override
	private _proxyOverrides = _vehicle getVariable ["bnb_es_proxyOverrides", []];
	private _proxyPosition = [];
	{
		if ((_x select 0) isEqualTo _hashId) then {
			_proxyPosition = _vehicle selectionPosition (_x select 1);
			[format["Gotten Override Position: %1 %2", _x, _proxyPosition], "core\functions\common\fn_addMountUpActions.sqf"] call bnb_es_core_fnc_log;
		};
	} forEach _proxyOverrides;

	// If no override, check normally
	if (_proxyPosition isEqualTo []) then {
		{
			private _proxy = _x;
			private _proxyIndex = parseNumber (_proxy select [(_proxy find ".") + 1]);
			private _isSameProxyType = _proxy find _proxyType >= 0;
			private _done = false;

			switch true do {
				case (_proxyType == "cargo"
					&& _isSameProxyType
					&& (_cargoIndex + 1) isEqualTo _proxyIndex
				): {
					_proxyPosition = _proxyPositions select _forEachIndex;
					_done = true;
				};
				case ((_proxyType == "pilot" || _proxyType == "driver") && _isSameProxyType): {
					_proxyPosition = _proxyPositions select _forEachIndex;
					_done = true;
				};
				case (_isSameProxyType): {
					private _turretConfig = [_vehicleConfig, _turretPath] call CBA_fnc_getTurret;
					if (getNumber (_turretConfig >> "proxyIndex") == _proxyIndex) then {
						_proxyPosition = _proxyPositions select _forEachIndex;
						_done = true;
					};
				};
			};

			[format["Get Position: %1 %2 %3 %4 %5", _proxyPositions select _forEachIndex, _x, _x find _proxyType >= 0, _cargoIndex + 1, parseNumber (_x select [(_x find ".") + 1])], "core\functions\common\fn_addMountUpActions.sqf"] call bnb_es_core_fnc_log;
			if (_done) exitWith {};
			_proxyPosition = [0,0,0];
		} forEach _proxies;
	};

	if (!(_proxyPosition isEqualType []) || _proxyPosition isEqualTo [0,0,0]) then {
		[format["Proxy Position not set: %1", _proxyPosition], "core\functions\common\fn_addMountUpActions.sqf"] call bnb_es_core_fnc_log;
		continue;
	};

	// Create the ACE Action
	private _action = [
		_hashId,
		_name,
		[_icon, ICON_COLOUR_DEFAULT],
		{
			params ["_target", "_player", "_params"];
			_params params ["_actionCommand", "_role", "_cargoIndex", "_turretPath"];
			private _crew = fullCrew [_target, (toLower _role)];
			private _execute = true;
			private _isNotLocked = true;
			[format["Executing maybe?: %1 %2 %3 %4", _target, _player, _params, _crew], "core\functions\common\fn_addMountUpActions.sqf"] call bnb_es_core_fnc_log;

			{
				_x params ["_activeUnit", "_activeRole", "_activeCargoIndex", "_activeTurretPath", "_activeIsPersonTurret"];

				if (
					_activeRole isEqualTo (toLower _role)
					&& _activeCargoIndex isEqualTo _cargoIndex
					&& _activeTurretPath isEqualTo _turretPath
				) then {
					[format["Mounting Up Blocked: %1 %2", _x, _params], "core\functions\common\fn_addMountUpActions.sqf"] call bnb_es_core_fnc_log;
					_execute = false;
					break;
				};

			} forEach _crew;

			// Check if seat is locked
			switch (_role) do {
				case "driver" : {
					if (lockedDriver _target) then {
						_isNotLocked = false;
					};
				};
				case "cargo" : {
					if (_target lockedCargo _cargoIndex) then {
						_isNotLocked = false;
					};
				};
				default {
					if (_target lockedTurret _turretPath) then {
						_isNotLocked = false;
					};
				};
			};

			if (_isNotLocked) then {
				_isNotLocked = locked _target < 2;
			};

			if ((_execute || _crew isEqualTo []) && _isNotLocked) then {
				_player action _actionCommand;
			};
		},
		{simulationEnabled (_this select 0) && alive (_this select 0)},
		{},
		_params,
		_proxyPosition,
		4,
		[false,false,false,false,false],
		{
			params ["_target", "_player", "_params", "_actionData"];
			_params params ["_actionCommand", "_role", "_cargoIndex", "_turretPath", "_originalIcon"];
			private _icon = _actionData select 2;
			private _isLocked = false;
			private _fullIcon = _icon;
			private _iconColour = ICON_COLOUR_DEFAULT;

			{
				_x params ["_activeUnit", "_activeRole", "_activeCargoIndex", "_activeTurretPath", "_activeIsPersonTurret"];

				if (
					_activeRole isEqualTo _role
					&& _activeCargoIndex isEqualTo _cargoIndex
					&& _activeTurretPath isEqualTo _turretPath
				) then {

					// Check if seat is locked
					switch (_role) do {
						case "driver" : {
							_isLocked = lockedDriver _target;
						};
						case "cargo" : {
							_isLocked = _target lockedCargo _cargoIndex;
						};
						default {
							_isLocked = _target lockedTurret _turretPath;
						};
					};

					if (!_isLocked) then {
						_isLocked = locked _target > 1;
					};

					// Check which icon/colour to use
					_isOccupied = (!isNull _activeUnit && {alive _activeUnit});
					switch true do {
						case (_isLocked && _isOccupied) : {
							_icon = ICON_LOCKED;
							_iconColour = ICON_COLOUR_DISABLED_OCCUPIED;
						};
						case (_isOccupied) : {
							_icon = _originalIcon;
							_iconColour = ICON_COLOUR_OCCUPIED;
						};
						case (_isLocked) : {
							_icon = ICON_LOCKED;
							_iconColour = ICON_COLOUR_DISABLED;
						};
						default {
							_icon = _originalIcon;
							_iconColour = ICON_COLOUR_DEFAULT;
						};
					};
					[format["Set colour: %1 %2 %3 %4 %5", _icon, _iconColour, _actionData select 2, _activeUnit, _actionData select 1], "core\functions\common\fn_addMountUpActions.sqf"] call bnb_es_core_fnc_log;

					if (_icon isEqualType "") then {
						_fullIcon = [_icon, _iconColour];
					};
					if (_icon isEqualType []) then {
						_fullIcon = [_icon select 0, _iconColour];
					};
					[format["Set icon: %1 %2 %3 %4", _fullIcon, _actionData select 2, _activeUnit, _actionData select 1], "core\functions\common\fn_addMountUpActions.sqf"] call bnb_es_core_fnc_log;

					_actionData set [2, _fullIcon];
					break;
				};
			} forEach (fullCrew [_target, _role, true]);
		}
	] call ace_interact_menu_fnc_createAction;

	[format["Proxy pos/type: %1 %2", _proxyPosition, _proxyType], "core\functions\common\fn_addMountUpActions.sqf"] call bnb_es_core_fnc_log;
	[format["%1 %2", _vehicle, _action], "core\functions\common\fn_addMountUpActions.sqf"] call bnb_es_core_fnc_log;
	_actions pushBack [_action, [], _vehicle];
	[_vehicle, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;
} forEach _fullCrew;
