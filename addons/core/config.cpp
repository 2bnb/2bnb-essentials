class CfgPatches {
	class bnb_es_core {
		// Addon identity
		name = "2BNB Essentials - Core";
		author = "2nd Battalion, Nord Brigade";
		authors[] = {
			"Ford",
			"Arend",
			"FarCry",
			"Carmichael",
			"Met",
		};
		url = "https://discord.gg/rUUsCShkzJ";
		version = 1.0.0;
		versionAr[] = {1,0,0,0};
		versionStr = "v1.0.0";
		is3DENmod = 1;

		// Addon requirements
		requiredVersion = 2.00;
		requiredAddons[] = {
			"3DEN",
			"cba_settings",
			"ace_arsenal",
			"ace_explosives",
			"ace_medical",
			"A3_Modules_F"
		};

		// Addon items
		units[] = {
			// CfgEdenModules
			"BNB_ES_Barracks_Module"
		};
		weapons[] = {};
		magazines[] = {};
		ammo[] = {};
		worlds[] = {};
	};
};

class CfgFunctions {
	class bnb_es_core {
		class common {
			file = "\x\bnb_es\core\functions\common";
			class addDeployActions {};
			class addFullHeal {};
			class addSpectator {};
			class changeSpeakVolume {};
			class edenLoadSettings {};
			class edenCreateAssets {};
			class getCurators {};
			class getDeadPlayers {};
			class getDeployAnimations {};
			class isCurator {};
			class listDeadPlayers {};
			class notifyZeus {};
			class openTimerUI {};
			class setRespawnTimer {};
			class setDefaultLoadouts {};
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
#include "configs\CfgArsenalStats.hpp"
#include "configs\CfgBarrelSwaps.hpp"
#include "configs\CfgDefines.hpp"
#include "configs\CfgDirectConnect.hpp"
#include "configs\CfgEdenGUI.hpp"
#include "configs\CfgEdenLoadouts.hpp"
#include "configs\CfgEdenModules.hpp"
#include "configs\CfgEdenTools.hpp"
#include "configs\CfgEnableDebug.hpp"
#include "configs\CfgExplosives.hpp"
#include "configs\CfgHearingProtection.hpp"
#include "configs\CfgLadderTweak.hpp"
#include "configs\CfgMedicalEquipment.hpp"
#include "configs\CfgRadioEquipment.hpp"
#include "configs\CfgUnitTrainerTools.hpp"
#include "configs\CfgVehicleDeploy.hpp"
#include "configs\CfgZenMenu.hpp"
#include "configs\CfgZeusActions.hpp"
