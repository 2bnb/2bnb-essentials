/* ----------------------------------------------------------------------------
Config: Eden Modules

Description:
	Registers 3DEN Modules to be used by our mission makers to
	make their lives easier.

Author:
	Arend
---------------------------------------------------------------------------- */
class CfgFactionClasses {
	class NO_CATEGORY;
	class BNB_ES_Modules : NO_CATEGORY {
		displayName = "2BNB Modules";
	};
};

class CfgVehicles {
	class Logic;
	class Module_F : Logic {
		class AttributesBase {
			// class Default;
			// class Edit;
			class Combo;
			class Checkbox;
			// class CheckboxNumber;
			class ModuleDescription;
			// class Units;
		};

		class ModuleDescription {
			class AnyBrain;
		};
	};

	class BNB_ES_Barracks_Module : Module_F {
		scope = 2;
		displayName = "Barracks Functions";
		// icon = "";
		category = "BNB_ES_Modules";

		function = "bnb_es_core_fnc_barracksModule";
		functionPriority = 2;
		isGlobal = 0;
		isTriggerActivated = 0;
		is3DEN = 0;

		curatorInfoType = "RscDisplayAttributeModuleNuke﻿";

		class Attributes : AttributesBase {
			class HasArsenal : Checkbox {
				property = "BNB_ES_Barracks_Module_HasArsenal";
				displayName = "Arsenal";
				tooltip = "Add Arsenal to the object";
				defaultValue = true;
			};

			class ArsenalFilter : Combo {
				property = "BNB_ES_Barracks_Module_ArsenalFilter";
				displayName = "Arsenal Filter";
				tooltip = "The filter to set on the Arsenal";
				typeName = "STRING";
				defaultValue = "";
				class Values {
					class None {
						name = "Full";
						value = "";
						default = 1;
					};
					class Standard {
						// all camo kits
						name = "Standard";
						value = "standard";
					};
					class Multicam {
						// MTP
						name = "Multicam";
						value = "multicam";
					};
					class Desert {
						//desert DDPM
						name = "Desert";
						value = "desert";
					};
					class Tropical {
						//woodland tropical DPMW
						name = "Woodland";
						value = "woodland";
					};
					class Historic {
						name = "Historic";
						value = "historic";
					};
					class Mission {
						name = "Mission";
						value = "mission";
					};
				};
			};

			class HasFullHeal : Checkbox {
				property = "BNB_ES_Barracks_Module_HasFullHeal";
				displayName = "Full Heal";
				tooltip = "Add Full Heal to object";
				defaultValue = true;
			};

			class HasSpectator : Checkbox {
				property = "BNB_ES_Barracks_Module_HasSpectator";
				displayName = "Spectator";
				tooltip = "Add Spectator to object";
				defaultValue = true;
			};

			class ModuleDescription : ModuleDescription {};
		};

		class ModuleDescription : ModuleDescription {
			description = "Add 2BNB barracks functions to synced objects";
			sync[] = {"LocationArea_F"};

			class LocationArea_F {
				description[] = {
					"Add barracks functions to synced objects that give the players certain 2BNB functions to use via ACE interaction.",
					"",
					"Barracks functions include:",
					"- Filtered Arsenal",
					"- Full Heal"
				};
				position = 0;
				direction = 0;
				optional = 1;
				duplicate = 1;
				synced[] = {"AnyBrain"};
			};
		};
	};
};
