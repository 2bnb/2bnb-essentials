private _newState = param [0, true];

if (_newState) then {
	 showHUD (bnb_es_screenshotMode_vanillaHUD select 0);
	 showChat (bnb_es_screenshotMode_vanillaHUD select 1);
} else {
	 bnb_es_screenshotMode_vanillaHUD = [shownHUD, shownChat];
	 showHUD [false,false,false,false,false,false,false,false];
	 showChat false;
	 hintSilent "";
};
