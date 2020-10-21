bnb_es_screenshot_mode_active = false;

[
	'2BNB',
	'bnb_es_screenshot_mode_toggle',
	'Toggle Screenshot Mode',
	{
		bnb_es_screenshot_mode_active = !bnb_es_screenshot_mode_active;
		[!bnb_es_screenshot_mode_active] call bnb_es_screenshot_mode_fnc_toggleAll;
	},
	''
] call CBA_fnc_addKeybind;
