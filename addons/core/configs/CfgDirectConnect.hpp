/* ----------------------------------------------------------------------------
Config: Direct Connect

Description:
	Registers direct connection tiles to the main menu spotlight.

Author:
	Arend
---------------------------------------------------------------------------- */
class CfgMainMenuSpotlight {
	class bnb_es_miniOps_server {
		text = "TF15 Mini-ops Server";
		textIsQuote = 0;
		picture = "\x\bnb_es\core\TF15-tile.paa";
		video = "\x\bnb_es\core\2bnb-tile.ogv";
		action = "[""116.202.244.176"", 2312] call compile preprocessFileLineNumbers '\x\bnb_es\core\functions\common\fn_connectToServer.sqf'";
		actionText = "Connect";
		condition = true;
	};

	class bnb_es_public_server {
		text = "TF15 2nd Server";
		textIsQuote = 0;
		picture = "\x\bnb_es\core\TF15-tile.paa";
		video = "\x\bnb_es\core\2bnb-tile.ogv";
		action = "[""116.202.244.176"", 2369] call compile preprocessFileLineNumbers '\x\bnb_es\core\functions\common\fn_connectToServer.sqf'";
		actionText = "Connect";
		condition = true;
	};

	class bnb_es_operations_server {
		text = "TF15 Server";
		textIsQuote = 0;
		picture = "\x\bnb_es\core\TF15-tile.paa";
		video = "\x\bnb_es\core\2bnb-tile.ogv";
		action = "[""116.202.244.176"", 2302] call compile preprocessFileLineNumbers '\x\bnb_es\core\functions\common\fn_connectToServer.sqf'";
		actionText = "Connect";
		condition = true;
	};
};
