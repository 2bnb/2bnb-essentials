params [["_ctrl",controlNull]];

private _text = if ([] call bnb_es_admin_messages_fnc_isAdminOrZeus) then {
	localize "STR_bnb_es_ADMIN_MESSAGES_SENDBOXTITLEADMIN"
} else {
	localize "STR_bnb_es_ADMIN_MESSAGES_SENDBOXTITLEPLAYER"
};

_ctrl ctrlSetText _text
