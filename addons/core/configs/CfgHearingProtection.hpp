/* ----------------------------------------------------------------------------
Config: Hearing Protection

Description:
	Registers modded and vanilla headgear to be able to use the
	ACE hearing framework.

Author:
	Arend
---------------------------------------------------------------------------- */
class CfgWeapons {
	// Global Mobilisation Crew Headgear
	class gm_headgear_unarmored_base;
	class gm_ge_headgear_crewhat_80_base : gm_headgear_unarmored_base {
		ace_hearing_protection = 0.85;
		ace_hearing_lowerVolume = 0.6;
	};
	class gm_gc_headgear_hat_base;
	class gm_gc_headgear_crewhat_80_base : gm_gc_headgear_hat_base {
		ace_hearing_protection = 0.85;
		ace_hearing_lowerVolume = 0.6;
	};
	class gm_ge_headgear_headset_crew_base : gm_headgear_unarmored_base {
		ace_hearing_protection = 0.75;
		ace_hearing_lowerVolume = 0.5;
	};
	class gm_ge_headgear_beret_crew_base : gm_headgear_unarmored_base {
		ace_hearing_protection = 0.75;
		ace_hearing_lowerVolume = 0.5;
	};
};
