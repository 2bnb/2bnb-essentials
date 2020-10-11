bnb_es_screenshotMode_active = false;

[
    '2BNB',
    'bnb_es_screenshotMode_toggle',
    'Toggle Screenshot Mode',
    {
        bnb_es_screenshotMode_active = !bnb_es_screenshotMode_active;
        [!bnb_es_screenshotMode_active] call bnb_es_screenshotMode_fnc_toggleAll;
    },
    ''
] call CBA_fnc_addKeybind;
