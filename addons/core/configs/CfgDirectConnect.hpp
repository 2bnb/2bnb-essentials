/* ----------------------------------------------------------------------------
Config: Direct Connect

Description:
	Registers direct connection tiles to the main menu spotlight.

Author:
	Arend
---------------------------------------------------------------------------- */
class CfgMainMenuSpotlight {
	class bnb_es_miniOps_server {
		text = "Mini-ops Server";
		textIsQuote = 0;
		picture = "\x\bnb_es\core\2bnb-tile.paa";
		video = "\x\bnb_es\core\2bnb-tile.ogv";
		action = "connectToServer [""116.202.244.176"", 2312, """"]"; //This Goes [""IP"", Port, ""Password""], if you dont want the password visible just leave the pasword section empty.
		actionText = "Connect";
		condition = true; //Lies
	};

	class bnb_es_public_server {
		text = "2nd Server";
		textIsQuote = 0;
		picture = "\x\bnb_es\core\2bnb-tile.paa";
		video = "\x\bnb_es\core\2bnb-tile.ogv";
		action = "connectToServer [""116.202.244.176"", 2369, """"]"; //This Goes [""IP"", Port, ""Password""], if you dont want the password visible just leave the pasword section empty.
		actionText = "Connect";
		condition = true; //Lies
	};

	class bnb_es_operations_server {
		text = "Main Server";
		textIsQuote = 0;
		picture = "\x\bnb_es\core\2bnb-tile.paa";
		video = "\x\bnb_es\core\2bnb-tile.ogv";
		action = "connectToServer [""116.202.244.176"", 2302, """"]"; //This Goes [""IP"", Port, ""Password""], if you dont want the password visible just leave the pasword section empty.
		actionText = "Connect";
		condition = true; //Lies
	};
};
