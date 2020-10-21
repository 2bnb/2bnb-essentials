class CfgPatches {
	class bnb_es_maps {
		// Addon identity
		name = "2BNB Essentials - Maps";
		author = "2nd Battalion, Nord Brigade";
		authors[] = {
			"Arend",
			"Warlords"
		};
		url = "https://discord.gg/DRaWNyf";
		version = 1.0.0;
		versionAr[] = {1,0,0,0};
		versionStr = "v1.0.0";

		// Addon requirements
		requiredVersion = 2.00;
		requiredAddons[] = {
			"vt7"
		};

		// Addon items
		units[] = {};
		weapons[] = {};
		magazines[] = {};
		ammo[] = {};
		worlds[] = {
			"vt7_china"
		};
	};
};

class CfgWorlds {
	class CAWorld;
	// Find the classnames in the `altis_map.pbo` file
	// For other maps, look in the same place but for the respective mmap
	// See: https://github.com/2bnb/2bnb-extras/wiki/Renaming-Map-Locations
	#include "altis.hpp"
};

#include "vt7_china.hpp"
