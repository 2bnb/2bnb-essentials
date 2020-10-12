class CfgPatches {
	class bnb_es_core {
		name = "2BNB Essentials - Core";
		units[] = {
			// CfgSupplyCrates
			"BNB_ES_Resupply",
			"BNB_ES_Resupply_Class_A",
			"BNB_ES_Resupply_Class_B",
			"BNB_ES_Resupply_Class_C",

			// CfgEdenModules
			"BNB_ES_Barracks_Module"
		};
		weapons[] = {};
		requiredAddons[] = {
			"cba_settings",
			"ace_arsenal",
			"ace_explosives",
			"ace_medical",
			"A3_Modules_F"
		};
		author = "2nd Battalion, Nord Brigade";
		authors[] = {
			"D. Ford",
			"Arend"
		};
	};
};

class CfgFunctions {
	class bnb_es_core {
		class common {
			file = "\x\bnb_es\core\functions\common";
			class addFullHeal {};
			class addSpectator {};
			class changeSpeakVolume {};
			class connectToServer {};
			class getCurators {};
			class getDeadPlayers {};
			class isCurator {};
			class listDeadPlayers {};
			class notifyZeus {};
			class openTimerUI {};
			class setRespawnTimer {};
		};

		class zeus_modules {
			file = "\x\bnb_es\core\functions\zeus_modules";
			class addBarracks {};
			class forceRespawn {};
			class addMusicRadio {};
		};

		class eden_modules {
			file = "\x\bnb_es\core\functions\eden_modules";
			class barracksModule {};
		};

		class utilities {
			file = "\x\bnb_es\core\functions\utilities";
			class arrayFlatten {};
			class log {};
			class strToArray {};
			class toBoolean {};
		};
	};
};

class Extended_PreInit_EventHandlers {
	class bnb_es_core_preInit {
		init = "call compile preprocessFileLineNumbers '\x\bnb_es\core\XEH_preInit.sqf'";
	};
};

class Extended_PostInit_EventHandlers {
	class bnb_es_core_postInit {
		init = "call compile preprocessFileLineNumbers '\x\bnb_es\core\XEH_postInit.sqf'";
	};
};

// Config features/fixes
#include "configs\CfgArsenalStats.hpp";
#include "configs\CfgBarrelSwaps.hpp";
#include "configs\CfgDirectConnect.hpp";
#include "configs\CfgEdenModules.hpp";
#include "configs\CfgEnableDebug.hpp";
#include "configs\CfgExplosives.hpp";
#include "configs\CfgLadderTweak.hpp";
#include "configs\CfgMedicalEquipment.hpp";
#include "configs\CfgRadioEquipment.hpp";
#include "configs\CfgSupplyCrates.hpp";
#include "configs\CfgUnitTrainerTools.hpp";
#include "configs\CfgZeusActions.hpp";
